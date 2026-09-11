#!/usr/bin/env python3
"""Worker descriptions keep factory configuration and handler types distinct."""
from pathlib import Path
import subprocess
import sys
result = subprocess.run([sys.argv[1], 'describe', Path(__file__).with_name('api.lucb')],
                        check=True, capture_output=True, text=True)
for record in [
    'description 9\n',
    'func start(factory: worker[(str, i64?), str, str])',
    'func ready(factory: worker[unit, unit, unit])',
]:
    assert record in result.stdout, result.stdout
print('PASS worker descriptions, aliases, tuple configuration and unit signatures')
