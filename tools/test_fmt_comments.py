#!/usr/bin/env python3
"""The formatter keeps each comment in the block it ends, and writes deferred statements and
blocks the one way (§8.8)."""
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

    def test_deferred_forms(self):
        canonical = """\
func f() -> !:
    defer note(1)
    defer free(buffer) in memory.heap
    defer count += 1
    errdefer:
        note(2)
        # a comment ending the deferred block
    defer:
        for i in 0..<3:
            note(i)
"""
        self.assertEqual(self.fmt(canonical), canonical)
        self.assertEqual(self.fmt("func f():\n    defer: note(1)\n"), "func f():\n    defer note(1)\n")
        # one simple statement is `defer statement`, wherever the source put it
        self.assertEqual(self.fmt("func f():\n    defer:\n        note(1)\n    errdefer:\n        note(2)\n"),
                         "func f():\n    defer note(1)\n    errdefer note(2)\n")
        # a comment before it keeps the block
        kept = "func f():\n    defer:\n        # why\n        note(1)\n"
        self.assertEqual(self.fmt(kept), kept)

    def test_extension_blocks(self):
        canonical = """\
struct Canvas:
    var width: i64

# selection, by concern
extend Canvas:
    ## Selects everything.
    pub func select_all():
        self.width = 0

    pub func strip() -> Canvas:
        return Canvas(width = 1)
"""
        self.assertEqual(self.fmt(canonical), canonical)

    def test_comments_stay_attached(self):
        # a comment right above a statement or a declaration stays right above it, and a
        # blank line the source put above a comment block stays above the block
        canonical = """\
# right above the constant
let limit: i64 = 3

# right above the function, after a blank line
func f(x: i64) -> i64:
    let a = x
    # right above a binding
    let b = a
    # right above an assignment
    _ = g(b)
    # right above a call
    g(a)

    # after a blank line, two lines
    # right above the return
    return b

struct S:
    var n: i64

    # right above a method
    func get() -> i64:
        return self.n
"""
        self.assertEqual(self.fmt(canonical), canonical)
        # a blank line between a comment block and its statement is the author's, and stays
        detached = "func f() -> i64:\n    let a: i64 = 1\n    # a note\n\n    return a\n"
        self.assertEqual(self.fmt(detached), detached)

    def test_idempotent(self):
        once = self.fmt(CANONICAL)
        self.assertEqual(self.fmt(once), once)


if __name__ == "__main__":
    unittest.main()
