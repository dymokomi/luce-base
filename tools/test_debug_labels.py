#!/usr/bin/env python3
"""A development build (`--debug`) defines every label its debug information names: each
scope's range runs from one instruction's `Ldw_pc` label to another's, so a pass that left
out an instruction after the scopes were recorded (`drop_passed_labels`) named labels that
no instruction emitted, and the link failed. Its call frame information stays inside
`.cfi_startproc` and `.cfi_endproc`, which `as` insists on: a naked function (§9.8) has none,
since it is its assembly and nothing else. Checked on the assembly of every sample program
and of a naked function, for each target, which any host emits, in `--debug` and
`--release --debug` builds.

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
MODES = (["--debug"], ["--release", "--debug"])
DEFINED = re.compile(r"^(Ldw_\w+):", re.M)
NAMED = re.compile(r"\b(Ldw_(?:pc|v|sc)_\d+_\d+)\b")



def stray_frame_information(text):
    """The first `.cfi_` directive outside `.cfi_startproc` ... `.cfi_endproc`, or None."""
    inside = False
    for line in text.splitlines():
        directive = line.strip()
        if directive.startswith(".cfi_startproc"):
            inside = True
        elif directive.startswith(".cfi_endproc"):
            inside = False
        elif directive.startswith(".cfi_") and not inside:
            return directive
    return None


# the samples that are programs, and a naked function's
samples = sorted(p for p in (ROOT / "tests" / "samples").glob("*.lucb") if "func main(" in p.read_text(encoding="utf-8"))
samples.append(ROOT / "tests" / "conformance" / "19_compilation" / "targets.lucb")
with tempfile.TemporaryDirectory(prefix="debug-labels-") as work:
    def check(job):
        sample, target, mode = job
        asm = Path(work) / f"{sample.stem}-{target}-{len(mode)}.s"
        flags = " ".join(mode)
        built = subprocess.run([COMPILER, "build", sample, "--native", *mode, "--target", target, "--emit=asm", "-o", asm], capture_output=True, text=True)
        if built.returncode != 0:
            return f"{sample.name} {target} {flags}: the build failed:\n{built.stderr}"
        text = asm.read_text(encoding="utf-8")
        missing = sorted(set(NAMED.findall(text)) - set(DEFINED.findall(text)))
        if missing:
            return f"{sample.name} {target} {flags}: undefined {missing[:5]}"
        stray = stray_frame_information(text)
        return f"{sample.name} {target} {flags}: `{stray}` outside a procedure's frame information" if stray else None
    jobs = [(sample, target, mode) for sample in samples for target in TARGETS for mode in MODES]
    with ThreadPoolExecutor(os.cpu_count() or 2) as pool:
        failures = [f for f in pool.map(check, jobs) if f]
if failures:
    sys.exit("FAIL " + "\nFAIL ".join(failures))
print(f"ok --debug defines every label its debug information names and keeps its frame information in procedures ({len(samples)} programs, {len(TARGETS)} targets)")
