#!/usr/bin/env python3
"""A copy of a size the compiler knows is the copy itself: `memory.read[u32]` and
`memory.write[u64]`, which are `memcpy(.., .., memory.size_of(T))`, and `memcpy` with a literal size
come to loads and stores in the native backend at every level, with no call through the
dynamic linker's stub (a word-copy loop was a `memcpy` call per word, 2-3 times slower).
A copy larger than the inline limit, or of a size known only at run time, stays a call.
The program answers the same at every level and through the C backend."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(__import__('os').environ.get('LUCE_BASE_COMPILER', ROOT / 'build/luce-base'))
PROGRAM = '''import memory

extern func memcpy(target: void*, source: const void*, count: usize) -> void*

noinline func copy_words(out: u8[], data: const u8[], count: usize):
    for at in 0..<count:
        memory.write[u32]((void*)&out[at * 4], memory.read[u32]((void*)&data[at * 4]))

noinline func copy_longs(out: u8[], data: const u8[], count: usize):
    for at in 0..<count:
        memory.write[u64]((void*)&out[at * 8 + 1], memory.read[u64]((void*)&data[at * 8 + 1]))

noinline func copy_literal(out: u8[], data: const u8[]):
    _ = memcpy((void*)&out[3], (const void*)&data[3], 12)

noinline func copy_runtime(out: u8[], data: const u8[], n: usize):
    _ = memcpy((void*)&out[0], (const void*)&data[0], n)

pub func main(arguments: str[]) -> i32!:
    let source = try new u8[256] --- in memory.heap
    defer free(source) in memory.heap
    let target = try new u8[256] --- in memory.heap
    defer free(target) in memory.heap
    for at in 0..<(usize)256:
        source[at] = (u8)(at * 7)
        target[at] = 0
    copy_words(target, source, 16)
    copy_longs(target[64..], source[64..], 8)
    copy_literal(target[160..], source[160..])
    copy_runtime(target[200..], source[200..], 9)
    var sum: u32 = 0
    for at in 0..<(usize)256:
        sum = sum *% 31 +% (u32)target[at]
    return (i32)(sum & 127)
'''


def body(asm, name):
    """The assembly of function `name`, from its label to the next function's."""
    lines = asm.splitlines()
    start = next((i for i, l in enumerate(lines) if re.match(r'^_?lb_\w*' + name + r':', l)), None)
    if start is None:
        sys.exit(f'FAIL: no function {name} in the assembly')
    end = next((i for i in range(start + 1, len(lines)) if re.match(r'^_?lb_\w+:', lines[i])), len(lines))
    return '\n'.join(lines[start:end])


with tempfile.TemporaryDirectory(prefix='small-copies-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    answers = []
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '1'], ['--native', '--opt', '2'], ['--native', '--opt', '3']):
        asm = Path(work) / 'main.s'
        subprocess.run([COMPILER, 'build', source, *flags, '--emit=asm', '-o', asm], check=True)
        text = asm.read_text()
        for name in ('copy_words', 'copy_longs', 'copy_literal'):
            if 'memcpy' in body(text, name):
                sys.exit(f'FAIL: {flags}: {name} calls memcpy for a copy of a known size')
        for label in re.findall(r'^(_?lb_memory_\d+(?:read|write)\w*):', text, re.M):
            if 'memcpy' in body(text, label.lstrip('_').replace('lb_', '', 1)):
                sys.exit(f'FAIL: {flags}: {label} calls memcpy')
        if 'memcpy' not in body(text, 'copy_runtime'):
            sys.exit(f'FAIL: {flags}: copy_runtime lost its memcpy call for a size known at run time')
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary]).returncode)
    for flags in (['--backend=c'], ['--backend=c', '--release']):
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary]).returncode)
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the builds answered {answers}')
print('PASS copies of a known size are loads and stores at every native level; a run-time size stays a call; every build answers alike')
