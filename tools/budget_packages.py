#!/usr/bin/env python3
"""Check out what the compile budget builds: each program of PROGRAMS at main, and every
package it depends on at main (tools/checkout_main.py), all beside this checkout where their
path dependencies look. The entries, one path a line, are printed for tools/compile_budget.py.

Usage: tools/budget_packages.py [--crlf]   (--crlf checks out as Git for Windows does)
"""
import argparse
from pathlib import Path
import sys

from checkout_main import check_out

ROOT = Path(__file__).resolve().parent.parent
PARENT = ROOT.parent
# (package, entry inside it): real programs, large enough that a compiler which hangs or
# grows without bound on them fails the budget rather than a runner elsewhere
PROGRAMS = [
    ("luce-browser-engine", "src/web/module.lucb"),
    ("luce-js", "tests/ljs.lucb"),
]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--crlf", action="store_true")
    args = parser.parse_args()
    config = ("-c", "core.autocrlf=true") if args.crlf else ()
    for name, _ in PROGRAMS:
        check_out([PARENT / name], config)
    # bytes, so Windows' text mode adds no carriage return to a path the shell reads back
    entries = "".join((PARENT / name / entry).as_posix() + "\n" for name, entry in PROGRAMS)
    sys.stdout.buffer.write(entries.encode())


if __name__ == "__main__":
    main()
