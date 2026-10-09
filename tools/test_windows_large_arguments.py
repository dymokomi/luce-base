#!/usr/bin/env python3
"""Windows x64 copies an aggregate argument past 128 bytes inline in the caller that stages
it, never through `memcpy`: a call there would clobber the later arguments still in
caller-saved registers (rcx, rdx, r8–r11, xmm0–xmm5). System V does the same. (A callee
may still copy one through `memcpy`: `straight_params` stores every argument register first
when a parameter is an aggregate.) Checked on the assembly for x86_64-windows, which any host emits;
tests/conformance/09_functions/large_argument_beside_registers runs it.

Usage: tools/test_windows_large_arguments.py [COMPILER]
"""
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base")
SOURCE = ROOT / "tests" / "conformance" / "09_functions" / "large_argument_beside_registers.lucb"

with tempfile.TemporaryDirectory(prefix="windows-large-arguments-") as work:
    for level in ("0", "1", "2", "3"):
        asm = Path(work) / "main.s"
        subprocess.run([COMPILER, "build", SOURCE, "--native", "--opt", level, "--target", "x86_64-windows", "--emit=asm", "-o", asm], check=True)
        text = asm.read_text()
        for name in ("place",):
            found = re.search(r"\nlb_\w*_" + name + r":\n(.*?)\.seh_endproc", text, re.S)
            if not found:
                sys.exit(f"FAIL: no {name} in the assembly at --opt {level}")
            if "memcpy" in found.group(1):
                sys.exit(f"FAIL: {name} copies its 144-byte argument through memcpy at --opt {level}:\n{found.group(1)}")
print("ok Windows x64 copies a large argument inline, leaving the arguments in registers")
