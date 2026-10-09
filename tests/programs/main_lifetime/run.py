#!/usr/bin/env python3
"""Main's argument storage is released on success/failure and raw argv stays borrowed."""
from pathlib import Path
import os
import platform
import re
import signal
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


def children_of(pid):
    """The PIDs whose parent is `pid`, as ps lists them now."""
    listing = subprocess.run(['ps', '-axo', 'pid=,ppid='], capture_output=True, text=True).stdout
    return [int(p) for p, parent in (line.split() for line in listing.splitlines()) if int(parent) == pid]


def reap(pids):
    """End each process by PID: `leaks --atExit` can leave its target stopped at exit, an
    orphan that keeps a hosted runner from ending its job."""
    for pid in pids:
        try:
            os.kill(pid, signal.SIGKILL)
        except ProcessLookupError:
            pass


def checked(command):
    """Run `command` to its end and answer it with its output; under leaks, the target
    leaks names, and any child still left when leaks is done, are ended by PID."""
    # Diagnostic helper processes can inherit pipes after leaks exits.
    # Files keep the wait tied to the checker PID, not descendant EOF.
    with tempfile.TemporaryFile() as standard, tempfile.TemporaryFile() as diagnostic:
        child = subprocess.Popen(command, stdout=standard, stderr=diagnostic)
        targets = []
        try:
            child.wait(timeout=30)
        except subprocess.TimeoutExpired:
            targets = children_of(child.pid)
            child.kill()
            child.wait()
            raise
        finally:
            standard.seek(0)
            diagnostic.seek(0)
            out = standard.read()
            err = diagnostic.read()
            targets += [int(pid) for pid in re.findall(rb'Process (\d+):', out + err)]
            reap(targets)
        return subprocess.CompletedProcess(command, child.returncode, out, err)


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
            result = checked(command)
            output = result.stdout + result.stderr
            # leaks reports its own success status rather than the child's.
            assert result.returncode == (0 if checking_leaks else expected), (command, result.returncode, output)
            if fails:
                # the report names where the error was raised (base.md §11.3)
                assert re.search(rb'error: \S*failure\.lucb:[0-9]+:[0-9]+: argument-error \(code [0-9]+\)\n', result.stderr), result.stderr
            else:
                assert not result.stderr, result.stderr
            if checking_leaks:
                assert b'0 leaks for 0 total leaked bytes' in output, output
            else:
                assert not result.stdout, result.stdout
            print(f'PASS main {name}: {" ".join(flags)}' + ('; zero heap leaks' if checking_leaks else ''), flush=True)
