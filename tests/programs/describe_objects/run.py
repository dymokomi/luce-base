#!/usr/bin/env python3
"""Owned metadata comes from standard type identity and a validated constant contract."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('api.lucb')
result = subprocess.run([compiler, 'describe', source], capture_output=True, text=True, check=True)
text = result.stdout
assert text.startswith('description 8\n'), text
assert 'object Counter descriptor counter_type close close\n' in text, text
assert 'constructor init(count: i64 = default)' in text, text
assert 'type Count = owned[Counter]\n' in text, text
assert 'func echo(value: owned[Counter]) -> owned[Counter]\n' in text, text
assert 'func raw(value: Counter) -> Counter\n' in text, text
with tempfile.TemporaryDirectory(prefix='base-described-objects-') as temporary:
    target = Path(temporary) / 'api.lucb'
    original = source.read_text()
    for changed, message in [
        (original + '\npub let duplicate: interop.Type[Counter] = counter_type\n', 'exactly one'),
        (original.replace('pub mutating func close', 'mutating func close'), 'public mutating disposal'),
        (original.replace('pub struct Counter', 'struct Counter'), 'public struct'),
        (original.replace('    pub func value()', '    pub func is_closed()'), 'shared native ownership state')]:
        target.write_text(changed)
        result = subprocess.run([compiler, 'describe', target], capture_output=True, text=True)
        assert result.returncode == 1 and message in result.stderr, result.stderr
    target.write_text('''pub struct Type[T]:
    pub let dispose: func(T*) -> unit
pub struct Counter:
    pub var count: i64
func drop(value: Counter*):
    discard(value)
pub let declaration = Type[Counter](dispose = drop)
''')
    result = subprocess.run([compiler, 'describe', target], capture_output=True, text=True, check=True)
    assert 'struct Counter\n' in result.stdout and 'object Counter' not in result.stdout, result.stdout
print('PASS owned descriptions: canonical identity, aliases, carriers, invalid contracts and reserved state query')
