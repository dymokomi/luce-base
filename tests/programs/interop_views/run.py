#!/usr/bin/env python3
"""View leases separate operational validity from active-call storage lifetime."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
flags = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-view-leases-') as temporary:
    binary = Path(temporary) / 'fixture'
    for mode in flags:
        subprocess.run([compiler, 'build', source, *mode, '-o', binary], check=True, timeout=120)
        for operation, diagnostic in [(0, ''), (1, 'a native view has expired'), (2, 'a native view is read-only')]:
            result = subprocess.run([binary, str(operation)], capture_output=True, text=True, timeout=15)
            assert result.returncode == (1 if diagnostic else 0), result
            assert not result.stdout, result
            assert diagnostic in result.stderr if diagnostic else not result.stderr, result
print('PASS native leases: checked views, expiry, read-only access, active closure, aliases and exact disposal; six modes')
