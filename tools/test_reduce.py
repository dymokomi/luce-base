#!/usr/bin/env python3
"""tools/reduce.py cuts a program down while its predicate holds: here, that the program
still checks, has its `main` and still prints. The unused statements, struct and field go, and so do the
parameters `keep` does not use, from its declaration and from its call, while the one it
returns stays.

Usage: tools/test_reduce.py [COMPILER]
"""
import os
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 and sys.argv[1] != "--predicate" else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base")
PROGRAM = '''struct Spare:
    var a: i64
    var b: i64

noinline func keep(a: i64, b: i64, c: Spare) -> i64:
    var unused: i64 = a
    unused = unused + 1
    return b

pub func main(arguments: str[]) -> i32:
    var s = Spare(a = 1, b = 2)
    s.b = 5
    let x = keep(1, 2, s)
    if x > 0:
        s.a = 3
    print(f"{x}")
    return 0
'''

if "--predicate" in sys.argv:
    # the predicate itself: the candidate checks, and keeps `main` and its print
    compiler, candidate = sys.argv[2], sys.argv[3]
    text = Path(candidate).read_text()
    checked = subprocess.run([compiler, "check", candidate], capture_output=True).returncode == 0
    sys.exit(0 if checked and "pub func main(" in text and "print(" in text else 1)

with tempfile.TemporaryDirectory(prefix="reduce-test-") as work:
    source = Path(work) / "finding.lucb"
    source.write_text(PROGRAM)
    check = f'"{sys.executable}" "{Path(__file__).resolve()}" --predicate "{COMPILER}" {{}}'
    done = subprocess.run([sys.executable, str(ROOT / "tools" / "reduce.py"), str(source), "--check", check], capture_output=True, text=True)
    if done.returncode != 0:
        sys.exit(f"FAIL reduce: {done.stdout}{done.stderr}")
    reduced = source.with_suffix(".reduced.lucb").read_text()
    for wanted, why in (("func keep(b: i64) -> i64:", "the unused parameters stay"), ("keep(2)", "the call keeps the dropped arguments"),
                        ("print(", "the predicate's line went")):
        if wanted not in reduced:
            sys.exit(f"FAIL reduce: {why}:\n{reduced}")
    for unwanted in ("Spare", "unused", "s.a"):
        if unwanted in reduced:
            sys.exit(f"FAIL reduce: `{unwanted}` stayed:\n{reduced}")
print(f"ok reduce: {len(PROGRAM.splitlines())} lines to {len(reduced.splitlines())}, unused parameters dropped")
