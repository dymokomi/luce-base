#!/usr/bin/env python3
"""Fuzz the compiler. Two modes, both deterministic for a seed:

  mutate    every program of the corpus (tests/samples, tests/conformance, src/std) is
            mutated at random (bytes flipped, tokens dropped, doubled, and swapped, lines
            truncated, brackets nested deep, identifiers and literals stretched, invalid
            UTF-8 and bidirectional characters inserted) and given to `luce-base check`
            under a time budget. The only acceptable outcomes are an acceptance (status 0)
            and a rejection (status 1 with a diagnostic that names a position). A signal, a
            hang, a status the driver does not use, or a diagnostic without a position is
            a finding, written under build/fuzz/ with the input that caused it.

  generate  well-typed programs are generated from a small grammar (wrapping arithmetic,
            shifts within the width, comparisons, branches, counted loops, arrays, function
            calls) that print a checksum, and each is run four ways: the C backend, the C
            backend at -O2, the native backend, and the seed's interpreter. The outputs
            must agree; a disagreement, a crash, or a hang is a finding.

Usage:
  tools/fuzz.py [--seed N] [--mutations N] [--programs N] [--minutes M] [--gate]

`--gate` is the gate's short run: a fixed seed and a small count, so it is the same on
every host. `--minutes` runs until the budget is spent, printing findings as they come.
Exit status is the number of findings, capped at 100.
"""
import os, random, re, subprocess, sys, time, pathlib, signal

root = pathlib.Path(__file__).resolve().parent.parent
os.chdir(root)
compiler = root / "build" / "luce-base"
seed_binary = root.parent / "luce-seed" / "build" / "lucb"
out = root / "build" / "fuzz"
out.mkdir(parents=True, exist_ok=True)

position = re.compile(r":\d+:\d+: ")


def run(args, timeout, stdin=None):
    """Status, stdout, stderr; status -1 on a hang, negative -signal on a signal."""
    try:
        r = subprocess.run(args, input=stdin, capture_output=True, timeout=timeout)
        return r.returncode, r.stdout, r.stderr
    except subprocess.TimeoutExpired:
        return -1, b"", b"hang"


class Findings:
    def __init__(self):
        self.count = 0

    def report(self, kind, text, detail):
        self.count += 1
        path = out / f"finding-{self.count:03d}-{kind}.lucb"
        path.write_bytes(text)
        print(f"FINDING {kind}: {detail}\n  input: {path}")


# ---- mutation ------------------------------------------------------------------------

def corpus():
    files = []
    for pattern in ("tests/samples/*.lucb", "tests/conformance/*/*.lucb", "tests/conformance/*/*/*.lucb", "src/std/*.lucb"):
        files += sorted(root.glob(pattern))
    return [f for f in files if f.stat().st_size < 60000]


token = re.compile(rb"[A-Za-z_][A-Za-z0-9_]*|\d+|\S", re.S)


