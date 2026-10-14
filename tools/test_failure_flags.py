#!/usr/bin/env python3
"""A fallible result's flag comes back in its register as 0 or 1, and a caller tests the
whole register (`opt.failure_flags`). A function that builds its result in its frame, as
every function of a `--debug` build does, loads the flag word only as far as the flag
reaches, a byte: the rest of the word is padding, whatever the frame held there, and the
whole word made every `--release --debug` program on Windows report `error:  (code 0)` as
`main` returned. Checked on the assembly of each target, in `--debug` and `--release
--debug` builds, and by running the host's.

Usage: tools/test_failure_flags.py [COMPILER]
"""
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base")

SOURCE = """## A fallible result built in the frame and returned.
noinline func check(n: i64) -> i64!:
    if n < 0:
        error(1, "negative")
    return n * 2

pub func main(arguments: str[]) -> i32!:
    print(f"{try check(i64(arguments.length))}")
    return 0
"""

# the flag word of `check`'s `i64!`, at byte 8 of the result, into its register
FLAG_LOAD = {"arm64-macos": re.compile(r"\bldr\w*\s+([xw])1, \[x16, #8\]"),
             "x86_64-linux": re.compile(r"\bmov(\w*)\s+8\(%r10\), %[er]dx\b"),
             "x86_64-windows": re.compile(r"\bmov(\w*)\s+8\(%r10\), %[er]dx\b")}
NARROW = {"arm64-macos": "w", "x86_64-linux": "zbl", "x86_64-windows": "zbl"}
HOST = {"darwin": "arm64-macos", "linux": "x86_64-linux", "win32": "x86_64-windows"}[sys.platform]

failures = []
with tempfile.TemporaryDirectory(prefix="failure-flags-") as work:
    source = Path(work) / "flags.lucb"
    source.write_text(SOURCE, encoding="utf-8")
    for mode in (["--debug"], ["--release", "--debug"]):
        flags = " ".join(mode)
        for target, load in FLAG_LOAD.items():
            asm = Path(work) / f"{target}.s"
            built = subprocess.run([COMPILER, "build", source, "--native", *mode, "--target", target, "--emit=asm", "-o", asm], capture_output=True, text=True)
            if built.returncode != 0:
                failures.append(f"{target} {flags}: the build failed:\n{built.stderr}")
                continue
            text = asm.read_text(encoding="utf-8")
            found = re.search(r"\n_?lb_flags_check:\n(.*?)\n_?lb_\w+:\n", text, re.S)
            loads = load.findall(found.group(1)) if found else []
            if not loads or any(width != NARROW[target] for width in loads):
                failures.append(f"{target} {flags}: the flag word is loaded as {loads or 'nothing'}, not as its byte")
        program = Path(work) / ("flags.exe" if os.name == "nt" else "flags")
        built = subprocess.run([COMPILER, "build", source, "--native", *mode, "-o", program], capture_output=True, text=True)
        ran = subprocess.run([program, "x", "y"], capture_output=True, text=True) if built.returncode == 0 else None
        if ran is None or ran.returncode != 0 or ran.stdout != "6\n":
            failures.append(f"{HOST} {flags}: the program failed: {built.stderr if ran is None else ran.stdout + ran.stderr}")
if failures:
    sys.exit("FAIL " + "\nFAIL ".join(failures))
print(f"ok a fallible result's flag comes back 0 or 1 from a frame, {len(FLAG_LOAD)} targets, --debug and --release --debug")
