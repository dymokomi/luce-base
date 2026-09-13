#!/usr/bin/env python3
"""Check decimal conversion against exact rational, nearest-even IEEE rounding."""
from decimal import Decimal
import os
from pathlib import Path
import random
import re
import shlex
import struct
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
SOURCE = Path(__file__).resolve().parent
COMPILER = Path(sys.argv[1]).resolve()
DECIMAL = re.compile(rb"[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?\Z")
corpus = bytearray()


def reference(text, precision, exponent_bits):
    sign = int(text.startswith(b"-")) << (precision + exponent_bits - 1)
    word = text.lstrip(b"+-").lower()
    infinity = ((1 << exponent_bits) - 1) << (precision - 1)
    if re.fullmatch(rb"[+-]?(?:inf(?:inity)?|nan)", text, re.I):
        return 1, sign | infinity | ((1 << (precision - 2)) if word == b"nan" else 0)
    if not DECIMAL.fullmatch(text):
        return 0, 0
    numerator, denominator = Decimal(text.decode()).copy_abs().as_integer_ratio()
    if numerator == 0:
        return 1, sign
    bias = (1 << (exponent_bits - 1)) - 1
    exponent = numerator.bit_length() - denominator.bit_length()
    if (numerator < denominator << exponent) if exponent >= 0 else (numerator << -exponent < denominator):
        exponent -= 1
    exponent = max(exponent, 1 - bias)
    shift = precision - 1 - exponent
    if shift >= 0:
        numerator <<= shift
    else:
        denominator <<= -shift
    significand, remainder = divmod(numerator, denominator)
    if 2 * remainder > denominator or (2 * remainder == denominator and significand & 1):
        significand += 1
    if significand == 1 << precision:
        significand >>= 1
        exponent += 1
    if exponent > bias:
        return 2, 0
    if significand < 1 << (precision - 1):
        return 1, sign | significand
    return 1, sign | ((exponent + bias) << (precision - 1)) | (significand - (1 << (precision - 1)))


def add(text):
    status64, bits64 = reference(text, 53, 11)
    status32, bits32 = reference(text, 24, 8)
    corpus.extend(struct.pack("<IIIQI", len(text), status64, status32, bits64, bits32))
    corpus.extend(text)


for text in (b"", b"+", b"-", b".", b"+.", b"1e", b"1e+", b"1e-", b" 1", b"1 ",
             b"1\n", b"1\0", b"0x1p0", b"1_0", b"1,2", b"nan(1)", b"--inf", b"\xff",
             b"0", b"-0", b"+.0", b"1.", b".1", b"1.e1", b"+1E-2", b"00001.000",
             b"inf", b"+INFINITY", b"-Inf", b"NaN", b"-nan", b"+NAN",
             b"1e5000", b"-1e5000", b"1e-5000", b"-1e-5000", b"0e5000",
             b"1.00000000000000011102230246251565404236316680908203125",
             b"1.000000059604644775390625", b"1.000000059604644775390626",
             b"1.7976931348623157e308", b"1.7976931348623159e308",
             b"3.4028234663852886e38", b"3.4028235677973367e38",
             b"2.2250738585072014e-308", b"2.2250738585072011e-308",
             b"4.9406564584124654e-324", b"2.4703282292062327e-324",
             b"1.1754943508222875e-38", b"1.401298464324817e-45"):
    add(text)
randomizer = random.Random(51)
for width, code, exponent_bits, precision in ((64, "d", 11, 53), (32, "f", 8, 24)):
    for _ in range(3000):
        bits = randomizer.getrandbits(width)
        if (bits >> (precision - 1)) & ((1 << exponent_bits) - 1) == (1 << exponent_bits) - 1:
            continue
        value = struct.unpack("<" + code, bits.to_bytes(width // 8, "little"))[0]
        add((repr(value) if width == 64 else format(value, ".9g")).encode())
# Exact decimal midpoints exercise tie breaking, including the subnormal boundary.
for exponent in (-1075, -1074, -150, -149, -54, -53, -25, -24, 0, 100):
    for multiplier in (1, 3, 5, 7):
        if exponent < 0:
            digits = str(multiplier * 5 ** -exponent).rjust(-exponent + 1, "0")
            text = (digits[:exponent] + "." + digits[exponent:]).encode()
        else:
            text = str(multiplier << exponent).encode()
        add(text)
        add(b"-" + text)


def run(command):
    if os.name == 'nt':
        subprocess.run(list(map(str, command)), cwd=ROOT, check=True, timeout=180)
        return
    subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--", *command], cwd=ROOT, check=True)


with tempfile.TemporaryDirectory(prefix="base-string-floats-") as temporary:
    work = Path(temporary)
    reference_file = work / "corpus.bin"
    reference_file.write_bytes(corpus)
    run([*shlex.split(os.environ.get("CC", "cc")), "-Wall", "-Wextra", "-Werror",
         "-c", SOURCE / ("reference_windows.c" if os.name == 'nt' else "reference.c"), "-o", work / "reference.o"])
    run(["ar", "rcs", work / "libreference.a", work / "reference.o"])
    for flags in [*[["--native", "--opt", str(level)] for level in range(4)],
                  ["--backend=c"], ["--backend=c", "--release"]]:
        executable = work / "check"
        run([COMPILER, "build", SOURCE / "main.lucb", *flags, f"-L{work}", "-lreference", "-o", executable])
        run([executable, reference_file])
        print("PASS " + " ".join(flags), flush=True)
