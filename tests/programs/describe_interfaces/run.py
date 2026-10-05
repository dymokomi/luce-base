#!/usr/bin/env python3
"""Interface carriers preserve native ABI and distinguish ownerless witnesses."""
from pathlib import Path
import subprocess
import sys
import tempfile
compiler = Path(sys.argv[1]).resolve()
source = Path(__file__).with_name('api.lucb')
text = subprocess.run([compiler, 'describe', source], check=True, capture_output=True, text=True).stdout
for record in ['description 9\n', 'method title() -> owned_value[str]',
               'method tick() -> outcome[unit]', 'type Alias = Widget',
               'func echo(value: interface[Widget]) -> interface[Widget]',
               'func raw(value: unowned_interface[Widget]) -> unowned_interface[Widget]']:
    assert record in text, (record, text)
with tempfile.TemporaryDirectory(prefix='base-interface-witness-') as temporary:
    # a conformance through methods that are not `pub` names them as witnesses, before it
    witnessed = Path(temporary) / 'marker.lucb'
    witnessed.write_text('pub interface Precision:\n    func precision() -> usize\n    func reset()\n\n'
                         'pub struct Precision4: Precision:\n    var digits: usize\n\n'
                         '    func precision() -> usize:\n        return self.digits\n\n'
                         '    func reset():\n        self.digits = 4\n\n'
                         '    pub func shown() -> usize:\n        return self.digits\n')
    described = subprocess.run([compiler, 'describe', witnessed], check=True, capture_output=True, text=True).stdout
    tail = described[described.index('struct Precision4'):]
    assert ('    method shown() -> usize\n    witness method precision() -> usize\n'
            '    witness mutating method reset()\n    conforms Precision\n') in tail, described
with tempfile.TemporaryDirectory(prefix='base-interface-contract-') as temporary:
    invalid = Path(temporary) / 'api.lucb'
    invalid.write_text('import interop\npub func bad(value: interop.Interface[i64]):\n    _ = value\n')
    result = subprocess.run([compiler, 'describe', invalid], capture_output=True, text=True)
    assert result.returncode == 1 and 'actual interface' in result.stderr, result
print('PASS interface metadata: aliases, owned results, explicit outcomes, witnesses and rejected ownerless ABI')
