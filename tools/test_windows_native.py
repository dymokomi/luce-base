#!/usr/bin/env python3
"""Exercise Windows OS contracts in all native and C modes; GUI tests are opt-in."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import tempfile
ROOT = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', type=Path, default=ROOT / 'build/luce-base.exe')
parser.add_argument('--match', default='')
parser.add_argument('--window', action='store_true', help='exercise real Win32 windows and input')
parser.add_argument('--gpu', action='store_true', help='also exercise actual Vulkan presentation')
args = parser.parse_args()
cases = ['file_contract', 'network_contract', 'unwind_contract']
if args.window or args.gpu:
    cases += ['main']
if args.gpu:
    cases += ['render']
modes = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
results = []
for case in cases:
    if args.match not in case:
        continue
    for flags in modes:
        with tempfile.TemporaryDirectory(prefix='luce-windows-contract-') as work:
            binary = Path(work) / 'test.exe'
            command = [args.compiler.resolve(), 'build', ROOT / 'tests/programs/windows_native' / ('unwind/main.lucb' if case == 'unwind_contract' else case + '.lucb'), *flags, '-o', binary]
            compiled = subprocess.run(command, cwd=ROOT, capture_output=True, timeout=180)
            record = dict(case=case, flags=flags, build_status=compiled.returncode,
                          build_stderr=compiled.stderr.decode('utf-8', errors='replace'))
            if compiled.returncode == 0:
                arguments = [work] if case == 'file_contract' else []
                run = subprocess.run([binary, *arguments], capture_output=True, timeout=60)
                record.update(status=run.returncode, stdout=run.stdout.decode('utf-8', errors='replace'),
                              stderr=run.stderr.decode('utf-8', errors='replace'))
                record['ok'] = run.returncode == 0 and not run.stderr and b'Validation Error' not in run.stdout
            else:
                record['ok'] = False
            results.append(record)
            print('PASS' if record['ok'] else 'FAIL', case, ' '.join(flags), flush=True)
            if not record['ok']:
                print(json.dumps(record, ensure_ascii=True), flush=True)
report = ROOT / 'build' / ('windows-native-' + (args.match + '-' if args.match else '') + 'results.json')
report.parent.mkdir(exist_ok=True)
report.write_text(json.dumps(results, indent=2) + '\n', encoding='utf-8')
raise SystemExit(int(any(not record['ok'] for record in results)))
