"""Read complete standard modules for embedding, documentation and fuzz seeds.

A module is either NAME.lucb or a NAME directory whose ORDER file lists its
source fragments. Fragments share one module scope and are concatenated exactly;
the source layout does not introduce extra language modules or public names.
"""
from pathlib import Path


def module_names(directory: Path):
    return (directory / "ORDER").read_text(encoding="utf-8").split()


def module_source(directory: Path, name: str):
    single = directory / f"{name}.lucb"
    fragments = directory / name
    if single.is_file():
        if fragments.is_dir():
            raise ValueError(f"{name}: choose one source file or a fragment directory")
        return single.read_text(encoding="utf-8")
    order = (fragments / "ORDER").read_text(encoding="utf-8").split()
    available = {path.relative_to(fragments).as_posix() for path in fragments.rglob("*.lucb")}
    if not order or len(order) != len(set(order)) or set(order) != available:
        raise ValueError(f"{fragments / 'ORDER'} must list every source fragment exactly once")
    return "".join((fragments / part).read_text(encoding="utf-8") for part in order)


def source_literal(text: str):
    """Encode source as one Base string without treating its escapes as our own."""
    escapes = {"\\": "\\\\", '"': '\\"', "\n": "\\n", "\r": "\\r", "\t": "\\t", "\0": "\\0"}
    pieces = ['"']
    for character in text:
        if character in escapes:
            pieces.append(escapes[character])
        elif ord(character) < 32 or ord(character) == 127:
            pieces.append("\\u{" + format(ord(character), "x") + "}")
        else:
            pieces.append(character)
    pieces.append('"')
    return "".join(pieces)
