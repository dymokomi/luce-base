#!/usr/bin/env python3
"""A large program's assembly is assembled in pieces (support/pieces.lucb), and a piece an
earlier build assembled comes from the build cache. The compiler's own source is large
enough: build a copy of it, edit one function's text literal, and build again. Most
pieces must come from the cache, since labels are named by what they label
(back/native/stable_names.lucb) and the cuts by the functions around them; and the
program built so must be the one a build without a cache makes, byte for byte.

Usage: tools/test_cached_pieces.py [COMPILER]
"""
import os, pathlib, re, shutil, subprocess, sys, tempfile

root = pathlib.Path(__file__).resolve().parent.parent
compiler = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else root / "build" / "luce-base").resolve()
if sys.platform not in ("darwin", "linux"):
    print("skip cached pieces: the native build splits its assembly on macOS and Linux")
    sys.exit(0)


def fail(message):
    print(f"FAIL cached pieces: {message}")
    sys.exit(1)


def build(work, cache, output):
    result = subprocess.run([str(compiler), "build", "src/main.lucb", "--native", "--cache-dir", cache, "--cache-report", "-o", output],
                            cwd=work, capture_output=True, text=True)
    if result.returncode != 0:
        fail(f"the build failed: {result.stderr.strip()}")
    found = re.search(r"luce-base: (\d+) of (\d+) pieces from the cache", result.stderr)
    return (int(found.group(1)), int(found.group(2))) if found else None


with tempfile.TemporaryDirectory() as scratch:
    # the compiler's package beside the luce-std it depends on, as in the repository
    work = pathlib.Path(scratch) / "luce-base"
    shutil.copytree(root / "src", work / "src")
    shutil.copy(root / "package.prisma", work / "package.prisma")
    os.symlink(root.parent / "luce-std", pathlib.Path(scratch) / "luce-std")
    cache = str(pathlib.Path(scratch) / "cache")
    first = build(work, cache, "first")
    if first is None:
        fail("the compiler's own build was not assembled in pieces")
    if first[0] != 0:
        fail(f"a first build took {first[0]} pieces from an empty cache")
    main = work / "src" / "main.lucb"
    text = main.read_text()
    edited = text.replace("could not find the SDK", "could not find the macOS SDK", 1)
    if edited == text:
        fail("the literal to edit is gone from src/main.lucb")
    main.write_text(edited)
    reused, total = build(work, cache, "second")
    # the edited function's piece, the literals' piece, and a cut or two near them change
    if reused < total - 4:
        fail(f"an edit to one literal reassembled {total - reused} of {total} pieces")
    build(work, "none", "fresh")
    if (work / "second").read_bytes() != (work / "fresh").read_bytes():
        fail("the program built from cached pieces differs from one built without the cache")
    print(f"ok cached pieces: an edit to one literal reused {reused} of {total} pieces, and the program is the same as one built afresh")
