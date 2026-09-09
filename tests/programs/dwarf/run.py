#!/usr/bin/env python3
"""Exercise the user's debugger against packaged native Base debug artifacts."""
import json
import os
from pathlib import Path
import platform
import re
import shlex
import shutil
import subprocess
import sys

root = Path(__file__).resolve().parents[3]
fixtures = Path(__file__).resolve().parent
compiler = Path(sys.argv[1] if len(sys.argv) > 1 else root / "build/luce-base").resolve()
mac = platform.system() == "Darwin"
work = root / "build/dwarf"
work.mkdir(parents=True, exist_ok=True)
commands = []


def run(label, args, timeout=120):
    args = list(map(str, args))
    commands.append(dict(label=label, command=args, cwd=str(root)))
    (work / "replay.json").write_text(json.dumps(commands, indent=2))
    r = subprocess.run([sys.executable, str(root / "tools/run_case.py"),
                        "--timeout", str(timeout), "--", *args], cwd=root,
                       stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    (work / f"{label}.log").write_text(r.stdout)
    if r.returncode:
        raise SystemExit(f"FAIL DWARF {label}: {r.stdout[-6000:]}")
    return r.stdout


def line(source, marker):
    return next(i for i, text in enumerate(source.read_text().splitlines(), 1) if marker in text)


def python_command(code):
    return ["script exec(" + repr(code) + ")"] if mac else ["python", code, "end"]


def check_values(values, absent=()):
    if mac:
        code = "frame = lldb.debugger.GetSelectedTarget().GetProcess().GetSelectedThread().GetFrameAtIndex(0)\n"
        for path, expected in values.items():
            expr = f"frame.GetValueForVariablePath({path!r})"
            code += f"v = {expr}\nassert v.IsValid() and v.GetError().Success(), str(v.GetError())\nassert v.GetValueAsSigned() == {expected}, str(v)\n"
        for name in absent:
            code += f"assert not frame.FindVariable({name!r}).IsValid(), 'out-of-scope {name}'\n"
    else:
        code = "import gdb\n"
        for expr, expected in values.items():
            code += f"assert int(gdb.parse_and_eval({expr!r})) == {expected}, {expr!r}\n"
        for name in absent:
            code += f"try:\n    gdb.parse_and_eval({name!r})\nexcept gdb.error:\n    pass\nelse:\n    raise AssertionError('out-of-scope {name}')\n"
    return python_command(code + "print('DWARF_ASSERT_OK')")


def debug(label, exe, source, stages, source_map=None):
    cmd = []
    if source_map:
        old, new = map(str, source_map)
        cmd.append(f'settings set target.source-map "{old}" "{new}"' if mac else
                   f'set substitute-path "{old}" "{new}"')
    for marker, _, _ in stages:
        number = line(source, marker)
        cmd.append(f'breakpoint set --file main.lucb --line {number}' if mac else
                   f'break main.lucb:{number}')
    cmd.append("run")
    for index, (_, values, absent) in enumerate(stages):
        if index:
            cmd.append("continue")
        cmd.append("bt")
        cmd += check_values(values, absent)
    cmd.append("continue")
    code = ("assert lldb.debugger.GetSelectedTarget().GetProcess().GetExitStatus() == 0" if mac else
            "assert int(gdb.parse_and_eval('$_exitcode')) == 0")
    cmd += python_command(code + "\nprint('DWARF_EXIT_OK')")
    script = work / f"{label}.commands"
    script.write_text("\n".join(cmd) + "\n")
    args = (["lldb", "--batch", str(exe), "-s", str(script)] if mac else
            ["gdb", "-q", "-batch", "-x", str(script), str(exe)])
    out = run(label, args)
    if out.count("DWARF_ASSERT_OK") < len(stages) or "DWARF_EXIT_OK" not in out or "Traceback" in out or "AssertionError" in out or "error:" in out:
        raise SystemExit(f"FAIL DWARF {label}: {out[-6000:]}")
    return out


original = work / "original sources"
moved = work / "moved sources"
package = work / "package"
for path in (original, moved, package):
    if path.exists():
        shutil.rmtree(path)
shutil.copytree(fixtures / "mixed", original)
package.mkdir()
exe = work / "program"
run("build-mixed", [compiler, "build", original / "main.lucb", "--native", "--debug", "-o", exe])
assert run("execute-mixed", [exe]) == "ok DWARF\n"
if mac:
    run("verify-mixed", ["xcrun", "dwarfdump", "--verify", str(exe) + ".dSYM"])
else:
    run("verify-mixed", ["llvm-dwarfdump", "--verify", str(exe) + ".debug"])
original.rename(moved)
shutil.move(str(exe), package / exe.name)
suffix = ".dSYM" if mac else ".debug"
shutil.move(str(exe) + suffix, str(package / exe.name) + suffix)
values = {"value": 3, "point.x": 3, "point.y": 4, "text.length": 5,
          "span.length": 3, "span.data[1]": 22, "array[2]": 33, "pointer->x": 3, "text.data[0]": 104, "optional.value": 17, "optional.present": 1,
          "absent.present": 0, "box.value": 91, "pair._0": 5, "pair._1": 6,
          "packed.first": 7, "packed.second": 123}
transcript = debug("mixed-moved", package / exe.name, moved / "main.lucb", [
    ("BREAK_INSPECT", values, ("inner",)),
    ("BREAK_INNER", {"inner": 77}, ()),
    ("BREAK_AFTER", {"result": 84}, ("inner",)),
    ("BREAK_METHOD", {"self->x": 3, "self->y": 4}, ())], (original, moved))
if not re.search(r"bridge.*bridge.c", transcript):
    raise SystemExit("FAIL DWARF: the mixed C frame has no source location")
lib = work / "library"
run("build-library", [compiler, "build", fixtures / "library/main.lucb", "--native", "--debug", "--lib", "-o", lib])
cc = shlex.split(os.environ.get("CC", "cc"))
run("compile-consumer", [*cc, "-g", "-O0", "-c", fixtures / "library/consumer.c", "-o", work / "consumer.o"])
consumer = work / "consumer"
run("link-consumer", [*cc, "-g", work / "consumer.o", str(lib) + ".a", "-lm", "-pthread", "-o", consumer])
if mac:
    run("package-consumer", ["dsymutil", consumer])
    run("verify-consumer", ["xcrun", "dwarfdump", "--verify", str(consumer) + ".dSYM"])
else:
    run("verify-consumer", ["llvm-dwarfdump", "--verify", consumer])
debug("library-consumer", consumer, fixtures / "library/main.lucb", [
    ("BREAK_LIBRARY", {"value": 21, "doubled": 42}, ())])
print("ok DWARF: source breakpoints, mixed backtraces, typed locals, scopes, moved sources and libraries")
