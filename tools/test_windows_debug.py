#!/usr/bin/env python3
"""Read a native Windows local through an independent GDB/DWARF consumer."""
import argparse
from pathlib import Path
import subprocess
import tempfile

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', type=Path, default=Path('build/luce-base.exe'))
args = parser.parse_args()
with tempfile.TemporaryDirectory(prefix='luce-windows-debug-') as directory:
    work = Path(directory)
    source = work / 'probe.lucb'
    source.write_bytes(b'export func checkpoint(value: i64) -> i64:\n'
                       b'    var stored: i64 = value + 2\n'
                       b'    return stored\n'
                       b'pub func main(arguments: str[]) -> i32:\n'
                       b'    assert(checkpoint(40) == 42)\n'
                       b'    return 0\n')
    binary = work / 'program.exe'
    subprocess.run([args.compiler.resolve(), 'build', source, '--native', '--debug', '-o', binary],
                   check=True, timeout=180)
    commands = work / 'commands.gdb'
    commands.write_bytes(b'set pagination off\nset confirm off\n'
                         b'break probe.lucb:3\nrun\n'
                         b'printf "LUCE_DEBUG_VALUE=%lld\\n", stored\n'
                         b'backtrace\ncontinue\nquit\n')
    result = subprocess.run(['gdb', '-q', '-batch', '-x', 'commands.gdb', 'program.exe'],
                            cwd=work, capture_output=True, timeout=60)
    output = result.stdout.decode('utf-8', errors='replace')
    errors = result.stderr.decode('utf-8', errors='replace')
    assert result.returncode == 0 and 'LUCE_DEBUG_VALUE=42' in output, (output, errors)
    assert 'checkpoint' in output and 'main' in output, output
    assert 'exited normally' in output, (output, errors)
print('PASS Windows DWARF: source breakpoint, typed local, backtrace and completion')
