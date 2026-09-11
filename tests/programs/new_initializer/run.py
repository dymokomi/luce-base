#!/usr/bin/env python3
"""Construct in allocated storage and release it on every initializer failure."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
flags = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-new-initializer-') as temporary:
    binary = Path(temporary) / 'fixture'
    for mode in flags:
        subprocess.run([compiler, 'build', source, *mode, '-o', binary], check=True, timeout=120)
        result = subprocess.run([binary], capture_output=True, text=True, timeout=15)
        assert result.returncode == 0 and not result.stdout and not result.stderr, result
print('PASS new initialization: defaults, empty arguments, stable self, failures and captured allocator; six modes')
