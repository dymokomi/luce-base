#!/usr/bin/env python3
"""The standard module `numerals` lays a field out as Python's `format` does (base.md §5.5):
four thousand specifications drawn at random, each for an integer, a float or a text, laid
out by `strings.write_i64`, `write_f64` and `write_text` through both backends, and compared
with what this Python prints. A float with neither type nor precision shows its display,
where Python shows its repr, so that form is left out.

Usage: tools/test_numerals_python.py [COMPILER]
"""
import math
import os
from pathlib import Path
import random
import struct
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = str(Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base"))
CASES = 4000

PROGRAM = '''import io
import memory
import strings

## Each line of standard input, `kind TAB specification TAB value`, laid out on a line of
## its own: `i` an integer, `f` a float by its bits in hexadecimal, `t` a text.
pub func main(arguments: str[]) -> i32!:
    _ = arguments
    var data = try new u8[1 << 22] ---
    var used: usize = 0
    let input = io.stdin()
    while true:
        let n = try input.read(data[used..])
        if n == 0:
            break
        used += n
    let out = io.stdout()
    var rest = (str)data[..<used]
    while rest.length > 0:
        let (line, after) = strings.split_once(rest, "\\n") else (rest, "")
        rest = after
        let (kind, fields) = strings.split_once(line, "\\t") else return 2
        let (spec, value) = strings.split_once(fields, "\\t") else return 2
        if kind == "i":
            try strings.write_i64(out, strings.parse_i64(value) else return 2, spec)
        elif kind == "f":
            var bits = strings.parse_u64(value, 16) else return 2
            try strings.write_f64(out, memory.read[f64]((void*)&bits), spec)
        else:
            try strings.write_text(out, value, spec)
        _ = try out.write("\\n".bytes)
    try io.flush_stdout()
    return 0
'''


def spec_for(rng, category):
    """A specification Python accepts for `category`, or None."""
    parts = []
    if rng.random() < 0.4:
        fill = rng.choice(["", "*", "·", "0", " "])
        parts.append(fill + rng.choice("<>^=" if category != "t" else "<>^"))
    if category != "t" and rng.random() < 0.3:
        parts.append(rng.choice("+- "))
    if category == "f" and rng.random() < 0.15:
        parts.append("z")
    if category != "t" and rng.random() < 0.2:
        parts.append("#")
    if rng.random() < 0.2:
        parts.append("0")
    if rng.random() < 0.6:
        parts.append(str(rng.randrange(0, 24)))
    if category != "t" and rng.random() < 0.25:
        parts.append(rng.choice(",_"))
    if category != "i" and rng.random() < 0.6:
        parts.append("." + str(rng.randrange(0, 14)))
    if category == "i":
        parts.append(rng.choice(["", "d", "b", "o", "x", "X", "c"]))
    elif category == "f":
        parts.append(rng.choice(["e", "E", "f", "F", "g", "G", "%", ""]))
    else:
        parts.append(rng.choice(["", "s"]))
    spec = "".join(parts)
    if category == "f" and not any(spec.endswith(k) for k in "eEfFgG%") and "." not in spec:
        return None
    return spec


def value_for(rng, category, spec):
    if category == "i":
        if spec.endswith("c"):
            return rng.choice([0x41, 0xE9, 0x20AC, 0x1F600, rng.randrange(0x20, 0xD800)])
        return rng.choice([0, 1, -1, 2**63 - 1, -2**63, rng.randrange(-1000, 1000), rng.randrange(-2**63, 2**63)])
    if category == "f":
        choice = rng.random()
        if choice < 0.3:
            return rng.choice([0.0, -0.0, 2.675, 0.125, 0.375, 2.5, -2.25, 1e16, 1e-300, 5e-324, 1.7976931348623157e308,
                               math.inf, -math.inf, math.nan, 1234567.891, 0.000012345, 0.04, -0.04])
        if choice < 0.6:
            return round(rng.uniform(-1e6, 1e6), rng.randrange(0, 8))
        while True:
            x = struct.unpack("<d", struct.pack("<Q", rng.getrandbits(64)))[0]
            if not math.isnan(x):
                return x
    return rng.choice(["", "a", "luce", "héllo wörld", "日本語のテキスト", "😀x😀", "tab-free text of some length"])


def main():
    rng = random.Random(20261005)
    cases = []
    while len(cases) < CASES:
        category = rng.choice("ift")
        spec = spec_for(rng, category)
        if spec is None:
            continue
        value = value_for(rng, category, spec)
        try:
            expected = format(value, spec)
        except (ValueError, OverflowError):
            continue
        if category == "f":
            shown = f"{struct.unpack('<Q', struct.pack('<d', value))[0]:x}"
        else:
            shown = str(value)
        cases.append((category, spec, shown, expected))
    lines = "".join(f"{c}\t{s}\t{v}\n" for c, s, v, _ in cases)
    with tempfile.TemporaryDirectory(prefix="luce-numerals-") as directory:
        source = Path(directory) / "lay.lucb"
        source.write_text(PROGRAM, encoding="utf-8")
        for backend in ("--native", "--backend=c"):
            binary = Path(directory) / ("lay.exe" if os.name == "nt" else "lay")
            subprocess.run([COMPILER, "build", str(source), backend, "-o", str(binary)], check=True, timeout=300)
            ran = subprocess.run([str(binary)], input=lines.encode("utf-8"), capture_output=True, check=True, timeout=60)
            got = ran.stdout.decode("utf-8").split("\n")[:-1]
            if len(got) != len(cases):
                sys.exit(f"FAIL numerals {backend}: {len(got)} lines for {len(cases)} cases")
            wrong = [(c, g) for c, g in zip(cases, got) if c[3] != g]
            for (category, spec, value, expected), actual in wrong[:10]:
                print(f"FAIL numerals {backend}: {category} {value!r}:{spec!r} is {actual!r}, Python {expected!r}")
            if wrong:
                sys.exit(f"FAIL numerals {backend}: {len(wrong)} of {len(cases)} differ from Python {sys.version.split()[0]}")
    print(f"ok numerals: {len(cases)} fields laid out as Python {sys.version.split()[0]} lays them out, both backends")


main()
