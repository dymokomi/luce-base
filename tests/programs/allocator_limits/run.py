#!/usr/bin/env python3
"""Direct allocator calls preserve size/alignment contracts at numeric limits."""
from pathlib import Path
import subprocess
import sys
import tempfile
ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
MODES = [['--native', '--opt', str(n)] for n in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='luce-allocator-limits-') as temporary:
    binary = Path(temporary) / 'test'
    for flags in MODES:
        subprocess.run([str(COMPILER), 'build', str(Path(__file__).with_name('main.lucb')), *flags, '-o', str(binary)], check=True, timeout=120)
        subprocess.run([str(binary)], check=True, timeout=10)
print('PASS direct allocator rounding, alignment and resize; six modes')
