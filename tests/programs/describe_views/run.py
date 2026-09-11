#!/usr/bin/env python3
"""A borrowed export never acquires an owning constructor or reference carrier."""
from pathlib import Path
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('api.lucb')
result = subprocess.run([compiler, 'describe', source], capture_output=True, text=True, check=True)
text = result.stdout
assert text.startswith('description 8\n'), text
assert 'view Frame descriptor frame_type mutable false\n' in text, text
assert '    constructor private\n' in text, text
assert 'type Scope = borrowed[Frame]\n' in text, text
assert 'func echo(frame: borrowed[Frame]) -> borrowed[Frame]\n' in text, text
assert 'func wrong(frame: owned[Frame])' not in text, text
with tempfile.TemporaryDirectory(prefix='base-described-views-') as temporary:
    target = Path(temporary) / 'api.lucb'
    target.write_text(source.read_text().replace('    pub func read()', '    pub mutating func read()'))
    result = subprocess.run([compiler, 'describe', target], capture_output=True, text=True)
    assert result.returncode == 1 and 'mutable = true' in result.stderr, result.stderr
print('PASS view descriptions: explicit borrow, aliases, unavailable ownership and mutation policy')
