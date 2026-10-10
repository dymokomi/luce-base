#!/usr/bin/env python3
"""A function value an inline function is handed, a named function, is called directly once
the inline function is expanded (`opt.direct_calls`), and expanded in turn when it is small:
the loop of `doubled` calls nothing, on either architecture. Every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'

SOURCE = '''## A kernel handed to an inline loop by name.
inline func twice(x: f64) -> f64:
    return x * 2.0 + 1.0

inline func apply(kernel: func(f64) -> f64, xs: const f64[], out: f64[]):
    for i in 0..<xs.length:
        out[i] = kernel(xs[i])

noinline func doubled(xs: const f64[], out: f64[]):
    apply(twice, xs, out)

pub func main(arguments: str[]) -> i32:
    var a: f64[4] = [1.0, 2.0, -3.0, (f64)arguments.length]
    var b: f64[4] = ---
    doubled(a[0..], b[0..])
    print(f"{b[0]} {b[2]} {b[3]}")
    return 0
'''

with tempfile.TemporaryDirectory(prefix='direct-calls-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(SOURCE)
    asm = Path(work) / 'main.s'
    for target in ('arm64-macos', 'x86_64-linux'):
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm], check=True)
        found = re.search(r'\n_?lb_\w*doubled:\n(.*?)\n\s*ret\b', asm.read_text(), re.S)
        assert found, 'doubled'
        if re.search(r'\b(bl|blr|call)\b', found.group(1)):
            sys.exit(f'FAIL: doubled still calls ({target}):\n{found.group(1)}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok a named function handed to an inline function is called directly, and expanded')
