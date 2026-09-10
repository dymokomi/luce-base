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
    run([*shlex.split(os.environ.get("CC", "cc")), "-Wall", "-Wextra", "-Werror",
         "-c", str(sources / "faults.c"), "-o", str(work / "faults.o")])
    run(["ar", "rcs", str(work / "libfaults.a"), str(work / "faults.o")])
    directories = []
    for count in (0, 1, 17, 33, 257):
        directory = work / f"directory-{count}"
        directory.mkdir()
        for i in reversed(range(count)):
            (directory / f"entry-{i:02}").touch()
        directories.append(directory)
    for flags in [*[["--opt", str(level)] for level in range(4)],
                  ["--backend=c"], ["--backend=c", "--release"]]:
        file_reader = work / "file_read"
        run([str(root / "build/luce-base"), "build", str(sources / "file_read.lucb"),
             *flags, "-o", str(file_reader)])
        for size in (0, 1, 4096, 4097, 11003):
            sample = work / "read-data"
            sample.write_bytes(bytes(i % 251 for i in range(size)))
            run([str(file_reader), str(sample), str(size)],
                expected=b"ok file read failures\n")
        print(f"ok allocation failures: file_read {' '.join(flags) or 'native'}", flush=True)
        for name in ("directory", "process"):
            exe = work / name
            source = "capture_failure" if name == "process" else name
            libraries = [f"-L{work}", "-lfaults"] if name == "directory" else []
            run([str(root / "build/luce-base"), "build", str(sources / f"{source}.lucb"),
                 *flags, *libraries, "-o", str(exe)])
            arguments = directories if name == "directory" else [child]
            for argument in arguments:
                run([str(exe), str(argument)], timeout=30,
                    expected=f"ok {name} failures\n".encode())
            print(f"ok allocation failures: {name} {' '.join(flags) or 'native'}", flush=True)
        for name, expected in (("values", b"ok value failures\n"),
                               ("network", b"ok network failures\n"),
                               ("stream", b"pending\nok stream failures\n"),
                               ("threads", b"ok thread failures\n")):
            exe = work / name
            run([str(root / "build/luce-base"), "build", str(sources / f"{name}.lucb"),
                 *flags, f"-L{work}", "-lfaults", "-o", str(exe)])
            run([str(exe)], timeout=30, expected=expected)
            print(f"ok library failures: {name} {' '.join(flags) or 'native'}", flush=True)
