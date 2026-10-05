#!/usr/bin/env python3
"""Rewrite Luce Base sources for the lean names of luce-base 0.36 (base.md §3.5, §3.6).

The core names `discard`, `format`, `hash`, `sizeof`, `alignof`, `offsetof`, `hex`, `bin` and
`pad` and the keywords `alloc` and `mutating` left the language. A source is rewritten
mechanically, in code only (never in a string's text, a comment or an `asm` suite):

    discard(x)              _ = x                      (a statement; a `catch` after it stays,
                                                         and a handler's last `recover ()` goes)
    format(b, f"...")       strings.format(b, f"...")  and `import strings`
    sizeof(T)               memory.size_of(T)          and `import memory`; likewise
    alignof(T)              memory.align_of(T)         `offsetof(T, f)`, memory.offset_of(T, f)
    hash(x)                 x.hash()                   ((x).hash() when x is not one operand)
    {hex(n)} {bin(n)}       {n:x} {n:b}                in a formatted string's field
    {pad(v, 8)}             {v:>8}                     (a literal width; {pad(hex(n), 8)} is {n:>8x})
    alloc T[n]              new T[n] ---               (the elements stay unwritten, as before)
    alloc(size, align)      memory.allocate(size, align)
    mutating func           func                       (whether it changes `self` is inferred)

A module that already binds `strings` or `memory` to something else (a local, a parameter, an
import of another module by that name) imports the functions by name instead, `from memory
import size_of`, and keeps the bare call, `size_of(T)`. The import goes after the module's
last import, or before its first declaration. A directory module's imports serve all its
fragments (§16.3), so a fragment gets none that another already has.

In Markdown, the ```luce blocks are rewritten; a block that declares `func main(` gets its
imports too. Whatever cannot be rewritten mechanically (a `discard(...)` inside a larger
expression, `hex(...)` outside a formatted string's field, `alloc(...) in allocator`) is
reported with its line, and the file is left for a person to finish there.

`static func` stays: it is how a function of a type is declared (luce-base 0.37, §9.5).

`--restore-static` instead brings back the `static` that this script stripped in luce-base
0.36, which inferred a function of a type from its body: `static ` goes before every `func`
declared in a type (a struct, enum or union, or an `extend`) whose body never reads `self`,
that is not `init` and that does not implement a requirement of an interface the type
declares; a `linked` one whose parameters name no `self` receiver gets it too. Those are
exactly the functions luce-base 0.36 made functions of the type. That includes a method
luce-base 0.35 never declared `static` and whose body simply does not read `self`: the
script cannot tell the two apart, and marks both. Such a method that is called on values,
`value.method()`, public ones above all, whose callers are in other packages, stays a
method: take its `static` back off where the checker says the call needs the type.

An interface's requirements are read from the PATHs, from luce-base's standard modules beside
this script, and from each `--interfaces DIR` (a dependency's sources); a generic type's
conformance, `struct PtrTraits[T]: Traits[T*]`, counts as any other. A function of a type
that declares an interface none of those define is reported, not changed.

Usage: tools/migrate_lean_base.py [--check] [--restore-static [--interfaces DIR]...] PATH...
Each PATH is a `.lucb` or `.md` file or a directory searched for both. `--check` changes
nothing and exits 1 when a file would change. Running it again changes nothing more.
"""
from pathlib import Path
import re
import sys

# the old core call, the module that has it now, and its name there
MOVED = {
    "format": ("strings", "format"),
    "sizeof": ("memory", "size_of"),
    "alignof": ("memory", "align_of"),
    "offsetof": ("memory", "offset_of"),
}
WORD = re.compile(r"[A-Za-z_][A-Za-z0-9_]*")
FENCE = re.compile(r"^```(\w*)\s*$")
IMPORT = re.compile(r"^(import|from)\s")
ASM = re.compile(r"^(\s*)(pub\s+)?asm\b.*:\s*(#.*)?$")
# what opens a suite on the line it is on: a compound statement, a handler, or a match arm
SUITE_HEAD = re.compile(r"^((pub\s+)?(for|if|elif|else|while|with|func|test|defer|errdefer)\b.*|.*\bcatch(\s+\w+)?|(\.?\w+(\(.*\))?|_|\"[^\"]*\"|-?\d+)(\s+if\s.*)?|\w+:\s*(while|for)\b.*):$")


