#!/usr/bin/env python3
"""Every function the C backend declares `static` it also defines: GCC's -Werror rejects a
`static` prototype with no body (-Wunused-function), which clang lets pass."""
from pathlib import Path
import re
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / "build/luce-base"
# An interop library: its signatures spell `interop.Outcome[T]`, whose methods nothing calls.
PROGRAMS = [(ROOT / "tests/programs/describe_interfaces/api.lucb", ["--lib"])]

PROTOTYPE = re.compile(r"^static [^;{]*?\b(lb_\w+)\([^;{]*\);\s*$", re.M)
DEFINITION = re.compile(r"^(?:static )?[^;{]*?\b(lb_\w+)\([^;{]*\)\s*\{", re.M)


class Prototypes(unittest.TestCase):
    def test_every_static_prototype_is_defined(self):
        for program, flags in PROGRAMS:
            with tempfile.TemporaryDirectory() as tmp:
                out = Path(tmp) / "out.c"
                subprocess.run([str(BASE), "build", str(program), *flags, "--emit=c", "-o", str(out)],
                               check=True, capture_output=True)
                text = out.read_text()
                undefined = set(PROTOTYPE.findall(text)) - set(DEFINITION.findall(text))
                self.assertEqual(sorted(undefined), [], f"{program.name}: declared static, never defined")


if __name__ == "__main__":
    unittest.main()
