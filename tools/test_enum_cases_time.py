#!/usr/bin/env python3
"""Checking an integer-backed enum stays linear in its cases: 3200 cases check within ten
seconds (a twentieth of a second on an M-series Mac; the check that compared each case with
each earlier one, computing both values from the first case, took 51 s at 1600 cases and
would take minutes here), and a value repeated at the last case is still found."""
from pathlib import Path
import subprocess, sys, tempfile, time

ROOT = Path(__file__).resolve().parents[1]
COMPILER = ROOT / 'build/luce-base'
CASES = 3200
with tempfile.TemporaryDirectory(prefix='enum-cases-') as work:
    source = Path(work) / 'big.lucb'
    lines = ['pub enum Big as u16:'] + [f'    case_{n} = {n}' for n in range(CASES)]
    source.write_text('\n'.join(lines) + '\n')
    started = time.time()
    subprocess.run([COMPILER, 'check', source], check=True, timeout=300)
    elapsed = time.time() - started
    if elapsed > 10:
        sys.exit(f'FAIL: a {CASES}-case enum took {elapsed:.1f}s to check')
    # the same cases and one more repeating the first value: rejected at that case
    source.write_text('\n'.join(lines + [f'    again = 0']) + '\n')
    result = subprocess.run([COMPILER, 'check', source], capture_output=True, text=True, timeout=300)
    if result.returncode != 1 or f'big.lucb:{CASES + 2}:5: two cases share one value' not in result.stderr:
        sys.exit(f'FAIL: the repeated value was not reported: [{result.stderr.strip()}]')
print(f'PASS a {CASES}-case enum checks in linear time')
