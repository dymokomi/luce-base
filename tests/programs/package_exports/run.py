#!/usr/bin/env python3
"""Package-declared exports resolve without copying sources into a consumer."""
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

with tempfile.TemporaryDirectory(prefix='base-public-exports-') as temporary:
    root = Path(temporary)
    write(root, 'library/luce.toml', '[package]\nname = "luce_ui"\nsource = "src"\n[exports]\nui = "luce_ui.ui"\ncontrols = "luce_ui.ui"\n')
    library = write(root, 'library/src/luce_ui/ui.lucb', 'import luce_ui.internal\npub struct Button:\n    pub let length: i64\n    pub func init(label: str):\n        self.length = internal.length(label)\n')
    write(root, 'library/src/luce_ui/internal.lucb', 'pub func length(text: str) -> i64:\n    return (i64)text.length\n')
    manifest = write(root, 'consumer/luce.toml', '[package]\nname = "consumer"\n[dependencies]\nluce_ui = "../library"\n')
    entry = write(root, 'consumer/src/main.lucb', 'from ui import Button\nimport controls\npub func main(arguments: str[]) -> i32:\n    let button: controls.Button = Button("pause")\n    assert(button.length == 5)\n    return 0\n')
    mode_flags = [['--native', '--opt', str(level)] for level in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
    for flags in mode_flags:
        run(compiler, 'build', entry, *flags, '-o', root / 'consumer-bin')
        run(root / 'consumer-bin')
    resolved = run(compiler, 'resolve', entry, entry.parent, 'ui', '--base').stdout.split(b'\0')
    assert resolved == [b'luce-base-module-v1', b'base', b'luce_ui.ui', str(library.resolve()).encode(), str(library.parents[1].resolve()).encode(), b''], resolved
    dependencies = run(compiler, 'dependencies', entry).stdout
    assert dependencies.startswith(b'luce-base-dependencies-v2\0'), dependencies
    assert b'alias\0ui\0luce_ui.ui\0' in dependencies, dependencies
    assert b'alias\0controls\0luce_ui.ui\0' in dependencies, dependencies
    description = run(compiler, 'describe', library).stdout
    assert b'module luce_ui.ui\n' in description, description
    assert run(compiler, 'describe', '--standard', 'math').stdout.startswith(b'description 7\nmodule math\n')
    assert b'unknown standard' in run(compiler, 'describe', '--standard', 'missing', expected=1).stderr
    manifest.write_text(manifest.read_text().replace('luce_ui =', 'wrong ='))
    assert b'match its package name' in run(compiler, 'check', entry, expected=1).stderr
print('PASS public exports, aliases, dependency protocol and canonical standard descriptions; six modes')