# mark: Reading code ===========================================================================

def code_mask(src):
    """For each character of `src`, whether it is code: not a comment, not a string's or a
    character's text, not an `asm` suite. The fields of a formatted string are code, and
    their strings are strings."""
    mask = [True] * len(src)
    n = len(src)

    def string(i, formatted):
        """Mark the string starting at its quote `i`; the index after it."""
        triple = src.startswith('"""', i)
        quote = '"""' if triple else '"'
        raw = i > 0 and src[i - 1] in "rR"
        j = i + len(quote)
        while j < n:
            if src.startswith(quote, j):
                for k in range(i, j + len(quote)):
                    mask[k] = False
                return j + len(quote)
            if src[j] == "\\" and not raw:
                j += 2
                continue
            if src[j] == "\n" and not triple:
                break
            if formatted and src[j] == "{":
                if src.startswith("{{", j):
                    j += 2
                    continue
                # a field: code up to its `}`, its own strings plain
                for k in range(i, j + 1):
                    mask[k] = False
                j += 1
                while j < n and src[j] != "}" and src[j] != "\n":
                    if src[j] == '"':
                        j = string(j, False)
                        continue
                    j += 1
                i = j
                continue
            j += 1
        for k in range(i, min(j, n)):
            mask[k] = False
        return j

    i = 0
    line_start = True
    asm_indent = -1
    while i < n:
        if line_start:
            line_start = False
            end = src.find("\n", i)
            end = n if end < 0 else end
            line = src[i:end]
            indent = len(line) - len(line.lstrip(" "))
            if asm_indent >= 0:
                if line.strip() and indent <= asm_indent:
                    asm_indent = -1
                else:
                    for k in range(i, end):
                        mask[k] = False
                    i = end
                    continue
            m = ASM.match(line)
            if m:
                asm_indent = len(m.group(1))
        c = src[i]
        if c == "\n":
            line_start = True
            i += 1
            continue
        if c == "#":
            while i < n and src[i] != "\n":
                mask[i] = False
                i += 1
            continue
        if c == '"':
            prefix = src[max(0, i - 2):i]
            formatted = prefix.endswith("f") or prefix.endswith("F")
            i = string(i, formatted)
            continue
        if c == "'":
            # a character literal: '\'' or 'x' or '\u{...}'
            j = i + 1
            while j < n and src[j] != "'" and src[j] != "\n":
                j += 2 if src[j] == "\\" else 1
            for k in range(i, min(j + 1, n)):
                mask[k] = False
            i = j + 1
            continue
        i += 1
    return mask


def closing(src, mask, open_at):
    """The index of the `)` that closes the `(` at `open_at`, counting code brackets only."""
    depth = 0
    for i in range(open_at, len(src)):
        if not mask[i]:
            continue
        if src[i] in "([{":
            depth += 1
        elif src[i] in ")]}":
            depth -= 1
            if depth == 0:
                return i
    return -1


def calls(src, mask, name):
    """The code positions of `name(` as a call of the bare name: not a member, not declared."""
    for m in re.finditer(r"\b%s\(" % name, src):
        at = m.start()
        if not mask[at]:
            continue
        before = src[:at].rstrip(" ")
        if before.endswith(".") or before.endswith("func"):
            continue
        yield at


