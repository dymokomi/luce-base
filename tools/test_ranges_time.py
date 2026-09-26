#!/usr/bin/env python3
"""The range pass stays near-linear in bounds checks: one function of 3000 checked loads,
each a fact the later ones may use, builds natively within a minute (a few seconds on an
M-series Mac). Searching every fact in scope for every check made 2000 checks take 28s and
a module of 1200 small tests over three minutes, when every test body was also expanded
into the runner's `main`; the tests now stay functions of their own."""
from pathlib import Path
import subprocess, sys, tempfile, time

ROOT = Path(__file__).resolve().parents[1]
COMPILER = ROOT / 'build/luce-base'
CHECKS = int(sys.argv[1]) if len(sys.argv) > 1 else 3000
lines = ['func sum(values: const u64[], indexes: const usize[]) -> u64:', '    var total: u64 = 0']
lines += [f'    total +%= values[indexes[{n}]]' for n in range(CHECKS)]
lines += ['    return total', '',
          'pub func main(arguments: str[]) -> i32:',
          f'    var indexes: usize[{CHECKS}] = ---',
          f'    for i in 0..<{CHECKS}:', '        indexes[i] = (usize)(i % 3)',
          '    let values: u64[3] = [1, 2, 3]',
          '    return (i32)(sum(values, indexes) % 7)', '']
with tempfile.TemporaryDirectory(prefix='ranges-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text('\n'.join(lines))
    for flags in (['--native'], ['--native', '--release']):
        started = time.time()
        subprocess.run([COMPILER, 'build', source, *flags, '-o', Path(work) / 'sum'], check=True, timeout=600)
        elapsed = time.time() - started
        if len(sys.argv) > 1:
            print(f'{CHECKS} checks {" ".join(flags)}: {elapsed:.1f}s')
        if elapsed > 60:
            sys.exit(f'FAIL: a function of {CHECKS} checks took {elapsed:.0f}s to build with {" ".join(flags)}')
        # 3000 loads of indexes cycling 0, 1, 2 over values 1, 2, 3 sum to 6000, 6000 % 7 == 1
        status = subprocess.run([Path(work) / 'sum']).returncode
        if CHECKS == 3000 and status != 1:
            sys.exit(f'FAIL: the function of {CHECKS} checks answered {status}, not 1')
TESTS = 1200
# each test a handful of checked loads at indexes the checks cannot see through
tests = ['func index_of(k: u64) -> usize:', '    return (usize)(k % 8)', '']
for n in range(TESTS):
    tests += [f'test "loads {n}":', '    var values: u64[8] = [1, 2, 3, 4, 5, 6, 7, 8]', '    var total: u64 = 0']
    tests += [f'    total += values[index_of({n + k})]' for k in range(6)]
    tests += ['    assert(total > 5)', '']
with tempfile.TemporaryDirectory(prefix='ranges-tests-') as work:
    source = Path(work) / 'many.lucb'
    source.write_text('\n'.join(tests))
    started = time.time()
    subprocess.run([COMPILER, 'test', source, '--native'], check=True, timeout=600, stdout=subprocess.DEVNULL)
    elapsed = time.time() - started
    if len(sys.argv) > 1:
        print(f'{TESTS} tests: {elapsed:.1f}s')
    if elapsed > 60:
        sys.exit(f'FAIL: a module of {TESTS} tests took {elapsed:.0f}s to build and run')
print(f'PASS a function of {CHECKS} bounds checks and a module of {TESTS} tests build in near-linear time')
