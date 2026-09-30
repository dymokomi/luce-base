#!/usr/bin/env python3
"""The code of a hot decoding loop, as luce-compress's inflate writes it, carries no work the
language does not ask for: a shift count masked below the width (`bits & 63`, `e & 15`,
`n % 64`) is not checked against it at --opt 2 and 3; a `while` or `if` condition joined
with `and`/`or` branches on each comparison instead of on a byte the two leave behind; an
unsigned `-|` is a few instructions, not a call; a byte stored from a wider value keeps no
extension before the store; on arm64 a table indexed by an element's size is one load with
a scaled register offset; `memory.read[u32]`, the alignment-free read, leaves its word in
a register rather than passing it through a stack slot; and the C backend's release build
compiles the runtime's
arithmetic helpers into the code that uses them instead of calling them. Every build
answers alike."""
from pathlib import Path
import platform, re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''import memory

noinline func decode(data: const u8[], table: const u32*, out: u8*, rounds: usize) -> u64:
    let limit = data.length -| 8
    var acc: u64 = 0
    var bits: u32 = 0
    var total: u64 = 0
    var pos: usize = 0
    var round: usize = 0
    while round < rounds and data.length > 0:
        pos = 0
        while pos <= limit and bits <= 56:
            acc |= (u64)data[pos] << (u64)(bits & 63)
            bits = bits +% 8
            pos += 1
            let e = table[(usize)(acc & 255)]
            out[pos & 63] = (u8)(e >> 16)
            acc >>= (u64)(e & 15)
            bits = bits -% (e & 15)
            total = total +% (acc << (u64)((u32)pos % 64))
            if e == 0 or bits > 60:
                bits = 0
        round += 1
    return total +% acc

noinline func words(data: const u8[]) -> u64:
    var total: u64 = 0
    var at: usize = 0
    while at + 4 <= data.length:
        let word = memory.read[u32]((const void*)&data[at])
        total = total *% 31 +% (u64)word
        at += 1
    return total

pub func main(arguments: str[]) -> i32:
    var data: u8[64] = ---
    var table: u32[256] = ---
    var out: u8[64] = ---
    for i in 0..<64:
        data[i] = (u8)(i * 37 + 11)
    for i in 0..<256:
        table[i] = (u32)(i * 2654435761 % 4294967296)
    let total = decode(data[0..], &table[0], &out[0], 1000 + arguments.length)
    print(f"{total} {out[3]} {out[40]} {words(data[0..])}")
    return 0
'''


def function_ir(text, name):
    found = re.search(r'\nfunction \$lb_\w*' + name + r'\(', text)
    assert found, name
    start = found.start()
    end = text.find('\nfunction ', start + 1)
    return text[start:end if end > 0 else len(text)]


with tempfile.TemporaryDirectory(prefix='hot-loop-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    for level in ('2', '3'):
        ir_path = Path(work) / 'main.ir'
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--emit=ir', '-o', ir_path], check=True)
        body = function_ir(ir_path.read_text(), 'decode')
        if 'shift count out of range' in body or re.search(r'cuge [^,]+, (64|32)\b', body):
            sys.exit(f'FAIL: a masked shift count is still checked at --opt {level}')
        if re.search(r'=w phi', body):
            sys.exit(f'FAIL: an `and`/`or` condition still joins in a byte at --opt {level}')
        if 'subs_u' in body:
            sys.exit(f'FAIL: an unsigned `-|` is still a call at --opt {level}')
        stored = re.findall(r'storeb (%t\d+)', body)
        for value in stored:
            if re.search(r'\n\s*' + re.escape(value) + r' =\w+ ext', body):
                sys.exit(f'FAIL: a byte store still takes an extension at --opt {level}')
        reads = function_ir(ir_path.read_text(), 'words')
        if re.search(r'\n\s*(store\w*|blit) ', reads):
            sys.exit(f'FAIL: memory.read[u32] passes its word through memory at --opt {level}')
        if platform.machine() in ('arm64', 'aarch64'):
            asm_path = Path(work) / 'main.s'
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--emit=asm', '-o', asm_path], check=True)
            if not re.search(r'ldr w\d+, \[x\d+, x\d+, lsl #2\]', asm_path.read_text()):
                sys.exit(f'FAIL: a u32 table lookup is not one scaled load at --opt {level}')
    binary = Path(work) / 'main'
    subprocess.run([COMPILER, 'build', source, '--backend=c', '--release', '-o', binary], check=True)
    symbols = subprocess.run(['nm', binary], capture_output=True, text=True).stdout
    for helper in ('lb_addw_u', 'lb_subw_u', 'lb_shl_u', 'lb_shr_u', 'lb_conv_u'):
        if re.search(r'\b_?' + helper + r'\b', symbols):
            sys.exit(f'FAIL: the C release build calls the runtime helper {helper} out of line')
    answers = []
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok a hot loop keeps no masked shift check, no byte condition, no C helper call')
