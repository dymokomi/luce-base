#!/usr/bin/env python3
"""On x86-64 a comparison and the `select` on it right after, its only use, are one choice
on the comparison's flags: a `cmov` for integers (no `set` and `test` in between); for
floats compared strictly with the two values chosen between, `maxsd` or `minsd`, whose
answer is the select's exactly, NaNs and signed zeros included (`x > y ? x : y`); a
non-strict comparison, which picks the other operand of equal zeros or of a NaN, is no
`maxsd`. A branch on a float comparison jumps on its flags, equality with the parity too,
and a branch after an expanded function's return (a label only fallen into) is fused as
well. Every build answers alike, over NaNs, signed zeros and equal values."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''## Selects and branches on comparisons, over values that tell their forms apart.
noinline func larger(a: f64, b: f64) -> f64:
    return a if a > b else b

noinline func smaller(a: f64, b: f64) -> f64:
    return b if a > b else a

noinline func least(a: f32, b: f32) -> f32:
    return a if a < b else b

noinline func at_least(a: f64, b: f64) -> f64:
    return a if a >= b else b

noinline func pick(a: i64, b: i64, x: i64, y: i64) -> i64:
    return x if a < b else y

noinline func unsigned_pick(a: u32, b: u32, x: u32, y: u32) -> u32:
    return x if a >= b else y

noinline func float_pick(a: f64, b: f64, x: i64, y: i64) -> i64:
    return x if a <= b else y

noinline func equal(a: f64, b: f64) -> i32:
    if a == b:
        return 1
    return 2

noinline func unequal(a: f64, b: f64) -> i32:
    if a != b:
        return 1
    return 2

noinline func ordered(a: f64, b: f64) -> i32:
    if a >= b:
        return 1
    return 2

func is_nan(x: f64) -> bool:
    return (x.bits() & 0x7fffffffffffffff) > 0x7ff0000000000000

## A branch on an expanded predicate: the comparison and the branch meet past its return.
noinline func count_nans(values: const f64[]) -> u32:
    var count: u32 = 0
    for v in values:
        if is_nan(v):
            count += 1
    return count

pub func main(arguments: str[]) -> i32:
    let values: f64[6] = [1.0, 2.0, f64.bits(0x7ff8000000000001), -0.0, 0.0, f64.bits(0xfff8000000000002)]
    for a in values:
        for b in values:
            print(f"{larger(a, b).bits()} {smaller(a, b).bits()} {least((f32)a, (f32)b).bits()} {at_least(a, b).bits()} {float_pick(a, b, 7, 9)} {equal(a, b)} {unequal(a, b)} {ordered(a, b)}")
    print(f"{pick(1, 2, 10, 20)} {pick(2, 1, 10, 20)} {unsigned_pick(3, 3, 1, 2)} {unsigned_pick(2, 3, 1, 2)} {count_nans(values[0..])}")
    return 0
'''

with tempfile.TemporaryDirectory(prefix='x86-selects-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm_path = Path(work) / 'main.s'

    def function(name):
        found = re.search(rf'\nlb_\w*{name}:(.*?)\n    ret', asm_path.read_text(), re.S)
        assert found, name
        return found.group(1)

    for target in ('x86_64-linux', 'x86_64-windows'):
        for level in ('v1', 'v3'):
            where = f'{target} --cpu {level}'
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--cpu', level, '--emit=asm', '-o', asm_path], check=True)
            for name, want in (('larger', r'maxsd'), ('smaller', r'minsd'), ('least', r'minss'), ('pick', r'cmovlq'), ('unsigned_pick', r'cmovael'), ('float_pick', r'cmovaeq')):
                body = function(name)
                if not re.search(want, body) or re.search(r'\n\s*set\w+ ', body):
                    sys.exit(f'FAIL: {name} is no `{want}` on the flags ({where}):\n{body}')
            if re.search(r'maxsd|minsd', function('at_least')):
                sys.exit(f'FAIL: a non-strict comparison became `maxsd` ({where}):\n{function("at_least")}')
            for name in ('equal', 'unequal', 'ordered', 'count_nans'):
                body = function(name)
                if re.search(r'\n\s*set\w+ ', body):
                    sys.exit(f'FAIL: {name} sets a condition word to branch on ({where}):\n{body}')
            if not re.search(r'\n\s*jp ', function('equal')):
                sys.exit(f'FAIL: a branch on float equality ignores the parity ({where}):\n{function("equal")}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--native', '--opt', '3', '--cpu', 'v3'], ['--backend=c'], ['--backend=c', '--release']):
        if '--cpu' in flags and subprocess.run(['uname', '-m'], capture_output=True, text=True).stdout.strip() not in ('x86_64', 'amd64'):
            continue
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok x86-64 selects choose on the comparison\'s flags: cmov, minsd and maxsd where exact; float branches jump on them')
