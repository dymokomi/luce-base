#!/usr/bin/env python3
"""Impossible element counts must fail before invoking an allocator."""
from pathlib import Path
import subprocess
import sys
import tempfile
ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
MODES = [['--native', '--opt', str(n)] for n in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='luce-allocation-limits-') as temporary:
    binary = Path(temporary) / 'test'
    for flags in MODES:
        subprocess.run([str(COMPILER), 'build', str(Path(__file__).with_name('main.lucb')), *flags, '-o', str(binary)], check=True, timeout=120)
        subprocess.run([str(binary)], check=True, timeout=10)
        result = subprocess.run([str(binary), 'invalid-release'], capture_output=True, text=True, timeout=10)
        assert result.returncode == 1 and 'integer overflow' in result.stderr, (flags, result)
print('PASS allocation/release byte limits and allocator behavior; six modes')
