#!/usr/bin/env python3
"""The formatter keeps each comment in the block it ends, and moves no comment out of it."""
from pathlib import Path
import subprocess
import tempfile
import unittest

BASE = Path(__file__).resolve().parents[1] / "build/luce-base"

# Every comment here is where the canonical layout keeps it: formatting changes nothing.
CANONICAL = """\
func f(x: i32) -> i32:
    if x > 0:
        return 1
        # ends the `if` block
    # before the next statement, at the outer depth
    return 0
    # ends the function body

    # also ends it, after a blank line

# before g, at the top level
func g() -> i32:
    return 2

# after g, at the top level

struct S:
    var n: i32

    func get() -> i32:
        return self.n
        # ends the method, not the struct
"""


class Comments(unittest.TestCase):
    def fmt(self, text):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "case.lucb"
            path.write_text(text)
            return subprocess.run([str(BASE), "fmt", str(path)], capture_output=True, text=True, check=True).stdout

    def test_comments_stay_in_their_blocks(self):
        self.assertEqual(self.fmt(CANONICAL), CANONICAL)

    def test_idempotent(self):
        once = self.fmt(CANONICAL)
        self.assertEqual(self.fmt(once), once)


if __name__ == "__main__":
    unittest.main()
