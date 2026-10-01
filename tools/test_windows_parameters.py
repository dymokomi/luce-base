#!/usr/bin/env python3
"""Windows x64 receives a function's first four scalar parameters straight from their
registers (rcx, rdx, r8, r9 for integers; xmm0 to xmm3 for floats, by position): the entry
moves each into the register the parameter lives in and stores none of them in the frame,
and a parameter read only once may be used where it arrives. Checked on the assembly for
x86_64-windows, which any host emits, and the program's answer on this host.

Usage: tools/test_windows_parameters.py [COMPILER]
"""
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base")
PROGRAM = '''noinline func blend(a: i64, b: f64, c: i32, d: f64) -> f64:
    return (f64)a * b + (f64)c * d

noinline func mix(a: i64, b: i64, c: i64, d: i64) -> i64:
    return a * 3 + b * 5 + c * 7 + d * 11

pub func main(arguments: str[]) -> i32:
    print(f"{blend(2, 1.5, 3, 0.25)} {mix(1, 2, 3, 4)}")
    return 0
'''
ARGUMENTS = r"%(rcx|rdx|r8|r9|ecx|edx|r8d|r9d|xmm0|xmm1|xmm2|xmm3)"

with tempfile.TemporaryDirectory(prefix="windows-parameters-") as work:
    source = Path(work) / "main.lucb"
    source.write_text(PROGRAM)
    for level in ("1", "2", "3"):
        asm = Path(work) / "main.s"
        subprocess.run([COMPILER, "build", source, "--native", "--opt", level, "--target", "x86_64-windows", "--cpu", "v1", "--emit=asm", "-o", asm], check=True)
        text = asm.read_text()
        for name in ("blend", "mix"):
            found = re.search(r"\nlb_\w*" + name + r":\n(.*?)\n    ret", text, re.S)
            if not found:
                sys.exit(f"FAIL: no {name} in the assembly at --opt {level}")
            body = found.group(1)
            stored = re.search(r"\n\s*mov\w*\s+" + ARGUMENTS + r",\s*-?\d*\(%r[bs]p\)", body)
            if stored:
                sys.exit(f"FAIL: {name} stores its argument register {stored.group(1)} in the frame at --opt {level}:\n{body}")
    binary = Path(work) / ("main.exe" if os.name == "nt" else "main")
    subprocess.run([COMPILER, "build", source, "--native", "-o", binary], check=True)
    answer = subprocess.run([binary], capture_output=True, text=True, check=True).stdout
    if answer != "3.75 78\n":
        sys.exit(f"FAIL: the program answered {answer!r}")
print("ok Windows x64 parameters stay in registers; none is stored at entry")
