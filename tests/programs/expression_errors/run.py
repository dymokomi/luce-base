#!/usr/bin/env python3
"""Exercise expression propagation and cleanup under every code generator."""
from pathlib import Path
import subprocess
import sys
import tempfile

here = Path(__file__).resolve().parent
compiler = Path(sys.argv[1]).resolve()
modes = [["--native", "--opt", str(n)] for n in range(4)] + [
    ["--backend=c"], ["--backend=c", "--release"]]
with tempfile.TemporaryDirectory(prefix="luce-expression-errors-") as temporary:
    binary = Path(temporary) / "test"
    for flags in modes:
        print("checking", " ".join(flags), flush=True)
        subprocess.run([str(compiler), "build", str(here / "main.lucb"),
                        *flags, "-o", str(binary)], check=True, timeout=120)
        subprocess.run([str(binary)], check=True, timeout=10)
print("PASS expression propagation and handler cleanup in six modes")
