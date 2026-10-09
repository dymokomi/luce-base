"""ABI-shape programs for tools/fuzz.py: calls that the calling conventions find hard.

A program declares a few structs of the sizes where conventions change their minds (1-24
bytes, 32, 64, 127-129 and 256), mixing integers of every width, `f32` and `f64`, nested
structs, fixed arrays and pointer fields, and functions of 1-14 parameters that take them by
value and by pointer beside scalars of each width, returning a scalar, a small or medium
struct, or one in memory. Every function is `noinline`; some recurse into themselves or into
a partner under a `depth` count, some are fallible and `try` or `catch` their callees, some
`defer` a step, and some calls go through function values. Arguments come mostly from the
caller's own parameters, their fields and their elements, so values that arrived in argument
registers are staged into the next call's; and an earlier argument is often computed from a
later one, so a register is live while the arguments before it are copied.

Each function folds everything it received into a checksum, and `main` prints the checksum of
every call's result, so a value passed or returned wrongly changes the output. Nothing traps:
every value is wrapping arithmetic over a seed, every float is a small multiple of a quarter,
every recursion ends, and the call tree is bounded.

`abi_program(rng)` is the whole program; tools/fuzz.py runs it like its generated programs.
"""

SCALARS = {"i8": 1, "i16": 2, "i32": 4, "i64": 8, "u8": 1, "u16": 2, "u32": 4, "u64": 8, "f32": 4, "f64": 8}
INTEGERS = [t for t in SCALARS if t[0] in "iu"]
# where the conventions change their minds: registers, pairs, eight bytes, sixteen, the
# inline-copy limits (128 on Windows x64), and plainly in memory
SIZES = list(range(1, 25)) + [32, 64, 127, 128, 129, 256]
MIX = 1099511628211   # every fold multiplies by this and adds the next value


def align_up(n, a):
    return (n + a - 1) // a * a


class Struct:
    def __init__(self, name):
        self.name = name
        self.fields = []   # (name, kind, element type, count): kind is scalar, array, nested, nested_array, pointer
        self.size = 0
        self.align = 1

    def place(self, size, align):
        self.size = align_up(self.size, align) + size
        self.align = max(self.align, align)

    def finish(self):
        self.size = align_up(self.size, self.align)