def fields(src, mask):
    """Each formatted string's field as (open, close): the indexes of its `{` and `}`."""
    for m in re.finditer(r"[fF]\"", src):
        start = m.start() + 1
        if mask[m.start()] is False or (m.start() > 0 and (src[m.start() - 1].isalnum() or src[m.start() - 1] == "_")):
            continue
        j = start + 1
        while j < len(src) and src[j] != '"' and src[j] != "\n":
            if src[j] == "\\":
                j += 2
                continue
            if src[j] == "{":
                if src.startswith("{{", j):
                    j += 2
                    continue
                k = j + 1
                while k < len(src) and src[k] != "}" and src[k] != "\n":
                    if src[k] == '"':
                        k = src.find('"', k + 1)
                        if k < 0:
                            return
                    k += 1
                yield (j, k)
                j = k + 1
                continue
            j += 1


def one_operand(text):
    """Whether `text` is one postfix operand, so `.hash()` may follow it bare."""
    text = text.strip()
    mask = code_mask(text)
    if text.startswith("("):
        return closing(text, mask, 0) == len(text) - 1
    if not text or text[0] in "-+*&" or text.startswith("not ") or text.startswith("try "):
        return False
    depth = 0
    for i, c in enumerate(text):
        if not mask[i]:
            continue
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
        elif depth == 0 and not (c.isalnum() or c in "_.\"'"):
            return False
    return True


# mark: Rewriting ==============================================================================

