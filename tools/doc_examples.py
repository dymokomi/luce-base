#!/usr/bin/env python3
"""Every complete program in the guide compiles, runs, and prints what the guide says.

A ```luce block that declares `func main(` is a program: it is built with the compiler
under test, run, and its standard output compared with the ```output block that follows
it, when there is one. A program that is meant to trap or fail says so in the line before
the block, `<!-- exits 1 -->`, and its output block then shows standard error. A program
that needs files beside it names them, `<!-- with greet.lucb -->`, from ```luce blocks
headed `<!-- file greet.lucb -->` earlier in the same page. One that uses another package
says so, `<!-- needs luce-std -->`, and is built as a project depending on the checkout
of that package beside this repository. `<!-- fragment -->` marks a block that shows part of
a program, `...` and all, though it declares `main`. Blocks that are not whole
programs (fragments that show one form) are left alone.

Usage: tools/doc_examples.py [COMPILER] [PAGE...]
"""
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / "luce-base"
PAGES = [Path(p).resolve() for p in sys.argv[2:]] or sorted((ROOT / "docs" / "guide").rglob("*.md"))
FENCE = re.compile(r"^```(\w*)\s*$")
NOTE = re.compile(r"^<!--\s*(exits|with|file|needs|fragment)\s*(.*?)\s*-->\s*$")


def blocks(text):
    """Each fenced block with its language, its text, the note before it and its line."""
    lines = text.split("\n")
    out = []
    i = 0
    while i < len(lines):
        m = FENCE.match(lines[i])
        if m and m.group(1):
            note = None
            j = i - 1
            while j >= 0 and lines[j].strip() == "":
                j -= 1
            if j >= 0 and NOTE.match(lines[j]):
                note = NOTE.match(lines[j]).groups()
            k = i + 1
            while k < len(lines) and not lines[k].startswith("```"):
                k += 1
            out.append((m.group(1), "\n".join(lines[i + 1:k]) + "\n", note, i + 1))
            i = k + 1
            continue
        i += 1
    return out


failures = 0
checked = 0
for page in PAGES:
    found = blocks(page.read_text())
    files = {}
    for index, (language, body, note, line) in enumerate(found):
        if language != "luce":
            continue
        if note and note[0] == "file":
            files[note[1]] = body
            continue
        if "func main(" not in body or (note and note[0] == "fragment"):
            continue
        expected_status = int(note[1]) if note and note[0] == "exits" else 0
        companions = note[1].split() if note and note[0] == "with" else []
        needs = note[1].split() if note and note[0] == "needs" else []
        expected = None
        if index + 1 < len(found) and found[index + 1][0] == "output":
            expected = found[index + 1][1]
        where = f"{page.relative_to(ROOT)}:{line}"
        with tempfile.TemporaryDirectory() as work:
            work = Path(work)
            for name in companions:
                (work / name).write_text(files[name])
            if needs:
                dependencies = "".join(f'    def dependency "{name}" {{\n        str path = "{ROOT.parent / name}"\n    }}\n' for name in needs)
                (work / "package.prisma").write_text(f'#prisma 4.0\ndef package "example" {{\n    str source = "."\n{dependencies}}}\n')
            source = work / "main.lucb"
            source.write_text(body)
            built = subprocess.run([str(COMPILER), "build", str(source), "-o", str(work / "program")],
                                   capture_output=True, text=True, cwd=work)
            checked += 1
            if built.returncode != 0:
                print(f"FAIL {where}: does not build\n{built.stderr}")
                failures += 1
                continue
            # run as a reader would, from its directory: its first argument is `./program`
            ran = subprocess.run(["./program"], capture_output=True, text=True, cwd=work, timeout=60)
            shown = ran.stderr if expected_status != 0 else ran.stdout
            shown = shown.replace(str(work) + os.sep, "")
            if ran.returncode != expected_status:
                print(f"FAIL {where}: exit {ran.returncode}, expected {expected_status}\n{ran.stdout}{ran.stderr}")
                failures += 1
            elif expected is not None and shown != expected:
                print(f"FAIL {where}: output differs\n--- expected\n{expected}--- got\n{shown}")
                failures += 1
if failures:
    sys.exit(1)
print(f"ok guide examples: {checked} programs")
