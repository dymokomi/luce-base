#!/usr/bin/env python3
"""On x86-64 a float constant gives up its register when the floats want more than there
are: thirteen `f64` values carried round a loop with two constants of their own fill
xmm0-xmm13 (Windows: xmm0-xmm3, xmm6-xmm15), so each constant is read from the function's
literal pool where it is used (`mulsd .L..._k0(%rip)`) or formed by clearing a register,
and the values keep their registers, nothing of the loop in the frame. Both conventions,
the baseline level and x86-64-v3; every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'


def program(values):
    """`values` floats carried round a loop with the constants 0.375 and 0.0009765625."""
    return '\n'.join(
        [f'## {values} values carried round a loop, each from the next, with two constants.',
         'noinline func spread(values: const f64[]) -> f64:']
        + [f'    var a{i}: f64 = {i}.0' for i in range(values)]
        + ['    for v in values:']
        + [f'        a{i} = a{(i + 1) % values} * {"0.375" if i % 2 else "0.0009765625"} + v' for i in range(values)]
        + ['    return ' + ' + '.join(f'a{i}' for i in range(values)),
           '',
           'pub func main(arguments: str[]) -> i32:',
           '    var values: f64[64] = ---',
           '    for at in 0..<64:',
           '        values[at] = (f64)at * 0.25 + (f64)arguments.length',
           '    print(f"{spread(values[0..]):.9f}")',
           '    return 0', ''])


with tempfile.TemporaryDirectory(prefix='float-constants-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(program(13))
    asm_path = Path(work) / 'main.s'
    for target in ('x86_64-linux', 'x86_64-windows'):
        for level in ('v1', 'v3'):
            where = f'{target} --cpu {level}'
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--cpu', level, '--emit=asm', '-o', asm_path], check=True)
            text = asm_path.read_text()
            found = re.search(r'\nlb_\w*spread:(.*?)\n    ret', text, re.S)
            assert found, 'spread'
            loop = re.search(r'\n(\.L\w+):\n(.*?)\n\s*j\w+ \1\n', found.group(1), re.S)
            if not loop:
                sys.exit(f'FAIL: no loop found in spread ({where}):\n{found.group(1)}')
            body = loop.group(2)
            if re.search(r'\(%r[bs]p\)', body):
                sys.exit(f'FAIL: the loop keeps a value in the frame ({where}):\n{body}')
            if not re.search(r'mulsd \.L\w+_k\d+\(%rip\)', body):
                sys.exit(f'FAIL: no constant read from the literal pool in the loop ({where}):\n{body}')
            if not re.search(r'\.L\w+_k\d+:\n\s*\.quad 4600427019358961664', text):
                sys.exit(f'FAIL: the literal pool lacks 0.375 ({where})')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok x86-64 float constants come from the literal pool when the floats fill the registers')