class AbiGen:
    def __init__(self, rng):
        self.rng = rng
        self.structs = []
        self.funcs = []     # dicts: name, params [(name, type)], result, fallible, defer, depth, calls

    # -- types ------------------------------------------------------------------------

    def make_struct(self, target):
        r = self.rng
        s = Struct(f"S{len(self.structs)}")
        # an odd size is only reachable with bytes: such a struct keeps an alignment of 1
        bytes_only = target % 2 == 1 or r.random() < 0.2
        while s.size < target:
            room = target - s.size
            k = r.randrange(10)
            fname = f"f{len(s.fields)}"
            small = [t for t in self.structs if t.size <= room and (t.align == 1 or not bytes_only)]
            if k < 4:
                choices = [t for t, n in SCALARS.items() if n <= room and (n == 1 or not bytes_only)
                           and align_up(s.size, n) + n <= target]
                ty = r.choice(choices) if choices else "u8"
                s.fields.append((fname, "scalar", ty, 1))
                s.place(SCALARS[ty], SCALARS[ty])
            elif k < 6:
                choices = [t for t, n in SCALARS.items() if 2 * n <= room and (n == 1 or not bytes_only)
                           and align_up(s.size, n) + 2 * n <= target]
                ty = r.choice(choices) if choices else "u8"
                n = SCALARS[ty]
                count = max(1, min(r.randint(2, 40), (target - align_up(s.size, n)) // n))
                s.fields.append((fname, "array", ty, count))
                s.place(n * count, n)
            elif k < 8 and small:
                t = r.choice(small)
                if align_up(s.size, t.align) + t.size > target:
                    continue
                if r.random() < 0.3 and 2 * t.size <= target - align_up(s.size, t.align):
                    count = r.randint(2, max(2, min(4, (target - align_up(s.size, t.align)) // t.size)))
                    s.fields.append((fname, "nested_array", t.name, count))
                    s.place(t.size * count, t.align)
                else:
                    s.fields.append((fname, "nested", t.name, 1))
                    s.place(t.size, t.align)
            elif k == 8 and not bytes_only and align_up(s.size, 8) + 8 <= target:
                s.fields.append((fname, "pointer", "u64", 1))
                s.place(8, 8)
            elif room <= 8 or r.random() < 0.5:
                s.fields.append((fname, "scalar", "u8" if r.random() < 0.5 else "i8", 1))
                s.place(1, 1)
        s.finish()
        self.structs.append(s)
        return s

    def struct(self, name):
        return next(s for s in self.structs if s.name == name)

    # -- values and checksums ---------------------------------------------------------

    def scalar_from(self, ty, seed):
        """A value of `ty` from the u64 expression `seed`, the same on every backend."""
        shift = self.rng.randrange(0, 40)
        if ty == "f64":
            return f"((f64)(i64)(({seed} >> {shift}) & 4095) * 0.25 - 512.0)"
        if ty == "f32":
            return f"f32((f64)(i64)(({seed} >> {shift}) & 4095) * 0.25 - 512.0)"
        return f"({ty})({seed} >> {shift})"

    @staticmethod
    def fold(ty, value):
        """A u64 for the value `value` of type `ty` (an expression it may evaluate once)."""
        if ty == "f64":
            return f"{value}.bits()"
        if ty == "f32":
            return f"(u64){value}.bits()"
        if ty.startswith("i"):
            return f"(u64)(i64){value}"
        if ty in SCALARS:
            return f"(u64){value}"
        if ty == "u64*":
            return f"*{value}"
        if ty.startswith("const "):
            return f"ck_{ty[6:-1]}({value})"
        return f"ck_{ty}(&{value})"

    def struct_functions(self, s):
        r = self.rng
        mk = [f"noinline func mk_{s.name}(seed: u64) -> {s.name}:", "    var s = seed", f"    var v: {s.name} = ---"]
        ck = [f"noinline func ck_{s.name}(v: const {s.name}*) -> u64:", f"    var h: u64 = {r.randrange(1, 1 << 32)}"]
        step = f"    s = s *% 6364136223846793005 +% {r.randrange(1, 1 << 40) | 1}"
        for fname, kind, ty, count in s.fields:
            if kind == "scalar":
                mk.append(f"    v.{fname} = {self.scalar_from(ty, 's')}")
                ck.append(f"    h = h *% {MIX} +% {self.fold(ty, 'v.' + fname)}")
            elif kind == "array":
                mk.append(f"    for i in 0..<{count}:")
                mk.append(f"        v.{fname}[i] = {self.scalar_from(ty, '(s +% (u64)i *% 977)')}")
                ck.append(f"    for i in 0..<{count}:")
                ck.append(f"        h = h *% {MIX} +% {self.fold(ty, f'v.{fname}[i]')}")
            elif kind == "nested":
                mk.append(f"    v.{fname} = mk_{ty}(s)")
                ck.append(f"    h = h *% {MIX} +% ck_{ty}(&v.{fname})")
            elif kind == "nested_array":
                mk.append(f"    for i in 0..<{count}:")
                mk.append(f"        v.{fname}[i] = mk_{ty}(s +% (u64)i)")
                ck.append(f"    for i in 0..<{count}:")
                ck.append(f"        h = h *% {MIX} +% ck_{ty}(&v.{fname}[i])")
            else:
                mk.append(f"    v.{fname} = &words[(usize)(s & 7)]")
                ck.append(f"    h = h *% {MIX} +% *v.{fname}")
            mk.append(step)
        mk.append("    return v")
        ck.append("    return h")
        return mk + [""] + ck + [""]

    # -- functions --------------------------------------------------------------------

    def param_type(self):
        r = self.rng
        k = r.random()
        if k < 0.45:
            return r.choice(list(SCALARS))
        if k < 0.75:
            return r.choice(self.structs).name
        if k < 0.95:
            return f"const {r.choice(self.structs).name}*"
        return "u64*"

    def result_type(self):
        r = self.rng
        k = r.random()
        if k < 0.25:
            return "u64"
        if k < 0.45:
            return r.choice(list(SCALARS))
        return r.choice(self.structs).name

    def plan_functions(self):
        r = self.rng
        n = r.randint(4, 9)
        for k in range(n):
            count = r.choice([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 6, 8, 10])
            params = [(f"p{i}", self.param_type()) for i in range(count)]
            depth = r.random() < 0.35
            if depth:
                params.insert(0, ("depth", "u32"))
            self.funcs.append({"name": f"F{k}", "params": params, "result": self.result_type(),
                               "fallible": r.random() < 0.35, "defer": r.random() < 0.3,
                               "depth": depth, "calls": []})
        for k, f in enumerate(self.funcs):
            later = list(range(k + 1, n))
            for _ in range(r.randint(0, 2)):
                if later:
                    f["calls"].append((r.choice(later), False))
            if f["depth"]:
                partners = [j for j, g in enumerate(self.funcs) if g["depth"]]
                f["calls"].append((r.choice(partners), True))   # itself, or a partner: mutual recursion
        # bound the call tree: every call runs, recursion to the depth passed
        while self.cost() > 3000:
            heavy = [f for f in self.funcs if f["calls"]]
            r.choice(heavy)["calls"].pop()

    def cost(self):
        memo = {}

        def calls(k, d):
            if (k, d) in memo:
                return memo[(k, d)]
            memo[(k, d)] = 10 ** 9   # a cycle without depth: never, but stays bounded
            total = 1
            for j, recursive in self.funcs[k]["calls"]:
                if recursive:
                    if d > 0:
                        total += calls(j, d - 1)
                else:
                    total += calls(j, 2)
            memo[(k, d)] = total
            return total
        return sum(calls(k, 3) for k in range(len(self.funcs))) * 3

    def signature(self, f):
        params = ", ".join(f"{name}: {ty}" for name, ty in f["params"])
        return f"noinline func {f['name']}({params}) -> {f['result']}{'!' if f['fallible'] else ''}:"

    def func_type(self, f):
        return f"func({', '.join(ty for _, ty in f['params'])}) -> {f['result']}{'!' if f['fallible'] else ''}"

    def arguments(self, f, scope, depth_value):
        """Argument expressions for a call to `f` from a scope of (expression, type) values:
        mostly the scope's own values, their fields and elements, or values made on the spot;
        an earlier argument is often computed from a later one."""
        r = self.rng
        args = []
        for name, ty in f["params"]:
            if name == "depth":
                args.append(depth_value)
                continue
            args.append(self.value(ty, scope))
        # an earlier scalar argument from a later one, so the later one's register is live
        # while the arguments before it are staged
        for i in range(len(args)):
            later = [j for j in range(i + 1, len(args)) if f["params"][j][1] in SCALARS and f["params"][j][0] != "depth"]
            ty = f["params"][i][1]
            if ty in SCALARS and f["params"][i][0] != "depth" and later and r.random() < 0.4:
                j = r.choice(later)
                args[i] = self.scalar_from(ty, f"({self.fold(f['params'][j][1], args[j])} *% 3 +% {r.randrange(100)})")
        return args

    def value(self, ty, scope):
        """An expression of type `ty` from the scope's values."""
        r = self.rng
        same = [e for e, t in scope if t == ty]
        if same and r.random() < 0.6:
            return r.choice(same)
        if ty in SCALARS:
            # a field or an element of an aggregate in scope, or a value made from one
            parts = self.parts(scope, lambda kind, t: kind in ("scalar", "array") and t == ty)
            if parts and r.random() < 0.5:
                return r.choice(parts)
            ints = [(e, t) for e, t in scope if t in INTEGERS]
            seed = self.fold(*reversed(r.choice(ints))) if ints and r.random() < 0.7 else f"opaque({r.randrange(1 << 48)})"
            return self.scalar_from(ty, seed)
        if ty == "u64*":
            return f"&words[{r.randrange(8)}]"
        if ty.startswith("const "):
            name = ty[6:-1]
            parts = self.parts(scope, lambda kind, t: kind in ("nested", "nested_array") and t == name)
            if parts and r.random() < 0.5:
                return "&" + r.choice(parts)
            return f"&g_{name}"
        parts = self.parts(scope, lambda kind, t: kind in ("nested", "nested_array") and t == ty)
        if parts and r.random() < 0.6:
            return r.choice(parts)
        if r.random() < 0.6:
            return f"g_{ty}"
        return f"mk_{ty}({r.randrange(1 << 40)})"

    def parts(self, scope, wanted):
        """Fields and elements of the scope's aggregates (by value or through a pointer)."""
        found = []
        for e, t in scope:
            name = t[6:-1] if t.startswith("const ") else t
            if not name.startswith("S"):
                continue
            for fname, kind, ty, count in self.struct(name).fields:
                if wanted(kind, ty):
                    found.append(f"{e}.{fname}[{self.rng.randrange(count)}]" if kind in ("array", "nested_array") else f"{e}.{fname}")
        return found

    def call(self, lines, pad, caller_fallible, j, scope, depth_value, n):
        """A call to function j whose result folds into `h`, through a function value at times,
        with `try` in a fallible caller or `catch` and `recover` in another."""
        r = self.rng
        f = self.funcs[j]
        args = self.arguments(f, scope, depth_value)
        target = f["name"]
        if r.random() < 0.25:
            lines.append(f"{pad}let fv{n}: {self.func_type(f)} = {target}")
            target = f"fv{n}"
        call = f"{target}({', '.join(args)})"
        if f["fallible"]:
            if caller_fallible and r.random() < 0.6:
                lines.append(f"{pad}var r{n} = try {call}")
            else:
                lines.append(f"{pad}var r{n} = {call} catch failure:")
                lines.append(f"{pad}    recover {self.default(f['result'])}")
        else:
            lines.append(f"{pad}var r{n} = {call}")
        lines.append(f"{pad}h = h *% {MIX} +% {self.fold(f['result'], f'r{n}')}")

    def default(self, ty):
        if ty in ("f32", "f64"):
            return "0.5"
        if ty in SCALARS:
            return "7"
        return f"mk_{ty}(7)"

    def result(self, ty):
        if ty == "u64":
            return "h"
        if ty in SCALARS:
            return self.scalar_from(ty, "h")
        return f"mk_{ty}(h)"

    def function(self, k):
        r = self.rng
        f = self.funcs[k]
        lines = [self.signature(f)]
        if f["defer"]:
            lines.append(f"    defer trail = trail *% 7 +% {k + 1}")
        lines.append(f"    var h: u64 = {r.randrange(1, 1 << 32)}")
        for name, ty in f["params"]:
            lines.append(f"    h = h *% {MIX} +% {self.fold(ty, name)}")
        scope = list(f["params"]) + [("h", "u64")]
        for n, (j, recursive) in enumerate(f["calls"]):
            if recursive:
                lines.append("    if depth > 0:")
                self.call(lines, "        ", f["fallible"], j, scope, "depth - 1", n)
            else:
                depth_value = r.choice(["0", "1", "2", "(u32)(h & 1)"])
                self.call(lines, "    ", f["fallible"], j, scope, depth_value, n)
        if f["fallible"]:
            lines.append(f"    if (h & 15) == {r.randrange(16)}:")
            lines.append(f"        error(bad, \"{f['name']}\")")
        lines.append(f"    return {self.result(f['result'])}")
        return lines + [""]

    def program(self):
        r = self.rng
        targets = r.sample(SIZES, r.randint(3, 7))
        if not any(t >= 127 for t in targets) and r.random() < 0.7:
            targets.append(r.choice([127, 128, 129, 256]))
        for t in sorted(targets):
            self.make_struct(t)
        self.plan_functions()
        text = ["## generated by tools/fuzz.py (abi_program)", "let bad = ErrorCode.package(1)",
                "var trail: u64 = 0", "var words: u64[8]", ""]
        text += [f"var g_{s.name}: {s.name} = ---" for s in self.structs] + [""]
        for s in self.structs:
            text.append(f"struct {s.name}:")
            for fname, kind, ty, count in s.fields:
                text.append(f"    var {fname}: " + {"scalar": ty, "array": f"{ty}[{count}]", "nested": ty,
                                                    "nested_array": f"{ty}[{count}]", "pointer": "u64*"}[kind])
            text.append("")
        text += ["noinline func opaque(x: u64) -> u64:", "    return x", ""]
        for s in self.structs:
            text += self.struct_functions(s)
        for k in reversed(range(len(self.funcs))):
            text += self.function(k)
        text.append("pub func main(arguments: str[]) -> i32!:")
        text.append("    for i in 0..<8:")
        text.append(f"        words[i] = opaque({r.randrange(1 << 48)}) *% (u64)(i + 1)")
        for s in self.structs:
            text.append(f"    g_{s.name} = mk_{s.name}(opaque({r.randrange(1 << 48)}))")
        text.append(f"    var h: u64 = opaque({r.randrange(1 << 32)})")
        scope = [("h", "u64")]
        for s in r.sample(self.structs, min(3, len(self.structs))):
            text.append(f"    var l_{s.name} = mk_{s.name}(h +% {r.randrange(1 << 20)})")
            scope.append((f"l_{s.name}", s.name))
            scope.append((f"(&l_{s.name})", f"const {s.name}*"))
        for ty in r.sample(list(SCALARS), 4):
            text.append(f"    let x_{ty} = {self.scalar_from(ty, 'opaque(h)')}")
            scope.append((f"x_{ty}", ty))
        for n in range(r.randint(4, 12)):
            j = r.randrange(len(self.funcs))
            self.call(text, "    ", False, j, scope, str(r.randint(0, 3)), n)
            text.append('    print(f"{h}")')
        text.append('    print(f"{h} {trail}")')
        text.append("    return 0")
        return "\n".join(text) + "\n"


def abi_program(rng):
    return AbiGen(rng).program()
