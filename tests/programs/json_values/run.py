#!/usr/bin/env python3
"""Check structured encoding against Python's independent JSON decoder."""
import json
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
modes = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-json-') as temporary:
    binary = Path(temporary) / 'fixture'
    for flags in modes:
        subprocess.run([compiler, 'build', source, *flags, '-o', binary], check=True, timeout=120)
        result = subprocess.run([binary], capture_output=True, text=True, timeout=15)
        assert result.returncode == 0 and not result.stderr, result
        assert json.loads(result.stdout) == {
            'message': 'café\n\t\0"\\', 'integer': -(2**63), 'ok': True,
            'array': [0.1, None]}, result.stdout
print('PASS JSON structured values, escaping, snapshots, duplicate keys, limits and invalid values; six modes')
