#!/usr/bin/env python3
"""Paired float arithmetic becomes vector operations (opt/slp) and computes the same bits.

A vec3 kernel that reads its points whole and writes the result whole, `p + (q - p) * t`,
computes its x and y lanes in one vector operation each on arm64 (`fsub v.2d`) and x86-64
(`subpd`), as clang does, while a kernel whose stores may reach the points it still reads
keeps its scalar order. Then generated programs, each a few rounds of random expressions
over the fields of records of doubles and singles stored back to neighbouring fields, some
sharing values across lanes, some through records that overlap, some with a lane read
elsewhere, print every bit they computed: the native build at --opt 3 must print what the C
backend prints. `--count N` and `--seed S` widen the search."""
from pathlib import Path
import argparse, os, random, re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
# the pass is off unless asked for (opt/slp)
os.environ['LUCE_SLP'] = '1'

KERNELS = '''struct V3:
    var x: f64
    var y: f64
    var z: f64

## Reads every point whole before it writes: the lanes may move together.
noinline func lerp(out: V3[], b: const V3[], c: const V3[], t: f64):
    for i in 0..<out.length:
        let p = b[i]
        let q = c[i]
        out[i] = V3(x = p.x + (q.x - p.x) * t, y = p.y + (q.y - p.y) * t, z = p.z + (q.z - p.z) * t)

## Writes x before it reads y, of a record that may be the one written: kept in order.
noinline func scaled(out: V3[], b: const V3[]):
    for i in 0..<out.length:
        out[i].x = b[i].x * 2.0
        out[i].y = b[i].y * 2.0

pub func main(arguments: str[]) -> i32:
    var b: V3[4] = ---
    for i in 0..<4:
        b[i] = V3(x = (f64)i, y = (f64)arguments.length + 0.5, z = 2.0)
    var o: V3[4] = ---
    lerp(o[0..], b[0..], b[0..], 0.25)
    scaled(o[0..], b[0..])
    print(f"{o[1].x} {o[2].y}")
    return 0
'''


def check_kernels(compiler, work):
    source = work / 'kernels.lucb'
    source.write_text(KERNELS)
    asm = work / 'kernels.s'
    for target, pattern in (('arm64-macos', r'fsub v\d+\.2d'), ('x86_64-linux', r'subpd')):
        subprocess.run([compiler, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm], check=True)
        text = asm.read_text()
        lerp = re.search(r'\n_?lb_\w*lerp:\n(.*?)\n\s*ret\b', text, re.S).group(1)
        scaled = re.search(r'\n_?lb_\w*scaled:\n(.*?)\n\s*ret\b', text, re.S).group(1)
        if not re.search(pattern, lerp):
            sys.exit(f'FAIL: lerp computes no lanes together ({target}):\n{lerp}')
        if re.search(r'v\d+\.2d|pd\s', scaled):
            sys.exit(f'FAIL: scaled moved a store past a load it may reach ({target}):\n{scaled}')


def expression(rng, names, depth):
    if depth == 0 or rng.random() < 0.3:
        choice = rng.random()
        if choice < 0.7:
            return rng.choice(names)
        return rng.choice(['0.5', '2.0', '-1.25', '3.0', '0.1'])
    op = rng.choice(['+', '-', '*', '/', 'neg', 'sqrt'])
    if op == 'neg':
        return f'-({expression(rng, names, depth - 1)})'
    if op == 'sqrt':
        return f'c_sqrt({expression(rng, names, depth - 1)} * {expression(rng, names, depth - 1)})'
    return f'({expression(rng, names, depth - 1)} {op} {expression(rng, names, depth - 1)})'


def program(rng):
    """Records of doubles (four fields) and singles (four), updated a few rounds."""
    kind = rng.choice(['f64', 'f32'])
    fields = ['a', 'b', 'c', 'd']
    lines = ['extern func c_sqrt as "sqrt"(x: f64) -> f64', '', 'struct R:']
    lines += [f'    var {f}: {kind}' for f in fields]
    lines += ['', 'noinline func step(out: R*, p: const R*, q: const R*, k: f64) -> f64:']
    lines += [f'    let p{f} = (f64)p.{f}' for f in fields]
    lines += [f'    let q{f} = (f64)q.{f}' for f in fields]
    names = [f'p{f}' for f in fields] + [f'q{f}' for f in fields] + ['k']
    shape = rng.choice(['same', 'mixed', 'random'])
    template = expression(rng, ['X', 'Y', 'k'], 3)
    for f in fields:
        if shape == 'same':
            e = template.replace('X', f'p{f}').replace('Y', f'q{f}')
        elif shape == 'mixed':
            e = template.replace('X', f'p{f}').replace('Y', rng.choice(names))
        else:
            e = expression(rng, names, 3)
        lines.append(f'    let r{f} = {e}')
    order = fields[:]
    if rng.random() < 0.3:
        rng.shuffle(order)
    for f in order:
        lines.append(f'    out.{f} = ({kind})r{f}')
    seen = rng.choice(fields)
    lines.append(f'    return r{seen} + k')
    lines += ['', 'func bits(r: R) -> u64:']
    lines.append('    return ' + ' ^ '.join(f'((u64){"" if kind == "f64" else "(f64)"}r.{f}.bits() if r.{f} == r.{f} else 7)' for f in fields))
    lines += ['', 'pub func main(arguments: str[]) -> i32:',
              '    var rs: R[3] = ---',
              '    for i in 0..<3:']
    lines += [f'        rs[i].{f} = ({kind})((f64)(i * 4 + {j}) * 0.37 + (f64)arguments.length - 1.5)' for j, f in enumerate(fields)]
    lines += ['    var total: u64 = 0',
              '    for round in 0..<4:',
              '        let k = (f64)round * 0.75 + 0.125',
              f'        let r = step(&rs[{rng.choice([0, 1, 2])}], &rs[{rng.choice([0, 1, 2])}], &rs[{rng.choice([0, 1, 2])}], k)',
              '        total = total ^ (r.bits() if r == r else 9)',
              '        for i in 0..<3:',
              '            total = total *% 31 +% bits(rs[i])',
              '    print(f"{total}")',
              '    return 0', '']
    return '\n'.join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('compiler', nargs='?', type=Path, default=ROOT / 'build/luce-base')
    parser.add_argument('--count', type=int, default=40)
    parser.add_argument('--seed', type=int, default=11)
    args = parser.parse_args()
    compiler = args.compiler.resolve()
    rng = random.Random(args.seed)
    with tempfile.TemporaryDirectory(prefix='slp-') as directory:
        work = Path(directory)
        check_kernels(compiler, work)
        source = work / 'main.lucb'
        binary = work / 'main'
        for n in range(args.count):
            text = program(rng)
            source.write_text(text)
            answers = []
            for flags in (['--backend=c'], ['--native', '--opt', '3']):
                subprocess.run([compiler, 'build', source, *flags, '-o', binary], check=True)
                answers.append(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
            if answers[0] != answers[1]:
                (ROOT / 'build').mkdir(exist_ok=True)
                kept = ROOT / 'build' / 'slp-failure.lucb'
                kept.write_text(text)
                sys.exit(f'FAIL: program {n} answers {answers[1].strip()} natively, {answers[0].strip()} through C; kept as {kept}')
    print(f'ok paired float arithmetic computes in vector lanes where it pays, the same bits ({args.count} programs)')


main()
