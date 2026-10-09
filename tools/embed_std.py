#!/usr/bin/env python3
"""Write src/sema/standard_sources.lucb: the standard library under src/std as raw Base
text, so a checker embedded in another program (src/embed.lucb, docs/EMBEDDING.md) reads
no standard library from disk. With `--check`, write nothing: exit 1 when the embedded
text is not what src/std says."""
import pathlib, sys

from standard_library import module_names

root = pathlib.Path(__file__).resolve().parent.parent
std = root / "src" / "std"
target = root / "src" / "sema" / "standard_sources.lucb"


def mark(text):
    base = f"# mark: {text} "
    return base + "=" * (95 - len(base))


def fragments(name):
    """The module's fragments as (path under std/, text): one for `name.lucb`, the ones its
    `ORDER` lists for a directory module, none for `platform`, which the checker writes for
    the target."""
    if name == "platform":
        return []
    single = std / f"{name}.lucb"
    if single.is_file():
        return [(f"std/{name}.lucb", single.read_text(encoding="utf-8"))]
    order = (std / name / "ORDER").read_text(encoding="utf-8").split()
    return [(f"std/{name}/{part}", (std / name / part).read_text(encoding="utf-8")) for part in order]


names = module_names(std)
parts, firsts = [], []
for name in names:
    firsts.append(len(parts))
    parts.extend(fragments(name))
firsts.append(len(parts))
for path, text in parts:
    assert '"""' not in text, path


def listing(values):
    return "[" + ", ".join(values) + "]"


out = ['''#==============================================================================================
#
#   standard_sources - The standard library carried inside the compiler
#
#   DESCRIPTION:
#       The standard modules of base.md §16.6 as raw text, each fragment as `src/std` holds
#       it, for a checker embedded in another program (`embed.check_root`), which reads no
#       standard library from disk. The command itself reads `src/std` (`standard`); this
#       copy is written by `tools/embed_std.py`, and the gate fails when the two differ. Do
#       not edit this file; edit `src/std` and rerun the tool.
#
#==============================================================================================

''']
out.append(f"{mark('The modules')}\n\n")
out.append("## The standard modules in binding order, as `src/std/ORDER` lists them.\n")
out.append(f"pub let modules: str[{len(names)}] = {listing(chr(34) + n + chr(34) for n in names)}\n\n")
out.append("## Where each module's fragments begin in `paths` and `text`, by its index in `modules`;\n")
out.append("## the last entry is the fragment count. `platform` has none: the checker writes it.\n")
out.append(f"pub let firsts: u32[{len(firsts)}] = {listing(str(f) for f in firsts)}\n\n")
out.append("## Each fragment's path as positions name it: `std/core.lucb`, `std/strings/search.lucb`.\n")
out.append(f"pub let paths: str[{len(parts)}] = {listing(chr(34) + p + chr(34) for p, _ in parts)}\n\n")
out.append(f"{mark('The sources')}\n")
for i, (path, text) in enumerate(parts):
    out.append(f"\n## The text of `src/{path}`.\n")
    out.append(f"let text_{i}: str = r\"\"\"{text}\"\"\"\n")
out.append(f"\n{mark('By index')}\n\n")
out.append("## The text of fragment `index`, as `paths` names it.\n")
out.append("pub func text(index: usize) -> str:\n")
out.append("    match index:\n")
for i in range(len(parts)):
    out.append(f"        {i}: return text_{i}\n")
out.append("        _: return \"\"\n")
text = "".join(out)

if "--check" in sys.argv:
    if not target.exists() or target.read_text(encoding="utf-8") != text:
        print("src/sema/standard_sources.lucb is not what src/std says; run tools/embed_std.py")
        sys.exit(1)
    sys.exit(0)
target.write_bytes(text.encode("utf-8"))
