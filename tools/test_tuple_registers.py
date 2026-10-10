#!/usr/bin/env python3
"""A tuple of up to four words comes back in registers on every target (the program's own
convention, since nothing outside it calls a function answering one): `(f64, f64)` in two
float registers, `(i64, f64, f64)` in one integer and two float ones. The callee builds
nothing in its frame and the caller reads the registers straight into the values it uses:
neither stores a word to memory to load it back, which the store-to-load forwarding of a
double-double's pair would pay for on every call. On arm64 a struct of three doubles comes
back in d0-d2, as AAPCS64 returns a homogeneous aggregate, and is read from them. Every build
answers alike."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'

SOURCE = '''## Pairs and triples through calls that stay calls.
noinline func two_sum(a: f64, b: f64) -> (f64, f64):
    let s = a + b
    let bb = s - a
    return (s, (a - (s - bb)) + (b - bb))

noinline func reduce(x: f64, n: i64) -> (i64, f64, f64):
    return (n + 1, x * 0.5, x - 0.25)

struct Vec3:
    var x: f64
    var y: f64
    var z: f64

noinline func scaled(v: Vec3, k: f64) -> Vec3:
    return Vec3(x = v.x * k, y = v.y * k, z = v.z * k)

pub func main(arguments: str[]) -> i32:
    var acc = (f64)arguments.length
    var n: i64 = 0
    var v = Vec3(x = 1.0, y = 2.0, z = 3.0)
    for i in 0..<100:
        let (s, e) = two_sum(acc, 1.25)
        let (m, h, l) = reduce(s + e, n)
        n = m
        acc = h + l
        v = scaled(v, 0.75)
    print(f"{acc:.9f} {n} {v.x:.9f} {v.y:.9f} {v.z:.9f}")
    return 0
'''

# a result register loaded from memory
RESULT_LOAD = {'arm64-macos': re.compile(r'\bldr\w*\s+[dsxw][0-3], .*\['),
               'x86_64': re.compile(r'\bmov\w*\s+-?\d*\(%\w+\), %(xmm[0-3]|rax|eax|rdx|edx)\b')}

# a result register stored to memory
RESULT_STORE = {'arm64-macos': re.compile(r'\bstr\w*\s+[dsxw][0-3], '),
                'x86_64': re.compile(r'\bmov\w*\s+%(xmm[0-3]|rax|eax|rdx|edx)\b, .*\(')}


def body(text, name):
    found = re.search(r'\n_?lb_\w*' + name + r':\n(.*?)\n\s*ret\b', text, re.S)
    assert found, name
    return found.group(1)


def kind(target):
    return 'arm64-macos' if target.startswith('arm64') else 'x86_64'


with tempfile.TemporaryDirectory(prefix='tuple-registers-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(SOURCE)
    asm_path = Path(work) / 'main.s'
    for target in ('arm64-macos', 'x86_64-linux', 'x86_64-windows'):
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', '--target', target, '--emit=asm', '-o', asm_path], check=True)
        text = asm_path.read_text()
        callees = ['two_sum', 'reduce']
        if target.startswith('arm64'):
            # the struct's argument lands in the frame; its result leaves from d0-d2
            callees.append('scaled')
        for name in callees:
            kept = [line for line in body(text, name).splitlines() if RESULT_LOAD[kind(target)].search(line)]
            if kept:
                sys.exit(f'FAIL: {name} returns through its frame ({target}):\n' + '\n'.join(kept))
        caller = body(text, 'main')
        for name in callees:
            # the words are moved out of their registers as the call returns, none stored
            after = re.search(r'(?:bl|call)\s+_?lb_\w*' + name + r'(?:@PLT)?\n((?:.*\n){4})', caller)
            assert after, f'the call of {name} ({target})'
            stored = RESULT_STORE[kind(target)]
            kept = [line for line in after.group(1).splitlines() if stored.search(line)]
            if kept:
                sys.exit(f'FAIL: the result of {name} goes through the frame ({target}):\n' + '\n'.join(kept))
    binary = Path(work) / 'main'
    answers = set()
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--native', '--debug'], ['--backend=c']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.add(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(answers) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok a tuple of up to four words comes back in registers, floats in float ones')
