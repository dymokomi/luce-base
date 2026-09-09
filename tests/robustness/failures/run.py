#!/usr/bin/env python3
"""Run allocation-failure regressions with a deadline and isolated child process groups."""
import os
from pathlib import Path
import shlex
import signal
import subprocess
import tempfile

root = Path(__file__).resolve().parents[3]
sources = Path(__file__).resolve().parent


def run(command, timeout=60, expected=None):
    child = subprocess.Popen(command, cwd=root, start_new_session=True,
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    try:
        stdout, stderr = child.communicate(timeout=timeout)
    except subprocess.TimeoutExpired:
        os.killpg(child.pid, signal.SIGKILL)
        child.communicate()
        raise SystemExit(f"FAIL: timed out: {shlex.join(map(str, command))}")
    if child.returncode != 0 or (expected is not None and stdout != expected):
        try:
            os.killpg(child.pid, signal.SIGKILL)
        except ProcessLookupError:
            pass
        raise SystemExit(f"FAIL: {shlex.join(map(str, command))}\n"
                         f"status {child.returncode}\n{stdout.decode(errors='replace')}"
                         f"{stderr.decode(errors='replace')}")


with tempfile.TemporaryDirectory(prefix="luce-base-failures-") as temp:
    work = Path(temp)
    child = work / "child"
    run([*shlex.split(os.environ.get("CC", "cc")), "-Wall", "-Wextra", "-Werror",
         str(sources / "child.c"), "-o", str(child)])
    directories = []
    for count in (0, 1, 17, 33):
        directory = work / f"directory-{count}"
        directory.mkdir()
        for i in range(count):
            (directory / f"entry-{i:02}").touch()
        directories.append(directory)
    for flags in ([], ["--release"], ["--native"]):
        for name in ("directory", "process"):
            exe = work / name
            source = "capture_failure" if name == "process" else name
            run([str(root / "build/luce-base"), "build", str(sources / f"{source}.lucb"),
                 *flags, "-o", str(exe)])
            arguments = directories if name == "directory" else [child]
            for argument in arguments:
                run([str(exe), str(argument)], timeout=30,
                    expected=f"ok {name} failures\n".encode())
            print(f"ok allocation failures: {name} {' '.join(flags) or 'C'}", flush=True)
