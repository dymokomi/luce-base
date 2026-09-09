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

  generate  well-typed programs are generated over a wide slice of the language (integers
            of six widths with wrapping, checked, saturating, dividing and shifting
            arithmetic and casts; bounded floats; structs by value, small and large, as
            arguments, results, array elements and through pointers; spans, slices and
            `for`; fallible calls with `try`, `catch` and `recover`; optionals; a backed
            enum under `match`; a payload enum by value under `match`; a union; a generic
            struct; vectors; generic functions; an interface dispatched statically; lambdas,
            function values and a nullable function; tuples; static and mutating methods;
            `defer`; text; and memory: heap objects and spans with `new`, uninitialised
            `alloc`, raw bytes, a pointer to a fixed array, `free` and `defer free`, a
            linked list built and released, a `FixedBuffer` arena through `in` and `with`,
            a heap expression tree built under `errdefer`, and a fallible allocator with
            `errdefer` caught by its caller) that print a checksum, and each is
            run four ways: the C backend, the C backend at -O2, the native backend, and
            the seed's interpreter. The outputs must agree; a disagreement, a crash, or a
            hang is a finding. Nothing generated traps: checked operands are masked, every
            index is in range, every divisor is non-zero, every float stays finite.

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

position = re.compile(r"[^ :]+\.lucb:\d+:\d+: ")


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
        print(f"FINDING {kind}: {detail}\n  input: {path}", flush=True)


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
        if not position.search(message):
            findings.report("bare", text, f"{label}: a rejection without a position: {message[:200]!r}")
    else:
        findings.report("status", text, f"{label}: exit status {status}: {message[:200]!r}")


# ---- generation ----------------------------------------------------------------------

