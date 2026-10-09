#!/usr/bin/env python3
"""Keep this host fuzzing the compiler at main, gently, until told to stop.

Each round brings this checkout (and `../luce-std`, and `../luce-seed` where it is built) to
GitHub's main, rebuilds the compiler when the sources changed, and runs `tools/fuzz.py` for
`--minutes` at a fresh seed: generated programs weighted over mutations, since the backends
are where the risk is, and aimed (`--aim`) at what the last week of commits changed. When
main brings a new version of this runner, the runner starts again as it. The runner and everything it starts run at the lowest priority, and
the compiler on one or two threads (`LUCE_BASE_JOBS`), so the machine stays free for work.

What it keeps, under build/fuzz/:
  rounds.log     one line a round: when, the commit, the seed, what ran, the findings, and
                 how many compiler functions the round reached, how many for the first time
  coverage/      every function any round reached, and the backend's never reached (cold.txt)
  kept/<when>-<seed>/   the reproducers of a round that found something
  runner.pid     the running runner's process, which `--stop` ends

Run it in a checkout of its own (it moves the checkout to main), never in one being edited.

Usage:
  tools/fuzz_runner.py [--minutes M] [--jobs N]   start (in the foreground; see docs/CI.md)
  tools/fuzz_runner.py --stop                      end the runner on this host
  tools/fuzz_runner.py --report [--hours H]        one line: rounds, programs, findings
"""
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
FUZZ = ROOT / "build" / "fuzz"
PID = FUZZ / "runner.pid"
LOG = FUZZ / "rounds.log"
WINDOWS = os.name == "nt"
# per round of fuzz.py: generated programs first, the parser's mutations least
COUNTS = ["--mutations", "40", "--programs", "60", "--trap-programs", "20", "--width-programs", "20",
          "--packages", "10", "--mem-programs", "20", "--atomic-programs", "10", "--litmus-programs", "4",
          "--abi-programs", "30", "--cache-programs", "4", "--aim", "7", "--parallel", "2", "--coverage"]
SUMMARY = re.compile(r"^fuzz: (\d+) mutations, (.*), (\d+) findings \(seed \d+\)(.*)$")
SOURCE = Path(__file__).read_bytes()   # this runner as it started: a different one on disk is newer


def option(name, default):
    args = sys.argv[1:]
    return args[args.index(name) + 1] if name in args else default


def lowest_priority():
    """This process at the lowest priority; what it starts inherits it."""
    if WINDOWS:
        import ctypes
        idle = 0x40
        ctypes.windll.kernel32.SetPriorityClass(ctypes.windll.kernel32.GetCurrentProcess(), idle)
    else:
        os.nice(19)


def git(repo, *args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True, text=True)


def to_main(repo):
    """Move `repo` to GitHub's main; whether it moved."""
    url = git(repo, "remote", "get-url", "origin").stdout.strip()
    if git(repo, "fetch", "-q", url, "main").returncode != 0:
        return False
    head = git(repo, "rev-parse", "HEAD").stdout.strip()
    main = git(repo, "rev-parse", "FETCH_HEAD").stdout.strip()
    if head == main:
        return False
    git(repo, "checkout", "-q", "--detach", main)
    return True


def rebuild(seed_moved):
    seed = ROOT.parent / "luce-seed"
    if seed_moved and (seed / "build.sh").exists():
        subprocess.run(["./build.sh"], cwd=seed, capture_output=True)
    if WINDOWS:
        command = [sys.executable, "tools/build_windows.py"]
    else:
        command = ["./build.sh"]
    return subprocess.run(command, cwd=ROOT, capture_output=True, text=True).returncode == 0


def note(line):
    FUZZ.mkdir(parents=True, exist_ok=True)
    with open(LOG, "a", encoding="utf-8") as log:
        log.write(line + "\n")


