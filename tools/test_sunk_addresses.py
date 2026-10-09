#!/usr/bin/env python3
"""A field of a record a pointer reaches is read through the pointer at its offset
(`movq 32(%rbx), %rax`, `ldr x0, [x19, #32]`), the sum of the pointer and the offset formed
at each access instead of once at the function's entry: the loop below reads eight fields
of the record each turn, and on x86-64 and arm64 none of their addresses lives in the frame
or in a register of its own; the pointer does. Every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''## Eight slices of one record, read through a pointer to it in a loop that writes memory.
struct Mesh:
    let a: const i32[]
    let b: const i32[]
    let c: const i32[]
    let d: const i32[]

noinline func mix(mesh: const Mesh*, out: i64[]) -> i64:
    var total: i64 = 0
    for k in 0..<out.length:
        let i = k % mesh.a.length
        let v = (i64)mesh.a[i] + (i64)mesh.b[i % mesh.b.length] * 3 + (i64)mesh.c[i % mesh.c.length] - (i64)mesh.d[i % mesh.d.length]
        out[k] = v
        total += v
    return total

pub func main(arguments: str[]) -> i32:
    var a: i32[16] = ---
    var b: i32[12] = ---
    var c: i32[10] = ---
    var d: i32[7] = ---
    for k in 0..<16:
        a[k] = (i32)k * 3 + (i32)arguments.length
    for k in 0..<12:
        b[k] = (i32)k - 5
    for k in 0..<10:
        c[k] = (i32)(k * k)
    for k in 0..<7:
        d[k] = (i32)k * 11
    let mesh = Mesh(a = a[0..], b = b[0..], c = c[0..], d = d[0..])
    var out: i64[40] = ---
    print(f"{mix(&mesh, out[0..])} {out[39]}")
    return 0
'''

with tempfile.TemporaryDirectory(prefix='sunk-addresses-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm_path = Path(work) / 'main.s'
    checks = [('x86_64-linux', r'\nlb_\w*mix:(.*?)\n    ret', r'\n(\.L\w+):\n(.*?)\n\s*j\w+ \1\n', r'\(%r[bs]p\)', r'\n\s*mov\w* (\d+)\((%\w+)\), %\w+'),
              ('x86_64-windows', r'\nlb_\w*mix:(.*?)\n    ret', r'\n(\.L\w+):\n(.*?)\n\s*j\w+ \1\n', r'\(%r[bs]p\)', r'\n\s*mov\w* (\d+)\((%\w+)\), %\w+'),
              ('arm64-macos', r'\n_lb_\w*mix:(.*?)\n\s*ret\n', r'\n(L\w+):\n(.*?)\n\s*b\.\w+ \1\n', r'\[(sp|x29)\b', r'\n\s*ldr \w+, \[(x\d+), #(\d+)\]')]
    for target, function, back, frame, field in checks:
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm_path], check=True)
        found = re.search(function, asm_path.read_text(), re.S)
        assert found, 'mix'
        loop = re.search(back, found.group(1), re.S)
        if not loop:
            sys.exit(f'FAIL: no loop found in mix ({target}):\n{found.group(1)}')
        body = loop.group(2)
        if re.search(frame, body):
            sys.exit(f'FAIL: the loop reaches the frame ({target}):\n{body}')
        # the slices' pointers and lengths at 0, 8, ..., 56 from the record's pointer, one register
        bases = {}
        for match in re.finditer(field, body):
            offset, base = (match.group(2), match.group(1)) if target.startswith('arm64') else (match.group(1), match.group(2))
            bases.setdefault(base, set()).add(int(offset))
        if not any(len(offsets) >= 4 for offsets in bases.values()):
            sys.exit(f'FAIL: the fields are not read through the record\'s pointer at their offsets ({target}):\n{body}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok a record\'s fields are read through its pointer at their offsets in a loop, on x86-64 and arm64')