class Gen:
    """A well-typed program that prints a checksum, over a wide slice of the language:
    integers of several widths with wrapping, checked (on masked operands), saturating,
    division and remainder (non-zero divisors), shifts within the width, and casts; floats
    kept bounded so every value is finite; structs by value, small and large, as arguments,
    results, array elements and through pointers; spans and slices with `for`; fallible
    functions with `try`, `catch` and `recover`; optionals with `if let` and `else`; a
    backed enum under `match`; generic functions; an interface dispatched statically;
    function values and lambdas; `defer`; and text. Nothing traps: every operand a checked
    operator sees is masked first, every index is in range, every divisor is non-zero."""

    def __init__(self, rng):
        self.rng = rng
        self.funcs = []   # (name, params)
        self.loops = 0
        self.locals = []  # (name, type) locals in scope of the statement being written
        self.in_arena = False  # inside `with arena:`, where a loop of allocations would fill it

    # -- integers ---------------------------------------------------------------------

    def leaf(self, ty):
        r = self.rng
        pool = {
            "i64": ["a0", "a1", "a2", "table[%d]" % r.randrange(8), "(i64)b0", "(i64)c1", "p0.x", "q0.a", "q0.b", "(i64)e0", "(i64)h0", "(i64)q0.tag", "(i64)s0.length", "(i64)table.length", "box0.w", "tri0.h", "((i64)d0 & 4095)", "((i64)(d1 * 4.0) & 255)", "((i64)s0.bytes[(usize)(a1 & 3)])", "((i64)m0 & 4095)", "((i64)m1 & 4095)"],
            "u8": ["b0", "b1", "p0.y", "(u8)a0", "(u8)c0", "s0.bytes[(usize)(a0 & 3)]"],
            "u32": ["c0", "c1", "(u32)a1", "(u32)e0"],
            "i32": ["e0", "e1", "(i32)a2", "(i32)b1"],
            "u16": ["h0", "(u16)a0", "(u16)c1"],
            "u64": ["m0", "m1", "(u64)a2", "(u64)c0"],
        }
        for name, t in self.locals:
            if t == ty:
                pool[ty] = pool[ty] + [name, name]
        if r.random() < 0.25:
            if ty == "i64":
                return str(r.randint(-1000, 1000))
            if ty == "i32":
                return str(r.randint(-1000, 1000))
            return str(r.randint(0, {"u8": 255, "u32": 4000000000, "u16": 65535, "u64": 1000000}[ty]))
        return r.choice(pool[ty])

    def expr(self, depth, ty="i64"):
        r = self.rng
        if depth <= 0 or r.random() < 0.3:
            return self.leaf(ty)
        width = {"i64": 63, "u8": 7, "u32": 31, "i32": 31, "u16": 15, "u64": 63}[ty]
        k = r.randrange(16)
        if k < 3:
            return f"({self.expr(depth - 1, ty)} {r.choice(['+%', '-%', '*%'])} {self.expr(depth - 1, ty)})"
        if k == 3:
            return f"({self.expr(depth - 1, ty)} {r.choice(['&', '|', '^'])} {self.expr(depth - 1, ty)})"
        if k == 4:
            return f"({self.expr(depth - 1, ty)} {r.choice(['<<', '>>'])} {r.randrange(0, width)})"
        if k == 5:
            return f"({self.expr(depth - 1, ty)} if {self.cond(depth - 1)} else {self.expr(depth - 1, ty)})"
        if k == 6:
            # checked arithmetic on operands masked well inside the width never traps
            mask = {"i64": 4095, "u8": 15, "u32": 4095, "i32": 4095, "u16": 255, "u64": 4095}[ty]
            return f"(({self.expr(depth - 1, ty)} & {mask}) {r.choice(['+', '-', '*']) if ty in ('i64', 'i32') else r.choice(['+', '*'])} ({self.expr(depth - 1, ty)} & {mask}))"
        if k == 7:
            # division and remainder: a non-negative dividend, a divisor that is never zero
            top = 127 if ty == "u8" else 1023
            return f"(({self.expr(depth - 1, ty)} & {top}) {r.choice(['//', '%'])} (({self.expr(depth - 1, ty)} & 63) | 1))"
        if k == 8:
            return f"({self.expr(depth - 1, ty)} {r.choice(['+|', '-|', '*|'])} {self.expr(depth - 1, ty)})"
        if k == 9:
            other = r.choice([t for t in ("i64", "u8", "u32", "i32", "u16", "u64") if t != ty])
            return f"({ty}){self.expr(depth - 1, other)}"
        if k == 10 and ty == "i64":
            return f"pick[i64]({self.expr(depth - 1)}, {self.expr(depth - 1)}, {self.cond(depth - 1)})"
        if k == 11 and ty == "i64":
            return f"(o0 else {self.expr(depth - 1)})"
        if k == 12 and ty == "i64":
            return f"safe({self.expr(depth - 1)})"
        if k == 13 and ty == "i64":
            return f"apply((x) => x {r.choice(['+%', '-%', '*%'])} {r.randint(-9, 9)}, {self.expr(depth - 1)})"
        if k == 14 and ty == "i64":
            if self.funcs:
                name, n = r.choice(self.funcs)
                return f"{name}({', '.join(self.expr(depth - 1) for _ in range(n))})"
            return f"sumspan(table[{r.randrange(0, 4)}..<{r.randrange(4, 9)}])"
        if k == 15 and ty == "i64":
            return r.choice([f"area_of(&box0)", f"area_of(&tri0)", f"sumspan(table[{r.randrange(0, 4)}..<{r.randrange(4, 9)}])", f"makeq({self.expr(depth - 1)}).c", f"makep({self.expr(depth - 1)}).x", f"(0 -% {self.expr(depth - 1)})"])
        return f"(0 -% {self.expr(depth - 1, ty)})"

    def fexpr(self, depth):
        """A float kept finite and small: fresh from a masked integer, or a contraction."""
        r = self.rng
        if depth <= 0 or r.random() < 0.3:
            return r.choice(["d0", "d1", "p0.f", str(r.choice([0.5, 2.25, -1.5, 3.0, 0.125, 10.0, -0.75])), f"f64({self.expr(1)} & 4095)", "(f64)b0", "(f64)(a0 & 255)"])
        k = r.randrange(7)
        if k < 2:
            return f"({self.fexpr(depth - 1)} {r.choice(['+', '-'])} {self.fexpr(depth - 1)})"
        if k == 2:
            return f"({self.fexpr(depth - 1)} * {r.choice(['0.5', '0.25', '-0.5', '0.001'])})"
        if k == 3:
            return f"({self.fexpr(depth - 1)} / {r.choice(['2.0', '4.0', '-8.0', '3.0'])})"
        if k == 4:
            return f"({self.fexpr(depth - 1)} if {self.fcond(depth - 1)} else {self.fexpr(depth - 1)})"
        if k == 5:
            return f"pick[f64]({self.fexpr(depth - 1)}, {self.fexpr(depth - 1)}, {self.cond(depth - 1)})"
        return f"(-{self.fexpr(depth - 1)})"

    def fcond(self, depth):
        return f"({self.fexpr(depth)} {self.rng.choice(['<', '<=', '==', '!=', '>=', '>'])} {self.fexpr(depth)})"

    def cond(self, depth):
        r = self.rng
        if depth <= 0 or r.random() < 0.4:
            k = r.randrange(6)
            if k == 0:
                return self.fcond(depth)
            if k == 1:
                return r.choice(["(o0 == none)", "(o0 != none)", "(q0.tag == Kind.large)", "(q0.tag != Kind.small)", "(s0 == \"abcd\")", "(p0 == makep(a0))"])
            ty = r.choice(["i64", "i64", "u8", "u32", "i32"])
            return f"({self.expr(depth, ty)} {r.choice(['<', '<=', '==', '!=', '>=', '>'])} {self.expr(depth, ty)})"
        if r.random() < 0.2:
            return f"(not {self.cond(depth - 1)})"
        return f"({self.cond(depth - 1)} {r.choice(['and', 'or'])} {self.cond(depth - 1)})"

    # -- statements -------------------------------------------------------------------

    def statements(self, depth, indent):
        r = self.rng
        lines = []
        self.pad = "    " * indent
        saved_locals = list(self.locals)
        for _ in range(r.randint(1, 4)):
            k = r.randrange(42)
            if self.in_arena and k in (32, 33, 34, 35, 36, 37, 38, 39, 40, 41):
                # a fixed buffer reclaims only its last allocation: nothing else allocates
                # inside its suite, so the one object it holds is freed in order
                k = 0
            pad = "    " * indent
            self.pad = pad
            if k < 2:
                lines.append(f"{pad}a{r.randrange(3)} = {self.expr(3)}")
            elif k == 2:
                lines.append(f"{pad}b{r.randrange(2)} = {self.expr(2, 'u8')}")
            elif k == 3:
                lines.append(f"{pad}{r.choice(['c0', 'c1'])} = {self.expr(2, 'u32')}")
            elif k == 4:
                lines.append(f"{pad}{r.choice(['e0', 'e1'])} = {self.expr(2, 'i32')}")
            elif k == 5:
                lines.append(f"{pad}h0 = {self.expr(2, 'u16')}" if r.random() < 0.34 else f"{pad}m{r.randrange(2)} = {self.expr(2, 'u64')}")
            elif k == 6:
                lines.append(f"{pad}table[{r.randrange(8)}] = {self.expr(2)}")
            elif k == 7:
                lines.append(f"{pad}d{r.randrange(2)} = {self.fexpr(3)}")
            elif k == 8:
                lines.append(r.choice([f"{pad}p0 = makep({self.expr(2)})", f"{pad}p0.x = {self.expr(2)}", f"{pad}p0.y = {self.expr(2, 'u8')}", f"{pad}p0.f = {self.fexpr(2)}", f"{pad}p0 = pick[P](p0, makep({self.expr(2)}), {self.cond(1)})", f"{pad}ps[{r.randrange(4)}] = p0", f"{pad}p0 = ps[{r.randrange(4)}]", f"{pad}p0 = P(x = {self.expr(2)}, y = {self.expr(1, 'u8')}, f = {self.fexpr(1)})"]))
            elif k == 9:
                lines.append(r.choice([f"{pad}q0 = makeq({self.expr(2)})", f"{pad}q0.b = {self.expr(2)}", f"{pad}q0.tag = Kind.{r.choice(['small', 'large', 'huge'])}", f"{pad}q0 = pick[Q](q0, makeq({self.expr(2)}), {self.cond(1)})", f"{pad}qs[{r.randrange(3)}] = q0", f"{pad}q0 = qs[{r.randrange(3)}]", f"{pad}q0.c = qs[{r.randrange(3)}].a +% q0.c"]))
            elif k == 10:
                lines.append(r.choice([f"{pad}o0 = {self.expr(2)}", f"{pad}o0 = none", f"{pad}o0 = lookup({self.expr(2)})", f"{pad}a1 = o0 else {self.expr(2)}"]))
            elif k == 11 and depth > 0:
                lines.append(f"{pad}if let ov{self.loops} = o0:")
                self.loops += 1
                self.locals.append((f"ov{self.loops - 1}", "i64"))
                lines += self.statements(depth - 1, indent + 1)
                self.locals.pop()
                if r.random() < 0.5:
                    lines.append(f"{pad}else:")
                    lines += self.statements(depth - 1, indent + 1)
            elif k == 12:
                lines.append(f"{pad}a{r.randrange(3)} = fall({self.expr(2)}) catch failure:")
                lines.append(f"{pad}    recover {self.expr(2)} +% (i64)(failure.code == bad)")
            elif k == 13 and depth > 0:
                lines.append(f"{pad}match q0.tag:")
                for case in ("small", "large", "huge"):
                    if r.random() < 0.7:
                        lines.append(f"{pad}    .{case}:")
                        lines += self.statements(depth - 1, indent + 2)
                lines.append(f"{pad}    _:")
                lines += self.statements(depth - 1, indent + 2)
            elif k == 14:
                lines.append(f"{pad}a{r.randrange(3)} = match ({self.expr(2)} & 15):")
                lines.append(f"{pad}    0 => {self.expr(2)}")
                lines.append(f"{pad}    1..<5 => {self.expr(2)}")
                lines.append(f"{pad}    5..=9 => {self.expr(2)}")
                lines.append(f"{pad}    _ => {self.expr(2)}")
            elif k == 15:
                lines.append(r.choice([f"{pad}box0.w = {self.expr(2)}", f"{pad}tri0.b = {self.expr(2)}", f"{pad}a2 = area_of(&box0) +% area_of(&tri0)", f"{pad}a0 = box0.area()", f"{pad}a1 = tri0.area()"]))
            elif k == 16:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}var ptr{n}: i64* = &table[{r.randrange(8)}]")
                lines.append(r.choice([f"{pad}*ptr{n} = {self.expr(2)}", f"{pad}*ptr{n} += {self.expr(1)} & 255", f"{pad}a0 = *ptr{n} +% a0", f"{pad}*ptr{n} = *ptr{n} *% 3"]))
            elif k == 17:
                word = r.choice(['"abcd"', '"wxyz"', '"hello world"', '"0123456789"'])
                lines.append(r.choice([f"{pad}s0 = {word}", f"{pad}a2 = (i64)s0.bytes[{r.randrange(0, 2)}..<{r.randrange(2, 5)}].length +% a2", f"{pad}a0 = (i64)s0.bytes[(usize)(a1 & 3)] +% (i64)s0.length"]))
            elif k == 18 and depth > 0:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}for k{n} in 0..<{r.randint(1, 6)}:")
                self.locals.append((f"(i64)k{n}", "i64"))
                lines += self.statements(depth - 1, indent + 1)
                self.locals.pop()
            elif k == 19 and depth > 0:
                n = self.loops
                self.loops += 1
                lo, hi = r.randrange(0, 4), r.randrange(4, 9)
                lines.append(f"{pad}for x{n} in table[{lo}..<{hi}]:")
                self.locals.append((f"x{n}", "i64"))
                lines += self.statements(depth - 1, indent + 1)
                self.locals.pop()
            elif k == 20 and depth > 0:
                lines.append(f"{pad}if {self.cond(2)}:")
                lines += self.statements(depth - 1, indent + 1)
                if r.random() < 0.5:
                    lines.append(f"{pad}else:")
                    lines += self.statements(depth - 1, indent + 1)
            elif k == 21 and depth > 0:
                n = r.randint(1, 12)
                self.loops += 1
                name = f"idx{self.loops}"
                lines.append(f"{pad}var {name}: i64 = 0")
                lines.append(f"{pad}while {name} < {n}:")
                self.locals.append((name, "i64"))
                lines += self.statements(depth - 1, indent + 1)
                self.locals.pop()
                lines.append(f"{pad}    {name} += 1")
            elif k == 22:
                n = self.loops
                self.loops += 1
                ty = r.choice(["i64", "u8", "i32", "u64"])
                lines.append(f"{pad}let t{n}: {ty} = {self.expr(2, ty)}")
                self.locals.append((f"t{n}", ty))
            elif k == 24:
                lines.append(r.choice([f"{pad}sh0 = Figure.rect(w = {self.expr(2)}, h = {self.expr(2)})", f"{pad}sh0 = Figure.circle(r = {self.expr(2)})", f"{pad}sh0 = Figure.empty", f"{pad}a{r.randrange(3)} = shape_area(sh0)"]))
            elif k == 25 and depth > 0:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}match sh0:")
                lines.append(f"{pad}    .circle(rad{n}):")
                self.locals.append((f"rad{n}", "i64"))
                lines += self.statements(depth - 1, indent + 2)
                self.locals.pop()
                lines.append(f"{pad}    .rect(wid{n}, hei{n}):")
                self.locals += [(f"wid{n}", "i64"), (f"hei{n}", "i64")]
                lines += self.statements(depth - 1, indent + 2)
                self.locals.pop(); self.locals.pop()
                lines.append(f"{pad}    .empty:")
                lines += self.statements(depth - 1, indent + 2)
            elif k == 26:
                if r.random() < 0.5:
                    lines.append(f"{pad}u0.a = {self.expr(2)}")
                    lines.append(f"{pad}a{r.randrange(3)} = u0.a")
                else:
                    lines.append(f"{pad}u0.b = {self.fexpr(2)}")
                    lines.append(f"{pad}d{r.randrange(2)} = u0.b")
                    lines.append(f"{pad}u0.a = {self.expr(1)}")
            elif k == 27:
                n = self.loops
                self.loops += 1
                lines.append(r.choice([f"{pad}pr0 = Pair[i64](a = {self.expr(2)}, b = {self.expr(2)})", f"{pad}pr0 = swap[i64](pr0)", f"{pad}a2 = pr0.a -% pr0.b", f"{pad}let pf{n} = Pair[f64](a = {self.fexpr(2)}, b = {self.fexpr(2)})\n{pad}d1 = swap[f64](pf{n}).a - pf{n}.b"]))
            elif k == 28:
                lines.append(r.choice([f"{pad}v0 = v0 +% v1", f"{pad}v1 = v0 *% i32[4]({r.randint(-5, 5)})", f"{pad}v0[{r.randrange(4)}] = {self.expr(2, 'i32')}", f"{pad}a0 = (i64)v0.sum() +% (i64)v1.min()", f"{pad}v1 = (v0 & 255)", f"{pad}v0 = v0 +| v1", f"{pad}v1 = v1 -% {r.randint(-5, 5)}", f"{pad}v0 = -%v1", f"{pad}e0 = v0[{r.randrange(4)}] *% v1[{r.randrange(4)}]"]))
            elif k == 29:
                n = self.loops
                self.loops += 1
                one = [name for name, count in self.funcs if count == 1]
                lines.append(r.choice([f"{pad}fp0 = {r.choice(one)}" if one else f"{pad}fp0 = (x) => x *% 3", f"{pad}fp0 = (x) => x {r.choice(['+%', '-%', '^'])} {r.randint(-99, 99)}", f"{pad}fp0 = none", f"{pad}if let fn{n} = fp0:\n{pad}    a{r.randrange(3)} = fn{n}({self.expr(2)})"]))
            elif k == 30:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}let (qu{n}, re{n}) = divmod({self.expr(2)})")
                self.locals += [(f"qu{n}", "i64"), (f"re{n}", "i64")]
            elif k == 31:
                lines.append(r.choice([f"{pad}p0 = P.of({self.expr(2)})", f"{pad}p0.bump({self.expr(2)})", f"{pad}ps[{r.randrange(4)}].bump({self.expr(1)})"]))
            elif k == 32:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}let hp{n} = try new P(x = {self.expr(2)}, y = {self.expr(1, 'u8')}, f = {self.fexpr(1)})")
                lines.append(f"{pad}defer free(hp{n})")
                lines.append(f"{pad}hp{n}.x = hp{n}.x +% {self.expr(1)}")
                self.locals.append((f"hp{n}.x", "i64"))
                self.locals.append((f"hp{n}.y", "u8"))
            elif k == 33:
                n = self.loops
                self.loops += 1
                size = r.choice([4, 8, 16])
                lines.append(f"{pad}let hs{n} = try new i64[{size}]")
                lines.append(f"{pad}defer free(hs{n})")
                lines.append(f"{pad}for fi{n} in 0..<hs{n}.length:")
                self.locals.append((f"(i64)fi{n}", "i64"))
                lines.append(f"{pad}    hs{n}[fi{n}] = {self.expr(2)}")
                self.locals.pop()
                lines.append(f"{pad}a{r.randrange(3)} = sumspan(hs{n})")
                self.locals.append((f"hs{n}[(usize)(a1 & {size - 1})]", "i64"))
            elif k == 34:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}var head{n}: Node*? = none")
                lines.append(f"{pad}for li{n} in 0..<{r.randint(1, 6)}:")
                self.locals.append((f"(i64)li{n}", "i64"))
                lines.append(f"{pad}    head{n} = try new Node(value = {self.expr(2)}, next = head{n})")
                self.locals.pop()
                lines.append(f"{pad}a{r.randrange(3)} = list_sum(head{n})")
                if r.random() < 0.5:
                    lines.append(f"{pad}if let first{n} = head{n}:")
                    lines.append(f"{pad}    first{n}.value = first{n}.value *% 5")
                    lines.append(f"{pad}    a1 = a1 +% list_sum(head{n})")
                lines.append(f"{pad}release(head{n})")
            elif k == 35 and depth > 0:
                n = self.loops
                self.loops += 1
                size = r.choice([4, 8])
                lines.append(f"{pad}var backing{n}: u8[2048]")
                lines.append(f"{pad}var arena{n} = memory.FixedBuffer.over(backing{n})")
                if r.random() < 0.5:
                    lines.append(f"{pad}let ax{n} = try new i64[{size}] in arena{n}")
                    lines.append(f"{pad}for ai{n} in 0..<ax{n}.length:")
                    self.locals.append((f"(i64)ai{n}", "i64"))
                    lines.append(f"{pad}    ax{n}[ai{n}] = {self.expr(2)}")
                    self.locals.pop()
                    lines.append(f"{pad}a{r.randrange(3)} = sumspan(ax{n})")
                    lines.append(f"{pad}free(ax{n}) in arena{n}")
                else:
                    lines.append(f"{pad}with arena{n}:")
                    lines.append(f"{pad}    let ay{n} = try new P(x = {self.expr(2)}, y = {self.expr(1, 'u8')}, f = {self.fexpr(1)})")
                    self.locals.append((f"ay{n}.x", "i64"))
                    saved_arena = self.in_arena
                    self.in_arena = True
                    lines += self.statements(depth - 1, indent + 1)
                    self.in_arena = saved_arena
                    self.locals.pop()
                    lines.append(f"{pad}    a{r.randrange(3)} = ay{n}.x +% (i64)ay{n}.y")
                    lines.append(f"{pad}    free(ay{n})")
            elif k == 36:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}let tree{n} = try build_expr({r.randint(0, 4)}, {self.expr(2)})")
                lines.append(f"{pad}d{r.randrange(2)} = total(tree{n}) * 0.5")
                lines.append(f"{pad}drop(tree{n})")
            elif k == 37:
                n = self.loops
                self.loops += 1
                size = r.choice([2, 4, 8])
                lines.append(f"{pad}let ap{n} = try alloc P[{size}]")
                lines.append(f"{pad}defer free(ap{n})")
                lines.append(f"{pad}for pi{n} in 0..<ap{n}.length:")
                self.locals.append((f"(i64)pi{n}", "i64"))
                lines.append(f"{pad}    ap{n}[pi{n}] = P.of({self.expr(2)})")
                self.locals.pop()
                lines.append(f"{pad}a{r.randrange(3)} = ap{n}[{r.randrange(size)}].x")
                self.locals.append((f"ap{n}[(usize)(a0 & {size - 1})].x", "i64"))
            elif k == 38:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}let raw{n} = try alloc(64, 16)")
                lines.append(f"{pad}defer free(raw{n})")
                lines.append(f"{pad}for ri{n} in 0..<raw{n}.length:")
                lines.append(f"{pad}    raw{n}[ri{n}] = (u8)ri{n}")
                lines.append(f"{pad}raw{n}[{r.randrange(64)}] = {self.expr(1, 'u8')}")
                lines.append(f"{pad}b{r.randrange(2)} = raw{n}[{r.randrange(64)}] +% raw{n}[(usize)(a0 & 63)]")
            elif k == 39:
                lines.append(f"{pad}a{r.randrange(3)} = risky({self.expr(2)}) catch failure:")
                lines.append(f"{pad}    recover 0 -% (i64)(failure.code == bad)")
            elif k == 40:
                n = self.loops
                self.loops += 1
                lines.append(f"{pad}let fa{n} = try new (i64[4])")
                lines.append(f"{pad}defer free(fa{n})")
                lines.append(f"{pad}(*fa{n})[{r.randrange(4)}] = {self.expr(2)}")
                lines.append(f"{pad}a{r.randrange(3)} = (*fa{n})[{r.randrange(4)}] +% (*fa{n})[0]")
                self.locals.append((f"(*fa{n})[(usize)(a2 & 3)]", "i64"))
            elif k == 41 and depth > 0:
                lines.append(f"{pad}with memory.heap:")
                lines += self.statements(depth - 1, indent + 1)
            else:
                lines.append(f"{pad}a{r.randrange(3)} = {self.expr(2)}")
            lines.append(f"{pad}sum = sum *% 31 +% mix()")
        self.locals = saved_locals
        return lines

    def program(self):
        r = self.rng
        text = ["## generated by tools/fuzz.py", "import memory", "", "let bad = ErrorCode.package(1)", "",
                "enum Kind as u8:", "    small = 0", "    large = 1", "    huge = 2", "",
                "struct P:", "    var x: i64", "    var y: u8", "    var f: f64", "",
                "    static func of(x: i64) -> P:", "        return P(x = x, y = (u8)x, f = 0.25)", "",
                "    mutating func bump(d: i64):", "        self.x = self.x +% d", "",
                "struct Node:", "    var value: i64", "    var next: Node*?", "",
                "enum Expr:", "    number(value: f64)", "    sum(left: Expr*, right: Expr*)", "",
                "enum Figure:", "    empty", "    circle(r: i64)", "    rect(w: i64, h: i64)", "",
                "union U:", "    a: i64", "    b: f64", "",
                "struct Pair[T]:", "    var a: T", "    var b: T", "",
                "struct Q:", "    var a: i64", "    var b: i64", "    var c: i64", "    var tag: Kind", "",
                "interface Shape:", "    func area() -> i64", "",
                "struct Box: Shape:", "    var w: i64", "    var h: i64", "", "    func area() -> i64:", "        return self.w *% self.h", "",
                "struct Tri: Shape:", "    var b: i64", "    var h: i64", "", "    func area() -> i64:", "        return (self.b *% self.h) // 2", "",
                "var table: i64[8]", "var ps: P[4]", "var qs: Q[3]", "var sum: i64", "var a0: i64", "var a1: i64", "var a2: i64",
                "var b0: u8", "var b1: u8", "var c0: u32", "var c1: u32", "var e0: i32", "var e1: i32", "var h0: u16", "var m0: u64", "var m1: u64",
                "var d0: f64", "var d1: f64", "var p0: P", "var q0: Q", "var o0: i64?", "var s0: str", "var box0: Box", "var tri0: Tri",
                "var sh0: Figure", "var u0: U", "var pr0: Pair[i64]", "var v0: i32[4]", "var v1: i32[4]", "var fp0: (func(i64) -> i64)?", "",
                "func swap[T](p: Pair[T]) -> Pair[T]:", "    return Pair[T](a = p.b, b = p.a)", "",
                "func list_sum(head: Node*?) -> i64:", "    var tally: i64 = 0", "    var cursor = head", "    while let n = cursor:", "        tally = tally *% 7 +% n.value", "        cursor = n.next", "    return tally", "",
                "func release(head: Node*?):", "    var cursor = head", "    while let n = cursor:", "        let next = n.next", "        free(n)", "        cursor = next", "",
                "func drop(e: Expr*):", "    match *e:", "        .number(value):", "            discard(value)", "        .sum(left, right):", "            drop(left)", "            drop(right)", "    free(e)", "",
                "func build_expr(depth: i64, x: i64) -> Expr*!:", "    if depth <= 0:", "        return try new Expr.number(value = f64(x & 255) * 0.5)", "    let l = try build_expr(depth - 1, x *% 3)", "    errdefer drop(l)", "    let r = try build_expr(depth - 1, x +% 1)", "    return try new Expr.sum(left = l, right = r)", "",
                "func total(e: const Expr*) -> f64:", "    match *e:", "        .number(value):", "            return value", "        .sum(left, right):", "            return total(left) + total(right)", "",
                "func risky(x: i64) -> i64!:", "    let n = try new Node(value = x, next = none)", "    errdefer free(n)", "    if (x & 5) == 5:", "        error(bad, \"five\")", "    let v = n.value *% 3", "    free(n)", "    return v", "",
                "func shape_area(s: Figure) -> i64:", "    match s:", "        .empty:", "            return 0", "        .circle(r):", "            return r *% r *% 3", "        .rect(w, h):", "            return w *% h", "",
                "func divmod(x: i64) -> (i64, i64):", "    let d = (x & 1023) // 7", "    return (d, (x & 1023) % 7)", "",
                "func pick[T](a: T, b: T, first: bool) -> T:", "    return a if first else b", "",
                "func area_of[S: Shape](s: S*) -> i64:", "    return s.area()", "",
                "func apply(f: func(i64) -> i64, x: i64) -> i64:", "    return f(x)", "",
                "func makep(x: i64) -> P:", "    return P(x = x *% 7, y = (u8)x, f = f64(x & 255) * 0.5)", "",
                "func makeq(x: i64) -> Q:", "    return Q(a = x, b = x *% 3, c = x ^ 255, tag = Kind.large if x > 0 else Kind.small)", "",
                "func sumspan(v: const i64[]) -> i64:", "    var tally: i64 = 0", "    for x in v:", "        tally = tally *% 3 +% x", "    return tally", "",
                "func lookup(x: i64) -> i64?:", "    if (x & 3) == 0:", "        return none", "    return x *% 5", "",
                "func fall(x: i64) -> i64!:", "    if (x & 7) == 3:", "        error(bad, \"three\")", "    return x +% 11", "",
                "func fall2(x: i64) -> i64!:", "    let v = try fall(x)", "    return v *% 2", "",
                "func safe(x: i64) -> i64:", "    return fall2(x) catch failure:", "        recover 0 -% x", "",
                "func bump():", "    table[7] = table[7] +% 1", "",
                "func deferred(x: i64) -> i64:", "    defer bump()", "    return x +% table[7]", "",
                "func mix() -> i64:", "    var acc: i64 = a0 +% a1 +% a2 +% (i64)b0 +% (i64)b1 +% (i64)c0 +% (i64)c1 +% (i64)e0 +% (i64)e1 +% (i64)h0 +% (i64)m0 +% (i64)m1",
                "    acc = acc *% 31 +% p0.x +% (i64)p0.y +% ((i64)(p0.f * 4.0) & 65535) +% q0.a +% q0.b +% q0.c +% (i64)q0.tag",
                "    acc = acc *% 31 +% ((i64)(d0 * 8.0) & 65535) +% ((i64)(d1 * 8.0) & 65535) +% (o0 else -1) +% (i64)s0.length +% box0.w +% tri0.b",
                "    acc = acc *% 31 +% shape_area(sh0) +% pr0.a +% pr0.b +% (i64)v0.sum() +% (i64)v1.max() +% (i64)v0.min()",
                "    return acc *% 31 +% sumspan(table) +% deferred(acc)", ""]
        for k in range(r.randint(0, 3)):
            n = r.randint(1, 3)
            params = ", ".join(f"n{i}: i64" for i in range(n))
            self.locals = [(f"n{i}", "i64") for i in range(n)]
            body = self.expr(3)
            self.locals = []
            text.append(f"func g{k}({params}) -> i64:")
            text.append(f"    return {body}")
            text.append("")
            self.funcs.append((f"g{k}", n))
        text.append("pub func main(arguments: str[]) -> i32!:")
        for i in range(8):
            text.append(f"    table[{i}] = {r.randint(-100, 100)}")
        text.append(f"    v0 = i32[4]({r.randint(-9, 9)})")
        text.append(f"    v1 = [{r.randint(-9, 9)}, {r.randint(-9, 9)}, {r.randint(-9, 9)}, {r.randint(-9, 9)}]")
        text.append(f"    pr0 = Pair[i64](a = {r.randint(-9, 9)}, b = {r.randint(-9, 9)})")
        text.append(f"    a0 = {r.randint(-50, 50)}")
        text.append(f"    a1 = {r.randint(-50, 50)}")
        text.append(f"    a2 = {r.randint(-50, 50)}")
        text.append(f"    b0 = {r.randint(0, 255)}")
        text.append(f"    c0 = {r.randint(0, 100000)}")
        text.append(f"    e0 = {r.randint(-1000, 1000)}")
        text.append(f"    d0 = {r.choice([1.5, -2.25, 0.0, 100.0])}")
        text.append(f"    d1 = {r.choice([0.5, 3.0, -7.75])}")
        text.append("    p0 = makep(a0)")
        text.append("    q0 = makeq(a1)")
        text.append("    s0 = \"abcd\"")
        text.append(f"    box0 = Box(w = {r.randint(1, 20)}, h = {r.randint(1, 20)})")
        text.append(f"    tri0 = Tri(b = {r.randint(1, 20)}, h = {r.randint(1, 20)})")
        text.append("    for i in 0..<4:")
        text.append("        ps[i] = makep((i64)i)")
        text.append("    for j in 0..<3:")
        text.append("        qs[j] = makeq((i64)j -% 1)")
        self.locals = []
        text += self.statements(3, 1)
        text.append('    print(f"{sum} {a0} {a1} {a2} {b0} {b1} {c0} {c1} {e0} {e1} {h0} {m0} {m1} {d0} {d1} {p0.x} {p0.y} {p0.f} {q0.a} {q0.b} {q0.c} {(i64)q0.tag} {o0 else -1} {s0} {box0.area()} {tri0.area()} {table[3]} {table[7]} {shape_area(sh0)} {pr0.a} {v0[1]} {v1.sum()} {u0.a}")')
        text.append("    return 0")
        return "\n".join(text) + "\n"


def differential(text, timeout, findings, label):
    path = out / "generated.lucb"
    path.write_text(text)
    exe = out / "generated"
    outputs = {}
    for name, flags in (("native", []), ("c", ["--backend=c"]), ("release", ["--backend=c", "--release"])):
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
        if deadline and round_ > 1:
            # a long run says where it is, through a pipe or a file as well as a terminal
            left = max(0, int(deadline - time.time()))
            print(f"fuzz: round {round_}, {done_m} mutations, {done_p} programs, {findings.count} findings, {left // 60} min left", flush=True)
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
    print(f"fuzz: {done_m} mutations, {done_p} generated programs, {findings.count} findings (seed {seed})", flush=True)
    return min(findings.count, 100)


if __name__ == "__main__":
    sys.exit(main())