def run(minutes, jobs):
    FUZZ.mkdir(parents=True, exist_ok=True)
    if not WINDOWS and os.getpgrp() != os.getpid():
        # a group of its own, so `--stop` ends fuzz.py and the builds with it
        os.setsid()
    PID.write_text(str(os.getpid()))
    lowest_priority()
    environment = dict(os.environ, LUCE_BASE_JOBS=jobs)
    built = (ROOT / "build" / ("luce-base.exe" if WINDOWS else "luce-base")).exists()
    while True:
        moved = to_main(ROOT)
        moved = to_main(ROOT.parent / "luce-std") or moved
        seed_moved = (ROOT.parent / "luce-seed").exists() and to_main(ROOT.parent / "luce-seed")
        if Path(__file__).read_bytes() != SOURCE:
            # main brought a new runner: start again as it, in this process's place
            os.execv(sys.executable, [sys.executable, *sys.argv])
        if moved or seed_moved or not built:
            built = rebuild(seed_moved)
        commit = git(ROOT, "rev-parse", "--short", "HEAD").stdout.strip()
        stamp = time.strftime("%Y-%m-%dT%H:%M:%S")
        if not built:
            note(f"{stamp} {commit} the build failed; waiting for main to change")
            time.sleep(1800)
            continue
        seed = str(int(time.time()))
        for old in FUZZ.glob("finding-*"):
            old.unlink()
        done = subprocess.run([sys.executable, "-u", "tools/fuzz.py", "--seed", seed, "--minutes", minutes, *COUNTS],
                              cwd=ROOT, env=environment, capture_output=True, text=True, encoding="utf-8", errors="replace")
        last = [line for line in done.stdout.splitlines() if line.startswith("fuzz: ") and "findings (seed" in line]
        found = SUMMARY.match(last[-1]) if last else None
        if not found:
            note(f"{stamp} {commit} seed={seed} fuzz.py ended without its summary (status {done.returncode})")
            continue
        programs = sum(int(n) for n in re.findall(r"(\d+) [\w-]+", found.group(2) + found.group(4)))
        findings = int(found.group(3))
        if findings:
            kept = FUZZ / "kept" / f"{stamp.replace(':', '')}-{seed}"
            kept.mkdir(parents=True, exist_ok=True)
            for finding in FUZZ.glob("finding-*"):
                finding.rename(kept / finding.name)
            (kept / "fuzz.out").write_text(done.stdout, encoding="utf-8")
        reach = re.search(r"^coverage: (\d+) of \d+ compiler functions reached, (\d+) for the first time", done.stdout, re.M)
        reached = f" reached={reach.group(1)} new={reach.group(2)}" if reach else ""
        note(f"{stamp} {commit} seed={seed} mutations={found.group(1)} programs={programs} findings={findings}{reached}")


def stop():
    if not PID.exists():
        print("fuzz_runner: no runner on this host")
        return
    pid = int(PID.read_text())
    try:
        if WINDOWS:
            subprocess.run(["taskkill", "/PID", str(pid), "/T", "/F"], capture_output=True)
        else:
            os.killpg(pid, signal.SIGTERM)
    except ProcessLookupError:
        pass
    PID.unlink()
    print(f"fuzz_runner: stopped {pid}")


def report(hours):
    since = time.time() - hours * 3600
    rounds = programs = findings = failed = 0
    for line in LOG.read_text(encoding="utf-8").splitlines() if LOG.exists() else []:
        when = time.mktime(time.strptime(line.split(" ")[0], "%Y-%m-%dT%H:%M:%S"))
        if when < since:
            continue
        fields = dict(f.split("=", 1) for f in line.split(" ") if "=" in f)
        if "programs" in fields:
            rounds += 1
            programs += int(fields["programs"])
            findings += int(fields["findings"])
        else:
            failed += 1
    print(f"{rounds} rounds, {programs} programs, {findings} findings" + (f", {failed} rounds without a result" if failed else ""))


if __name__ == "__main__":
    if "--stop" in sys.argv:
        stop()
    elif "--report" in sys.argv:
        report(float(option("--hours", "24")))
    else:
        run(option("--minutes", "60"), option("--jobs", "2"))
