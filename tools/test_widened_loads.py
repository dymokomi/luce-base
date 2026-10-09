#!/usr/bin/env python3
"""A signed word loaded and widened at once (`(usize)corners[k]`, an `i32` index into an
array) is one sign-extending load: `movslq` on x86-64, `ldrsw` on arm64, with no second
extension of the register after it, whether the address is a register, a base and an
offset, or a scaled index. Checked on the assembly for every target any host emits; every
build answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''## Indexes read as `i32` and used as `usize`: through a scaled index, at an offset, and
## through a pointer.
noinline func gather(values: const f64[], at: const i32[], pairs: const i32*, count: usize) -> f64:
    var total: f64 = 0.0
    for k in 0..<at.length:
        total += values[(usize)at[k]]
    for k in 0..<count:
        let p = pairs + k * 2
        total += values[(usize)p[1]] - values[(usize)*p]
    return total

pub func main(arguments: str[]) -> i32:
    var values: f64[64] = ---
    var at: i32[64] = ---
    var pairs: i32[64] = ---
    for k in 0..<64:
        values[k] = (f64)k * 0.5 + (f64)arguments.length
        at[k] = (i32)((k * 13) % 64)
        pairs[k] = (i32)((k * 7) % 64)
    print(f"{gather(values[0..], at[0..], &pairs[0], 32)}")
    return 0
'''

with tempfile.TemporaryDirectory(prefix='widened-loads-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm_path = Path(work) / 'main.s'
    checks = [('x86_64-linux', r'\nlb_\w*gather:(.*?)\n    ret', r'movslq [^%\n]*\((%\w+)[^\n]*, (%r\w+)\n\s*movslq %\w+, \2\n'),
              ('x86_64-windows', r'\nlb_\w*gather:(.*?)\n    ret', r'movslq [^%\n]*\((%\w+)[^\n]*, (%r\w+)\n\s*movslq %\w+, \2\n'),
              ('arm64-macos', r'\n_lb_\w*gather:(.*?)\n\s*ret\n', r'ldrsw (x\d+), [^\n]*\n\s*sxtw \1,')]
    for target, function, twice in checks:
        for level in ('1', '3'):
            subprocess.run([COMPILER, 'build', source, '--native', '--opt', level, '--target', target, '--emit=asm', '-o', asm_path], check=True)
            found = re.search(function, asm_path.read_text(), re.S)
            assert found, 'gather'
            body = found.group(1)
            if not re.search(r'movslq|ldrsw', body):
                sys.exit(f'FAIL: no sign-extending load ({target} --opt {level}):\n{body}')
            again = re.search(twice, body)
            if again:
                sys.exit(f'FAIL: a loaded word is extended again ({target} --opt {level}):\n{again.group(0)}\n{body}')
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok a signed word loaded and widened is one sign-extending load on x86-64 and arm64')