def mutate(text, rng):
    """One of many mutations, chosen at random; several may stack."""
    for _ in range(rng.randint(1, 3)):
        kind = rng.randrange(14)
        if len(text) == 0:
            text = b"pub func main(arguments: str[]) -> i32:\n    return 0\n"
        i = rng.randrange(len(text))
        if kind == 0:      # flip a byte
            text = text[:i] + bytes([rng.randrange(256)]) + text[i + 1:]
        elif kind == 1:    # drop a run
            j = min(len(text), i + rng.randint(1, 40))
            text = text[:i] + text[j:]
        elif kind == 2:    # double a run
            j = min(len(text), i + rng.randint(1, 40))
            text = text[:j] + text[i:j] + text[j:]
        elif kind == 3:    # truncate
            text = text[:i]
        elif kind == 4:    # swap two tokens
            toks = [m.span() for m in token.finditer(text)]
            if len(toks) > 2:
                a, b = sorted(rng.sample(range(len(toks)), 2))
                (a0, a1), (b0, b1) = toks[a], toks[b]
                text = text[:a0] + text[b0:b1] + text[a1:b0] + text[a0:a1] + text[b1:]
        elif kind == 5:    # deep nesting
            depth = rng.choice([64, 300, 2000, 20000])
            opener, closer = rng.choice([(b"(", b")"), (b"[", b"]"), (b"-", b""), (b"*", b""), (b"(u8)", b""), (b"not ", b"")])
            text = text[:i] + opener * depth + b"1" + closer * depth + text[i:]
        elif kind == 6:    # a long identifier or literal
            text = text[:i] + rng.choice([b"a" * 5000, b"9" * 5000, b"1." + b"0" * 3000 + b"1", b"0x" + b"f" * 200, b'"' + b"x" * 8000 + b'"']) + text[i:]
        elif kind == 7:    # invalid UTF-8 and bidirectional characters
            text = text[:i] + rng.choice([b"\xff\xfe", b"\xc0\x80", b"\xe2\x80\xae", b"\xe2\x80\xab", b"\xed\xa0\x80", b"\x00"]) + text[i:]
        elif kind == 8:    # indentation damage
            lines = text.split(b"\n")
            k = rng.randrange(len(lines))
            lines[k] = rng.choice([b"    " * 40, b"\t", b" ", b""]) + lines[k].lstrip()
            text = b"\n".join(lines)
        elif kind == 9:    # a keyword or a core name in a wrong place
            word = rng.choice([b"func", b"struct", b"return", b"if", b"else", b"match", b"with", b"try", b"catch", b"defer", b"sizeof", b"assert", b"import", b"from", b"pub", b"export", b"extern", b"asm", b"local", b"goto", b"self", b"none", b"---", b"=>", b"..<", b"[", b"]", b":", b"::"])
            text = text[:i] + b" " + word + b" " + text[i:]
        elif kind == 10:   # generic and type noise
            text = text[:i] + rng.choice([b"[T]", b"[u8]", b"*?", b"**", b"[]", b"[0]", b"!", b"?", b"@", b"func(", b"->"]) + text[i:]
        elif kind == 11:   # duplicate a line elsewhere
            lines = text.split(b"\n")
            if len(lines) > 1:
                k = rng.randrange(len(lines)); j = rng.randrange(len(lines))
                lines.insert(j, lines[k])
                text = b"\n".join(lines)
        elif kind == 12:   # many declarations
            n = rng.choice([200, 2000])
            text = text + b"\n" + b"".join(b"func f%d(x: i64) -> i64:\n    return x + %d\n" % (k, k) for k in range(n))
        else:              # a recursive type or an infinite instantiation
            text = text + b"\n" + rng.choice([
                b"struct Node:\n    var next: Node*?\n    var own: Node\n",
                b"struct A:\n    var b: B\nstruct B:\n    var a: A\n",
                b"func deep[T](x: T) -> i64:\n    return deep[T*](&x)\n",
                b"type Loop = Loop*\n",
                b"struct S[T]:\n    var inner: S[S[T]]\n",
            ])
    return text


def check_one(text, timeout, findings, label):
    """One `check` of a mutated program: only an acceptance or a positioned rejection is fine."""
    path = out / "current.lucb"
    path.write_bytes(text)
    status, so, se = run([str(compiler), "check", str(path)], timeout)
    message = (so + se).decode("utf-8", "replace")
    if status == -1:
        findings.report("hang", text, f"{label}: the checker did not finish in {timeout}s")
    elif status < 0 or status >= 128:
        findings.report("crash", text, f"{label}: the checker stopped with a signal ({status}) {message[:200]!r}")
    elif status == 0:
        pass
    elif status == 1:
        if not position.search(message) and "cannot read" not in message:
            findings.report("bare", text, f"{label}: a rejection without a position: {message[:200]!r}")
    else:
        findings.report("status", text, f"{label}: exit status {status}: {message[:200]!r}")


# ---- generation ----------------------------------------------------------------------

