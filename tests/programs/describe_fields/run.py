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
    assert f"    field {name}:" in text, text
    assert f"    mutable {name}\n" in text, text
assert "    field version: i64\n" in text, text
assert "mutable version" not in text and "hidden" not in text, text
print("PASS public record mutability description")
