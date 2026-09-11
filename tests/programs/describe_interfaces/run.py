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
               'mutating method tick() -> outcome[unit]', 'type Alias = Widget',
               'func echo(value: interface[Widget]) -> interface[Widget]',
               'func raw(value: unowned_interface[Widget]) -> unowned_interface[Widget]']:
    assert record in text, (record, text)
with tempfile.TemporaryDirectory(prefix='base-interface-contract-') as temporary:
    invalid = Path(temporary) / 'api.lucb'
    invalid.write_text('import interop\npub func bad(value: interop.Interface[i64]):\n    discard(value)\n')
    result = subprocess.run([compiler, 'describe', invalid], capture_output=True, text=True)
    assert result.returncode == 1 and 'actual interface' in result.stderr, result
print('PASS interface metadata: aliases, owned results, explicit outcomes and rejected ownerless ABI')
