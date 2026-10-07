#!/usr/bin/env python3
"""A top-level array of literals is data in the object, not code run before `main`: a `let`
in the read-only section of every native object format (Mach-O `__TEXT,__const`, ELF
`.rodata`, COFF `.rdata`), a `var` in the writable data section, and `lb_init_globals` stores
neither. Embedded SPIR-V words cost about 13.6 bytes of code per word when an initialiser
stored them one by one. An array the backend cannot lay out (an element computed from a
global's address) keeps its initialiser. The C backend writes the `let` `const`. Every build
answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(__import__('os').environ.get('LUCE_BASE_COMPILER', ROOT / 'build/luce-base'))
COUNT = 4096
WORDS = ', '.join(str((i * 2654435761) % 4294967296) for i in range(COUNT))
PROGRAM = f'''let words: u32[{COUNT}] = [{WORDS}]
var scales: f32[3] = [0.5, -1.25, 2.0]
var cell: i32 = 7
var places: i32*[2] = [&cell, &cell]

pub func main(arguments: str[]) -> i32:
    var sum: u32 = 0
    for w in words:
        sum = sum *% 31 +% w
    scales[1] *= 2.0
    *places[1] += 1
    return (i32)((sum +% (u32)(scales[1] * -4.0) +% (u32)cell) & 127)
'''
SECTIONS = {
    'arm64-macos': ('__TEXT,__const', '__DATA,__data'),
    'x86_64-linux': ('.rodata', '.data'),
    'x86_64-windows': ('.rdata', '.data'),
}


def section_of(asm, label):
    """The section the last directive before `label:` opened."""
    lines = asm.splitlines()
    at = next((i for i, l in enumerate(lines) if re.match(r'^_?' + label + r':', l)), None)
    if at is None:
        sys.exit(f'FAIL: no label {label} in the assembly')
    for line in reversed(lines[:at]):
        stripped = line.strip()
        if stripped in ('.data', '.bss', '.text'):
            return stripped
        if stripped.startswith('.section ') or stripped.startswith('.zerofill '):
            return stripped.split()[1].split(',"')[0].rstrip(',')
    return ''


def body(asm, name):
    """The assembly of function `name`, from its label to the next function's."""
    lines = asm.splitlines()
    start = next((i for i, l in enumerate(lines) if re.match(r'^_?' + name + r':', l)), None)
    if start is None:
        sys.exit(f'FAIL: no function {name} in the assembly')
    end = next((i for i in range(start + 1, len(lines)) if re.match(r'^_?lb_\w+:', lines[i])), len(lines))
    return lines[start + 1:end]


with tempfile.TemporaryDirectory(prefix='static-data-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm = Path(work) / 'main.s'
    for target, (read_only, writable) in SECTIONS.items():
        for level in ('0', '2'):
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--target', target, '--emit=asm', '-o', asm], check=True)
            text = asm.read_text()
            if not section_of(text, 'lb_main_words').startswith(read_only):
                sys.exit(f'FAIL: {target}: the `let` words are in {section_of(text, "lb_main_words")!r}, not {read_only}')
            if not section_of(text, 'lb_main_scales').startswith(writable):
                sys.exit(f'FAIL: {target}: the `var` scales are in {section_of(text, "lb_main_scales")!r}, not {writable}')
            init = '\n'.join(body(text, 'lb_init_globals'))
            if 'lb_main_words' in init or 'lb_main_scales' in init:
                sys.exit(f'FAIL: {target}: lb_init_globals stores an array laid out as data')
            if 'lb_main_places' not in init:
                sys.exit(f'FAIL: {target}: the array of addresses lost its initialiser')
    c_source = Path(work) / 'main.c'
    subprocess.run([COMPILER, 'build', source, '--emit=c', '-o', c_source], check=True)
    if not re.search(r'^const \w+ lb_main_words = ', c_source.read_text(), re.M):
        sys.exit('FAIL: the C backend does not write the `let` words const')
    answers = []
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '2'], ['--backend=c'], ['--backend=c', '--release']):
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary]).returncode)
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the builds answered {answers}')
print('PASS arrays of literals are read-only or writable data on every native target, with no initialiser code; every build answers alike')
