#!/usr/bin/env python3
"""Verify raw C borrows in native code and helper boundaries under ASan/UBSan."""
from pathlib import Path
import os
import shlex
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
COMPILER = Path(sys.argv[1]).resolve()
MODES = [['--native', '--opt', str(n)] for n in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='luce-runtime-limits-') as temporary:
    binary = Path(temporary) / 'test'
    for flags in MODES:
        subprocess.run([str(COMPILER), 'build', str(HERE / 'main.lucb'), *flags, '-o', str(binary)], check=True, timeout=120)
        subprocess.run([str(binary)], check=True, timeout=10)
    subprocess.run([*shlex.split(os.environ.get('CC', 'cc')), '-std=gnu11', '-Wall', '-Wextra', '-Werror',
                    '-fsanitize=address,undefined', '-fno-sanitize-recover=all',
                    '-I', str(ROOT / 'runtime'), str(HERE / 'runtime.c'), '-o', str(binary)], check=True, timeout=60)
    subprocess.run([str(binary)], check=True, timeout=10)
print('PASS guard-page C borrows in six modes and sanitized runtime boundaries')
