#!/usr/bin/env python3
"""What Luce asks of Base for a whole program, in batches, answers what one question at a time
does: `resolve-all` resolves each of a module's imports as `resolve` would (a failure as its
message, in its record), and `describe-closure --modules` describes several modules, each
loaded under its canonical name from its source root, as each one's own `describe-closure`
describes it, with a dependency report naming every module of the union. Checked on the
compiler's own modules.

Usage: tools/test_module_batches.py [COMPILER]
"""
import os
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
COMPILER = str(Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base"))
SRC = ROOT / "src"


def run(*args):
    result = subprocess.run([COMPILER, *map(str, args)], capture_output=True, cwd=ROOT)
    if result.returncode != 0:
        sys.exit(f"FAIL: {args[0]} exited {result.returncode}: {result.stderr.decode(errors='replace')}")
    return result.stdout


# one batch against single resolutions
importer = SRC / "main.lucb"
names = ["support.list", "io", "back.ir.ir", "no.such.module"]
other = SRC / "support/list.lucb"
batch = run("resolve-all", importer, SRC, *names, "--", other, SRC, "memory").split(b"\0")
assert batch[0] == b"luce-base-modules-v2", batch[:2]
fields = batch[1:]
assert fields.pop(0) == b"importer" and fields.pop(0) == str(importer).encode(), fields[:2]
for name in names:
    kind = fields.pop(0)
    assert fields.pop(0) == name.encode(), name
    single = subprocess.run([COMPILER, "resolve", str(importer), str(SRC), name], capture_output=True, cwd=ROOT)
    if kind == b"module":
        record = fields[:4]
        del fields[:4]
        assert single.returncode == 0, (name, single.stderr)
        assert single.stdout.split(b"\0")[1:5] == record, (name, single.stdout, record)
    else:
        assert kind == b"error", (name, kind)
        message = fields.pop(0)
        assert single.returncode != 0 and message in single.stderr, (name, message, single.stderr)
# the second module's one import, under its own importer record
assert fields[:4] == [b"importer", str(other).encode(), b"module", b"memory"], fields[:4]
assert fields[4] == b"standard" and fields[-1] == b"", fields

# several modules described together, against each described alone
modules = [("support.list", SRC / "support/list.lucb"), ("back.ir.ir", SRC / "back/ir/ir.lucb")]
arguments = []
for name, path in modules:
    arguments += [name, path, SRC]
together = run("describe-closure", "--modules", SRC, *arguments)


def descriptions(text):
    body, _, report = text.partition(b"\0\0luce-base-dependencies-v4\0")
    parts = body[len(b"luce-base-closure-v1\0"):].split(b"\0")
    described = {}
    while len(parts) >= 3 and parts[0] == b"module":
        described[parts[1]] = parts[2]
        parts = parts[3:]
    return described, report


union, report = descriptions(together)
for name, path in modules:
    alone, _ = descriptions(run("describe-closure", path))
    for module, text in alone.items():
        assert union.get(module) == text, f"{module} is described differently together"
    assert f"source\0{name}\0".encode() in report, f"{name} is missing from the union's report"
print("ok batched resolution and description answer as single questions do")
