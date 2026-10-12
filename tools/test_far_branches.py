#!/usr/bin/env python3
"""A function too long for a conditional branch to be sure of reaching across it (±1 MB, past
`short_reach` instructions of the IR): its conditional branches, to its blocks and to the cold
trap paths after its body, each skip over an unconditional `b` instead (`branch_start`), and on
an arm64 host the program runs and answers as Python does. A function past a megabyte, which
the assembler rejected before, takes minutes to build, so this one is only past the bound."""
from pathlib import Path
import platform, re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
# checked products and sums: a few instructions each and a branch to a cold path apiece
STEPS = 4000

def source() -> str:
    lines = ['pub func main(arguments: str[]) -> i32:',
             '    var x: i64 = (i64)arguments.length',
             '    if x < 100:']
    for k in range(STEPS):
        lines.append(f'        x = x % 1000003 * 3 + {k % 97}')
    lines += ['    print(f"{x}")', '    return 0', '']
    return '\n'.join(lines)

with tempfile.TemporaryDirectory(prefix='far-branches-') as work:
    program = Path(work) / 'main.lucb'
    program.write_text(source())
    asm = Path(work) / 'main.s'
    subprocess.run([COMPILER, 'build', program, '--native', '--target', 'arm64-macos', '--emit=asm', '-o', asm], check=True)
    text = asm.read_text()
    found = re.search(r'\n_?lb_main:\n(.*?)\n_?lb_', text, re.S)
    assert found, 'main'
    text = found.group(1)
    near = re.findall(r'\n\s*(?:b\.\w+|cbn?z \w+,) L\w+', text)
    far = re.findall(r'\n\s*(?:b\.\w+|cbn?z \w+,) 1f\n\s*b L\w+\n1:', text)
    if near or len(far) < STEPS:
        sys.exit(f'FAIL: {len(near)} conditional branches to labels, {len(far)} far ones')
    if platform.machine() == 'arm64' and sys.platform == 'darwin':
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', program, '--native', '-o', binary], check=True)
        answer = subprocess.run([binary], capture_output=True, text=True, check=True).stdout
        expected = 1
        for k in range(STEPS):
            expected = expected % 1000003 * 3 + k % 97
        if answer.strip() != str(expected):
            sys.exit(f'FAIL: answered {answer.strip()}, not {expected}')
print('PASS far conditional branches in a function past short_reach')
