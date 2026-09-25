#!/usr/bin/env python3
"""A narrow result from C is extended as its type says before it is read.

Win64 and System V leave the bits above an 8- or 16-bit return undefined, so
`GetKeyState(16) < 0` on an `i16` read garbage in the native backend: every
Windows modifier key read as up. The call's result must be sign-extended (i8,
i16) or zero-extended (u8, u16, bool) straight after the call.
"""
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = ROOT / 'build/luce-base'
PROGRAM = '''extern func narrow_signed(key: i32) -> i16
extern func narrow_unsigned(key: i32) -> u16
extern func narrow_byte(key: i32) -> i8
extern func narrow_flag(key: i32) -> bool

pub func main(arguments: str[]) -> i32:
    discard(arguments)
    var total: i32 = 0
    if narrow_signed(1) < 0:
        total += 1
    if narrow_unsigned(2) > 40000:
        total += 2
    if narrow_byte(3) < 0:
        total += 4
    if narrow_flag(4):
        total += 8
    return total
'''
# After each call, the extension its declared type calls for, before anything else reads it.
EXPECTED = {'narrow_signed': r'movsw', 'narrow_unsigned': r'movzw', 'narrow_byte': r'movsb', 'narrow_flag': r'movzb'}

with tempfile.TemporaryDirectory(prefix='narrow-extern-') as temporary:
    source = Path(temporary) / 'main.lucb'
    source.write_text(PROGRAM)
    for target in ['x86_64-windows', 'x86_64-linux']:
        output = Path(temporary) / f'{target}.s'
        subprocess.run([str(COMPILER), 'build', str(source), '--native', '--target', target, '--emit=asm', '-o', str(output)],
                       check=True, capture_output=True, text=True)
        lines = output.read_text().splitlines()
        for function, extension in EXPECTED.items():
            calls = [index for index, line in enumerate(lines) if re.search(rf'call\s+_?{function}\b', line)]
            assert calls, f'{target}: no call to {function}'
            for index in calls:
                window = '\n'.join(lines[index + 1:index + 6])
                assert re.search(extension, window), f'{target}: {function} result not extended ({extension}):\n{window}'
print('PASS narrow extern results are extended on x86_64-windows and x86_64-linux')
