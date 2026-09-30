#!/usr/bin/env python3
"""Writes tests/std/cases/float_cases.lucb: reference cases for strings' floating-point
text (src/std/strings/floats.lucb), from luce-usd's number cases. f64s format as
double-conversion's ToShortest (decimal notation for decimal exponents -6..14), f32s with
their own shortest digits; parse cases are text with its correctly rounded f64 (Python's
float) and f32 (the nearest by exact rationals, ties to even). Deterministic."""
import random
from fractions import Fraction
import struct
from pathlib import Path

def layout(negative, digits, exponent):
    """double-conversion ToShortest: digits * 10^exponent."""
    n = len(digits)
    point = exponent + n
    e = point - 1
    sign = "-" if negative else ""
    if -6 <= e < 15:
        if point <= 0:
            return sign + "0." + "0" * (-point) + digits
        if point >= n:
            return sign + digits + "0" * (point - n)
        return sign + digits[:point] + "." + digits[point:]
    text = digits[0] + ("." + digits[1:] if n > 1 else "")
    return sign + text + "e" + str(e)

def shortest_from_sci(text):
    """Digits and exponent from '%e'-style or repr text."""
    mantissa, _, exp = text.lower().partition("e")
    exp = int(exp) if exp else 0
    mantissa = mantissa.lstrip("-")
    if "." in mantissa:
        whole, frac = mantissa.split(".")
    else:
        whole, frac = mantissa, ""
    digits = (whole + frac).lstrip("0")
    exp -= len(frac)
    stripped = digits.rstrip("0")
    exp += len(digits) - len(stripped)
    return stripped or "0", exp

def format_double(x):
    if x != x: return "nan"
    if x in (float("inf"), float("-inf")): return "inf" if x > 0 else "-inf"
    if x == 0: return "-0" if struct.pack(">d", x)[0] & 0x80 else "0"
    digits, exp = shortest_from_sci(repr(abs(x)))
    return layout(x < 0, digits, exp)

def f32_neighbors(bits):
    for b in (bits - 1, bits, bits + 1):
        if 0 <= b < 0x7F800000:
            yield b

def nearest_f32(text):
    """The float32 nearest the decimal `text` (ties to even), exactly; None past the range."""
    exact = Fraction(text)
    approx = float(exact)
    try:
        guess = struct.unpack("<I", struct.pack("<f", approx))[0]
    except OverflowError:
        return None
    best = None
    for b in f32_neighbors(guess):
        value = Fraction(struct.unpack("<f", struct.pack("<I", b))[0])
        key = (abs(value - exact), b & 1)
        if best is None or key < best[0]:
            best = (key, b)
    return best[1]

def format_float(bits):
    x = struct.unpack("<f", struct.pack("<I", bits))[0]
    if x != x: return "nan"
    if x in (float("inf"), float("-inf")): return "inf" if x > 0 else "-inf"
    if x == 0: return "-0" if bits >> 31 else "0"
    for p in range(0, 10):
        text = "%.*e" % (p, abs(x))
        if nearest_f32(text) == bits & 0x7FFFFFFF:
            digits, exp = shortest_from_sci(text)
            return layout(x < 0, digits, exp)
    raise AssertionError(bits)

def main():
    rng = random.Random(1618)
    doubles = [0.1, 0.2, 0.3, 1.0, -1.5, 1e20, 12345678901234567890.0, 1e-45, 5e-324, 1.7976931348623157e308,
               2.2250738585072014e-308, 1e15, 1e14, 123456789012345.0, 1234567890123456.0, 1e-6, 1e-7,
               0.000001234, 100.0, 1e21, 1e22, 1e23, 9007199254740993.0, 0.5, 3.14159, 2.5e-5, -0.0, 0.0,
               4.35, 1.1, 2.675, 1e308, 8.98846567431158e307]
    for _ in range(3000):
        bits = rng.getrandbits(64)
        x = struct.unpack("<d", struct.pack("<Q", bits))[0]
        if x == x and abs(x) != float("inf"):
            doubles.append(x)
    for _ in range(1000):
        doubles.append(rng.uniform(-1000, 1000))
        doubles.append(round(rng.uniform(-100, 100), rng.randrange(0, 7)))
    floats = [struct.unpack("<I", struct.pack("<f", v))[0] for v in [0.1, 1e20, 1e-45, 3.4028235e38, 1.17549435e-38, 0.3, 16777216.0, 16777217.0, 1e-7, 100.0]]
    for _ in range(3000):
        bits = rng.getrandbits(32)
        if (bits >> 23) & 0xFF != 0xFF:
            floats.append(bits)
    for _ in range(1000):
        floats.append(struct.unpack("<I", struct.pack("<f", round(rng.uniform(-1000, 1000), rng.randrange(0, 5))))[0])
    parses = ["0", "1", "-1", "0.1", "1e20", "1E-45", "5e-324", "1.7976931348623157e308", "123.456e-7", ".5", "5.",
              "0.30000000000000004", "9007199254740993", "18446744073709551615", "1e-400", "-2.5e-5", "+3",
              "3.141592653589793238462643383279", "4.9406564584124654e-324", "2.2250738585072011e-308"]
    for _ in range(2000):
        parses.append(repr(rng.uniform(-1e6, 1e6)))
        parses.append("%.*e" % (rng.randrange(1, 20), struct.unpack("<d", struct.pack("<Q", rng.getrandbits(62)))[0]))
    out = ["## Written by tools/float_cases.py; do not edit.", "",
           "pub struct DoubleCase:", "    pub let bits: u64", "    pub let text: str", "",
           "pub struct FloatCase:", "    pub let bits: u32", "    pub let text: str", "",
           "pub struct ParseCase:", "    pub let text: str", "    pub let bits: u64", "",
           "pub struct ParseCase32:", "    pub let text: str", "    pub let bits: u32", ""]
    def emit(name, kind, rows):
        out.append(f"pub let {name}: {kind}[{len(rows)}] = [")
        out.extend(f"    {row}," for row in rows)
        out.append("]")
        out.append("")
    emit("double_cases", "DoubleCase", [f'DoubleCase(0x{struct.unpack("<Q", struct.pack("<d", x))[0]:016X}, "{format_double(x)}")' for x in doubles])
    emit("float_cases", "FloatCase", [f'FloatCase(0x{b:08X}, "{format_float(b)}")' for b in floats])
    emit("parse_cases", "ParseCase", [f'ParseCase("{t}", 0x{struct.unpack("<Q", struct.pack("<d", float(t)))[0]:016X})' for t in parses])
    singles = []
    for t in parses + ["%.*e" % (rng.randrange(1, 12), struct.unpack("<f", struct.pack("<I", rng.getrandbits(31) & 0x7F7FFFFF))[0]) for _ in range(2000)]:
        bits = nearest_f32(t.lstrip("+-")) if abs(Fraction(t)) < Fraction(2) ** 129 else None
        if bits is not None:
            if t.startswith("-"):
                bits |= 0x80000000
            singles.append(f'ParseCase32("{t}", 0x{bits:08X})')
    emit("parse_cases_32", "ParseCase32", singles)
    target = Path(__file__).resolve().parent.parent / "tests/std/cases/float_cases.lucb"
    target.parent.mkdir(exist_ok=True)
    target.write_text("\n".join(out))

main()
