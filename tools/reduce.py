#!/usr/bin/env python3
"""Reduce a fuzzer's finding to a program small enough to become a conformance test.

The finding still fails while its mismatch persists: by default, the suspect build (the native
backend at its default level, or the flags of `--suspect`) prints something else or stops
otherwise than the oracle (the C backend, or `--oracle`), while the oracle, the oracle under
`--profile diagnostic` (unwritten storage reads 0xAA) and the seed's interpreter, where there
is one, run cleanly and agree. Requiring the oracles to agree keeps a reduction from dropping
an initialisation and wandering into a program whose answer is undefined. `--check COMMAND` replaces the predicate: COMMAND, with `{}` standing for
the candidate's path, exits 0 while the mismatch persists (a build that must fail to link,
say).

It drops, over and over until nothing more goes:
  - blocks: a line and the lines indented under it (a function, a struct, an `if`, a loop);
  - lines, one at a time;
  - parameters: one from a function's declaration, its argument from every call, and the
    lines of the body that use it;
  - fields: one from a struct, and every line that names it.
A block header left with nothing under it goes too.

Usage: tools/reduce.py FILE [--suspect FLAGS] [--oracle FLAGS] [--check COMMAND] [-o OUT]
The result is written to OUT (default FILE with `.reduced.lucb`), as each step succeeds.
"""
from concurrent.futures import ThreadPoolExecutor
import os
from pathlib import Path
import re
import shlex
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(os.environ.get("LUCE_BASE_COMPILER", ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base"))).resolve()
SEED = ROOT.parent / "luce-seed" / "build" / "lucb"
TIMEOUT = 30


def option(args, name, default):
    return args[args.index(name) + 1] if name in args else default


def run(command, timeout=TIMEOUT):
    try:
        done = subprocess.run(command, capture_output=True, timeout=timeout)
        return done.returncode, done.stdout
    except subprocess.TimeoutExpired:
        return -1, b"hang"


class Mismatch:
    """Whether a candidate still shows the finding."""

    def __init__(self, suspect, oracle, check):
        self.suspect, self.oracle, self.check = suspect, oracle, check
        self.work = Path(tempfile.mkdtemp(prefix="reduce-"))
        self.tries = 0

    def __call__(self, text):
        self.tries += 1
        path = self.work / "candidate.lucb"
        path.write_text(text, encoding="utf-8")
        if self.check:
            if os.name == "nt":
                # cmd /s keeps the command's own quotes: it takes off only the pair around it all
                command = self.check.replace("{}", f'"{path}"')
                return subprocess.run(f'cmd /s /c "{command}"', capture_output=True).returncode == 0
            return subprocess.run(self.check.replace("{}", shlex.quote(str(path))), shell=True, capture_output=True).returncode == 0

        def outcome(job):
            name, flags = job
            if name == "seed":
                return run([str(SEED), "eval", str(path)])
            exe = self.work / name
            status, _ = run([str(COMPILER), "build", str(path), *flags, "-o", str(exe)])
            if status != 0:
                return ("build", status)
            return run([str(exe)])
        jobs = [("suspect", self.suspect), ("oracle", self.oracle), ("diagnostic", self.oracle + ["--profile", "diagnostic"])]
        jobs += [("seed", [])] if SEED.exists() else []
        with ThreadPoolExecutor(len(jobs)) as pool:
            results = dict(zip([name for name, _ in jobs], pool.map(outcome, jobs)))
        oracle = results["oracle"]
        if oracle[0] != 0 or any(v != oracle for k, v in results.items() if k in ("diagnostic", "seed")):
            return False
        return results["suspect"] != oracle and results["suspect"][0] != "build"


def indent(line):
    return len(line) - len(line.lstrip(" "))


def block(lines, i):
    """The end (exclusive) of the block line i heads: it and the lines indented under it."""
    j = i + 1
    while j < len(lines) and (not lines[j].strip() or indent(lines[j]) > indent(lines[i])):
        j += 1
    return j


def tidy(lines):
    """`lines` without block headers left with nothing under them, and without blank runs."""
    changed = True
    while changed:
        changed = False
        for i, line in enumerate(lines):
            if line.rstrip().endswith(":") and block(lines, i) == i + 1 and line.strip():
                del lines[i]
                changed = True
                break
    return [line for k, line in enumerate(lines) if line.strip() or (k > 0 and lines[k - 1].strip())]


def split_arguments(text, start):
    """The top-level arguments of the call whose `(` is at `start`, and the index past `)`."""
    depth, parts, at = 0, [], start + 1
    for k in range(start, len(text)):
        c = text[k]
        if c in "([":
            depth += 1
        elif c in ")]":
            depth -= 1
            if depth == 0:
                parts.append(text[at:k])
                return parts, k + 1
        elif c == "," and depth == 1:
            parts.append(text[at:k])
            at = k + 1
    return None, None


def without_parameter(text, name, index):
    """`text` with function `name`'s parameter `index` dropped from its declaration, its calls
    and the lines of its body that use it; None when there is no such parameter."""
    declaration = re.search(rf"^(\s*(?:noinline |inline |pub )*func {re.escape(name)})\(", text, re.M)
    if not declaration:
        return None
    params, end = split_arguments(text, declaration.end() - 1)
    if not params or index >= len(params) or not params[index].strip():
        return None
    dropped = params[index].split(":")[0].strip()
    text = text[:declaration.end()] + ", ".join(p.strip() for k, p in enumerate(params) if k != index) + ")" + text[end:]
    # every call: the name and `(`, not the declaration
    out, at = [], 0
    for call in re.finditer(rf"(?<![\w.]){re.escape(name)}\(", text):
        if call.start() < at or text[max(0, call.start() - 5):call.start()] == "func ":
            continue
        arguments, end = split_arguments(text, call.end() - 1)
        if arguments is None or index >= len(arguments):
            continue
        out.append(text[at:call.end()] + ", ".join(a.strip() for k, a in enumerate(arguments) if k != index) + ")")
        at = end
    text = "".join(out) + text[at:]
    lines = text.split("\n")
    start = next(k for k, line in enumerate(lines) if re.match(rf"\s*(?:noinline |inline |pub )*func {re.escape(name)}\(", line))
    end = block(lines, start)
    use = re.compile(rf"(?<![\w.]){re.escape(dropped)}\b")
    lines = lines[:start + 1] + [line for line in lines[start + 1:end] if not use.search(line)] + lines[end:]
    return "\n".join(tidy(lines))


def without_field(text, line_index):
    """`text` without the field declared on line `line_index` and every line naming it."""
    lines = text.split("\n")
    field = re.match(r"\s+(?:pub )?var (\w+):", lines[line_index])
    if not field:
        return None
    use = re.compile(rf"\.{field.group(1)}\b")
    return "\n".join(tidy([line for k, line in enumerate(lines) if k != line_index and not use.search(line)]))


def reduce(text, still):
    def attempt(candidate):
        nonlocal text
        if candidate is not None and candidate != text and still(candidate):
            text = candidate
            return True
        return False

    progress = True
    while progress:
        progress = False
        # blocks, the outermost first
        lines = text.split("\n")
        for level in sorted({indent(line) for line in lines if line.strip()}):
            i = len(lines) - 1
            while i >= 0:
                lines = text.split("\n")
                if i < len(lines) and lines[i].strip() and indent(lines[i]) == level and not lines[i].lstrip().startswith("pub func main("):
                    if attempt("\n".join(tidy(lines[:i] + lines[block(lines, i):]))):
                        progress = True
                i -= 1
            yield text
        # parameters
        for name in re.findall(r"^\s*(?:noinline |inline |pub )*func (\w+)\(", text, re.M):
            index = 0
            while True:
                candidate = without_parameter(text, name, index)
                if candidate is None:
                    break
                if attempt(candidate):
                    progress = True
                else:
                    index += 1
        yield text
        # fields
        i = len(text.split("\n")) - 1
        while i >= 0:
            if attempt(without_field(text, i) if i < len(text.split("\n")) else None):
                progress = True
            i -= 1
        # single lines
        i = len(text.split("\n")) - 1
        while i >= 0:
            lines = text.split("\n")
            if i < len(lines) and attempt("\n".join(tidy(lines[:i] + lines[i + 1:]))):
                progress = True
            i -= 1
        yield text


def main():
    args = sys.argv[1:]
    if not args or args[0].startswith("-"):
        sys.exit(__doc__)
    source = Path(args[0])
    target = Path(option(args, "-o", str(source.with_suffix(".reduced.lucb"))))
    still = Mismatch(shlex.split(option(args, "--suspect", "")), shlex.split(option(args, "--oracle", "--backend=c")), option(args, "--check", None))
    text = source.read_text(encoding="utf-8")
    if not still(text):
        sys.exit(f"reduce: {source} does not show the mismatch")
    before = len(text.split("\n"))
    for step in reduce(text, still):
        target.write_text(step, encoding="utf-8")
        print(f"reduce: {len(step.split(chr(10)))} lines after {still.tries} tries", flush=True)
    print(f"reduce: {before} lines to {len(step.split(chr(10)))} in {still.tries} tries: {target}")


if __name__ == "__main__":
    main()
