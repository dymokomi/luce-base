#!/usr/bin/env python3
"""Small leaf functions are expanded where they are called once optimised: a value maker
shaped like luce-js's js_new_int32, called from more than one place, lowers past the
first pass's limit and optimises well under the second's, so only the second inlining
pass, after the optimiser, expands it. At
--release no call of it is left, a `noinline` function stays a call, and the program
answers as it does unexpanded."""
from pathlib import Path
import re, subprocess, sys, tempfile, time

ROOT = Path(__file__).resolve().parents[1]
COMPILER = ROOT / 'build/luce-base'
PROGRAM = '''enum Tag as i64:
    int = 0
    boolean = 1
    undefined = 3

union Payload:
    word: u64
    float: f64
    ptr: void*

struct Value:
    var u: Payload
    var tag: Tag

func make(tag: Tag, val: i32) -> Value:
    var u: Payload = ---
    u.word = (u64)(u32)val
    return Value(u = u, tag = tag)

func undefined_value() -> Value:
    return make(Tag.undefined, 0)

func new_int(val: i32) -> Value:
    return make(Tag.int, val)

noinline func kept(val: i32) -> Value:
    return make(Tag.boolean, val)

pub func main(arguments: str[]) -> i32:
    var total: u64 = 0
    var i: i32 = 0
    while i < (i32)arguments.length + 10:
        let v = new_int(i)
        let u = undefined_value()
        let k = kept(i)
        let again = new_int(i + 1)
        let other = undefined_value()
        total += v.u.word + (u64)u.tag + (u64)k.tag + again.u.word + (u64)other.tag
        i += 1
    return (i32)(total % 256)
'''
with tempfile.TemporaryDirectory(prefix='inline-optimised-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    asm = Path(work) / 'main.s'
    subprocess.run([COMPILER, 'build', source, '--native', '--release', '--emit=asm', '-o', asm], check=True)
    text = asm.read_text()
    calls = lambda name: len(re.findall(r'\b(?:bl|call)\s+_?lb_\w*' + name + r'\b', text))
    if calls('new_int') or calls('undefined_value'):
        sys.exit('FAIL: a small optimised leaf function was left a call at --release')
    if calls('kept') == 0:
        sys.exit('FAIL: a `noinline` function was expanded')
    answers = []
    for flags in (['--opt', '0'], ['--release']):
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', source, '--native', *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary]).returncode)
    if answers[0] != answers[1]:
        sys.exit(f'FAIL: the expanded program answered {answers[1]}, the unoptimised one {answers[0]}')
    # the compile-time guard: 600 functions calling the leaves eight times each, all opened
    # into `main` by the first pass, expand 4800 bodies there; `main` is optimised again as
    # a chain of tens of thousands of blocks, which once overflowed the recursive walks of
    # the dominator tree. Within a minute (a few seconds on an M-series Mac).
    body = PROGRAM.split('pub func main')[0]
    for n in range(600):
        body += f'''func user{n}(x: i32) -> u64:
    let a = new_int(x)
    let b = undefined_value()
    let c = new_int(x + {n})
    let d = undefined_value()
    let e = new_int(x * 2)
    let f = undefined_value()
    let g = new_int(x - 1)
    let h = undefined_value()
    return a.u.word + c.u.word + e.u.word + g.u.word + (u64)b.tag + (u64)d.tag + (u64)f.tag + (u64)h.tag

'''
    body += 'pub func main(arguments: str[]) -> i32:\n    var total: u64 = 0\n'
    body += ''.join(f'    total += user{n}((i32)arguments.length)\n' for n in range(600))
    body += '    return (i32)(total % 256)\n'
    many = Path(work) / 'many.lucb'
    many.write_text(body)
    started = time.time()
    subprocess.run([COMPILER, 'build', many, '--native', '--release', '-o', Path(work) / 'many'], check=True, timeout=300)
    elapsed = time.time() - started
    if elapsed > 60:
        sys.exit(f'FAIL: 600 callers of small leaves took {elapsed:.0f}s to build at --release')
print('PASS small leaf functions are expanded once optimised; noinline is kept; many callers build quickly')
