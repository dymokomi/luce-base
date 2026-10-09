#!/usr/bin/env python3
"""x86-64 integer code takes what the instructions offer: a constant operand of an add,
a subtract, a logical operation, a shift or a checked sum is the instruction's immediate,
not a register loaded first; a multiply by a constant is the three-operand `imul` (or one
`lea` for 3, 5 and 9, a shift for a power of two), checked ones too; an element of an array
is one access with a scaled index (`(%rbx,%rcx,4)`); and a pointer held in a register is
addressed through that register, not copied into %r10 first. Checked on the assembly for
both x86-64 targets, which any host emits, and every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''## Indexes, constants and a checked product, the integer side of a hot loop.
noinline func gather(values: const u32[], at: const i32[], points: const i64*, rounds: usize) -> i64:
    var total: i64 = 0
    for round in 0..<rounds:
        for k in 0..<at.length:
            let i = (usize)at[k]
            let p = points + i * 3
            total = total + (i64)values[i] * 5 + p[1] * 12 - (total >> 3) + (i64)round
            total = total *? 3 else 0
    return total

pub func main(arguments: str[]) -> i32:
    var values: u32[64] = ---
    var at: i32[64] = ---
    var points: i64[192] = ---
    for k in 0..<64:
        values[k] = (u32)k * 7 + (u32)arguments.length
        at[k] = (i32)((k * 13) % 64)
    for k in 0..<192:
        points[k] = (i64)k - 50
    print(f"{gather(values[0..], at[0..], &points[0], 3)}")
    return 0
'''

with tempfile.TemporaryDirectory(prefix='x86-addressing-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm_path = Path(work) / 'main.s'
    for target in ('x86_64-linux', 'x86_64-windows'):
        for level in ('1', '3'):
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--target', target, '--cpu', 'v1', '--emit=asm', '-o', asm_path], check=True)
            found = re.search(r'\nlb_\w*gather:(.*?)\n    ret', asm_path.read_text(), re.S)
            assert found, 'gather'
            body = found.group(1)
            where = f'{target} --opt {level}'
            loaded = re.search(r'\n\s*mov[lq] \$-?\d+, %[re]?cx\n\s*(add|sub|and|or|xor|imul|shl|sar|shr)', body)
            if loaded:
                sys.exit(f'FAIL: a constant goes through %rcx before `{loaded.group(1)}` ({where}):\n{body}')
            if not re.search(r'\(%\w+,%\w+,4\)', body):
                sys.exit(f'FAIL: no scaled index for `values[i]` ({where}):\n{body}')
            if not re.search(r'imul[lq] \$', body):
                sys.exit(f'FAIL: no immediate multiply ({where}):\n{body}')
            copied = re.search(r'\n\s*movq %(r[a-z0-9]+), %r10\n\s*mov\w* -?\d*\(%r10\)', body)
            if copied:
                sys.exit(f'FAIL: the address in %{copied.group(1)} is copied into %r10 to be read ({where}):\n{body}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok x86-64 constants are immediates, indexes scale, and pointers address in place')
