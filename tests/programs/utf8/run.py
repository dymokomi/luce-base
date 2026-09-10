#!/usr/bin/env python3
"""Independent UTF-8 references from Python's strict codec; fixed replay seed."""
from pathlib import Path
import random
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[3]
OUTPUT = ROOT / "build/utf8"
OUTPUT.mkdir(parents=True, exist_ok=True)
COMPILER = Path(sys.argv[1]).resolve()

# All scalar values, including unassigned values and noncharacters. Surrogates
# have no UTF-8 representation and are tested as refused inputs in the program.
reference = OUTPUT / "scalars.bin"
reference.write_bytes("".join(chr(n) for n in range(0x110000)
                             if not 0xD800 <= n <= 0xDFFF).encode("utf-8"))
corpus = bytearray()


def add(data):
    try:
        data.decode("utf-8", errors="strict")
        invalid = 255
    except UnicodeDecodeError as failure:
        invalid = failure.start
    corpus.extend((len(data), invalid))
    corpus.extend(data)


add(b"")
for first in range(256):
    add(bytes((first,)))
    for second in range(256):
        add(bytes((first, second)))
# Probe continuation limits at every position of three- and four-byte forms,
# including truncation and a preceding ASCII byte to check error offsets.
for scalar in (0x800, 0xD7FF, 0xE000, 0xFFFF, 0x10000, 0x10FFFF):
    encoded = chr(scalar).encode("utf-8")
    for index in range(len(encoded)):
        add(encoded[:index])
        for replacement in range(256):
            mutated = encoded[:index] + bytes((replacement,)) + encoded[index + 1:]
            add(mutated)
            add(b"x" + mutated)
randomizer = random.Random(3629)
for _ in range(10000):
    add(bytes(randomizer.randrange(256) for _ in range(randomizer.randrange(9))))
corpus_path = OUTPUT / "malformed.bin"
corpus_path.write_bytes(corpus)

executable = OUTPUT / "check"
for flags in [*[["--native", "--opt", str(level)] for level in range(4)],
              ["--backend=c"], ["--backend=c", "--release"]]:
    commands = ([COMPILER, "build", ROOT / "tests/programs/utf8/main.lucb",
                 *flags, "-o", executable], [executable, reference, corpus_path])
    for command in commands:
        subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", *command],
                       cwd=ROOT, check=True)
    print("PASS " + " ".join(flags), flush=True)
executable.unlink()
