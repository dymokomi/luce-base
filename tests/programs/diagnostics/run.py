#!/usr/bin/env python3
"""Fatal diagnostics must respect string spans, including NUL and empty slices."""
from pathlib import Path
import os
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
ENVIRONMENT = dict(os.environ)
ENVIRONMENT.pop("LB_TRACE", None)
CASES = [(operation, kind, payload, b"evaluated\n")
         for operation in ("assert", "trap")
         for kind, payload in (("slice", b"ok"), ("empty", b""), ("nul", b"ok\0x"),
                               ("edge", b"ok"), ("empty-edge", b""))]
CASES += [(operation, "slice", payload, b"")
          for operation, payload in (("literal_assert", b"ok\0x"), ("literal_trap", b"ok\0x"),
                                     ("formatted_assert", b"ok2"), ("formatted_trap", b"ok2"))]
with tempfile.TemporaryDirectory(prefix="base-diagnostics-") as temporary:
    executable = Path(temporary) / "check"
    for flags in [*[["--native", "--opt", str(level)] for level in range(4)],
                  ["--backend=c"], ["--backend=c", "--release"]]:
        subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", COMPILER, "build",
                        ROOT / "tests/programs/diagnostics/main.lucb", *flags, "-o", executable],
                       cwd=ROOT, check=True)
        for operation, kind, payload, expected_stdout in CASES:
            faults = "faults" if "--native" in flags else "none"
            result = subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--expected", "1", "--",
                                     executable, operation, kind, faults], cwd=ROOT, env=ENVIRONMENT, capture_output=True)
            assert result.returncode == 1, (flags, operation, kind, result.stderr)
            assert result.stdout == expected_stdout, (flags, operation, kind, result.stdout)
            match = re.fullmatch(rb"trap: [^\n]*main\.lucb:[0-9]+:[0-9]+: (.*)\n", result.stderr, re.DOTALL)
            expected = (b"assert failed: false: " if "assert" in operation else b"") + payload
            assert match and match.group(1) == expected, (flags, operation, kind, result.stderr, expected)
        result = subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", executable, "success", "slice", "none"],
                                cwd=ROOT, env=ENVIRONMENT, capture_output=True)
        assert result.returncode == 0 and result.stdout == b"ok\n" and not result.stderr
        print("PASS " + " ".join(flags), flush=True)
