#!/usr/bin/env python3
"""Integer values in every allocatable register, rcx and rdx among them on x86-64, live
across divisions, variable shifts, unsigned checked products, atomic retry loops and half
conversions: every build prints the same, and what it should."""
from pathlib import Path
import platform
import shutil
import subprocess
import sys
import tempfile

EXPECTED = '''mix 679379254342638026
shifts 9295704340721916289
divisions 548699748818875727
products 16879441847260900411
atomics 14867117857406383001
halves 6653056730924739029
'''

source = Path(__file__).resolve().parent
compiler = str(Path(sys.argv[1]).resolve())
with tempfile.TemporaryDirectory(prefix='luce-integer-registers-') as directory:
    work = Path(directory)
    shutil.copy2(source / 'main.lucb', work / 'main.lucb')
    modes = [(f'native-{i}', ['--native', '--opt', str(i)]) for i in range(4)]
    modes += [('c', ['--backend=c']), ('c-release', ['--backend=c', '--release'])]
    if platform.machine().lower() in ('x86_64', 'amd64'):
        # below x86-64-v3 halves convert through the unit's own routines, which use rcx
        # and rdx; from it, F16C
        modes += [(f'native-3-{level}', ['--native', '--opt', '3', '--cpu', level]) for level in ('v1', 'v3')]
    for name, flags in modes:
        binary = str(work / name)
        subprocess.run([compiler, 'build', str(work / 'main.lucb'), *flags, '-o', binary], check=True, timeout=120)
        result = subprocess.run([binary], text=True, capture_output=True, timeout=30)
        output = result.stdout.replace('\r\n', '\n')
        if result.returncode != 0 or output != EXPECTED:
            sys.exit(f'FAIL integer_registers {name}: status {result.returncode}\n{output}{result.stderr}')
        print(f'ok integer_registers {name}', flush=True)