class Gen:
    """A well-typed program over i64, u8, u32, and i64 arrays, with wrapping arithmetic so
    nothing traps, shifts within the width, counted loops, and functions."""

    def __init__(self, rng):
        self.rng = rng
        self.funcs = []   # (name, params)
        self.loops = 0

    def expr(self, depth, ty="i64"):
        r = self.rng
        if depth <= 0 or r.random() < 0.3:
            k = r.randrange(6)
            if k == 0:
                return str(r.randint(-1000, 1000)) if ty == "i64" else str(r.randint(0, 255 if ty == "u8" else 4000000000))
            if k == 1 and ty == "i64":
                return f"a{r.randrange(3)}"
            if k == 2 and ty == "i64":
                return f"table[{r.randrange(8)}]"
            if k == 3 and ty == "i64":
                return f"(i64)b{r.randrange(2)}"
            if ty == "u8":
                return f"b{r.randrange(2)}"
            if ty == "u32":
                return f"c{r.randrange(2)}"
            return f"a{r.randrange(3)}"
        k = r.randrange(9)
        if ty == "i64":
            if k < 3:
                op = r.choice(["+%", "-%", "*%"])
                return f"({self.expr(depth - 1)} {op} {self.expr(depth - 1)})"
            if k == 3:
                return f"({self.expr(depth - 1)} {r.choice(['&', '|', '^'])} {self.expr(depth - 1)})"
            if k == 4:
                # `<<` discards the bits shifted past the width (§7.2), whatever the value,
                # so the executions must agree on it too
                return f"({self.expr(depth - 1)} {r.choice(['<<', '>>'])} {r.randrange(0, 63)})"
            if k == 5:
                return f"({self.expr(depth - 1)} if {self.cond(depth - 1)} else {self.expr(depth - 1)})"
            if k == 6:
                return f"(i64){self.expr(depth - 1, 'u8')}"
            if k == 7:
                return f"(i64){self.expr(depth - 1, 'u32')}"
            if self.funcs:
                name, n = r.choice(self.funcs)
                return f"{name}({', '.join(self.expr(depth - 1) for _ in range(n))})"
            return f"(0 -% {self.expr(depth - 1)})"
        if ty == "u8":
            if k < 4:
                return f"({self.expr(depth - 1, 'u8')} {r.choice(['+%', '-%', '*%'])} {self.expr(depth - 1, 'u8')})"
            if k < 6:
                return f"({self.expr(depth - 1, 'u8')} {r.choice(['&', '|', '^'])} {self.expr(depth - 1, 'u8')})"
            if k == 6:
                return f"({self.expr(depth - 1, 'u8')} >> {r.randrange(0, 7)})"
            return f"(u8){self.expr(depth - 1)}"
        # u32
        if k < 4:
            return f"({self.expr(depth - 1, 'u32')} {r.choice(['+%', '-%', '*%'])} {self.expr(depth - 1, 'u32')})"
        if k < 6:
            return f"({self.expr(depth - 1, 'u32')} {r.choice(['<<', '>>'])} {r.randrange(0, 31)})"
        return f"(u32){self.expr(depth - 1)}"

    def cond(self, depth):
        r = self.rng
        if depth <= 0 or r.random() < 0.4:
            return f"({self.expr(depth)} {r.choice(['<', '<=', '==', '!=', '>=', '>'])} {self.expr(depth)})"
        return f"({self.cond(depth - 1)} {r.choice(['and', 'or'])} {self.cond(depth - 1)})"

    def statements(self, depth, indent):
        r = self.rng
        lines = []
        for _ in range(r.randint(1, 4)):
            k = r.randrange(7)
            pad = "    " * indent
            if k < 2:
                lines.append(f"{pad}a{r.randrange(3)} = {self.expr(3)}")
            elif k == 2:
                lines.append(f"{pad}b{r.randrange(2)} = {self.expr(2, 'u8')}")
            elif k == 3:
                lines.append(f"{pad}c{r.randrange(2)} = {self.expr(2, 'u32')}")
            elif k == 4:
                lines.append(f"{pad}table[{r.randrange(8)}] = {self.expr(2)}")
            elif k == 5 and depth > 0:
                lines.append(f"{pad}if {self.cond(2)}:")
                lines += self.statements(depth - 1, indent + 1)
                if r.random() < 0.5:
                    lines.append(f"{pad}else:")
                    lines += self.statements(depth - 1, indent + 1)
            elif k == 6 and depth > 0:
                n = r.randint(1, 20)
                self.loops += 1
                name = f"i{self.loops}"
                lines.append(f"{pad}var {name}: i64 = 0")
                lines.append(f"{pad}while {name} < {n}:")
                lines += self.statements(depth - 1, indent + 1)
                lines.append(f"{pad}    {name} += 1")
            else:
                lines.append(f"{pad}a{r.randrange(3)} = {self.expr(2)}")
            lines.append(f"{pad}sum = sum *% 31 +% a0 +% a1 +% a2 +% (i64)b0 +% (i64)b1 +% (i64)c0 +% (i64)c1")
        return lines

    def program(self):
        r = self.rng
        text = ["## generated by tools/fuzz.py", "var table: i64[8]", "var sum: i64", "var a0: i64", "var a1: i64", "var a2: i64", "var b0: u8", "var b1: u8", "var c0: u32", "var c1: u32", ""]
        for k in range(r.randint(0, 3)):
            n = r.randint(1, 3)
            params = ", ".join(f"p{i}: i64" for i in range(n))
            body = self.expr(3)
            for i in range(n):
                body = body.replace(f"a{i}", f"p{i}") if r.random() < 0.5 else body
            text.append(f"func g{k}({params}) -> i64:")
            text.append(f"    return {body}")
            text.append("")
            self.funcs.append((f"g{k}", n))
        text.append("pub func main(arguments: str[]) -> i32:")
        for i in range(8):
            text.append(f"    table[{i}] = {r.randint(-100, 100)}")
        text.append(f"    a0 = {r.randint(-50, 50)}")
        text.append(f"    a1 = {r.randint(-50, 50)}")
        text.append(f"    a2 = {r.randint(-50, 50)}")
        text.append(f"    b0 = {r.randint(0, 255)}")
        text.append(f"    c0 = {r.randint(0, 100000)}")
        text += self.statements(3, 1)
        text.append('    print(f"{sum} {a0} {a1} {a2} {b0} {b1} {c0} {c1} {table[3]}")')
        text.append("    return 0")
        return "\n".join(text) + "\n"


