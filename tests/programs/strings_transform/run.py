#!/usr/bin/env python3
"""Reference substring splitting and replacement using Python's byte operations."""
from pathlib import Path
import random
import struct
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
randomizer = random.Random(49)
corpus = bytearray()


def add(text, separator, replacement, max_parts, max_replacements):
    fields = text.split(separator, max_parts - 1 if max_parts else -1)
    result = text.replace(separator, replacement, max_replacements if max_replacements else -1)
    corpus.extend(struct.pack("<7I2i", len(text), len(separator), len(replacement),
                              max_parts, max_replacements, len(fields), len(result),
                              text.find(separator), text.rfind(separator)))
    corpus.extend(text + separator + replacement + result)
    for field in fields:
        corpus.extend(struct.pack("<I", len(field)))
        corpus.extend(field)


for text in (b"", b"a", b"aaaaa", b"ababa", b"a::::b::", b"\0a\0\0", b"\xff\xfe\xff"):
    for separator in (b"a", b"aa", b"aba", b"::", b"\0", b"\xff", b"absent"):
        for replacement in (b"", b"x", b"longer", b"\0\xff"):
            for max_parts in (0, 1, 2, 5):
                add(text, separator, replacement, max_parts, max_parts)
for _ in range(5000):
    alphabet = randomizer.choice((2, 4, 16, 256))
    text = bytes(randomizer.randrange(alphabet) for _ in range(randomizer.randrange(80)))
    separator = bytes(randomizer.randrange(alphabet) for _ in range(randomizer.randrange(1, 8)))
    replacement = bytes(randomizer.randrange(alphabet) for _ in range(randomizer.randrange(12)))
    add(text, separator, replacement, randomizer.randrange(5), randomizer.randrange(5))
add(b"a" * 131072, b"a" * 127 + b"b", b"x", 0, 0)
add(b"ab" * 65536, b"ab", b"", 0, 0)

with tempfile.TemporaryDirectory(prefix="base-string-transform-") as temporary:
    work = Path(temporary)
    reference = work / "corpus.bin"
    reference.write_bytes(corpus)
    executable = work / "check"
    for flags in [*[["--native", "--opt", str(level)] for level in range(4)],
                  ["--backend=c"], ["--backend=c", "--release"]]:
        for command in ([COMPILER, "build", ROOT / "tests/programs/strings_transform/main.lucb",
                         *flags, "-o", executable], [executable, reference]):
            subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", *command],
                           cwd=ROOT, check=True)
        print("PASS " + " ".join(flags), flush=True)
