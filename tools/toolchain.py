#!/usr/bin/env python3
"""The development toolchain: luce, luce-base and luc built from GitHub's main.

Every package is tested with this one toolchain (`luc test` in the package). It is built
again only when the compiler or the standard library changed, that is when one of
luce-base, luce-std, luce or luce-luc has a new commit on main; otherwise updating is a
`git pull` and nothing more.

  python3 tools/toolchain.py             update ~/.local/luce-dev and link ~/.local/bin to it
  python3 tools/toolchain.py --status    show the commits of the toolchain in use
  python3 tools/toolchain.py --archive DIR
                                         also leave the release archive
                                         (luce-VERSION-HOST.tar.gz and its .sha256) in DIR

Layout, under ~/.local/luce-dev:
  src/                 luce-base, luce, luce-luc and their dependencies, side by side at main
  <key>/luce-VERSION/  one built toolchain, laid out as a release (bin/, share/)
  current              a link to the toolchain in use; ~/.local/bin/{luce,luce-base,luc}
                       link through it
The key names the four commits; the newest three toolchains are kept.

Runs on macOS and Linux, and on Windows from Git's bash (the build goes through
tools/build_windows.py there, and nothing is linked into a bin directory).
"""
import argparse
import glob
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tarfile

ROOT = Path.home() / ".local" / "luce-dev"
SOURCE = ROOT / "src"
BIN = Path.home() / ".local" / "bin"
GITHUB = "https://github.com/dymokomi"
# a change in any of these rebuilds the toolchain
KEYED = ("luce-base", "luce-std", "luce", "luce-luc")
WINDOWS = os.name == "nt"
# Git's bash: on Windows `bash` on PATH is WSL's launcher
BASH = r"C:\scoop\apps\git\current\bin\bash.exe" if WINDOWS else "bash"
KEEP = 3


def run(command, cwd, extra=None):
    environment = dict(os.environ)
    environment.update(extra or {})
    result = subprocess.run(command, cwd=cwd, env=environment)
    if result.returncode != 0:
        raise SystemExit(f"toolchain: {' '.join(map(str, command))} failed in {cwd}")


def head(name):
    return subprocess.check_output(["git", "-C", str(SOURCE / name), "rev-parse", "HEAD"],
                                   text=True).strip()


def update_sources():
    """Every checkout at GitHub's main; missing ones cloned through checkout_main.py."""
    SOURCE.mkdir(parents=True, exist_ok=True)
    if not (SOURCE / "luce-base").exists():
        run(["git", "clone", "-q", f"{GITHUB}/luce-base.git"], SOURCE)
    for checkout in sorted(SOURCE.iterdir()):
        if (checkout / ".git").exists():
            run(["git", "fetch", "-q", "--depth", "1", "origin", "main"], checkout)
            run(["git", "checkout", "-q", "--detach", "FETCH_HEAD"], checkout)
    run([sys.executable, "luce-base/tools/checkout_main.py", "luce-base", "luce", "luce-luc"], SOURCE)


def build(destination, archive_directory):
    """Build luce-base, luce and luc, package them, and unpack the tree into destination."""
    base, luce = SOURCE / "luce-base", SOURCE / "luce"
    if WINDOWS:
        run([sys.executable, "tools/build_windows.py"], base)
        run([sys.executable, "tools/build_windows.py"], luce)
    else:
        run(["./build.sh"], base)
        run(["./build.sh"], luce, {"LUCE_BASE_COMPILER": str(base / "build" / "luce-base")})
    out = Path(archive_directory) if archive_directory else luce / "build" / "release"
    run([BASH, "tools/package.sh", str(out)], luce,
        {"LUCE_LUC_SOURCE": str(SOURCE / "luce-luc"), "LUCE_BASE_BUILD": "../luce-base/build"})
    archives = sorted(glob.glob(str(out / "luce-*.tar.gz")), key=os.path.getmtime)
    if not archives:
        raise SystemExit("toolchain: package.sh left no archive")
    staging = destination.with_name(destination.name + ".partial")
    shutil.rmtree(staging, ignore_errors=True)
    staging.mkdir(parents=True)
    with tarfile.open(archives[-1]) as tar:
        tar.extractall(staging, filter="tar")
    shutil.rmtree(destination, ignore_errors=True)
    staging.rename(destination)


def tree(directory):
    """The luce-VERSION directory inside a built toolchain."""
    found = sorted(directory.glob("luce-*"))
    return found[0] if found else None


def link(target, path):
    if path.is_symlink() or path.exists():
        path.unlink()
    path.symlink_to(target)


def install(destination):
    current = ROOT / "current"
    if WINDOWS:
        # links need privileges here; the archive is what a release takes from Windows
        print(f"toolchain: built {tree(destination)}")
        return
    link(tree(destination), current)
    BIN.mkdir(parents=True, exist_ok=True)
    for name in ("luce", "luce-base", "luc"):
        if (current / "bin" / name).exists():
            link(current / "bin" / name, BIN / name)


def prune():
    # only builds, named by their four commits: anything else here (a release workspace,
    # the fuzz runner's checkouts) is someone else's
    built = sorted((path for path in ROOT.iterdir()
                    if path.is_dir() and re.fullmatch(r"[0-9a-f]{10}(-[0-9a-f]{10}){3}", path.name)),
                   key=lambda path: path.stat().st_mtime)
    for old in built[:-KEEP]:
        shutil.rmtree(old, ignore_errors=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--status", action="store_true")
    parser.add_argument("--archive", metavar="DIR")
    arguments = parser.parse_args()
    if arguments.status:
        current = ROOT / "current"
        print(f"{current} -> {os.readlink(current)}" if current.is_symlink() else "no toolchain yet")
        for name in KEYED:
            if (SOURCE / name).exists():
                print(f"{name} {head(name)[:12]}")
        return
    update_sources()
    key = "-".join(head(name)[:10] for name in KEYED)
    destination = ROOT / key
    if tree(destination) is None or arguments.archive:
        print(f"toolchain: building {key}")
        build(destination, arguments.archive)
    else:
        print(f"toolchain: {key} is up to date")
    os.utime(destination)
    install(destination)
    prune()
    luce = (tree(destination) if WINDOWS else ROOT / "current") / "bin" / ("luce.exe" if WINDOWS else "luce")
    print(subprocess.check_output([str(luce), "--version"], text=True).strip())


if __name__ == "__main__":
    main()
