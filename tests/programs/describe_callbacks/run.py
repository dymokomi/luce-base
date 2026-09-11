#!/usr/bin/env python3
"""Retained callback carriers preserve argument/result and standard owner identity."""
from pathlib import Path
import subprocess
import sys

source = Path(__file__).with_name('api.lucb')
result = subprocess.run([sys.argv[1], 'describe', source], capture_output=True, text=True, check=True)
for record in [
    'description 9\n',
    'func echo(handler: callback[str, unit]) -> callback[str, unit]',
    'func answer(callback: callback[(str, i64?), str]) -> str',
    'func ready(callback: callback[unit, unit])',
    'standard interop as ',
    '.Connection object',
]:
    assert record in result.stdout, result.stdout
print('PASS retained callback descriptions, aliases and standard Connection identity')