class Rewrite:
    """One source's text being rewritten, the modules its calls now need, and what could not
    be rewritten."""

    def __init__(self, src, path, first_line=1, siblings=(), module=""):
        self.src = src
        # the module this source is, by name: its own functions are called bare inside it
        self.module = module
        # the paths of the other fragments of a directory module (§16.1), which share its
        # imports
        self.siblings = siblings
        self.path = path
        self.first_line = first_line
        self.needs = {}
        self.problems = []

    def line_of(self, at):
        return self.first_line + self.src.count("\n", 0, at)

    def problem(self, at, what):
        self.problems.append(f"{self.path}:{self.line_of(at)}: {what}")

    def run(self):
        # decided before anything is rewritten: whether a module's name is free here
        self.taken = self.bound_names()
        self.keywords()
        self.allocations()
        self.discards()
        self.hashes()
        self.format_fields()
        for old in MOVED:
            self.moved(old)
        return self

    def keywords(self):
        """`mutating func` is `func`."""
        mask = code_mask(self.src)
        out = []
        last = 0
        for m in re.finditer(r"\bmutating\s+(?=func\b)", self.src):
            if not mask[m.start()]:
                continue
            out.append(self.src[last:m.start()])
            last = m.end()
        out.append(self.src[last:])
        self.src = "".join(out)

    def allocations(self):
        skip = 0
        while True:
            mask = code_mask(self.src)
            found = None
            for m in re.finditer(r"\balloc\b", self.src):
                at = m.start()
                if at >= skip and mask[at] and not self.src[:at].rstrip(" ").endswith("."):
                    found = m
                    break
            if found is None:
                return
            at = found.start()
            rest = self.src[found.end():]
            if rest.startswith("("):
                close = closing(self.src, mask, found.end())
                after = self.src[close + 1:close + 5]
                if close < 0 or after.startswith(" in "):
                    self.problem(at, "`alloc(size, alignment) in allocator`: write `allocator.allocate(size, alignment)`, `none` when exhausted, or `memory.allocate(size, alignment)` under `with allocator:`")
                    skip = at + 1
                    continue
                call = self.module_call("memory", "allocate")
                self.src = self.src[:at] + call + self.src[found.end():]
                continue
            if not rest.startswith(" "):
                skip = at + 1
                continue
            # `alloc T[n]`: the type and its bracketed count, up to a space, `)` or `,` outside
            # brackets; the elements stay unwritten, `new T[n] ---`
            end = self.type_run_end(mask, found.end() + 1)
            if end <= found.end() + 1 or self.src[end - 1] != "]":
                self.problem(at, "`alloc` of a form this script does not know: write `new T[n] ---`")
                skip = at + 1
                continue
            self.src = self.src[:at] + "new" + self.src[found.end():end] + " ---" + self.src[end:]
            skip = at + 1

    def type_run_end(self, mask, start):
        """The index after `T[n]` that starts at `start`: the first space, `)`, `,` or line
        end outside brackets."""
        depth = 0
        i = start
        while i < len(self.src):
            c = self.src[i]
            if mask[i]:
                if c in "([{":
                    depth += 1
                elif c in ")]}":
                    if depth == 0:
                        return i
                    depth -= 1
                elif depth == 0 and c in " ,\n":
                    return i
            i += 1
        return i

    def discards(self):
        skip = 0
        while True:
            mask = code_mask(self.src)
            found = [at for at in calls(self.src, mask, "discard") if at >= skip]
            if not found:
                return
            at = found[0]
            open_at = at + len("discard")
            close = closing(self.src, mask, open_at)
            line_start = self.src.rfind("\n", 0, at) + 1
            line_end = self.src.find("\n", close)
            line_end = len(self.src) if line_end < 0 else line_end
            rest = self.src[close + 1:line_end].strip()
            # a statement: on a line of its own or after a suite's `:` on the same line, and
            # followed by nothing, by the brackets of a block lambda around it, or by `catch`
            prefix = self.src[line_start:at].strip()
            statement = prefix in ("", "defer", "errdefer") or SUITE_HEAD.match(prefix)
            ending = re.match(r"^[)\]}]*\s*(#.*)?$", rest) or rest.startswith("catch")
            if close < 0 or not statement or not ending:
                self.problem(at, "`discard(...)` inside an expression: bind the value, or `_ = ...` on a line of its own")
                skip = at + 1
                continue
            inner = self.src[open_at + 1:close]
            if "\n" in inner:
                # `discard(f() catch failure:` over several lines, its `)` after the handler's
                # last line: the handler becomes the statement's own
                inner = inner.rstrip()
                self.src = self.src[:at] + "_ = " + inner.lstrip() + self.src[close + 1:]
            else:
                self.src = self.src[:at] + "_ = " + inner.strip() + self.src[close + 1:]
            self.drop_unit_recover(at)
            skip = at + 1

    def drop_unit_recover(self, at):
        """A `_ = ... catch` handler may end without `recover`: a last `recover ()` goes."""
        line_start = self.src.rfind("\n", 0, at) + 1
        indent = at - line_start
        lines = self.src[line_start:].split("\n")
        head = lines[0]
        if not re.search(r"\bcatch(\s+\w+)?:\s*$", head):
            return
        i = 1
        last = 0
        while i < len(lines) and (lines[i].strip() == "" or len(lines[i]) - len(lines[i].lstrip(" ")) > indent):
            if lines[i].strip():
                last = i
            i += 1
        if last > 1 and lines[last].strip() == "recover ()":
            del lines[last]
            self.src = self.src[:line_start] + "\n".join(lines)

    def hashes(self):
        while True:
            mask = code_mask(self.src)
            found = list(calls(self.src, mask, "hash"))
            if not found:
                return
            at = found[0]
            open_at = at + len("hash")
            close = closing(self.src, mask, open_at)
            inner = self.src[open_at + 1:close].strip()
            value = inner if one_operand(inner) else f"({inner})"
            self.src = self.src[:at] + value + ".hash()" + self.src[close + 1:]

    def format_fields(self):
        """`{hex(n)}`, `{bin(n)}` and `{pad(v, 8)}` in a formatted string are specifications."""
        while True:
            mask = code_mask(self.src)
            changed = False
            for (open_at, close) in fields(self.src, mask):
                body = self.src[open_at + 1:close]
                spec = field_spec(body.strip())
                if spec is None:
                    continue
                self.src = self.src[:open_at + 1] + spec + self.src[close:]
                changed = True
                break
            if not changed:
                break
        mask = code_mask(self.src)
        for name in ("hex", "bin", "pad"):
            for at in calls(self.src, mask, name):
                if name in self.own_names():
                    continue
                self.problem(at, f"`{name}(...)` outside a formatted string's field: write the field `{{value:{'x' if name == 'hex' else 'b' if name == 'bin' else '>width'}}}`")

    def moved(self, old):
        module, new = MOVED[old]
        if old in self.own_names():
            # the module's own function, or one it imports, by a name the core gave up
            return
        mask = code_mask(self.src)
        positions = list(calls(self.src, mask, old))
        if not positions:
            return
        for at in reversed(positions):
            self.src = self.src[:at] + self.module_call(module, new) + self.src[at + len(old):]

    def module_call(self, module, name):
        """`module.name`, or the bare `name` imported from it when `module` is taken here;
        the bare `name` inside `module` itself."""
        if module == self.module:
            return name
        qualified = module not in self.taken or self.imports_module(module)
        self.needs.setdefault(module, set())
        if not qualified:
            self.needs[module].add(name)
            return name
        return f"{module}.{name}"

    def own_names(self):
        """The functions this module declares, and the names its `from` imports bring in, in
        every fragment of a directory module: its imports are the whole module's (§16.3)."""
        names = text_own_names(self.src)
        for other in self.siblings:
            names = names | file_own_names(other)
        return names

    def bound_names(self):
        """Every bare word the code uses, a member's name aside: a module name among them is
        taken by an import, a declaration or a local."""
        words = text_words(self.src)
        for other in self.siblings:
            words = words | file_words(other)
        return words

    def imports_module(self, module):
        pattern = r"^import %s\s*$" % module
        return re.search(pattern, self.src, re.M) is not None or any(module in file_imports(other) for other in self.siblings)

    def add_imports(self):
        lines = self.src.split("\n")
        wanted = []
        for module in sorted(self.needs):
            names = sorted(self.needs[module])
            if names:
                line = f"from {module} import {', '.join(names)}"
                if line not in lines:
                    wanted.append(line)
            elif not self.imports_module(module):
                wanted.append(f"import {module}")
        if not wanted:
            return
        last_import = -1
        first_declaration = len(lines)
        for i, line in enumerate(lines):
            if IMPORT.match(line):
                last_import = i
            elif line and not line.startswith("#") and not line.startswith(" ") and not IMPORT.match(line):
                first_declaration = i
                break
        if last_import >= 0:
            lines[last_import + 1:last_import + 1] = wanted
        else:
            # before the declaration's doc comment, after the module's
            at = first_declaration
            while at > 0 and lines[at - 1].startswith("##"):
                at -= 1
            lines[at:at] = wanted + [""]
        self.src = "\n".join(lines)


