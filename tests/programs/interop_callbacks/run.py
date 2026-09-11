#!/usr/bin/env python3
"""Retained native callbacks: reentrancy, disconnection, failures and mixed owners."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
modes = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-callbacks-') as temporary:
    binary = Path(temporary) / 'fixture'
    for flags in modes:
        subprocess.run([compiler, 'build', source, *flags, '-o', binary], check=True, timeout=120)
        result = subprocess.run([binary], capture_output=True, text=True, timeout=15)
        assert result.returncode == 0 and not result.stdout and not result.stderr, result
        rejected = subprocess.run([binary, 'wrong-thread'], capture_output=True, text=True, timeout=15)
        assert rejected.returncode == 1 and 'another runtime thread' in rejected.stderr, rejected
print('PASS native callbacks, reentrant signals, disconnect, errors, allocation failure, cycles and thread affinity; six modes')
