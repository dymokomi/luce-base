#!/usr/bin/env python3
"""A loop that carries many `f64` values keeps them all in registers, with nothing loaded
from or stored to the frame inside the loop. On arm64, eighteen: the callee-saved d8-d15,
the caller-saved d24-d31 and d19-d23 (d16-d18 are the generator's own scratch). On
x86-64, twelve, under both conventions and at the baseline level and x86-64-v3: System V
gives temporaries xmm0-xmm13 (xmm14 and xmm15 are the generator's), Windows x64 the
volatile xmm0-xmm3 and the nonvolatile xmm6-xmm15 (xmm4 and xmm5 are its scratch). Every
build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'


def program(values):
    """`values` floats carried round a loop, each from the next."""
    return '\n'.join(
        [f'## {values} values carried round a loop, each from the next.',
         'noinline func spread(values: const f64[]) -> f64:']
        + [f'    var a{i}: f64 = {i}.0' for i in range(values)]
        + ['    for v in values:']
        + [f'        a{i} = a{(i + 1) % values} * 0.5 + v' for i in range(values)]
        + ['    return ' + ' + '.join(f'a{i}' for i in range(values)),
           '',
           'pub func main(arguments: str[]) -> i32:',
           '    var values: f64[64] = ---',
           '    for at in 0..<64:',
           '        values[at] = (f64)at * 0.25 + (f64)arguments.length',
           '    print(f"{spread(values[0..]):.6f}")',
           '    return 0', ''])


def loop_of(work, source, flags, function, back, frame):
    """The body of `spread`'s loop built with `flags`; a failure when it reaches the frame."""
    asm_path = Path(work) / 'main.s'
    subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', *flags, '--emit=asm', '-o', asm_path], check=True)
    found = re.search(function, asm_path.read_text(), re.S)
    assert found, 'spread'
    # the loop: from its aligned head to the branch back to it
    loop = re.search(back, found.group(1), re.S)
    if not loop:
        sys.exit(f'FAIL: no loop found in spread ({" ".join(flags)}):\n{found.group(1)}')
    if re.search(frame, loop.group(2)):
        sys.exit(f'FAIL: the loop keeps a value in the frame ({" ".join(flags)}):\n{loop.group(2)}')


with tempfile.TemporaryDirectory(prefix='float-registers-') as work:
    arm = Path(work) / 'arm.lucb'
    arm.write_text(program(18))
    loop_of(work, arm, ['--target', 'arm64-macos'], r'\n_lb_\w*spread:(.*?)\n_lb_', r'\n(L\w+):\n(.*?)\n\s*b\.\w+ \1\n', r'\[(sp|x29)\b')
    x86 = Path(work) / 'x86.lucb'
    x86.write_text(program(12))
    for target in ('x86_64-linux', 'x86_64-windows'):
        for level in ('v1', 'v3'):
            loop_of(work, x86, ['--target', target, '--cpu', level], r'\nlb_\w*spread:(.*?)\n    ret', r'\n(\.L\w+):\n(.*?)\n\s*j\w+ \1\n', r'\(%r[bs]p\)')
    binary = Path(work) / 'main'
    for source in (arm, x86):
        answers = set()
        for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
            subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
            answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
        if len(answers) != 1:
            sys.exit(f'FAIL: the builds of {source.name} answered differently: {answers}')
print('ok eighteen f64 values stay in registers round an arm64 loop, twelve round an x86-64 one')
