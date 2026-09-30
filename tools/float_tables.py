#!/usr/bin/env python3
"""Writes the constant tables of floating-point text: src/std/strings/float_tables.lucb,
Eisel-Lemire's 128-bit powers of ten for q in -348..=347, rounded down (Go's strconv
detailedPowersOfTen), high word then low word, for strings' parsing; and
src/std/float_text/tables.lucb, Ryu's DOUBLE_POW5_SPLIT (5^i to 125 bits) and
DOUBLE_POW5_INV_SPLIT (2^(len-1+125) / 5^i + 1), low word then high word, for the shortest
formatting. Run it from anywhere; it rewrites both files whole."""
from pathlib import Path
import textwrap

MASK = (1 << 64) - 1


def lemire(q):
    if q >= 0:
        p = 5 ** q
        bl = p.bit_length()
        v = p << (128 - bl) if bl <= 128 else p >> (bl - 128)
    else:
        d = 5 ** (-q)
        s = 128 + d.bit_length()
        v = (1 << s) // d
        while v.bit_length() > 128:
            s -= 1
            v = (1 << s) // d
        while v.bit_length() < 128:
            s += 1
            v = (1 << s) // d
    return [v >> 64, v & MASK]


def pow5_split(i):
    p = 5 ** i
    j = p.bit_length() - 125
    v = p >> j if j >= 0 else p << -j
    return [v & MASK, v >> 64]


def pow5_inv_split(i):
    p = 5 ** i
    j = p.bit_length() - 1 + 125
    v = (1 << j) // p + 1
    return [v & MASK, v >> 64]


def table(doc, name, rows):
    flat = [x for row in rows for x in row]
    out = [*(f"## {line}" for line in textwrap.wrap(doc, 92)), f"let {name}: u64[{len(flat)}] = ["]
    for i in range(0, len(flat), 4):
        out.append("    " + ", ".join("0x%016X" % x for x in flat[i:i + 4]) + ",")
    out.append("]")
    return "\n".join(out)


STRINGS = Path(__file__).resolve().parent.parent / "src/std/strings/float_tables.lucb"
FLOAT_TEXT = Path(__file__).resolve().parent.parent / "src/std/float_text/tables.lucb"


def header(name, what):
    return "\n".join([
        "#" + "=" * 94, "#", f"#   {name} - {what}", "#", "#   DESCRIPTION:",
        "#       Written by tools/float_tables.py; do not edit.", "#", "#" + "=" * 94, ""])


STRINGS.write_text("\n".join([
    header("float_tables", "Eisel-Lemire's powers of ten, for strings' parsing"),
    "# mark: Parsing ================================================================================",
    "",
    table("10^q for q in -348..=347 as the top 128 bits of its binary expansion, rounded down: "
          "the high word, then the low word.", "lemire_powers", [lemire(q) for q in range(-348, 348)]),
    ""]))
FLOAT_TEXT.write_text("\n".join([
    header("tables", "Ryu's powers of five, for float_text"),
    "# mark: Powers of five =========================================================================",
    "",
    table("5^i for i in 0..<326 to 125 bits: the low word, then the high word.", "pow5_split",
          [pow5_split(i) for i in range(326)]),
    "",
    table("2^(bits(5^i) - 1 + 125) / 5^i + 1 for i in 0..<342: the low word, then the high word.",
          "pow5_inv_split", [pow5_inv_split(i) for i in range(342)]),
    ""]))
