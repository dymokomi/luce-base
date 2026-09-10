"""Read complete standard modules for embedding, documentation and fuzz seeds.

A module is either NAME.lucb or a NAME directory whose ORDER file lists its
source fragments. Fragments share one module scope and are concatenated exactly;
the source layout does not introduce extra language modules or public names.
"""
from pathlib import Path


def module_names(directory: Path):
    return (directory / "ORDER").read_text().split()


def module_source(directory: Path, name: str):
    single = directory / f"{name}.lucb"
    fragments = directory / name
    if single.is_file():
        if fragments.is_dir():
            raise ValueError(f"{name}: choose one source file or a fragment directory")
        return single.read_text()
    order = (fragments / "ORDER").read_text().split()
    available = {path.relative_to(fragments).as_posix() for path in fragments.rglob("*.lucb")}
    if not order or len(order) != len(set(order)) or set(order) != available:
        raise ValueError(f"{fragments / 'ORDER'} must list every source fragment exactly once")
    return "".join((fragments / part).read_text() for part in order)
