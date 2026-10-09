#!/usr/bin/env python3
"""A development build (`--debug`) defines every label its debug information names: each
scope's range runs from one instruction's `Ldw_pc` label to another's, so a pass that left
out an instruction after the scopes were recorded (`drop_passed_labels`) named labels that
no instruction emitted, and the link failed. Checked on the assembly of every sample program, for
each target, which any host emits.

Usage: tools/test_debug_labels.py [COMPILER]
"""
from concurrent.futures import ThreadPoolExecutor
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base")
TARGETS = ("arm64-macos", "x86_64-linux", "x86_64-windows")
DEFINED = re.compile(r"^(Ldw_\w+):", re.M)
NAMED = re.compile(r"\b(Ldw_(?:pc|v|sc)_\d+_\d+)\b")

# the samples that are programs
samples = sorted(p for p in (ROOT / "tests" / "samples").glob("*.lucb") if "func main(" in p.read_text(encoding="utf-8"))
with tempfile.TemporaryDirectory(prefix="debug-labels-") as work:
    def check(job):
        sample, target = job
        asm = Path(work) / f"{sample.stem}-{target}.s"
        built = subprocess.run([COMPILER, "build", sample, "--native", "--debug", "--target", target, "--emit=asm", "-o", asm], capture_output=True, text=True)
        if built.returncode != 0:
            return f"{sample.name} {target}: the build failed:\n{built.stderr}"
        text = asm.read_text(encoding="utf-8")
        missing = sorted(set(NAMED.findall(text)) - set(DEFINED.findall(text)))
        return f"{sample.name} {target}: undefined {missing[:5]}" if missing else None
    jobs = [(sample, target) for sample in samples for target in TARGETS]
    with ThreadPoolExecutor(os.cpu_count() or 2) as pool:
        failures = [f for f in pool.map(check, jobs) if f]
if failures:
    sys.exit("FAIL " + "\nFAIL ".join(failures))
print(f"ok --debug defines every label its debug information names ({len(samples)} samples, {len(TARGETS)} targets)")
