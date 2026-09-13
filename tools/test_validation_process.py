#!/usr/bin/env python3
"""Validate failure evidence and Windows descendant lifetime independently of Base."""
from pathlib import Path
import os
import subprocess
import sys
import tempfile
from unittest.mock import patch
import validation_process
import test_windows

source = test_windows.ROOT / 'tests/samples/hello.lucb'
with tempfile.TemporaryDirectory(prefix='luce-runner-check-') as directory:
    work = Path(directory) / 'case'
    work.mkdir()
    completed = subprocess.CompletedProcess([], 0, stdout=b'ok\n', stderr=b'')
    with patch.object(test_windows.tempfile, 'mkdtemp', return_value=str(work)), \
         patch.object(test_windows, 'run', return_value=completed), \
         patch.object(test_windows, 'remove_directory', side_effect=PermissionError('locked executable')):
        result = test_windows.run_case(Path('compiler'), source, b'ok\n', ['--native'])
    assert result['source'] == str(source.relative_to(test_windows.ROOT))
    assert result['phase'] == 'cleanup' and not result['ok']
    assert result['previous']['ok'] and result['retained_directory'] == str(work)
print('PASS cleanup failures retain case identity and the original result', flush=True)

if os.name == 'nt':
    with tempfile.TemporaryDirectory(prefix='luce-job-check-') as directory:
        root = Path(directory)
        child = root / 'child.py'
        parent = root / 'parent.py'
        child.write_text('import pathlib, sys, time\n'
                         'stream = open(sys.argv[1], "wb")\n'
                         'pathlib.Path(sys.argv[2]).write_text("ready")\n'
                         'time.sleep(120)\n', encoding='utf-8')
        parent.write_text('import pathlib, subprocess, sys, time\n'
                          'subprocess.Popen([sys.executable, sys.argv[1], sys.argv[2], sys.argv[3]])\n'
                          'while not pathlib.Path(sys.argv[3]).exists(): time.sleep(.01)\n'
                          'if len(sys.argv) > 4: time.sleep(120)\n', encoding='utf-8')
        for timeout in (False, True):
            case = root / ('timeout' if timeout else 'normal')
            case.mkdir()
            command = [sys.executable, parent, child, case / 'held', case / 'ready']
            if timeout:
                command.append('wait')
            try:
                result = validation_process.run(command, capture_output=True, timeout=3 if timeout else 15)
                assert not timeout and result.returncode == 0, result
            except subprocess.TimeoutExpired:
                assert timeout
            assert (case / 'ready').exists(), 'descendant never acquired its file'
            validation_process.remove_directory(case)
            assert not case.exists()
    print('PASS Windows descendants are reaped after completion and timeout', flush=True)