def field_spec(body):
    """The `value:spec` a field `hex(v)`, `bin(v)`, `pad(v, w)` or `pad(hex(v), w)` becomes;
    none when the field is another expression."""
    m = re.fullmatch(r"(hex|bin)\((.*)\)", body)
    if m and balanced(m.group(2)):
        return f"{m.group(2).strip()}:{'x' if m.group(1) == 'hex' else 'b'}"
    m = re.fullmatch(r"pad\((.*),\s*(\d+)\)", body)
    if m and balanced(m.group(1)):
        inner = m.group(1).strip()
        kind = ""
        n = re.fullmatch(r"(hex|bin)\((.*)\)", inner)
        if n and balanced(n.group(2)):
            inner = n.group(2).strip()
            kind = "x" if n.group(1) == "hex" else "b"
        return f"{inner}:>{m.group(2)}{kind}"
    return None


def balanced(text):
    depth = 0
    for c in text:
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
            if depth < 0:
                return False
    return depth == 0


# mark: Functions of a type ===================================================================

TYPE_HEAD = re.compile(r"^( *)(?:(?:pub|export|packed|extern|align\([^)]*\))\s+)*(struct|enum|union)\s+(\w+)(.*):\s*(#.*)?$")
EXTEND_HEAD = re.compile(r"^( *)extend\s+(\w+)\s*:\s*(#.*)?$")
INTERFACE_HEAD = re.compile(r"^( *)(?:pub\s+)?interface\s+(\w+)(.*):\s*(#.*)?$")
MEMBER_FUNC = re.compile(r"^( *)((?:(?:pub|export|inline|noinline|cold|naked|weak|used|linked|section\(\"[^\"]*\"\))\s+)*)(static\s+)?func\s+(\w+)")
SELF = re.compile(r"\bself\b")
STANDARD = Path(__file__).resolve().parent.parent / "src" / "std"


