#!/usr/bin/env python3
"""Compare checked integer conversion with Python's arbitrary-precision integers."""
from pathlib import Path
import random
import struct
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
if hasattr(sys, "set_int_max_str_digits"):
    sys.set_int_max_str_digits(0)
randomizer = random.Random(50)
corpus = bytearray()
DIGITS = b"0123456789abcdefghijklmnopqrstuvwxyz"


def encode(value, radix):
    negative = value < 0
    value = abs(value)
    digits = bytearray()
    while True:
        value, digit = divmod(value, radix)
        digits.append(DIGITS[digit])
        if not value:
            break
    if negative:
        digits.append(ord("-"))
    return bytes(reversed(digits))


def add(text, radix):
    body = text[1:] if text[:1] in (b"+", b"-") else text
    valid = 2 <= radix <= 36 and bool(body) and all(byte in DIGITS[:radix] for byte in body.lower())
    flags = signed = unsigned = 0
    canonical = b""
    if valid:
        value = int(text, radix)
        if -(1 << 63) <= value < (1 << 63):
            flags |= 1
            signed = value
        if not text.startswith(b"-") and 0 <= value < (1 << 64):
            flags |= 2
            unsigned = value
        if flags:
            canonical = (b"-" if value < 0 else b"") + (body.lower().lstrip(b"0") or b"0")
    corpus.extend(struct.pack("<IIIIqQ", radix, len(text), len(canonical), flags, signed, unsigned))
    corpus.extend(text + canonical)


for radix in range(2, 37):
    for value in (-(1 << 63)-1, -(1 << 63), -(1 << 63)+1, -1, 0, 1,
                  (1 << 63)-1, 1 << 63, (1 << 64)-1, 1 << 64, (1 << 64)+1):
        text = encode(value, radix)
        add(text, radix)
        add(text.upper(), radix)
        add(b"-000" + text[1:] if text.startswith(b"-") else b"+000" + text, radix)
    for text in (b"", b"+", b"-", b"-0", b"+0", b" 1", b"1 ", b"1_0", b"1\0", b"\xff", b"0x10", b"--1", b"+-1"):
        add(text, radix)
for _ in range(10000):
    radix = randomizer.randrange(2, 37)
    value = randomizer.getrandbits(randomizer.randrange(81))
    if randomizer.randrange(2):
        value = -value
    text = encode(value, radix)
    add(text, radix)
    position = randomizer.randrange(len(text) + 1)
    add(text[:position] + randomizer.choice((b"_", b" ", b".", b"\0", b"\xff", b"+", b"-")) + text[position:], radix)
for radix in (0, 1, 37, 4294967295):
    add(b"0", radix)
add(b"0" * 10000, 10)

with tempfile.TemporaryDirectory(prefix="base-string-integers-") as temporary:
    work = Path(temporary)
    reference = work / "corpus.bin"
    reference.write_bytes(corpus)
    executable = work / "check"
    for flags in [*[["--native", "--opt", str(level)] for level in range(4)],
                  ["--backend=c"], ["--backend=c", "--release"]]:
        for command in ([COMPILER, "build", ROOT / "tests/programs/strings_integers/main.lucb",
                         *flags, "-o", executable], [executable, reference]):
            subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", *command],
                           cwd=ROOT, check=True)
        print("PASS " + " ".join(flags), flush=True)
