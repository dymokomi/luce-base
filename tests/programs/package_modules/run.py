#!/usr/bin/env python3
"""A package's modules are its files under `src/`, imported bare inside the package and behind
its identifier from another package, when it lists them as `public` (base.md §16.3, §16.4)."""
from pathlib import Path
import subprocess
import sys
import tempfile
compiler = Path(sys.argv[1]).resolve()

def write(root, path, text):
    file = root / path
    file.parent.mkdir(parents=True, exist_ok=True)
    file.write_text(text)
    return file

def run(*args, expected=0):
    result = subprocess.run(list(map(str, args)), capture_output=True, timeout=120)
    assert result.returncode == expected, result.stdout + result.stderr
    return result

with tempfile.TemporaryDirectory(prefix='base-package-modules-') as temporary:
    root = Path(temporary)
    library_manifest = write(root, 'library/package.prisma', '#prisma 4.0\ndef package "luce-ui" {\n    str[] public = ["ui", "widgets.label"]\n}\n')
    write(root, 'library/src/widgets/label.lucb', 'pub func width(text: str) -> i64:\n    return (i64)text.length * 2\n')
    library = write(root, 'library/src/ui.lucb', 'import internal\npub struct Button:\n    pub let length: i64\n    pub func init(label: str):\n        self.length = internal.length(label)\n')
    write(root, 'library/src/internal.lucb', 'pub func length(text: str) -> i64:\n    return (i64)text.length\n')
    manifest = write(root, 'consumer/package.prisma', '#prisma 4.0\ndef package "consumer" {\n    def dependency "luce-ui" {\n        str path = "../library"\n    }\n}\n')
    # a module of its own named like the library's: two modules, `ui` and `luce_ui.ui`
    write(root, 'consumer/src/ui.lucb', 'pub func pause() -> str:\n    return "pause"\n')
    entry = write(root, 'consumer/src/main.lucb', 'from luce_ui.ui import Button\nfrom luce_ui import ui as unused_name_is_the_module\nimport luce_ui.ui as controls\nimport ui\npub func main(arguments: str[]) -> i32:\n    let button: controls.Button = Button(ui.pause())\n    assert(button.length == 5)\n    return 0\n'.replace('from luce_ui import ui as unused_name_is_the_module\n', ''))
    mode_flags = [['--native', '--opt', str(level)] for level in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
    for flags in mode_flags:
        run(compiler, 'build', entry, *flags, '-o', root / 'consumer-bin')
        run(root / 'consumer-bin')
    # `from luce_ui import ui` imports the module itself, under its last name
    second = write(root, 'consumer/src/second.lucb', 'from luce_ui import ui\npub func main(arguments: str[]) -> i32:\n    let button = ui.Button("ab")\n    return i32(button.length) - 2\n')
    run(compiler, 'build', second, '-o', root / 'second-bin')
    run(root / 'second-bin')
    # a `from` import names a directory of modules and aliases what it brings
    aliases = write(root, 'consumer/src/aliases.lucb', 'from luce_ui import ui as controls\nfrom luce_ui.widgets import label as text_label\nfrom luce_ui.ui import Button as Control\n\npub func main(arguments: str[]) -> i32:\n    let button: controls.Button = Control("abc")\n    return i32(text_label.width("ab") - button.length - 1)\n')
    for flags in (['--native'], ['--backend=c']):
        run(compiler, 'build', aliases, *flags, '-o', root / 'aliases-bin')
        run(root / 'aliases-bin')
    run(compiler, 'fmt', aliases, '--check')
    directory = run(compiler, 'resolve', aliases, aliases.parent, 'luce_ui.widgets', '--base').stdout.split(b'\0')
    assert directory[1] == b'package', directory
    resolved = run(compiler, 'resolve', entry, entry.parent, 'luce_ui.ui', '--base').stdout.split(b'\0')
    assert resolved == [b'luce-base-module-v1', b'base', b'luce_ui.ui', str(library.resolve()).encode(), str(library.parent.resolve()).encode(), b''], resolved
    dependencies = run(compiler, 'dependencies', entry).stdout
    assert dependencies.startswith(b'luce-base-dependencies-v4\0'), dependencies
    assert b'source\0luce_ui.ui\0' in dependencies and b'source\0luce_ui.internal\0' in dependencies and b'source\0ui\0' in dependencies, dependencies
    assert b'package\0luce_ui.internal\0luce_ui\0' in dependencies and b'package\0ui\0consumer\0' in dependencies, dependencies
    # the library described as itself names its modules bare
    description = run(compiler, 'describe', library).stdout
    assert b'module ui\n' in description, description
    closure = run(compiler, 'describe-closure', library).stdout
    assert closure.startswith(b'luce-base-closure-v1\0'), closure
    report = closure.split(b'\0\0', 1)[1]
    assert report.startswith(b'luce-base-dependencies-v4\0') and b'source\0internal\0' in report, report
    assert run(compiler, 'describe', '--standard', 'strings').stdout.startswith(b'description 9\nmodule strings\n')
    assert b'unknown standard' in run(compiler, 'describe', '--standard', 'missing', expected=1).stderr
    # what the rules refuse
    private = write(root, 'consumer/src/private.lucb', 'import luce_ui.internal\npub func main(arguments: str[]) -> i32:\n    return 0\n')
    assert b'public' in run(compiler, 'check', private, expected=1).stderr
    whole = write(root, 'consumer/src/whole.lucb', 'import luce_ui\npub func main(arguments: str[]) -> i32:\n    return 0\n')
    assert b'a package is not a module' in run(compiler, 'check', whole, expected=1).stderr
    shadowed = write(root, 'consumer/src/io.lucb', 'pub func nothing() -> i64:\n    return 0\n')
    hides = write(root, 'consumer/src/hides.lucb', 'import io\npub func main(arguments: str[]) -> i32:\n    return 0\n')
    assert b'which the standard module of that name hides' in run(compiler, 'check', hides, expected=1).stderr
    shadowed.unlink()
    library_manifest.write_text('#prisma 4.0\ndef package "luce-ui" {\n    def export "ui" {\n        str module = "luce_ui.ui"\n    }\n}\n')
    assert b'str[] public' in run(compiler, 'check', entry, expected=1).stderr
    library_manifest.write_text('#prisma 4.0\ndef package "luce-ui" {\n    str[] public = ["ui"]\n}\n')
    manifest.write_text(manifest.read_text().replace('def dependency "luce-ui"', 'def dependency "wrong"'))
    assert b'match its package name' in run(compiler, 'check', entry, expected=1).stderr
print('PASS package modules: bare inside, behind the identifier outside, public only, `from pkg import module`, directories and aliases; six modes')
