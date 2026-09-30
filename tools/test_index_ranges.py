#!/usr/bin/env python3
"""Indexes the facts put in range carry no check, as luce-geocore's per-point loops over a
flat array of coordinates need: `values[at * 3 + 2]` while `at < values.length // 3` is
below the length (`at * 3 + 2 < (length // 3) * 3 <= length`), and `values[at * 3 - 6]` in
a loop whose `at` starts at 2 and only steps up by a checked `+ 1` neither wraps nor
leaves the array. Once no check is left at --opt 2 and 3, a float comparison that decides a
branch (math.max's NaN tests) branches on the flags on arm64, with no `cset`, a NaN taking
the branch `not` gives it; and every build answers alike, NaNs included."""
from pathlib import Path
import platform, re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''noinline func larger(a: f64, b: f64) -> f64:
    if a != a:
        return a
    if b != b:
        return b
    if a == 0.0 and b == 0.0:
        return f64.bits(a.bits() & b.bits())
    return a if a > b else b

noinline func normals(values: const f64[]) -> f64:
    let points = values.length // 3
    var total: f64 = 0.0
    var at: usize = 2
    while at < points:
        let ax = values[at * 3] - values[at * 3 - 3]
        let ay = values[at * 3 + 1] - values[at * 3 - 2]
        let az = values[at * 3 + 2] - values[at * 3 - 1]
        let bx = values[at * 3 - 6] - values[at * 3 - 3]
        let by = values[at * 3 - 5] - values[at * 3 - 2]
        let bz = values[at * 3 - 4] - values[at * 3 - 1]
        total = larger(total * 0.5, ax * by - ay * bx) + (ay * bz - az * by) - (ax * bz - az * bx)
        at += 1
    return total

noinline func order(a: f64, b: f64) -> u32:
    var bits: u32 = 0
    if a < b:
        bits |= 1
    if not (a <= b):
        bits |= 2
    if a >= b or b != b:
        bits |= 4
    if not (a > b) and a == a:
        bits |= 8
    return bits

pub func main(arguments: str[]) -> i32:
    var values: f64[300] = ---
    for i in 0..<300:
        values[i] = (f64)((i * 7919) % 101) * 0.25 - 3.0
    let nan = f64.bits(0x7FF8000000000000)
    var orders: u32 = 0
    for a in [1.0, 2.0, nan, -0.0, 0.0]:
        for b in [1.0, 2.0, nan, -0.0, 0.0]:
            orders = orders *% 31 +% order(a, b)
    print(f"{normals(values[..<(usize)(299 + arguments.length)])} {normals(values[..<6])} {orders} {larger(nan, 1.0)} {larger(-0.0, 0.0)}")
    return 0
'''


def function_ir(text, name):
    found = re.search(r'\nfunction \$lb_\w*' + name + r'\(', text)
    assert found, name
    end = text.find('\nfunction ', found.start() + 1)
    return text[found.start():end if end > 0 else len(text)]


def function_asm(text, name):
    found = re.search(r'\n_?lb_\w*' + name + r':', text)
    assert found, name
    return text[found.start():text.find('\n    ret', found.start())]


with tempfile.TemporaryDirectory(prefix='index-ranges-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    for level in ('2', '3'):
        ir_path = Path(work) / 'main.ir'
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--emit=ir', '-o', ir_path], check=True)
        body = function_ir(ir_path.read_text(), 'normals')
        if level == '3' and re.search(r'\n\s*bounds ', body):
            sys.exit(f'FAIL: a scaled index below the length is still checked at --opt {level}')
        if level == '3' and re.search(r'=l subo ', body):
            sys.exit(f'FAIL: `at * 3 - 6` with `at` from 2 is still checked for wrapping at --opt {level}')
        if platform.machine() in ('arm64', 'aarch64'):
            asm_path = Path(work) / 'main.s'
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--emit=asm', '-o', asm_path], check=True)
            for name in ('larger', 'order'):
                if 'cset' in function_asm(asm_path.read_text(), name):
                    sys.exit(f'FAIL: a float comparison in {name} goes through a byte before its branch at --opt {level}')
    answers = []
    binary = Path(work) / 'main'
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '2'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok scaled and stepped indexes carry no check; float comparisons branch on the flags')
