#!/usr/bin/env python3
"""Compare the described API with real native construction/interface behavior."""
from pathlib import Path
import re
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
FIXTURE = Path(__file__).resolve().parent
COMPILER = Path(sys.argv[1]).resolve()


def run(*arguments):
    result = subprocess.run([str(COMPILER), *map(str, arguments)],
                            cwd=ROOT, capture_output=True, text=True, check=True)
    assert not result.stderr, result.stderr
    return result.stdout


text = run("describe", FIXTURE / "api.lucb")
assert text.startswith("description 5\nmodule api\n"), text
alias = re.search(r"^import contracts as (\w+)$", text, re.M)
assert alias, text
text = text.replace(alias[1], "contracts")
expected = [
    "foreign contracts.Named interface",
    "foreign contracts.Point struct",
    "foreign contracts.Token handle",
    "interface Gauge\n    method value() -> i64\n    mutating method increase(amount: i64) -> !",
    "struct Counter\n    representation private\n    constructor init(start: i64) -> !",
    "    method value() -> i64",
    "    mutating method increase(amount: i64) -> !",
    "    static method zero() -> Counter!",
    "    conforms Gauge",
    "struct Settings\n    representation complete\n    constructor memberwise",
    "    field let label: str = default\n    field var amount: i64 = default",
    "struct Locked\n    representation complete\n    constructor private",
    "enum Mode as u8\n    case off = 0\n    case on = 1\n    method name() -> str\n    conforms contracts.Named",
    "    method position(points: const contracts.Point[]) -> (contracts.Point?, contracts.Token?)",
    "unavailable Generic generic",
    "unavailable identity generic",
    "type GaugeAlias = Gauge",
]
for record in expected:
    assert record + "\n" in text, (record, text)
for private in ("secret_count", "secret_method", "Internal"):
    assert private not in text, (private, text)

with tempfile.TemporaryDirectory(prefix="luce-description-") as temporary:
    binary = Path(temporary) / "api-test"
    for level in range(4):
        run("build", FIXTURE / "main.lucb", "--native", "--opt", level, "-o", binary)
        result = subprocess.run([str(binary)], capture_output=True, text=True, check=True)
        assert result.stdout == "constructor failure preserved\n", result
        assert not result.stderr, result.stderr

print("PASS constructors, methods, interfaces, visibility and foreign types; native opts 0–3")
