#!/usr/bin/env python3
"""Check out what the compile budget builds, as its programs pin it: each program of
tools/compile_budget.pins at its commit, then every package its bootstrap/PACKAGES names at
that package's commit, all beside this checkout where their path dependencies look. The set
is the programs' own, so a dependency they add needs no change here; a program moves only
when its line in the pins file does. A package two programs pin differently is taken at the
first one's commit, and luce-std is the one beside this compiler at bootstrap/STD, the
standard package the compiler itself builds with. The entries, one path a line, are
printed for tools/compile_budget.py.

Usage: tools/budget_packages.py [--crlf]   (--crlf checks out as Git for Windows does)
"""
import argparse
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent
PARENT = ROOT.parent


def checkout(name, commit, crlf):
    """`name` at `commit` beside this checkout, fetched by commit alone."""
    target = PARENT / name
    config = ["-c", "core.autocrlf=true"] if crlf else []
    subprocess.run(["git", *config, "init", "-q", str(target)], check=True)
    if subprocess.run(["git", "-C", str(target), "remote", "get-url", "origin"], capture_output=True).returncode:
        subprocess.run(["git", "-C", str(target), "remote", "add", "origin", f"https://github.com/dymokomi/{name}"], check=True)
    subprocess.run(["git", *config, "-C", str(target), "fetch", "-q", "--depth", "1", "origin", commit], check=True)
    subprocess.run(["git", *config, "-C", str(target), "checkout", "-q", "--detach", "FETCH_HEAD"], check=True)
    return target


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--crlf", action="store_true")
    args = parser.parse_args()
    programs = []
    for line in (ROOT / "tools/compile_budget.pins").read_text().splitlines():
        if line.strip() and not line.startswith("#"):
            name, commit, entry = line.split()
            programs.append((name, commit, entry))
    # luce-std beside the compiler is its own pin, checked out already
    taken = {"luce-std"}
    for name, commit, _ in programs:
        taken.add(name)
        checkout(name, commit, args.crlf)
    for name, _, _ in programs:
        listing = PARENT / name / "bootstrap" / "PACKAGES"
        for line in listing.read_text().splitlines() if listing.exists() else []:
            if not line.strip():
                continue
            package, commit = line.split()
            if package not in taken:
                taken.add(package)
                checkout(package, commit, args.crlf)
    # bytes, so Windows' text mode adds no carriage return to a path the shell reads back
    entries = "".join((PARENT / name / entry).as_posix() + "\n" for name, _, entry in programs)
    sys.stdout.buffer.write(entries.encode())


if __name__ == "__main__":
    main()
