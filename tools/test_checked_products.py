#!/usr/bin/env python3
"""An unsigned checked product by a constant needs no multiplier's high half where the
low half is cheap: on x86-64 one comparison against the greatest factor that cannot
overflow decides the check and the three-operand `imul` (a `lea` for 3, 5 and 9) makes the
product, with no `mul` in rdx:rax; on arm64 `umulh` still decides it, and a product by 3,
5, 9 or a power of two is an add of a shifted operand or a shift, not a `mul`. A product
past the range traps, at the boundary too; every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''## Checked products by constants, each in a loop of its own (a product checked before
## would prove the next one in range).
noinline func scaled(values: const u64[]) -> u64:
    var total: u64 = 0
    for v in values:
        total = total +% v * 3
    for v in values:
        total = total +% v * 1000
    for v in values:
        total = total +% v * 8
    return total

noinline func narrow(values: const u32[]) -> u32:
    var total: u32 = 0
    for v in values:
        total = total +% v * 5
    return total

noinline func triple(v: u64) -> u64:
    return v * 3

pub func main(arguments: str[]) -> i32:
    var values: u64[64] = ---
    var words: u32[64] = ---
    for at in 0..<64:
        values[at] = (u64)at * 0x9e3779b9 + (u64)arguments.length
        words[at] = (u32)values[at] & 0xffffff
    # the largest factor whose triple fits, then one past it
    let largest: u64 = 0x5555555555555555
    print(f"{scaled(values[0..])} {narrow(words[0..])} {triple(largest)}")
    if arguments.length > 1:
        print(f"{triple(largest + 1)}")
    return 0
'''

with tempfile.TemporaryDirectory(prefix='checked-products-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm_path = Path(work) / 'main.s'
    for target in ('x86_64-linux', 'x86_64-windows', 'arm64-macos'):
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm_path], check=True)
        text = asm_path.read_text()
        arm = target.startswith('arm64')
        found = re.search(r'\n_lb_\w*scaled:(.*?)\n\s*ret\n' if arm else r'\nlb_\w*scaled:(.*?)\n    ret', text, re.S)
        assert found, 'scaled'
        body = found.group(1)
        if arm:
            if not re.search(r'umulh ', body) or not re.search(r'add (x\d+), (x\d+), \2, lsl #1', body) or not re.search(r'lsl (x\d+), (x\d+), #3', body) or len(re.findall(r'\n\s*mul ', body)) != 1:
                sys.exit(f'FAIL: a checked product by 3 or 8 multiplies ({target}):\n{body}')
        elif re.search(r'\n\s*mul[lq] ', body) or not re.search(r'imulq \$1000,', body) or not re.search(r'leaq \((%\w+),\1,2\)', body):
            sys.exit(f'FAIL: a checked product by a constant multiplies in rdx:rax ({target}):\n{body}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
        past = subprocess.run([binary, 'past'], capture_output=True, text=True)
        if past.returncode != 1 or 'integer overflow' not in past.stderr:
            sys.exit(f'FAIL: a product past the range does not trap ({" ".join(flags)}): {past.returncode} {past.stderr}')
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok checked products by constants: one comparison on x86-64, a shifted add on arm64, a trap past the range')
