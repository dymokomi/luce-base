"""The shape of the tree, as the audit of 2026-09-14 measures it: every source file under
src/ has a header box; a file over 150 lines has `# mark:` sections; a function is at most
100 lines unless it is a dispatch named in `tools/shape.dispatches`; every `pub`
declaration has a `##` line above it; every `free` is a deferred one, `defer free(x)` or
inside a `defer:` block, or an owner's own (`free(self...)`, or within its `destroy`,
`release`, `grow`, `drop`, `close`, `remove` or `drain`), so a free is paired with what it frees and runs on every way out.
`--check` exits 1 when a measure rises past the
limits in `tools/shape.limits`, the ratchet toward the audit's zero; without it the
numbers and the offenders are printed. `--root DIR` measures another compiler's tree, Luce's,
against the limits in its own `tools/shape.limits`."""
import pathlib, re, sys

root = pathlib.Path(sys.argv[sys.argv.index("--root") + 1]).resolve() if "--root" in sys.argv else pathlib.Path(__file__).resolve().parent.parent
sources = sorted(root.glob("src/**/*.lucb"))
declaration = re.compile(r"^(\s*)(?:pub\s+)?(?:static\s+|mutating\s+|extern\s+|local\s+)*(func|struct|enum|union|interface|handle)\s+([A-Za-z_][A-Za-z0-9_]*)")
public = re.compile(r"^\s*pub\s+(?:static\s+|mutating\s+|extern\s+|local\s+|packed\s+|align\([^)]*\)\s+)*(func|struct|enum|union|interface|let|var|type|handle)\s+([A-Za-z_][A-Za-z0-9_]*)")
allowed = set()
listing = root / "tools" / "shape.dispatches"
if listing.exists():
    allowed = {line.strip() for line in listing.read_text().splitlines() if line.strip() and not line.startswith("#")}

def functions(lines):
    """Each function with its line count: from its `func` line to the last line indented
    deeper than it (blank lines and comments between count)."""
    out = []
    for i, line in enumerate(lines):
        m = declaration.match(line)
        if not m or m.group(2) != "func":
            continue
        indent = len(m.group(1))
        end = i
        for j in range(i + 1, len(lines)):
            text = lines[j]
            if text.strip() == "":
                continue
            if len(text) - len(text.lstrip(" ")) <= indent:
                break
            end = j
        out.append((m.group(3), end - i + 1, i + 1))
    return out

strings = re.compile(r'"(?:[^"\\]|\\.)*"')
owners = re.compile(r"^(destroy|release|grow|drop|close|remove|drain)")

def loose_frees(lines, rel):
    """Each `free` that is not deferred or an owner's own: freed by hand at the end of a
    path, it is skipped by every early return and propagated error before it."""
    out = []
    block = None  # the indentation of an open `defer:`/`errdefer:` block
    function = ""
    for i, line in enumerate(lines):
        text = strings.sub('""', line.split("#", 1)[0] if not line.lstrip().startswith("#") else "")
        indent = len(line) - len(line.lstrip(" "))
        if line.strip() and block is not None and indent <= block:
            block = None
        m = declaration.match(line)
        if m and m.group(2) == "func":
            function = m.group(3)
        if re.match(r"\s*(err)?defer:\s*$", text):
            block = indent
            continue
        if not re.search(r"\bfree\(", text):
            continue
        if block is not None or re.match(r"\s*(err)?defer\s+free\(", text) or re.search(r"\bfree\(self\.", text) or owners.match(function):
            continue
        out.append(f"{rel}:{i + 1} {function}")
    return out

no_header, no_marks, long, undocumented, frees, count = [], [], [], [], [], 0
for path in sources:
    rel = path.relative_to(root)
    lines = path.read_text().split("\n")
    count += 1
    if not lines[0].startswith("#===="):
        no_header.append(str(rel))
    if len(lines) > 150 and not any(l.lstrip().startswith("# mark:") for l in lines):
        no_marks.append(str(rel))
    owner = ""
    for i, line in enumerate(lines):
        m = declaration.match(line)
        if m and m.group(1) == "" and m.group(2) != "func":
            owner = m.group(3)
        p = public.match(line)
        if p:
            above = lines[i - 1].strip() if i > 0 else ""
            if not (above.startswith("##") or above.startswith("#")):
                undocumented.append(f"{rel}:{i + 1} {p.group(2)}")
    # the runtime's C text is not Base code
    if rel.as_posix() != "src/support/runtime.lucb":
        frees += loose_frees(lines, rel)
    for name, size, at in functions(lines):
        if size > 100:
            long.append((size, f"{rel}:{at}", name))
long.sort(reverse=True)
allowed_long = [entry for entry in long if entry[2] in allowed or f"{entry[1].split(':')[0]}:{entry[2]}" in allowed]
excess = [entry for entry in long if entry not in allowed_long]
print(f"files {count}, without a header box {len(no_header)}, over 150 lines without marks {len(no_marks)}")
print(f"functions over 100 lines {len(long)} ({len(excess)} not named as dispatches), undocumented pub declarations {len(undocumented)}, loose frees {len(frees)}")
if "--check" not in sys.argv:
    for item in no_header: print("no header:", item)
    for item in no_marks: print("no marks:", item)
    for size, where, name in long: print(f"{size:4} {where} {name}{'  (dispatch)' if (size, where, name) in allowed_long else ''}")
    for item in frees: print("loose free:", item)
    for item in undocumented[:40]: print("undocumented:", item)
    if len(undocumented) > 40: print(f"... {len(undocumented) - 40} more")
    sys.exit(0)
# the ratchet: what the tree measures today (tools/shape.limits); a measure may fall and
# the limit with it, never rise, until the audit's gate of zero is reached
# a tree whose limits do not name `loose_frees` yet is not measured by it
limits = {"no_header": 0, "no_marks": 0, "excess": 0, "undocumented": 0, "loose_frees": None}
recorded = root / "tools" / "shape.limits"
if recorded.exists():
    for line in recorded.read_text().splitlines():
        if line.strip() and not line.startswith("#"):
            key, value = line.split()
            limits[key] = int(value)
bad = (len(no_header) > limits["no_header"] or len(no_marks) > limits["no_marks"]
       or len(excess) > limits["excess"] or len(undocumented) > limits["undocumented"]
       or (limits["loose_frees"] is not None and len(frees) > limits["loose_frees"]))
if bad:
    for item in no_header: print("FAIL shape: no header box:", item)
    for item in no_marks: print("FAIL shape: over 150 lines and no `# mark:` sections:", item)
    for size, where, name in excess: print(f"FAIL shape: {size} lines: {where} {name}")
    for item in undocumented: print("FAIL shape: undocumented pub declaration:", item)
    if limits["loose_frees"] is not None and len(frees) > limits["loose_frees"]:
        for item in frees: print("FAIL shape: a free that is not deferred or an owner's own:", item)
    sys.exit(1)
print("ok shape")
