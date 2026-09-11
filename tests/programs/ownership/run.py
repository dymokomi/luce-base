#!/usr/bin/env python3
"""Shared ownership rejects cross-thread counts and unentered callbacks in every mode."""
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
SOURCE = Path(__file__).with_name('main.lucb')
MODES = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]

# These tests also observe cycle order, weak shells, failed reservations, allocator
# reuse and unpublished cleanup through the public standard ownership API.
for backend in ['--native', '--backend=c']:
    subprocess.run([COMPILER, 'test', SOURCE.with_name('state.lucb'), backend],
                   cwd=ROOT, check=True, timeout=120)

with tempfile.TemporaryDirectory(prefix='base-ownership-') as temporary:
    binary = Path(temporary) / 'ownership'
    for flags in MODES:
        subprocess.run([COMPILER, 'build', SOURCE, *flags, '-o', binary],
                       cwd=ROOT, check=True, timeout=120)
        for operation in range(5):
            result = subprocess.run([binary, str(operation)], capture_output=True,
                                    text=True, timeout=15)
            expected = 0 if operation == 0 else 1
            assert result.returncode == expected, result
            assert not result.stdout, result.stdout
            if operation == 0:
                assert not result.stderr, result.stderr
            else:
                message = ('another runtime thread' if operation < 4
                           else 'needs a runtime entry on this thread')
                assert message in result.stderr, result.stderr
print('PASS shared ownership: lifecycle, context generations and wrong-thread rejection; six modes')
