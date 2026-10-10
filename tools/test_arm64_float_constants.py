#!/usr/bin/env python3
"""On arm64 a float constant is one instruction, not a movz/movk sequence and an `fmov`
from an integer register: positive zero from the zero register, a value `fmov` encodes
(±(16 + m)/16 · 2^e) as its immediate, any other loaded from the function's literal pool
after its text (`ldr d0, L..._k0`), a negated literal its negative. A polynomial written with its coefficients inline
builds none of them through an integer register. Where the floats want every register
(`frame.Registers.formed_constants`), nineteen values carried round a loop with two
constants of their own keep their registers and the constants are formed at their uses,
nothing of the loop in the frame. Every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'

POLYNOMIAL = '''## sin's Taylor series from r^5, its coefficients written where they are used.
noinline func series(z: f64) -> f64:
    return 0.008333333333333333 + z * (-0.0001984126984126984 + z * (2.7557319223985893e-06 + z * (-2.505210838544172e-08 + z * 1.6059043836821613e-10)))

## Constants fmov encodes, a single and a negated literal among them.
noinline func halves(x: f64, y: f32) -> f64:
    return x * 0.5 + (f64)(y * 2.5) - 0.0 * x + x * 31.0 + x * -0.4375

## A float argument goes straight into its register, from a frame that is empty.
noinline func passes(x: f64) -> f64:
    return series(x * 0.25) + series(x)

'''


def spread(values):
    """`values` floats carried round a loop with the constants 0.375 and 0.0009765625."""
    return '\n'.join(
        [f'## {values} values carried round a loop, each from the next, with two constants.',
         'noinline func spread(values: const f64[]) -> f64:']
        + [f'    var a{i}: f64 = {i}.0' for i in range(values)]
        + ['    for v in values:']
        + [f'        a{i} = a{(i + 1) % values} * {"0.375" if i % 2 else "0.1"} + v' for i in range(values)]
        + ['    return ' + ' + '.join(f'a{i}' for i in range(values)), ''])


MAIN = '''pub func main(arguments: str[]) -> i32:
    var values: f64[64] = ---
    for at in 0..<64:
        values[at] = (f64)at * 0.25 + (f64)arguments.length
    let x = (f64)arguments.length + 0.75
    print(f"{series(x):.17g} {halves(x, (f32)x):.17g} {passes(x):.17g} {spread(values[0..]):.9f}")
    return 0
'''


def body(text, name):
    found = re.search(r'\n_lb_\w*' + name + r':\n(.*?)\n\s*ret\b', text, re.S)
    assert found, name
    return found.group(1)


with tempfile.TemporaryDirectory(prefix='arm64-float-constants-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(POLYNOMIAL + spread(19) + '\n' + MAIN)
    asm_path = Path(work) / 'main.s'
    subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', 'arm64-macos', '--emit=asm', '-o', asm_path], check=True)
    text = asm_path.read_text()
    through = re.compile(r'fmov [ds]\d+, [xw]\d+')
    for name in ('series', 'halves'):
        code = body(text, name)
        if through.search(code) or 'movk' in code:
            sys.exit(f'FAIL: {name} builds a float constant through an integer register:\n{code}')
    if len(re.findall(r'ldr d\d+, L\w+_k\d+', body(text, 'series'))) != 5:
        sys.exit('FAIL: series does not load its five coefficients from its literal pool:\n' + body(text, 'series'))
    if not re.search(r'L\w+_k\d+:\n\s*\.quad 4575957461383581969\b', text):
        sys.exit('FAIL: the literal pool lacks 0.008333333333333333')
    for value in ('0.5000000', '2.5000000', '31.0000000', '-0.4375000'):
        if not re.search(r'fmov [ds]\d+, #' + re.escape(value), body(text, 'halves')):
            sys.exit(f'FAIL: halves does not form {value} as an fmov immediate:\n' + body(text, 'halves'))
    if re.search(r'fneg', body(text, 'halves')):
        sys.exit('FAIL: halves negates a literal at run time:\n' + body(text, 'halves'))
    code = body(text, 'passes')
    if 'sub sp, sp, #0' in code or re.search(r'fmov d16, d\d+\n\s*fmov d0, d16', code):
        sys.exit('FAIL: passes moves its frame by nothing or its argument through d16:\n' + code)
    loop = re.search(r'\n(L\w+):\n(.*?)\n\s*b(?:\.\w+)? \1\n', body(text, 'spread'), re.S)
    if not loop:
        sys.exit('FAIL: no loop found in spread')
    if re.search(r'\[(sp|x29|x16)\b', loop.group(2)):
        sys.exit('FAIL: the loop keeps a value in the frame:\n' + loop.group(2))
    if not re.search(r'ldr d\d+, L\w+_k\d+', loop.group(2)):
        sys.exit('FAIL: no constant formed from the literal pool in the loop:\n' + loop.group(2))
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--native', '--debug'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok arm64 float constants are one instruction: the zero register, an fmov immediate or the literal pool')
