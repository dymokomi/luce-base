#!/usr/bin/env python3
"""Float values in registers across calls, argument moves, a variadic callee, halves and
Windows x64's nonvolatile xmm registers: every build prints the same, and what it should."""
from pathlib import Path
import platform
import shutil
import subprocess
import sys
import tempfile

EXPECTED = '''across 64.759033203125
rotated 4797.25
mixed 35.25
variadic 36.9375
halves 331.81661217666056
from C 1920.5
pressure 706.1161590687698 nonvolatile kept true
'''

source = Path(__file__).resolve().parent
compiler = str(Path(sys.argv[1]).resolve())
with tempfile.TemporaryDirectory(prefix='luce-float-registers-') as directory:
    work = Path(directory)
    for name in ('main.lucb', 'helper.c', 'package.prisma'):
        shutil.copy2(source / name, work / name)
    modes = [(f'native-{i}', ['--native', '--opt', str(i)]) for i in range(4)]
    modes += [('c', ['--backend=c']), ('c-release', ['--backend=c', '--release'])]
    if platform.machine().lower() in ('x86_64', 'amd64'):
        # below x86-64-v3 halves convert through the unit's own routines; from it, F16C
        # and the three-operand AVX forms
        modes += [(f'native-3-{level}', ['--native', '--opt', '3', '--cpu', level]) for level in ('v1', 'v3')]
    for name, flags in modes:
        binary = str(work / name)
        subprocess.run([compiler, 'build', str(work / 'main.lucb'), *flags, '-o', binary], check=True, timeout=120)
        result = subprocess.run([binary], text=True, capture_output=True, timeout=30)
        output = result.stdout.replace('\r\n', '\n')
        if result.returncode != 0 or output != EXPECTED:
            sys.exit(f'FAIL float_registers {name}: status {result.returncode}\n{output}{result.stderr}')
        print(f'ok float_registers {name}', flush=True)
