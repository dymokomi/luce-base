#!/usr/bin/env python3
"""Persistent Base workers: ownership, backpressure, cancellation and startup."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
modes = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-workers-') as temporary:
    binary = Path(temporary) / 'fixture'
    for flags in modes:
        subprocess.run([compiler, 'build', source, *flags, '-o', binary], check=True, timeout=120)
        for _ in range(3):
            result = subprocess.run([binary], capture_output=True, text=True, timeout=20)
            assert result.returncode == 0 and not result.stdout and not result.stderr, result
print('PASS native workers: copied packets, persistent state, errors, blocked queues, socket cancellation, startup failure and joined cleanup; six modes')
