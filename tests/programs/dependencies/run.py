#!/usr/bin/env python3
"""Dependency reporting uses the compiler's resolver and preserves path bytes."""
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve()
MAGIC = b"luce-base-dependencies-v1\0"


def invoke(source, expected=0, command="dependencies", options=()):
    return subprocess.run([sys.executable, ROOT / "tools/run_case.py", "--timeout", "30",
                           "--expected", str(expected), "--", COMPILER,
                           command, source, *options], capture_output=True)


with tempfile.TemporaryDirectory(prefix="base-dependencies-") as temporary:
    root = Path(temporary) / "space tab\tnewline\nparent"
    (root / "api").mkdir(parents=True)
    (root / "internal").mkdir()
    (root / "shared.lucb").write_text("pub func answer() -> i64:\n    return 21\n")
    (root / "internal/left.lucb").write_text(
        "import shared\n# import nonexistent\n"
        "pub let text: str = \"import nonexistent\"\n"
        "pub func answer() -> i64:\n    return shared.answer()\n")
    (root / "internal/right.lucb").write_text(
        "from shared import answer\n"
        "pub func other() -> i64:\n    return answer()\n")
    entry = root / "api/boundary.lucb"
    entry.write_text("import memory\nimport internal.left\nimport internal.right\n"
                     "pub func answer() -> i64:\n    return left.answer() + right.other()\n")
    result = invoke(entry)
    assert result.returncode == 0, result.stderr.decode()
    assert result.stdout.startswith(MAGIC) and result.stdout.endswith(b"\0")
    fields = result.stdout[len(MAGIC):-1].split(b"\0")
    assert len(fields) == 6, fields
    actual = [(fields[i].decode(), fields[i + 1].decode()) for i in range(0, len(fields), 2)]
    expected = [("shared", str(root / "shared.lucb")),
                ("internal.left", str(root / "internal/left.lucb")),
                ("internal.right", str(root / "internal/right.lucb"))]
    assert actual == expected, actual
    assert invoke(root / "shared.lucb").stdout == MAGIC
    entry.write_text("import missing\n")
    result = invoke(entry, expected=1)
    assert result.returncode == 1 and result.stdout == b"", result
    entry.write_text("pub func invalid() -> i64:\n    return \"wrong\"\n")
    result = invoke(entry, expected=1)
    assert result.returncode == 1 and result.stdout == b"", result

    # Exercise the shared loader through metadata and both compilation backends.
    # These cycles previously exhausted the stack before semantic checking began.
    cycle_root = Path(temporary) / "cycles"
    cycle_root.mkdir()
    alpha = cycle_root / "alpha.lucb"
    beta = cycle_root / "beta.lucb"
    gamma = cycle_root / "gamma.lucb"
    for spelling in ("import alpha", "import beta", "from beta import second"):
        alpha.write_text(spelling + "\npub func first() -> i64:\n    return 1\n")
        beta.write_text("import gamma\npub func second() -> i64:\n    return 2\n")
        gamma.write_text("import alpha\n")
        for command, options in (("dependencies", ()), ("check", ()),
                                 ("build", ("--native", "-o", str(cycle_root / "native"))),
                                 ("build", ("--backend=c", "-o", str(cycle_root / "c")))):
            result = invoke(alpha, expected=1, command=command, options=options)
            assert result.returncode == 1 and result.stdout == b"", result
            assert b"module import cycle involving alpha" in result.stderr, result.stderr
            assert b":1:1:" in result.stderr, result.stderr
        assert not (cycle_root / "native").exists()
        assert not (cycle_root / "c").exists()
print("ok resolved dependency closure: diamond, parent lookup, standard exclusion, path bytes, failure, cycles")
