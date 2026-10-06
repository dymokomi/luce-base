#!/usr/bin/env python3
"""Check out, beside the given repositories, every package they depend on, at main.

CI and local builds track main of every dependency: there are no commit pins. A package's
dependencies are its package.prisma `path` entries (`../luce-std`), so a dependency is the
sibling directory named after it, as in a local checkout of every repository side by side.
This script clones each missing sibling from GitHub (main, depth 1), then the dependencies
of that sibling's own package.prisma, until none is missing. A sibling that already exists
is used as it is, never updated.

Every package.prisma in REPOSITORY counts (its tests' packages too); a TOOL (a compiler the
build needs, such as luce or luce-luc) and every dependency count with their top-level
package.prisma only, as does Luce Base's own package (the directory this script lives in),
since every build starts with this compiler.

Usage: python3 luce-base/tools/checkout_main.py REPOSITORY [TOOL...]
  e.g. python3 luce-base/tools/checkout_main.py luce-image luce
A TOOL is named by its repository's name and is always REPOSITORY's sibling: `luce`,
`../luce` from inside REPOSITORY and `luce` from beside it all name the same directory. A
TOOL that is not checked out yet is cloned first (as `luce` above).
"""
import re
import subprocess
import sys
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
DEPENDENCY = re.compile(r'def dependency\s+"([^"]+)"\s*\{([^}]*)\}')
FIELD = re.compile(r'str\s+(owner|path)\s*=\s*"([^"]*)"')


def dependencies(manifest, repository):
    """(owner, name) of every dependency the manifest finds by path outside its repository."""
    for name, body in DEPENDENCY.findall(manifest.read_text()):
        fields = dict(FIELD.findall(body))
        if "path" not in fields:
            continue
        path = (manifest.parent / fields["path"]).resolve()
        if path != repository and repository not in path.parents:
            yield fields.get("owner", "dymokomi"), path.name


def manifests(repository, everywhere):
    if not everywhere:
        top = repository / "package.prisma"
        return [top] if top.exists() else []
    listed = subprocess.run(["git", "-C", str(repository), "ls-files", "*package.prisma"],
                            capture_output=True, text=True)
    if listed.returncode != 0:
        return sorted(repository.rglob("package.prisma"))
    return [repository / line for line in listed.stdout.split()]


def clone(owner, directory, git_config=()):
    url = f"https://github.com/{owner}/{directory.name}.git"
    subprocess.run(["git", *git_config, "clone", "-q", "--depth", "1", url, str(directory)], check=True)
    head = subprocess.check_output(["git", "-C", str(directory), "rev-parse", "HEAD"], text=True)
    print(f"{directory.name} {head.strip()}", file=sys.stderr)


def check_out(roots, git_config=()):
    """Clone what roots[0] (every manifest) and roots[1:] (top-level manifests) depend on;
    the set of dependency directories, cloned or already there."""
    workspace = roots[0].parent
    pending = [(BASE, False)]
    for index, root in enumerate(roots):
        if not root.exists():
            clone("dymokomi", root, git_config)
        pending.append((root, index == 0))
    seen = set()
    found = set()
    while pending:
        repository, everywhere = pending.pop()
        if (repository, everywhere) in seen:
            continue
        seen.add((repository, everywhere))
        for manifest in manifests(repository, everywhere):
            for owner, name in dependencies(manifest, repository):
                sibling = workspace / name
                if not sibling.exists():
                    clone(owner, sibling, git_config)
                found.add(sibling)
                pending.append((sibling, False))
    return found


def main(arguments):
    if not arguments or arguments[0] in ("-h", "--help"):
        raise SystemExit(__doc__)
    repository = Path(arguments[0]).resolve()
    # tools sit beside the repository whatever directory this runs from
    tools = [repository.parent / Path(argument).name for argument in arguments[1:]]
    check_out([repository, *tools])


if __name__ == "__main__":
    main(sys.argv[1:])
