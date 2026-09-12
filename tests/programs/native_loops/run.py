#!/usr/bin/env python3
"""Check loop transformations, retained failures and emitted IR using runtime inputs."""
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
COMPILER = Path(sys.argv[1]).resolve()
MODES = [["--native", "--opt", str(n)] for n in range(4)] + [
    ["--backend=c"], ["--backend=c", "--release"]]


def run(command, expected=0):
    result = subprocess.run(list(map(str, command)), capture_output=True,
                            text=True, timeout=120)
    assert result.returncode == expected, (command, result.returncode, result.stdout, result.stderr)
    return result


with tempfile.TemporaryDirectory(prefix="luce-native-loops-") as temporary:
    root = Path(temporary)
    compilers = [(COMPILER, flags) for flags in MODES]
    for compiler, flags in compilers:
        run([compiler, "build", HERE / "kernels.lucb", "--lib", *flags, "-o", root / "kernels"])
        run([os.environ.get("CC", "cc"), "-std=c11", "-O2", "-ffp-contract=off", "-Wall", "-Werror",
             "-I", root, HERE / "driver.c", root / "kernels.a", "-lm", "-pthread", "-o", root / "test"])
        assert run([root / "test"]).stdout == "ok native loop semantics\n"
        for case in ("index", "length", "join", "unsigned", "signed", "multiply", "negative", "divide", "dimension", "edge", "sum"):
            failed = run([root / "test", case], expected=1)
            message = "integer overflow" if case in ("unsigned", "signed", "multiply", "dimension", "edge", "sum") else (
                "division by zero" if case == "divide" else "index out of bounds")
            assert message in failed.stderr, (case, flags, failed.stderr)
            assert failed.stdout == ("before bounds\n" if case in ("index", "length") else ""), failed.stdout
        print("PASS native loop semantics and retained traps", compiler.name, *flags, flush=True)

    run([COMPILER, "build", HERE / "kernels.lucb", "--native", "--lib", "--opt", "3",
         "--emit=ir", "-o", root / "loops.ir"])
    ir = (root / "loops.ir").read_text()

    def body(name):
        found = re.search(r"^function (?:export )?\$" + name + r"\(.*?(?=^function |\Z)", ir, re.M | re.S)
        assert found, name
        return found.group()

    assert "bounds " not in body("safe_total")
    assert "addo " not in body("safe_total")
    assert body("repeated").count("bounds ") == 1
    assert "bounds " in body("uncertain")
    assert "addo " in body("checked_next")
    assert "addo " in body("signed_next")
    recurrence = body("invariant_float")
    assert "cast " in recurrence
    assert "cast " not in recurrence[recurrence.index("@L"):]
    print("PASS range proofs remove only established checks")
    for name in ("safe_total", "sum_dwords", "map_doubles", "map_floats"):
        assert "loadv " in body(name), name
    assert "vaddw " in body("safe_total")
    assert "storev " in body("map_doubles")
    assert "loadv " not in body("checked_total")
    assert "addo " in body("checked_total")
    assert "loadv " not in body("invariant_float")
    assert "bounds " not in body("grid_read")
    assert "addo " not in body("grid_read")
    assert body("grid_read").count("mulo ") == 1
    assert "addo " in body("grid_edge")
    print("PASS SIMD selection and conservative scalar fallbacks")

    # Cross-assembly catches target instruction/operand errors on the other host;
    # CI executes this same fixture on both native targets.
    if sys.platform == "darwin":
        run([COMPILER, "build", HERE / "kernels.lucb", "--native", "--lib",
             "--target", "x86_64-linux", "--emit=asm", "-o", root / "linux.s"])
        run(["clang", "--target=x86_64-linux-gnu", "-c", root / "linux.s", "-o", root / "linux.o"])
        assembly = (root / "linux.s").read_text()
        total = assembly.split("\nsafe_total:\n", 1)[1].split("    .globl", 1)[0]
        assert "paddq " in total and "movdqu " in total
        assert "movss " not in total, "integer vectors must spill all sixteen bytes"
        print("PASS x86_64 cross-assembly")
