#!/usr/bin/env python3
"""On Windows a build still replaces its output while another process holds the old file
open for a moment, as a virus scan holds an executable it has just been handed: the
compiler moves its output into place again, with a growing wait, while the move fails as
denied or busy (host_tools.Workspace.publish). The old file is held for the first build's
own duration plus a second, so the second build's move meets the open handle and must wait
it out. Elsewhere a rename replaces an open file, and the test has nothing to show.

Usage: tools/test_windows_publish.py [COMPILER]
"""
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import threading
import time

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / "luce-base.exe"

if os.name != "nt":
    print("skip: a held output file blocks a replacing move only on Windows")
    sys.exit(0)

with tempfile.TemporaryDirectory(prefix="publish-") as work:
    source = Path(work) / "main.lucb"
    source.write_text('pub func main(arguments: str[]) -> i32:\n    print("replaced")\n    return 0\n')
    exe = Path(work) / "main.exe"
    started = time.time()
    subprocess.run([str(COMPILER), "build", str(source), "--native", "-o", str(exe)], check=True)
    duration = time.time() - started
    # Python opens a file without FILE_SHARE_DELETE: replacing it fails while it is open
    held = open(exe, "rb")
    release = threading.Timer(duration + 1.0, held.close)
    release.start()
    probe = Path(work) / "probe"
    probe.write_bytes(b"probe")
    try:
        os.replace(probe, exe)
        sys.exit("FAIL: the held output could be replaced, so this test shows nothing")
    except PermissionError:
        pass
    result = subprocess.run([str(COMPILER), "build", str(source), "--native", "-o", str(exe)], capture_output=True, text=True)
    release.join()
    if result.returncode != 0:
        sys.exit(f"FAIL: the build gave up on its held output: {result.stderr.strip()}")
    ran = subprocess.run([str(exe)], capture_output=True, text=True, check=True).stdout
    if ran != "replaced\n":
        sys.exit(f"FAIL: the replaced program printed {ran!r}")
print("PASS a build replaces an output another process holds open for a moment")
