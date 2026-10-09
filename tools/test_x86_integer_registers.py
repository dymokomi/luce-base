#!/usr/bin/env python3
"""x86-64 integer temporaries take rcx and rdx too: seven integers carried round a loop over
a slice, eleven values live in all with the slice, the index and the element, stay in
registers (rbx, r12-r15, r8, r9, rsi, rdi, rdx and rcx), with nothing loaded from or
stored to the frame inside the loop, under both conventions; rax, r10 and r11 remain the
generator's scratch. A division in the loop names rdx itself, so no value lives there
across it, and the loop still keeps ten in registers.
Every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'


def program(values, divide):
    """`values` integers carried round a loop, each from the next, and with `divide` one of
    them divided by the element each turn."""
    lines = [f'## {values} integers carried round a loop, each from the next.',
             'noinline func spread(values: const u64[]) -> u64:']
    lines += [f'    var a{i}: u64 = {i * 7 + 1}' for i in range(values)]
    lines += ['    for v in values:']
    lines += [f'        a{i} = a{(i + 1) % values} {"+%" if i % 2 else "^"} v' for i in range(values)]
    if divide:
        lines += ['        a0 = a0 // (v | 1)']
    lines += ['    return ' + ' ^ '.join(f'a{i}' for i in range(values)),
              '',
              'pub func main(arguments: str[]) -> i32:',
              '    var values: u64[64] = ---',
              '    for at in 0..<64:',
              '        values[at] = (u64)at * 0x9e3779b9 + (u64)arguments.length',
              '    print(f"{spread(values[0..])}")',
              '    return 0', '']
    return '\n'.join(lines)


def function_text(work, source, target, name):
    asm_path = Path(work) / 'main.s'
    subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm_path], check=True)
    found = re.search(rf'\nlb_\w*{name}:(.*?)\n    ret', asm_path.read_text(), re.S)
    assert found, name
    return found.group(1)


def loop_of(body, where):
    loop = re.search(r'\n(\.L\w+):\n(.*?)\n\s*j\w+ \1\n', body, re.S)
    if not loop:
        sys.exit(f'FAIL: no loop found ({where}):\n{body}')
    return loop.group(2)


with tempfile.TemporaryDirectory(prefix='x86-integer-registers-') as work:
    binary = Path(work) / 'main'
    for values, divide in ((7, False), (6, True)):
        source = Path(work) / f'main{values}.lucb'
        source.write_text(program(values, divide))
        for target in ('x86_64-linux', 'x86_64-windows'):
            where = f'{target}, {values} values{", a division" if divide else ""}'
            loop = loop_of(function_text(work, source, target, 'spread'), where)
            if re.search(r'\(%r[bs]p\)', loop):
                sys.exit(f'FAIL: the loop keeps a value in the frame ({where}):\n{loop}')
            if not re.search(r'%[re]cx\b', loop) or not re.search(r'%[re]dx\b', loop):
                sys.exit(f'FAIL: the loop leaves rcx or rdx unused ({where}):\n{loop}')
            if divide and not re.search(r'\n\s*divq ', loop):
                sys.exit(f'FAIL: no division in the loop ({where}):\n{loop}')
        answers = set()
        for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
            subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
            answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
        if len(answers) != 1:
            sys.exit(f'FAIL: the builds of {source.name} answered differently: {answers}')
print('ok eleven integers stay in registers round an x86-64 loop, rcx and rdx among them, ten across a division')
