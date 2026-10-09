"""Which compiler functions a fuzzing round reached (tools/fuzz.py --coverage).

The compiler's own C, the host's bootstrap snapshot, is built once with gcov's
instrumentation at -O0 as build/luce-cov (beside build/luce-base, so it finds the same
standard library); it is built again when the snapshot is newer. Every program a round
generates is built through it twice more, with no cache so nothing is skipped: natively for
the host, and as assembly for one of the other targets in turn, so a round on any host
reaches all three backends. At the end of the round gcov says which functions ran; the
report names how many, how many no earlier round had reached (build/fuzz/coverage/
reached.txt keeps every round's), and writes the backend functions no round has reached yet
to build/fuzz/coverage/cold.txt: where the next generator should aim. The counters start
again each round.

Building the instrumented compiler takes seconds; each program costs two builds more.
"""
import os
from pathlib import Path
import re
import shutil
import subprocess

TARGETS = ("arm64-macos", "x86_64-linux", "x86_64-windows")


class Coverage:
    def __init__(self, root, host):
        self.root = root
        self.host = host
        self.work = root / "build" / "cov"
        self.compiler = root / "build" / ("luce-cov.exe" if os.name == "nt" else "luce-cov")
        self.keep = root / "build" / "fuzz" / "coverage"
        self.turn = 0

    def prepare(self):
        """Build the instrumented compiler when it is missing or older than the snapshot; whether
        there is one to use."""
        snapshot = self.root / "bootstrap" / f"luce-base-{self.host}.c"
        cc = os.environ.get("CC", "gcc" if os.name == "nt" else "cc")
        if not snapshot.exists() or not shutil.which(cc) or not shutil.which("gcov"):
            print("fuzz: coverage needs the host's snapshot, a C compiler and gcov; running without it", flush=True)
            return False
        self.work.mkdir(parents=True, exist_ok=True)
        self.keep.mkdir(parents=True, exist_ok=True)
        if not self.compiler.exists() or self.compiler.stat().st_mtime < snapshot.stat().st_mtime:
            flags = [cc, "--coverage", "-O0", "-w", "-fno-strict-aliasing", "-I", str(self.root / "runtime")]
            libraries = ["-lm", "-pthread"] + (["-lsynchronization", "-lbcrypt", "-Wl,--stack,16777216"] if os.name == "nt" else [])
            for source, obj in ((snapshot, "luce.o"), (self.root / "runtime" / "lucb_rt.c", "rt.o")):
                if subprocess.run(flags + ["-c", str(source), "-o", str(self.work / obj)], capture_output=True).returncode != 0:
                    print("fuzz: the instrumented compiler did not build; running without coverage", flush=True)
                    return False
            if subprocess.run([cc, "--coverage", str(self.work / "luce.o"), str(self.work / "rt.o"), *libraries, "-o", str(self.compiler)], capture_output=True).returncode != 0:
                print("fuzz: the instrumented compiler did not link; running without coverage", flush=True)
                return False
        for counts in self.work.glob("*.gcda"):
            counts.unlink()
        return True

    def reach(self, source, timeout):
        """Build `source` through the instrumented compiler for the host, and for another
        target in turn as assembly; whatever they answer, only the reach counts."""
        others = [t for t in TARGETS if t != self.host]
        target = others[self.turn % len(others)]
        self.turn += 1
        scratch = source.parent / f"{source.stem}-coverage"
        for extra in (["-o", str(scratch)], ["--target", target, "--emit=asm", "-o", str(scratch) + ".s"]):
            try:
                subprocess.run([str(self.compiler), "build", str(source), "--native", "--cache-dir", "none", *extra],
                               capture_output=True, timeout=timeout * 8)
            except subprocess.TimeoutExpired:
                pass

    def report(self):
        """The round's reach, against every earlier round's; a line for the round's summary."""
        listing = subprocess.run(["gcov", "-n", "-f", "luce.o"], cwd=self.work, capture_output=True, text=True, errors="replace").stdout
        reached, everything = set(), set()
        for name, percent in re.findall(r"^Function '(\w+)'\nLines executed:([\d.]+)%", listing, re.M):
            everything.add(name)
            if float(percent) > 0:
                reached.add(name)
        if not everything:
            return "coverage: gcov read nothing"
        record = self.keep / "reached.txt"
        before = set(record.read_text().split()) if record.exists() else set()
        new = sorted(reached - before)
        record.write_text("\n".join(sorted(before | reached)) + "\n")
        backend = sorted(name for name in everything - before - reached if re.match(r"lb_\d+back_", name))
        (self.keep / "cold.txt").write_text("\n".join(backend) + "\n")
        shown = ", ".join(n[3:] for n in new[:8]) + (", ..." if len(new) > 8 else "")
        return (f"coverage: {len(reached)} of {len(everything)} compiler functions reached, {len(new)} for the first time"
                + (f" ({shown})" if new and before else "") + f"; {len(backend)} backend functions never reached (build/fuzz/coverage/cold.txt)")
