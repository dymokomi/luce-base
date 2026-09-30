#!/usr/bin/env python3
"""Writes src/std/strings/float_tables.lucb, the constant tables of strings' floating-point
text (floats.lucb): Eisel-Lemire's 128-bit powers of ten for q in -348..=347, rounded down
(Go's strconv detailedPowersOfTen), high word then low word; Ryu's DOUBLE_POW5_SPLIT (5^i to
125 bits) and DOUBLE_POW5_INV_SPLIT (2^(len-1+125) / 5^i + 1), low word then high word.
Run it from anywhere; it rewrites the file whole."""
from pathlib import Path
import textwrap

MASK = (1 << 64) - 1
OUT = Path(__file__).resolve().parent.parent / "src/std/strings/float_tables.lucb"


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


HEADER = """#==============================================================================================
#
#   float_tables - The constant tables of floating-point text
#
#   DESCRIPTION:
#       Written by tools/float_tables.py; do not edit. Eisel-Lemire's truncated 128-bit
#       powers of ten, for parsing (floats.lucb), and Ryu's 125-bit powers of five and their
#       inverses, for the shortest formatting.
#
#=============================================================================================="""

parts = [
    HEADER,
    "",
    "# mark: Parsing ================================================================================",
    "",
    table("10^q for q in -348..=347 as the top 128 bits of its binary expansion, rounded down: "
          "the high word, then the low word.", "lemire_powers", [lemire(q) for q in range(-348, 348)]),
    "",
    "# mark: Formatting =============================================================================",
    "",
    table("5^i for i in 0..<326 to 125 bits: the low word, then the high word.", "pow5_split",
          [pow5_split(i) for i in range(326)]),
    "",
    table("2^(bits(5^i) - 1 + 125) / 5^i + 1 for i in 0..<342: the low word, then the high word.",
          "pow5_inv_split", [pow5_inv_split(i) for i in range(342)]),
    "",
]
OUT.write_text("\n".join(parts))
