#!/usr/bin/env python3
"""Qualified spans and function signatures are generic type arguments."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
modes = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-qualified-generics-') as temporary:
    binary = Path(temporary) / 'fixture'
    for flags in modes:
        subprocess.run([compiler, 'build', source, *flags, '-o', binary], check=True, timeout=120)
        subprocess.run([binary], check=True, timeout=15)
print('PASS qualified span and function type arguments; six modes')
