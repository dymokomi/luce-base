#!/usr/bin/env python3
"""Compiled embedded standard sources must equal the canonical files byte for byte."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

from standard_library import module_names, module_source, source_literal

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve()
SAMPLE = 'escaped: "\\n" and \'\\\\\'\ntriple: """hello\nworld"""\nUnicode: λ🙂\t\r\n\0\b\x7f'
EXPECTED = {name: module_source(ROOT / 'src/std', name).encode()
            for name in module_names(ROOT / 'src/std')}
EXPECTED['sentinel'] = SAMPLE.encode()
FLAGS = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]

with tempfile.TemporaryDirectory(prefix='base-std-embedding-') as temporary:
    root = Path(temporary)
    shutil.copyfile(ROOT / 'src/sema/prelude.lucb', root / 'tables.lucb')
    with (root / 'tables.lucb').open('a') as tables:
        tables.write('\npub let sentinel = ' + source_literal(SAMPLE) + '\n')
    source = root / 'main.lucb'
    source.write_text('''import tables
import io

func dump(output: io.Writer, name: str, text: str) -> !:
    print(f"{name} {text.length}")
    try io.write_all(output, text.bytes)
    print("")

pub func main(arguments: str[]) -> i32!:
    let output = io.stdout()
    for item in tables.modules:
        try dump(output, item.name, item.text)
    try dump(output, "sentinel", tables.sentinel)
    return 0
''')
    for flags in FLAGS:
        subprocess.run([COMPILER, 'build', source, *flags, '-o', root / 'export'],
                       cwd=ROOT, check=True, timeout=120)
        result = subprocess.run([root / 'export'], capture_output=True, check=True)
        assert not result.stderr, result.stderr
        data = result.stdout
        actual = {}
        while data:
            header, data = data.split(b'\n', 1)
            name, length = header.decode().split()
            size = int(length)
            actual[name] = data[:size]
            assert data[size:size + 1] == b'\n', name
            data = data[size + 1:]
        assert actual == EXPECTED, [name for name in EXPECTED
                                    if actual.get(name) != EXPECTED[name]]
print('PASS standard source embedding: exact bytes, escapes, triple quotes and Unicode; six modes')
