#!/usr/bin/env python3
"""An FM synthesizer's per-sample loops, as an OPL2 emulator ported from C writes them
(fmopl.c's `advance`), carry no work C does not: a chain of `if`/`elif` tests of one field
against four dense values jumps through a table as a `match` does (`opt/switches`); a
register a loop shifts in a record, taking its taps when its low bit is set, is chosen
without a branch, since the store in the arm is written again before anything reads it
(`load.dead_stores`); `x - 1` under `while x != 0` and `(1 << s) - 1` once `s` is checked
below the width are unchecked, and a second shift by the same count is not checked again
(`opt/ranges`). On arm64 each operator's record, `&chip.channels[i // 2].slots[i & 1]` of
92 and 44 bytes, is reached with multiply-adds; on arm64 and x86-64 a branch never jumps to
a jump, and a loop whose body ends in an `if` keeps its latch above the body
(`native/layout`): the arm laid out last falls into the latch and the body's branch to that
arm goes back up. Every build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''let increments: u32[8] = [0, 1, 0, 1, 1, 1, 1, 2]

## One operator of a two-operator channel, 44 bytes: no power of two.
struct Slot:
    var state: u32
    var shift: u32
    var volume: i32
    var vibrato: u32
    var count: u32
    var step: u32
    var spare: u32[5]

struct Channel:
    var slots: Slot[2]
    var block: u32

struct Chip:
    var channels: Channel[9]
    var noise: u32
    var counter: u32

## The envelope's state chain, as `if`/`elif` tests of one field.
noinline func envelope(chip: Chip*) -> i32:
    var total: i32 = 0
    for i: usize in 0..<18:
        let op = &chip.channels[i // 2].slots[i & 1]
        if op.state == 4:
            op.volume = 0
            op.state = 3
        elif op.state == 3:
            op.volume += 2
            if op.volume >= 64:
                op.state = 2
        elif op.state == 2:
            total += op.volume
        elif op.state == 1:
            op.volume -= 1
            if op.volume <= 0:
                op.state = 0
    return total

## A rate's step: the counter's low bits under a shift that is checked once.
noinline func gated(op: const Slot*, counter: u32) -> u32:
    if (counter & ((1 << op.shift) - 1)) == 0:
        return increments[(counter >> op.shift) & 7]
    return 0

## The noise register, shifted `shifts` times, its low bit choosing whether it takes the taps.
noinline func noise(chip: Chip*, shifts: u32):
    var left = shifts
    while left != 0:
        if (chip.noise & 1) != 0:
            chip.noise ^= 0x800302
        chip.noise >>= 1
        left -= 1

## The phase of every operator: most add their step, a vibrato's adds more.
noinline func phases(chip: Chip*):
    for i: usize in 0..<18:
        let op = &chip.channels[i // 2].slots[i & 1]
        if op.vibrato != 0:
            op.count +%= op.step +% (chip.counter & 63)
        else:
            op.count +%= op.step

pub func main(arguments: str[]) -> i32:
    var chip: Chip = ---
    for c in 0..<9:
        chip.channels[c].block = (u32)c
        for s in 0..<2:
            let k = (u32)(c * 2 + s)
            chip.channels[c].slots[s] = Slot(state = k % 5, shift = k % 7, volume = (i32)k, vibrato = k % 3 // 2, count = k * 1000, step = 77 + k, spare = [0, 0, 0, 0, 0])
    chip.noise = 1 + (u32)arguments.length
    chip.counter = 0
    var total: i64 = 0
    var gates: u32 = 0
    for round in 0..<200:
        chip.counter +%= 1
        total += (i64)envelope(&chip)
        gates +%= gated(&chip.channels[round % 9].slots[round % 2], chip.counter)
        noise(&chip, chip.counter % 4)
        phases(&chip)
    print(f"{total} {gates} {chip.noise} {chip.channels[3].slots[1].count} {chip.channels[8].slots[0].volume}")
    return 0
'''
LABEL = r'^(\.?L\w+):$'


def function_ir(text, name):
    found = re.search(r'\nfunction \$lb_main_' + name + r'\(', text)
    assert found, name
    end = text.find('\nfunction ', found.start() + 1)
    return text[found.start():end if end > 0 else len(text)]


def function_asm(text, name):
    found = re.search(r'\n_?lb_main_' + name + r':\n(.*?)\n\s*ret\n', text, re.S)
    assert found, name
    return found.group(1)


def jumps_to_jumps(body, arm):
    """The branches of `body` whose target's first instruction is an unconditional jump."""
    branch = r'\n\s*(?:b|b\.\w+|cbn?z \w+,|tbn?z \w+, #\d+,) (L\w+)' if arm else r'\n\s*j\w+ (\.L\w+)'
    jump = r'^\s*b L\w+$' if arm else r'^\s*jmp \.L\w+$'
    lines = body.split('\n')
    first = {}
    for k, line in enumerate(lines):
        label = re.match(LABEL, line)
        if label:
            rest = [l for l in lines[k + 1:] if l.strip() and not re.match(LABEL, l) and not l.strip().startswith('.p2align')]
            first[label.group(1)] = rest[0] if rest else ''
    return [target for target in re.findall(branch, body) if re.match(jump, first.get(target, ''))]


with tempfile.TemporaryDirectory(prefix='synth-loops-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    ir_path = Path(work) / 'main.ir'
    subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--emit=ir', '-o', ir_path], check=True)
    text = ir_path.read_text()
    envelope = function_ir(text, 'envelope')
    if 'switch ' not in envelope or re.search(r'ceq %t\d+, [1-4]\b', envelope):
        sys.exit(f'FAIL: the chain of state tests does not jump through a table:\n{envelope}')
    gated = function_ir(text, 'gated')
    if 'subo' in gated or gated.count('trap ') != 1:
        sys.exit(f'FAIL: a checked shift count is checked again, or its mask less one is checked:\n{gated}')
    noise = function_ir(text, 'noise')
    if 'select' not in noise or 'subo' in noise or noise.count('storew') != 1:
        sys.exit(f'FAIL: the noise register\'s taps are not chosen without a branch, or its count is checked:\n{noise}')
    asm_path = Path(work) / 'main.s'
    for target in ('arm64-macos', 'x86_64-linux'):
        arm = target.startswith('arm64')
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm_path], check=True)
        asm = asm_path.read_text()
        for name in ('envelope', 'gated', 'noise', 'phases'):
            body = function_asm(asm, name)
            if jumps_to_jumps(body, arm):
                sys.exit(f'FAIL: a branch in {name} jumps to a jump ({target}):\n{body}')
        phases = function_asm(asm, 'phases')
        if arm and phases.count('madd ') < 2:
            sys.exit(f'FAIL: an operator\'s record is not reached with multiply-adds ({target}):\n{phases}')
        # the body's branch into the arm laid out last goes back up to it, above the body
        into_arm = re.search(r'\n\s*cbn?z \w+, (L\w+)' if arm else r'\n\s*j(?:e|ne) (\.L\w+)', phases)
        if not into_arm or not 0 <= phases.find('\n' + into_arm.group(1) + ':') < into_arm.start():
            sys.exit(f'FAIL: the loop\'s latch is not above its body ({target}):\n{phases}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '2'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok a synthesizer\'s operator loops: a state chain jumps through a table, taps chosen without a branch, checked counts not checked again, latches above the bodies')
