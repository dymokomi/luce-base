#!/usr/bin/env python3
"""Frame sharing stays near-linear: one function of 1500 arms, each a loop over a local's
address, builds natively within a minute (about seven seconds on an M-series Mac). An
early, quadratic sharing pass made luced-2d's build hang."""
from pathlib import Path
import subprocess, sys, tempfile, time

ROOT = Path(__file__).resolve().parents[1]
COMPILER = ROOT / 'build/luce-base'
ARMS = 1500
lines = ['struct Pair:', '    var a: i64', '    var b: i64', '',
         'func touch(p: Pair*) -> i64:', '    return p.a + p.b', '',
         'func big(k: i32) -> i64:', '    var total: i64 = 0', '    match k:']
# each arm a loop over a local's address: the loops and slots a frame analysis must not
# multiply together
for n in range(ARMS):
    lines += [f'        {n}:', f'            var p{n} = Pair(a = {n}, b = {n + 1})', f'            var count{n}: i32 = 0',
              f'            while count{n} < k:', f'                total += touch(&p{n})', f'                count{n} += 1']
lines += ['        _:', '            total = -1', '    return total', '',
          'pub func main(arguments: str[]) -> i32:', '    return (i32)(big((i32)arguments.length) % 7)', '']
with tempfile.TemporaryDirectory(prefix='frame-sharing-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text('\n'.join(lines))
    for flags in (['--native'], ['--native', '--release']):
        started = time.time()
        subprocess.run([COMPILER, 'build', source, *flags, '-o', Path(work) / 'big'], check=True, timeout=300)
        elapsed = time.time() - started
        if elapsed > 60:
            sys.exit(f'FAIL: a {ARMS}-arm function took {elapsed:.0f}s to build with {" ".join(flags)}')
print(f'PASS frame sharing builds a {ARMS}-arm function quickly')
