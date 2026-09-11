#!/usr/bin/env python3
"""Native ownership has one identity and one disposal across all compiled modes."""
from pathlib import Path
import subprocess
import sys
import tempfile

COMPILER = Path(sys.argv[1]).resolve()
SOURCE = Path(__file__).with_name('main.lucb')
MODES = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='base-interop-') as temporary:
    binary = Path(temporary) / 'interop'
    for flags in MODES:
        subprocess.run([COMPILER, 'build', SOURCE, *flags, '-o', binary],
                       check=True, timeout=120)
        result = subprocess.run([binary, '0'], capture_output=True, text=True, timeout=15)
        assert result.returncode == 0 and not result.stdout and not result.stderr, result
        result = subprocess.run([binary, '1'], capture_output=True, text=True, timeout=15)
        assert result.returncode == 1 and 'a native object is closed' in result.stderr, result
print('PASS native ownership: identity, aliases, closure, weak expiry, native/self cycles and failed init; six modes')
