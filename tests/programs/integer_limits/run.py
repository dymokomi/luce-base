#!/usr/bin/env python3
"""Constant folding must preserve signedness and runtime overflow traps."""
from pathlib import Path
import subprocess
import sys
import tempfile
COMPILER = Path(sys.argv[1]).resolve()
MODES = [['--native', '--opt', str(n)] for n in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='luce-integer-limits-') as temporary:
    binary = Path(temporary) / 'test'
    for flags in MODES:
        subprocess.run([str(COMPILER), 'build', str(Path(__file__).with_name('main.lucb')), *flags, '-o', str(binary)], check=True, timeout=120)
        subprocess.run([str(binary), '0'], check=True, timeout=10)
        for case in range(1, 8):
            result = subprocess.run([str(binary), str(case)], capture_output=True, text=True, timeout=10)
            assert result.returncode == 1 and 'integer overflow' in result.stderr, (flags, case, result)
print('PASS unsigned/signed constant overflow and nonoverflow; six modes')
