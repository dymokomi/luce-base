#!/usr/bin/env python3
"""A build takes again the text of every function an earlier build of the program generated
as it stands now (back/reuse.lucb), and the program it links must be the one a build with
no cache makes, byte for byte. A program of a few modules is built, then edited three
ways, each build after the last with the cache and once without:

- a literal in `main`: only `main` and what names the literal change;
- the body of a small leaf another module's loop calls: the second inlining pass opens it
  out there, so the caller, whose own text did not change, must be generated again;
- a function called from one place only, which the first pass expands into its caller.

Each edited build must reuse most functions, run as the source now says, and match the
build without a cache. A last build changes nothing in the source but the settings
(`--cpu`, on x86-64), which reuses nothing.

Usage: tools/test_function_reuse.py [COMPILER]
"""
import os, pathlib, platform, re, shutil, subprocess, sys, tempfile

root = pathlib.Path(__file__).resolve().parent.parent
compiler = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else root / "build" / "luce-base").resolve()
exe = ".exe" if os.name == "nt" else ""

SHAPES = '''## Two numbers.
pub struct Pair:
    pub var a: i64
    pub var b: i64

## The pair turned around: lowered through memory past the first inlining pass's size, a
## few instructions once optimised, so only the second pass opens it out in `total`.
pub func turned(p: Pair) -> Pair:
    var q = p
    var r = Pair(a = q.b, b = q.a)
    var s = r
    let first = s.a
    let second = s.b
    var t = Pair(a = first, b = second +% 1)
    var u = t
    return u

## Every pair turned, and turned again, added up.
pub func total(values: const i64[]) -> i64:
    var sum: i64 = 0
    var i: usize = 0
    while i + 1 < values.length:
        let t = turned(Pair(a = values[i], b = values[i + 1]))
        let u = turned(t)
        sum = sum +% t.a *% 3 +% t.b +% u.a
        i += 2
    return sum
'''

PROGRAM = '''import shapes
import strings
import io

## A report made once, from one place: the first pass expands it into `main`.
func report(first: i64, second: i64) -> str!:
    return try strings.format(try new u8[128] ---, f"totals {first} and {second}")

pub func main(arguments: str[]) -> i32!:
    var values: i64[6] = [1, 2, 3, 4, 5, 6]
    var more: i64[4] = [7, 8, 9, 10]
    try io.stdout().write(try report(shapes.total(values), shapes.total(more)))
    try io.stdout().write("\\nfirst\\n")
    return 0
'''


def fail(message):
    print(f"FAIL function reuse: {message}")
    sys.exit(1)


def build(work, cache, output, *extra):
    result = subprocess.run([str(compiler), "build", "main.lucb", "--native", "--release", "--cache-dir", cache, "--cache-report", "-o", output, *extra],
                            cwd=work, capture_output=True, text=True)
    if result.returncode != 0:
        fail(f"the build failed: {result.stderr.strip()}")
    found = re.search(r"luce-base: (\d+) functions from the last build", result.stderr)
    return int(found.group(1)) if found else None


def run(work, output):
    return subprocess.run([str(work / (output + exe))], capture_output=True, text=True).stdout


def same(work, a, b):
    return (work / (a + exe)).read_bytes() == (work / (b + exe)).read_bytes()


with tempfile.TemporaryDirectory() as scratch:
    work = pathlib.Path(scratch)
    (work / "shapes.lucb").write_text(SHAPES)
    (work / "main.lucb").write_text(PROGRAM)
    cache = str(work / "cache")
    first = build(work, cache, "first")
    if first is None:
        fail("the build took no part in reuse (no report)")
    if first != 0:
        fail(f"a first build reused {first} functions from an empty cache")
    if run(work, "first") != "totals 60 and 90\nfirst\n":
        fail(f"the first program printed {run(work, 'first')!r}")
    edits = [
        ("main.lucb", '"\\nfirst\\n"', '"\\nsecond\\n"', "totals 60 and 90\nsecond\n"),
        ("shapes.lucb", "second +% 1)", "second +% 2)", "totals 66 and 94\nsecond\n"),
        ("main.lucb", 'f"totals {first}', 'f"sums {first}', "sums 66 and 94\nsecond\n"),
    ]
    for n, (name, old, new, printed) in enumerate(edits):
        text = (work / name).read_text()
        if old not in text:
            fail(f"edit {n}: `{old}` is gone from {name}")
        (work / name).write_text(text.replace(old, new, 1))
        reused = build(work, cache, f"edited{n}")
        if not reused:
            fail(f"edit {n} reused no function")
        if run(work, f"edited{n}") != printed:
            fail(f"edit {n}: the program printed {run(work, f'edited{n}')!r}, not {printed!r}")
        build(work, "none", f"fresh{n}")
        if not same(work, f"edited{n}", f"fresh{n}"):
            fail(f"edit {n}: the program built reusing {reused} functions differs from one built afresh")
    if platform.machine().lower() in ("x86_64", "amd64"):
        if build(work, cache, "other", "--cpu", "v1") != 0:
            fail("a build for another processor level reused functions")
    print(f"ok function reuse: three edits each reuse functions and build the program a build without the cache builds")