def blocks(text):
    """Each (header line index, its indent, the index after its last line) of `text`'s
    indented blocks: a block runs while lines are blank or indented deeper than its header."""
    lines = text.split("\n")
    for i, line in enumerate(lines):
        indent = len(line) - len(line.lstrip(" "))
        end = i + 1
        while end < len(lines) and (not lines[end].strip() or len(lines[end]) - len(lines[end].lstrip(" ")) > indent):
            end += 1
        yield i, indent, end


def top_level_split(text, separator):
    """`text` split at each `separator` outside brackets."""
    parts = []
    depth = 0
    last = 0
    for i, c in enumerate(text):
        if c in "([":
            depth += 1
        elif c in ")]":
            depth -= 1
        elif c == separator and depth == 0:
            parts.append(text[last:i])
            last = i + 1
    parts.append(text[last:])
    return parts


def interface_names(listed):
    """The interfaces a declaration lists after its `:`, by their last name: `io.Writer` is
    `Writer`, `Iterator[T]` is `Iterator`."""
    names = []
    for item in top_level_split(listed, ","):
        item = item.split("[")[0].strip()
        if item:
            names.append(item.split(".")[-1])
    return names


class Declared:
    """What the sources say about interfaces and conformance: each interface's requirements
    and the interfaces it builds on, and each type's interfaces, by name."""

    def __init__(self):
        self.requirements = {}
        self.bases = {}
        self.conforms = {}

    def read(self, text):
        lines = text.split("\n")
        for i, indent, end in blocks(text):
            line = lines[i]
            m = INTERFACE_HEAD.match(line)
            if m:
                name = m.group(2)
                parts = top_level_split(m.group(3), ":")
                self.bases.setdefault(name, set()).update(interface_names(parts[1]) if len(parts) > 1 else [])
                needs = self.requirements.setdefault(name, set())
                for member in lines[i + 1:end]:
                    f = re.match(r"^\s+func\s+(\w+)", member)
                    if f:
                        needs.add(f.group(1))
                continue
            m = TYPE_HEAD.match(line)
            if m:
                # a generic type's parameters, `[K: Hashable, V]`, keep their own `:` inside
                # brackets, so the conformances are what follows the first outside them
                parts = top_level_split(m.group(4), ":")
                self.conforms.setdefault(m.group(3), set()).update(interface_names(parts[1]) if len(parts) > 1 else [])

    def required(self, type_name):
        """The requirement names of the interfaces `type_name` declares, and the interfaces
        among them nothing read defines."""
        names = set()
        unknown = []
        pending = list(self.conforms.get(type_name, ()))
        seen = set()
        while pending:
            interface = pending.pop()
            if interface in seen:
                continue
            seen.add(interface)
            if interface not in self.requirements:
                unknown.append(interface)
                continue
            names |= self.requirements[interface]
            pending.extend(self.bases.get(interface, ()))
        return names, sorted(unknown)


