#!/usr/bin/env python3
"""External storage keeps global lifetime and mutability across module imports."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('main.lucb')
with tempfile.TemporaryDirectory(prefix='luce-external-storage-') as folder:
    binary = Path(folder) / 'program.exe'
    for flags in (["--opt", "0"], ["--opt", "1"], ["--opt", "2"], ["--opt", "3"],
                  ["--backend=c"], ["--backend=c", "--release"]):
        subprocess.run([compiler, 'build', source, *flags, '-o', binary], check=True)
        result = subprocess.run([binary], check=True, capture_output=True)
        assert result.stdout == b'ok external global storage\n' and not result.stderr, result
        print('PASS external storage', *flags)
    generated = Path(folder) / 'program.c'
    subprocess.run([compiler, 'build', source, '--emit=c', '-o', generated], check=True)
    text = generated.read_text(encoding='utf-8')
    assert 'unused_external_counter' not in text
    assert 'extern int32_t external_counter;' in text
    print('PASS only referenced external storage is declared')
