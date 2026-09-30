#!/usr/bin/env python3
"""A package's C source that alone needs libm links and runs in every build."""
from pathlib import Path
import shutil, subprocess, sys, tempfile

source = Path(__file__).resolve().parent
compiler = str(Path(sys.argv[1]).resolve())
with tempfile.TemporaryDirectory(prefix='luce-c-source-libm-') as directory:
    work = Path(directory)
    for name in ('main.lucb', 'tables.c', 'package.prisma'):
        shutil.copy2(source / name, work / name)
    modes = [('native', ['--native']), ('native-3', ['--native', '--opt', '3']), ('c', ['--backend=c']), ('c-release', ['--backend=c', '--release'])]
    for name, flags in modes:
        binary = str(work / name)
        subprocess.run([compiler, 'build', str(work / 'main.lucb'), *flags, '-o', binary], check=True, timeout=90)
        result = subprocess.run([binary], text=True, capture_output=True, timeout=15)
        assert result.returncode == 0 and result.stdout.strip() == '2000.0 1000.0', result.stdout + result.stderr
        print(f'ok c_source_libm {name}', flush=True)
