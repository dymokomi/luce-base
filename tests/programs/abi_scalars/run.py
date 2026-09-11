#!/usr/bin/env python3
"""Compare scalar argument ABI with independent C code, including optimized exports."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

source = Path(__file__).resolve().parent
compiler = str(Path(sys.argv[1]).resolve())
with tempfile.TemporaryDirectory(prefix='luce-abi-scalars-') as directory:
    work = Path(directory)
    for name in ('main.lucb', 'helper.c', 'luce.toml'):
        shutil.copy2(source / name, work / name)
    modes = [(f'native-{i}', ['--native', '--opt', str(i)]) for i in range(4)]
    modes += [('c', ['--backend=c']), ('c-release', ['--backend=c', '--release'])]
    for name, flags in modes:
        binary = str(work / name)
        subprocess.run([compiler, 'build', str(work / 'main.lucb'), *flags, '-o', binary], check=True, timeout=90)
        result = subprocess.run([binary], text=True, capture_output=True, timeout=15)
        assert result.returncode == 0, result.stdout + result.stderr
        assert result.stdout.strip() == 'ok scalar stack ABI in both directions', result.stdout
        print(f'ok abi_scalars {name}', flush=True)
