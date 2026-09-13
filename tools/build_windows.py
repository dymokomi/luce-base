#!/usr/bin/env python3
"""Bootstrap native Windows x64 Base and verify self-hosting across generations."""
import argparse
import os
from pathlib import Path
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]


def run(*command, timeout=600):
    print("+", " ".join(map(str, command)), flush=True)
    subprocess.run(list(map(str, command)), cwd=ROOT, check=True, timeout=timeout)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--seed', type=Path, help='verify a fresh bootstrap using this C++ seed')
    parser.add_argument('--cc', default=os.environ.get('CC', 'gcc'), help='MinGW GCC executable')
    args = parser.parse_args()
    if os.name != 'nt':
        parser.error('this entry point builds on Windows; use build.sh on Unix')
    build = ROOT / 'build'
    build.mkdir(exist_ok=True)
    for script in ('embed_version.py', 'embed_runtime.py', 'embed_std.py', 'embed_native_links.py'):
        run(sys.executable, ROOT / 'tools' / script)
    zero, one, two = [build / f'windows-stage{i}.exe' for i in range(3)]
    if args.seed:
        run(args.seed.resolve(), 'build', 'src/main.lucb', '--release', '-o', zero)
    else:
        run(args.cc, '-std=gnu11', '-O2', '-fno-strict-aliasing', '-I', ROOT / 'runtime',
            ROOT / 'bootstrap/luce-base-x86_64-windows.c', ROOT / 'runtime/lucb_rt.c',
            '-pthread', '-lm', '-lsynchronization', '-lbcrypt', '-Wl,--stack,16777216', '-o', zero)
    run(zero, 'build', 'src/main.lucb', '--native', '--cpu', 'v1', '-o', one)
    run(one, 'build', 'src/main.lucb', '--native', '--cpu', 'v1', '-o', two)
    for backend in ('c', 'asm'):
        first, second = [build / f'windows-fixedpoint-{i}.{backend}' for i in (1, 2)]
        for compiler, output in ((one, first), (two, second)):
            run(compiler, 'build', 'src/main.lucb', '--cpu', 'v1', f'--emit={backend}', '-o', output)
        if first.read_bytes() != second.read_bytes():
            raise RuntimeError(f'self-hosting {backend} output differs; retained both outputs')
    shutil.copy2(two, build / 'luce-base.exe')
    run(build / 'luce-base.exe', '--version')
    print('PASS Windows bootstrap: native generations emit identical C and assembly')


if __name__ == '__main__':
    main()