def differential(text, timeout, findings, label):
    path = out / "generated.lucb"
    path.write_text(text)
    exe = out / "generated"
    outputs = {}
    for name, flags in (("c", []), ("release", ["--release"]), ("native", ["--native"])):
        status, so, se = run([str(compiler), "build", str(path), *flags, "-o", str(exe)], timeout * 4)
        if status != 0:
            findings.report("build-" + name, text.encode(), f"{label}: the build ({name}) failed: {(so + se).decode('utf-8', 'replace')[:300]!r}")
            return
        status, so, se = run([str(exe)], timeout)
        if status != 0:
            findings.report("run-" + name, text.encode(), f"{label}: the program ({name}) stopped with {status}: {se.decode('utf-8', 'replace')[:200]!r}")
            return
        outputs[name] = so
    if seed_binary.exists():
        status, so, se = run([str(seed_binary), "eval", str(path)], timeout * 4)
        if status != 0:
            findings.report("seed", text.encode(), f"{label}: the seed stopped with {status}: {se.decode('utf-8', 'replace')[:200]!r}")
            return
        outputs["seed"] = so
    values = set(outputs.values())
    if len(values) > 1:
        detail = "; ".join(f"{k}: {v.decode('utf-8', 'replace').strip()}" for k, v in outputs.items())
        findings.report("disagree", text.encode(), f"{label}: the executions disagree: {detail}")


def main():
    args = sys.argv[1:]
    seed = 1
    mutations = 300
    programs = 40
    minutes = 0.0
    gate = "--gate" in args
    for i, a in enumerate(args):
        if a == "--seed":
            seed = int(args[i + 1])
        elif a == "--mutations":
            mutations = int(args[i + 1])
        elif a == "--programs":
            programs = int(args[i + 1])
        elif a == "--minutes":
            minutes = float(args[i + 1])
    if gate:
        seed, mutations, programs = 7, 120, 12
    rng = random.Random(seed)
    findings = Findings()
    files = corpus()
    if not files:
        print("no corpus")
        return 1
    deadline = time.time() + minutes * 60 if minutes > 0 else None
    done_m = done_p = 0
    round_ = 0
    while True:
        round_ += 1
        for k in range(mutations):
            f = rng.choice(files)
            text = mutate(f.read_bytes(), rng)
            check_one(text, 20, findings, f"mutation {done_m + 1} of {f.name} (seed {seed})")
            done_m += 1
            if deadline and time.time() > deadline:
                break
        for k in range(programs):
            text = Gen(random.Random(rng.randrange(1 << 30))).program()
            differential(text, 20, findings, f"program {done_p + 1} (seed {seed})")
            done_p += 1
            if deadline and time.time() > deadline:
                break
        if not deadline or time.time() > deadline:
            break
    for name in ("current.lucb", "generated.lucb", "generated"):
        p = out / name
        if p.exists():
            p.unlink()
    print(f"fuzz: {done_m} mutations, {done_p} generated programs, {findings.count} findings (seed {seed})")
    return min(findings.count, 100)


if __name__ == "__main__":
    sys.exit(main())