def restore_static(text, path, declared, first_line=1):
    """`text` with `static ` before each function of a type that luce-base 0.36 inferred to
    be one, and what could not be decided."""
    mask = code_mask(text)
    lines = text.split("\n")
    starts = []
    at = 0
    for line in lines:
        starts.append(at)
        at += len(line) + 1
    ends = {i: (indent, end) for i, indent, end in blocks(text)}
    inserts = []
    problems = []
    for i, (indent, end) in ends.items():
        m = TYPE_HEAD.match(lines[i]) or EXTEND_HEAD.match(lines[i])
        if not m or not mask[starts[i] + indent]:
            continue
        type_name = m.group(3) if m.re is TYPE_HEAD else m.group(2)
        required, unknown = declared.required(type_name)
        member_indent = None
        for j in range(i + 1, end):
            if member_indent is None and lines[j].strip():
                member_indent = len(lines[j]) - len(lines[j].lstrip(" "))
            f = MEMBER_FUNC.match(lines[j])
            if not f or len(f.group(1)) != member_indent or f.group(3) or not mask[starts[j] + member_indent]:
                continue
            name = f.group(4)
            if name == "init" or name in required:
                continue
            member_end = ends[j][1]
            body = text[starts[j]:starts[member_end] - 1 if member_end < len(lines) else len(text)]
            if "linked" in f.group(2).split():
                reads = body[body.find("(") + 1:].lstrip().startswith("self")
            else:
                reads = any(mask[starts[j] + r.start()] for r in SELF.finditer(body))
            if reads:
                continue
            if unknown:
                problems.append(f"{path}:{first_line + j}: `{type_name}.{name}` never reads `self`, and `{type_name}` declares {', '.join(unknown)}, which no source read defines: write `static` if it is no requirement of them (pass the dependency with --interfaces)")
                continue
            inserts.append((starts[j] + len(f.group(1)) + len(f.group(2)), "static "))
            # a parameter list continued on more lines stays aligned under its `(`
            depth = 0
            for k in range(starts[j], len(text)):
                if not mask[k]:
                    continue
                if text[k] in "([":
                    depth += 1
                elif text[k] in ")]":
                    depth -= 1
                elif text[k] == "\n":
                    if depth <= 0:
                        break
                    inserts.append((k + 1, " " * len("static ")))
    for at, inserted in sorted(inserts, reverse=True):
        text = text[:at] + inserted + text[at:]
    return text, problems


def luce_blocks(text):
    """The text of each ```luce block of a Markdown file, with the index of its first line."""
    lines = text.split("\n")
    i = 0
    while i < len(lines):
        m = FENCE.match(lines[i])
        i += 1
        if not m or m.group(1) != "luce":
            continue
        start = i
        while i < len(lines) and not FENCE.match(lines[i]):
            i += 1
        yield start, i, "\n".join(lines[start:i])
        i += 1


def restore_markdown(text, path, declared):
    lines = text.split("\n")
    problems = []
    for start, end, block in reversed(list(luce_blocks(text))):
        new, found = restore_static(block, path, declared, start + 1)
        lines[start:end] = new.split("\n")
        problems = found + problems
    return "\n".join(lines), problems


def declarations(paths, interface_dirs):
    """The interfaces and conformances of every source under `paths`, luce-base's standard
    modules and `interface_dirs`."""
    declared = Declared()
    for f in sources(list(paths) + [STANDARD] + list(interface_dirs)):
        try:
            text = f.read_text()
        except (UnicodeDecodeError, FileNotFoundError):
            continue
        if f.suffix == ".md":
            for _, _, block in luce_blocks(text):
                declared.read(block)
        else:
            declared.read(text)
    return declared


# mark: Files ==================================================================================

def migrate_base(text, path):
    r = Rewrite(text, path, siblings=fragment_siblings(Path(path)), module=module_name(Path(path))).run()
    r.add_imports()
    return r.src, r.problems


def module_order(path):
    """The directory module `path` is a fragment of (§16.1), and its `ORDER`'s fragments:
    the nearest directory above whose `ORDER` lists the file by its path from there;
    none when `path` is a module of its own."""
    directory = path.parent
    for _ in range(3):
        order = directory / "ORDER"
        if order.exists():
            listed = order.read_text().split()
            relative = path.relative_to(directory).as_posix()
            if relative in listed:
                return directory, listed
        directory = directory.parent
    return None, []


def module_name(path):
    """The last part of the module `path` is, or is a fragment of (§16.1)."""
    directory, _ = module_order(path)
    return directory.name if directory else path.stem


def fragment_siblings(path):
    """The paths of the other fragments when `path` is one of a directory module's (§16.1)."""
    directory, listed = module_order(path)
    if directory is None:
        return []
    paths = []
    for name in listed:
        other = directory / name
        if other.resolve() != path.resolve() and other.exists():
            paths.append(other.resolve())
    return paths


