#!/usr/bin/env python3
"""Exercise real files and targeted syscall failures under every native opt level."""
from pathlib import Path
import subprocess
import sys
import tempfile

root = Path(__file__).resolve().parents[3]
compiler = Path(sys.argv[1]).resolve()
with tempfile.TemporaryDirectory(prefix="base-file-io-") as temporary:
    work = Path(temporary)
    for flags in [*[['--native', '--opt', str(level)] for level in range(4)],
                  ['--backend=c'], ['--backend=c', '--release']]:
        executable = work / "file-io"
        target = work / "data"
        for command in ([compiler, 'build', root / 'tests/programs/file_io/main.lucb',
                         *flags, '-o', executable], [executable, target]):
            subprocess.run([sys.executable, root / 'tools/run_case.py', '--', *command],
                           cwd=root, check=True)
        assert target.read_bytes() == b'abcd12xy'
        target.unlink()
        print('PASS ' + ' '.join(flags), flush=True)
