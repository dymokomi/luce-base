#!/usr/bin/env python3
"""On arm64 a loop that carries eighteen `f64` values keeps them all in registers: the
callee-saved d8-d15, the caller-saved d24-d31 and d19-d23 (d16-d18 are the generator's own
scratch), with nothing loaded from or stored to the frame inside the loop. Every build
answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
VALUES = 18
PROGRAM = '\n'.join(
    ['## Eighteen values carried round a loop, each from the next.',
     'noinline func spread(values: const f64[]) -> f64:']
    + [f'    var a{i}: f64 = {i}.0' for i in range(VALUES)]
    + ['    for v in values:']
    + [f'        a{i} = a{(i + 1) % VALUES} * 0.5 + v' for i in range(VALUES)]
    + ['    return ' + ' + '.join(f'a{i}' for i in range(VALUES)),
       '',
       'pub func main(arguments: str[]) -> i32:',
       '    var values: f64[64] = ---',
       '    for at in 0..<64:',
       '        values[at] = (f64)at * 0.25 + (f64)arguments.length',
       '    print(f"{spread(values[0..]):.6f}")',
       '    return 0', ''])

with tempfile.TemporaryDirectory(prefix='float-registers-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm_path = Path(work) / 'main.s'
    subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', 'arm64-macos', '--emit=asm', '-o', asm_path], check=True)
    asm = asm_path.read_text()
    found = re.search(r'\n_lb_\w*spread:(.*?)\n_lb_', asm, re.S)
    assert found, 'spread'
    # the loop: from its aligned head to the branch back to it
    loop = re.search(r'\n(L\w+):\n(.*?)\n\s*b\.\w+ \1\n', found.group(1), re.S)
    if not loop:
        sys.exit(f'FAIL: no loop found in spread:\n{found.group(1)}')
    if re.search(r'\[(sp|x29)\b', loop.group(2)):
        sys.exit(f'FAIL: the loop keeps a value in the frame on arm64:\n{loop.group(2)}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok eighteen f64 values stay in registers round an arm64 loop')
