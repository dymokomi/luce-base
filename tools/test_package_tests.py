#!/usr/bin/env python3
"""A package keeps its test code under `tests/`, out of what it ships (§16.4, §16.5):
- a program under `tests/` imports the package's own modules through the source root, by
  their paths or behind the package's identifier, before the helpers beside it, and never
  itself: `tests/area.lucb` imports the package's `area`, `tests/uses_area.lucb` too, and a
  helper under `tests/` is imported by its own name;
- `luce-base test` on a module adds the fragments that `tests/<module path>/TESTS` lists,
  in the module's scope, so their tests may call its private functions; a file module
  and a fragment-directory module alike;
- a build never reads them: a program naming a declaration only they declare fails;
- `luce-base test` on the entry runs the tests of every module of its package that it
  reaches, fragments included, in module order and then declaration order, and never
  the tests of a dependency's modules;
- with `--package`, which `luc test` passes, it runs those of every module under the
  source root too, imported or not, a fragment directory and a nested one included and a
  hidden directory's left out, each after what it imports and the rest by their paths;
- a false `assert` in a test's body fails that test, reported at the `assert`, an error at
  the test, and the run goes on to count the failures; one in a function a test calls
  traps and ends the run.

Usage: tools/test_package_tests.py [COMPILER]
"""
import os
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = str(Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base"))

FILES = {
    "package.prisma": (
        '#prisma 4.0\ndef package "geometry" {\n'
        '    def dependency "units" {\n        str path = "vendor/units"\n    }\n}\n'),
    "src/main.lucb": (
        "import area\nimport shapes\nfrom units import metres\n\n"
        "pub func main(arguments: str[]) -> i32:\n    _ = arguments\n"
        '    print(f"{area.square(metres.of(2))} {shapes.triangle()}")\n    return 0\n\n'
        'test "the entry\'s own":\n    assert(area.square(metres.of(2)) == 4)\n'),
    "vendor/units/package.prisma": '#prisma 4.0\ndef package "units" {\n    str[] public = ["metres"]\n}\n',
    "vendor/units/src/metres.lucb": (
        "## A length in metres.\npub func of(value: i64) -> i64:\n    return value\n\n"
        'test "a dependency\'s test":\n    assert(false)\n'),
    "src/area.lucb": (
        "## Areas of shapes.\n"
        "func squared(side: i64) -> i64:\n    return side * side\n\n"
        "## The area of a square.\npub func square(side: i64) -> i64:\n    return squared(side)\n"),
    "src/shapes/ORDER": "kinds.lucb\n",
    "src/shapes/kinds.lucb": (
        "## Shapes by their kind.\n"
        "func sides_of_triangle() -> i64:\n    return 3\n\n"
        "## How many sides a triangle has.\npub func triangle() -> i64:\n    return sides_of_triangle()\n"),
    "tests/area/TESTS": "private.lucb\n",
    "tests/area/private.lucb": (
        "## Reached only by `luce-base test`.\npub let only_in_tests: i64 = 1\n\n"
        'test "a private helper squares":\n    assert(squared(7) == 49)\n\n'
        'test "a square\'s area":\n    assert(square(3) == 9)\n'),
    "tests/shapes/TESTS": "sides.lucb\n",
    "tests/shapes/sides.lucb": 'test "a triangle has three sides":\n    assert(sides_of_triangle() == triangle())\n',
    "tests/uses_area.lucb": (
        "import area\nimport fixtures\nfrom geometry import shapes\n\n"
        "pub func main(arguments: str[]) -> i32:\n    _ = arguments\n"
        '    print(f"{area.square(fixtures.side())} {shapes.triangle()}")\n    return 0\n'),
    "tests/fixtures.lucb": "## The side every test square has.\npub func side() -> i64:\n    return 4\n",
    "tests/area.lucb": (
        "import area\n\n"
        "pub func main(arguments: str[]) -> i32:\n    _ = arguments\n"
        '    print(f"{area.square(5)}")\n    return 0\n'),
    "src/orphan.lucb": (
        "import area\n\nlet wrong = ErrorCode.package(1)\n\n"
        'test "an orphan\'s assert fails":\n    assert(area.square(2) == 5, "two squared is not five")\n\n'
        'test "an orphan\'s error fails":\n    error(wrong, "no circles")\n\n'
        'test "an orphan passes":\n    assert(area.square(1) == 1)\n'),
    "src/solids/cube.lucb": (
        "import area\n\n## The surface of a cube.\npub func surface(side: i64) -> i64:\n    return 6 * area.square(side)\n\n"
        'test "a nested module\'s":\n    assert(surface(1) == 6)\n'),
    "src/.scratch/ignored.lucb": 'test "a hidden directory\'s":\n    assert(false)\n',
    "traps/main.lucb": (
        "func checked(n: i64) -> i64:\n    assert(n > 0)\n    return n\n\n"
        "pub func main(arguments: str[]) -> i32:\n    _ = arguments\n    return 0\n\n"
        'test "a helper\'s assert traps":\n    assert(checked(-1) == -1)\n\n'
        'test "never runs":\n    assert(true)\n'),
    "tests/names_test_only.lucb": (
        "import geometry.area\n\n"
        "pub func main(arguments: str[]) -> i32:\n    _ = arguments\n"
        "    return i32(area.only_in_tests)\n"),
}


def run(cwd, *args, ok=True):
    result = subprocess.run([COMPILER, *map(str, args)], capture_output=True, text=True, cwd=cwd)
    if ok and result.returncode != 0:
        sys.exit(f"FAIL: {' '.join(map(str, args))} exited {result.returncode}: {result.stderr}")
    return result


with tempfile.TemporaryDirectory() as directory:
    root = Path(directory)
    for name, text in FILES.items():
        (root / name).parent.mkdir(parents=True, exist_ok=True)
        (root / name).write_text(text)
    exe = root / ("uses_area.exe" if os.name == "nt" else "uses_area")
    run(root, "build", "tests/uses_area.lucb", "-o", exe)
    out = subprocess.run([str(exe)], capture_output=True, text=True).stdout
    assert out == "16 3\n", f"FAIL: a program under tests/ printed {out!r}"
    named = root / ("area.exe" if os.name == "nt" else "area")
    run(root, "build", "tests/area.lucb", "-o", named)
    out = subprocess.run([str(named)], capture_output=True, text=True).stdout
    assert out == "25\n", f"FAIL: a program named for its module printed {out!r}"
    for module, count in [("src/area.lucb", 2), ("src/shapes", 1)]:
        for backend in ("--backend=c", "--native"):
            result = run(root, "test", module, backend)
            assert f"{count} passed" in result.stdout, f"FAIL: test {module} {backend}: {result.stdout}{result.stderr}"
    tested = [
        "ok    a private helper squares", "ok    a square's area",
        "ok    a triangle has three sides", "ok    the entry's own", "4 passed"]
    for backend in ("--backend=c", "--native"):
        result = run(root, "test", "src/main.lucb", backend)
        assert result.stdout.splitlines() == tested, f"FAIL: test src/main.lucb {backend}: {result.stdout}{result.stderr}"
    package = tested[:4] + [
        "FAIL  an orphan's assert fails", "      src/orphan.lucb:6:5: assert failed: area.square(2) == 5: two squared is not five",
        "FAIL  an orphan's error fails", "      src/orphan.lucb:8:1: no circles",
        "ok    an orphan passes", "ok    a nested module's", "6 passed", "2 failed"]
    for backend in ("--backend=c", "--native"):
        result = run(root, "test", "src/main.lucb", "--package", backend, ok=False)
        assert result.returncode == 1 and result.stdout.splitlines() == package, \
            f"FAIL: test src/main.lucb --package {backend}: {result.returncode} {result.stdout}{result.stderr}"
        trapped = run(root, "test", "traps/main.lucb", backend, ok=False)
        # a trap ends the run with the test named and the tally so far (§16.5)
        assert trapped.returncode == 1 and trapped.stdout.splitlines()[-2:] == ["0 passed", "1 failed"] \
            and "FAIL  " in trapped.stdout and "traps/main.lucb:2:5: assert failed: n > 0" in trapped.stderr, \
            f"FAIL: a helper's assert {backend}: {trapped.returncode} {trapped.stdout}{trapped.stderr}"
    refused = run(root, "check", "tests/names_test_only.lucb", ok=False)
    assert refused.returncode != 0 and "only_in_tests" in refused.stderr, \
        f"FAIL: a build read the test fragments: {refused.returncode} {refused.stderr}"
print("ok a package's tests live under tests/: its modules imported, a same-named one too, its test fragments added, its builds untouched, the entry's test runs the package's tests, --package every module's, a test's assert fails it, a trap names its test")
