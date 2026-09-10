#!/usr/bin/env python3
"""Main's argument storage is released on success/failure and raw argv stays borrowed."""
from pathlib import Path
import platform
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
FLAGS = [['--native', '--opt', str(n)] for n in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
CASES = [
    ('text', '''pub func main(arguments: str[]) -> i32:
    assert(arguments.length == 3)
    assert(arguments[1] == "argument-error")
    assert(arguments[2] == "café")
    return 7
''', 7, False),
    ('failure', '''let failed = ErrorCode.package(1)
pub func main(arguments: str[]) -> i32!:
    assert(arguments.length == 3)
    error(failed, arguments[1])
''', 1, True),
    ('raw', '''import c
pub func main(arguments: c.str[]) -> i32!:
    assert(arguments.length == 3)
    assert((str)arguments[1] == "argument-error")
    assert((str)arguments[2] == "café")
    return 0
''', 0, False),
    ('raw_plain', '''import c
pub func main(arguments: c.str[]) -> i32:
    assert(arguments.length == 3)
    return 7
''', 7, False),
]

with tempfile.TemporaryDirectory(prefix='base-main-lifetime-') as temporary:
    directory = Path(temporary)
    for name, program, expected, fails in CASES:
        source = directory / (name + '.lucb')
        source.write_text(program)
        executable = directory / name
        for flags in FLAGS:
            subprocess.run([COMPILER, 'build', source, *flags, '-o', executable], cwd=ROOT, check=True, timeout=120)
            command = [str(executable), 'argument-error', 'café']
            plain = subprocess.run(command, capture_output=True, timeout=30)
            assert plain.returncode == expected, (command, plain.returncode, plain.stdout, plain.stderr)
            # Leaks checks the child at exit, so this tests the startup allocation
            # itself without teaching the test what emitted code should look like.
            checking_leaks = platform.system() == 'Darwin'
            if checking_leaks:
                command = ['/usr/bin/leaks', '--quiet', '--noContent', '--atExit', '--', *command]
            # Diagnostic helper processes can inherit pipes after leaks exits.
            # Files keep the wait tied to the checker PID, not descendant EOF.
            with tempfile.TemporaryFile() as standard, tempfile.TemporaryFile() as diagnostic:
                result = subprocess.run(command, stdout=standard, stderr=diagnostic, timeout=30)
                standard.seek(0)
                diagnostic.seek(0)
                result.stdout = standard.read()
                result.stderr = diagnostic.read()
            output = result.stdout + result.stderr
            # leaks reports its own success status rather than the child's.
            assert result.returncode == (0 if checking_leaks else expected), (command, result.returncode, output)
            if fails:
                assert re.search(rb'error -?[0-9]+: argument-error\n', result.stderr), result.stderr
            else:
                assert not result.stderr, result.stderr
            if checking_leaks:
                assert b'0 leaks for 0 total leaked bytes' in output, output
            else:
                assert not result.stdout, result.stdout
            print(f'PASS main {name}: {" ".join(flags)}' + ('; zero heap leaks' if checking_leaks else ''), flush=True)
