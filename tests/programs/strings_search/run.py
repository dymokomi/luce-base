#!/usr/bin/env python3
"""Compare Base's forward/reverse byte searches with Python, including adversarial inputs."""
from itertools import product
from pathlib import Path
import random
import struct
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
randomizer = random.Random(48)
corpus = bytearray()


def add(text, needle, start):
    corpus.extend(struct.pack("<IIIiii", len(text), len(needle), start,
                              text.find(needle), text.rfind(needle), text.find(needle, start)))
    corpus.extend(text)
    corpus.extend(needle)


# Exhaustive short binary inputs exercise critical splits, periods and overlaps.
short = [bytes(value) for size in range(7) for value in product(range(2), repeat=size)]
for text in short:
    for needle in short:
        add(text, needle, randomizer.randrange(len(text) + 2))
for _ in range(10000):
    alphabet = randomizer.choice((2, 4, 16, 256))
    text = bytes(randomizer.randrange(alphabet) for _ in range(randomizer.randrange(128)))
    needle = bytes(randomizer.randrange(alphabet) for _ in range(randomizer.randrange(32)))
    if randomizer.randrange(3) == 0:
        start = randomizer.randrange(len(text) + 1)
        needle = text[start:start + randomizer.randrange(32)]
    add(text, needle, randomizer.randrange(len(text) + 2))
for text, needle in ((b"a" * 1048576, b"a" * 32767 + b"b"),
                     (b"a" * 1048576 + b"b", b"a" * 32767 + b"b"),
                     (b"ab" * 524288, b"ab" * 16384),
                     (b"ab" * 524288 + b"c", b"ab" * 16383 + b"ac"),
                     ("élève🙂élève".encode(), "élève".encode()),
                     (b"a\0b\xffa\0b", b"\0b")):
    add(text, needle, 1)

with tempfile.TemporaryDirectory(prefix="base-string-search-") as temporary:
    work = Path(temporary)
    reference = work / "corpus.bin"
    reference.write_bytes(corpus)
    executable = work / "check"
    for flags in [*[["--native", "--opt", str(level)] for level in range(4)],
                  ["--backend=c"], ["--backend=c", "--release"]]:
        for command in ([COMPILER, "build", ROOT / "tests/programs/strings_search/main.lucb",
                         *flags, "-o", executable], [executable, reference]):
            subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", *command],
                           cwd=ROOT, check=True)
        print("PASS " + " ".join(flags), flush=True)