def text_words(text):
    """Every bare word `text`'s code uses, a member's name aside."""
    words = set()
    mask = code_mask(text)
    for m in WORD.finditer(text):
        if mask[m.start()] and not (m.start() > 0 and text[m.start() - 1] == "."):
            words.add(m.group(0))
    return words


# a fragment's words and imports as it was last read: a module of many fragments reads each
# once, not once for every fragment beside it; a fragment rewritten is read again
_WORDS = {}
_IMPORTS = {}
_OWN = {}


def file_words(path):
    if path not in _WORDS:
        _WORDS[path] = text_words(path.read_text(errors="replace"))
    return _WORDS[path]


def text_own_names(text):
    """The functions `text` declares at its top level, and the names its `from` imports bring
    in."""
    names = set(re.findall(r"^(?:pub )?func (\w+)", text, re.M))
    for m in re.finditer(r"^from \S+ import (.*)$", text, re.M):
        for item in m.group(1).split(","):
            names.add(item.split(" as ")[-1].strip())
    return names


def file_own_names(path):
    if path not in _OWN:
        _OWN[path] = text_own_names(path.read_text(errors="replace"))
    return _OWN[path]


def file_imports(path):
    if path not in _IMPORTS:
        _IMPORTS[path] = set(re.findall(r"^import (\w+)\s*$", path.read_text(errors="replace"), re.M))
    return _IMPORTS[path]


def migrate_markdown(text, path):
    lines = text.split("\n")
    out = []
    problems = []
    i = 0
    while i < len(lines):
        m = FENCE.match(lines[i])
        out.append(lines[i])
        i += 1
        if not m or m.group(1) != "luce":
            continue
        start = i
        while i < len(lines) and not FENCE.match(lines[i]):
            i += 1
        block = "\n".join(lines[start:i])
        r = Rewrite(block, path, start + 1).run()
        if "func main(" in block:
            r.add_imports()
        elif any(module not in block for module in r.needs if not r.needs[module]):
            needed = ", ".join(sorted(module for module in r.needs if module not in block))
            problems.append(f"{path}:{start + 1}: a fragment now calls into {needed}; its program imports it")
        out.extend(r.src.split("\n"))
        problems.extend(r.problems)
        if i < len(lines):
            out.append(lines[i])
            i += 1
    return "\n".join(out), problems


def sources(paths):
    for p in paths:
        p = Path(p)
        if p.is_dir():
            for f in sorted(p.rglob("*")):
                posix = f.as_posix()
                if f.suffix in (".lucb", ".md") and f.is_file() and "/build/" not in posix and "/.git/" not in posix and "/.luc/" not in posix:
                    yield f
        else:
            yield p


def main(argv):
    check = "--check" in argv
    restoring = "--restore-static" in argv
    paths = []
    interface_dirs = []
    i = 0
    while i < len(argv):
        if argv[i] == "--interfaces" and i + 1 < len(argv):
            interface_dirs.append(argv[i + 1])
            i += 2
            continue
        if argv[i] not in ("--check", "--restore-static"):
            paths.append(argv[i])
        i += 1
    if not paths:
        print(__doc__)
        return 2
    if restoring:
        declared = declarations(paths, interface_dirs)
    changed = 0
    problems = []
    for f in sources(paths):
        try:
            text = f.read_text()
        except UnicodeDecodeError:
            # a source that is not UTF-8 is a lexer's test, not a program to migrate
            continue
        if restoring:
            migrate = restore_markdown if f.suffix == ".md" else restore_static
            new, found = migrate(text, str(f), declared)
        else:
            migrate = migrate_markdown if f.suffix == ".md" else migrate_base
            new, found = migrate(text, str(f))
        problems.extend(found)
        if new != text:
            changed += 1
            print(("would change " if check else "changed ") + str(f))
            if not check:
                f.write_text(new)
                _WORDS.pop(f.resolve(), None)
                _IMPORTS.pop(f.resolve(), None)
                _OWN.pop(f.resolve(), None)
    for p in problems:
        print("manual: " + p)
    if check and changed:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
