#!/usr/bin/env python3
"""The code of a hot decoding loop, as luce-compress's inflate writes it, carries no work the
language does not ask for: a shift count masked below the width (`bits & 63`, `e & 15`,
`n % 64`) is not checked against it at --opt 2 and 3; a `while` or `if` condition joined
with `and`/`or` branches on each comparison instead of on a byte the two leave behind; an
unsigned `-|` is a few instructions, not a call; a byte stored from a wider value keeps no
extension before the store; on arm64 a table indexed by an element's size is one load with
a scaled register offset; `memory.read[u32]`, the alignment-free read, leaves its word in
a register rather than passing it through a stack slot; and the C backend's release build
compiles the runtime's arithmetic helpers into the code that uses them instead of calling
them, and expands `memory.read[u32]` into a load with no call. A bit reader's refill loop (luce-compress's, and benchmarks/native_vs_c's bit_decode)
is the ten instructions it needs on arm64: a byte read at a register index is one
`ldrb w, [x, x]`, the shift reads `bits` without its `& 63`, the loop's values stay in their
registers from one pass to the next (no copies, no spills), a word already zero above is not
zero-extended again, `total != 1` is one comparison, a checked `+ 8` takes its immediate,
and `table[acc & 4095]` is not checked once `table.length == 4096` is asserted. Every build
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

noinline func refill(data: const u8[], table: const u32[], rounds: usize) -> u64:
    assert(data.length > 16 and table.length == 4096)
    var total: u64 = 0
    var round: usize = 0
    while round < rounds:
        var acc: u64 = 0
        var bits: u32 = 0
        var pos: usize = 0
        while pos + 8 <= data.length and total != 1:
            while bits <= 56 and pos < data.length:
                acc |= (u64)data[pos] << (u64)(bits & 63)
                bits = bits +% 8
                pos += 1
            let e = table[(usize)(acc & 4095)]
            acc >>= (u64)(e & 15)
            bits = bits -% (e & 15)
            total = total +% (u64)(e >> 4)
        round += 1
    return total

pub func main(arguments: str[]) -> i32:
    var data: u8[64] = ---
    var table: u32[256] = ---
    var out: u8[64] = ---
    var codes: u32[4096] = ---
    for i in 0..<64:
        data[i] = (u8)(i * 37 + 11)
    for i in 0..<256:
        table[i] = (u32)(i * 2654435761 % 4294967296)
    for i in 0..<4096:
        codes[i] = (u32)((i * 40503 + 7) % 65536) | 1
    let total = decode(data[0..], &table[0], &out[0], 1000 + arguments.length)
    print(f"{total} {out[3]} {out[40]} {words(data[0..])} {refill(data[0..], codes[0..], 3 + arguments.length)}")
    return 0
'''


def function_ir(text, name):
    found = re.search(r'\nfunction \$lb_\w*' + name + r'\(', text)
    assert found, name
    start = found.start()
    end = text.find('\nfunction ', start + 1)
    return text[start:end if end > 0 else len(text)]


def function_asm(text, name):
    found = re.search(r'\n_?lb_\w*' + name + r':', text)
    assert found, name
    end = text.find('\n    ret', found.start())
    return text[found.start():end]


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
        refill = function_ir(ir_path.read_text(), 'refill')
        # --opt 2 reads a span parameter's length from its slot at each use, so its facts
        # hold at --opt 3, where the loads are forwarded
        if level == '3' and re.search(r'\n\s*bounds ', refill):
            sys.exit(f'FAIL: an index masked below a length asserted equal to a constant is still checked at --opt {level}')
        if re.search(r'=\w and %t\d+, 63\b', refill):
            sys.exit(f'FAIL: a shift count keeps its `& 63` at --opt {level}')
        if re.search(r'=\w ceq %t\d+, 0\b', refill):
            sys.exit(f'FAIL: `!=` still compares a comparison with 0 at --opt {level}')
        if platform.machine() in ('arm64', 'aarch64'):
            asm_path = Path(work) / 'main.s'
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--emit=asm', '-o', asm_path], check=True)
            if not re.search(r'ldr w\d+, \[x\d+, x\d+, lsl #2\]', asm_path.read_text()):
                sys.exit(f'FAIL: a u32 table lookup is not one scaled load at --opt {level}')
            asm = function_asm(asm_path.read_text(), 'refill')
            if level == '2':
                continue
            inner = re.search(r'\n\s*ldrb (w\d+), \[x\d+, x\d+\]\n(.*?)\n\s*b L', asm, re.S)
            if not inner:
                sys.exit(f'FAIL: a byte read at a register index is not one register-offset load at --opt {level}')
            if re.search(r'\bmov |\[sp|\[x29', inner.group(2)) or len(inner.group(2).strip().splitlines()) > 6:
                sys.exit(f'FAIL: the refill loop copies or spills its values at --opt {level}:\n{inner.group(0)}')
            if re.search(r'\bmov (w\d+), \1\n', asm) or 'cset' in asm:
                sys.exit(f'FAIL: the refill loop zero-extends a zero-extended word or branches through a byte at --opt {level}')
            if not re.search(r'adds x\d+, x\d+, #8\n', asm):
                sys.exit(f'FAIL: a checked add of 8 does not take the constant as an immediate at --opt {level}')
    # the C release build expands memory.read[u32] into one load: its `memcpy` is the C
    # compiler's builtin and the trap position it restores an inline store, so the loop
    # calls neither (luce-compress's C-release inflate halved when it called both)
    c_path = Path(work) / 'main.c'
    subprocess.run([COMPILER, 'build', source, '--backend=c', '--release', '--emit=c', '-o', c_path], check=True)
    c_asm = Path(work) / 'main_c.s'
    subprocess.run(['cc', '-std=gnu11', '-O2', '-fno-strict-aliasing', '-ffp-contract=off', '-I', ROOT / 'runtime', '-S', c_path, '-o', c_asm], check=True)
    found = re.search(r'\n_?lb_\w*words:', c_asm.read_text())
    assert found, 'words'
    words_c = c_asm.read_text()[found.start():]
    words_c = words_c[:re.search(r'\n\s*ret', words_c).start()]
    if re.search(r'\b(bl|call[q]?)\s+_?(memcpy|lb_restore_pos)\b', words_c):
        sys.exit('FAIL: the C release build calls memcpy or lb_restore_pos for memory.read[u32]')
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
