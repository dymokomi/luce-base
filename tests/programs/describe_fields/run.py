#!/usr/bin/env python3
"""Public record descriptions preserve mutability without exposing private fields."""
from pathlib import Path
import subprocess
import sys
root = Path(__file__).resolve().parents[3]
result = subprocess.run([str(Path(sys.argv[1]).resolve()), "describe",
    str(root / "tests/programs/describe_fields/main.lucb")], capture_output=True, check=True)
text = result.stdout.decode()
assert not result.stderr, result.stderr
for name in ("port", "label"):
    assert f"    field var {name}:" in text, text
assert text.startswith("description 5\nmodule main\n"), text
assert "    representation private\n" in text, text
assert "    field let version: i64 = default\n" in text, text
assert "field var version" not in text and "hidden" not in text, text
print("PASS public record mutability description")
