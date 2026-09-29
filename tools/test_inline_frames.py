#!/usr/bin/env python3
"""A function whose slots are large stays a call: `session`, called from one place only and
holding a 16 KiB buffer whose address leaves it, would be expanded into `dispatch` under the
called-once rule, putting the buffer in `dispatch`'s frame for all of its call. On a worker
thread that frame growth overflowed macOS's 512 KiB stack (luce-server's RouterState.dispatch,
3 KB -> 35 KB). An `inline` function is still expanded whatever its frame, and the program
answers the same at every level."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = ROOT / 'build/luce-base'
PROGRAM = '''struct State:
    var count: u64
    var input: u8[16384]

noinline func fill(state: State*, n: u64):
    state.count = n
    for i in 0..<state.input.length:
        state.input[i] = u8(i & 7)

func session(n: u64) -> u64:
    var state: State = ---
    fill(&state, n)
    return state.count + (u64)state.input[9]

inline func pinned(n: u64) -> u64:
    var state: State = ---
    fill(&state, n)
    return state.count + (u64)state.input[10]

func dispatch(n: u64) -> u64:
    if n > 1000:
        trap("too many")
    return session(n) + 1

pub func main(arguments: str[]) -> i32:
    return (i32)(dispatch((u64)arguments.length) + pinned((u64)arguments.length))
'''
with tempfile.TemporaryDirectory(prefix='inline-frames-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    answers = []
    for flags in (['--opt', '0'], ['--opt', '1'], ['--opt', '2'], ['--release']):
        asm = Path(work) / 'main.s'
        subprocess.run([COMPILER, 'build', source, '--native', *flags, '--emit=asm', '-o', asm], check=True)
        text = asm.read_text()
        calls = lambda name: len(re.findall(r'\b(?:bl|call)\s+_?lb_\w*' + name + r'\b', text))
        if calls('session') != 1:
            sys.exit(f'FAIL: {flags}: a function with a 16 KiB frame was expanded into its caller')
        if calls('pinned') != 0:
            sys.exit(f'FAIL: {flags}: an `inline` function was left a call')
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', source, '--native', *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary]).returncode)
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the levels answered {answers}')
print('PASS a callee with a large frame stays a call; an inline one is expanded; every level answers alike')
