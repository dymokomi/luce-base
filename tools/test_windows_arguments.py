#!/usr/bin/env python3
"""Unicode paths and argv through both compilers and the native process API."""
import argparse
from pathlib import Path
import subprocess
import tempfile
import json
import os

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', required=True, type=Path)
args = parser.parse_args()
compiler = args.compiler.resolve()
values = ['café 日本語 😀', '', 'a"b', 'two words\\', '&|<>^%literal%']
with tempfile.TemporaryDirectory(prefix='luce-名字-😀-') as directory:
    work = Path(directory)
    # `process` is luce-std's: the programs here declare it, as any program does
    std = (Path(__file__).resolve().parents[2] / 'luce-std').as_posix()
    (work / 'package.prisma').write_text(f'#prisma 4.0\ndef package "arguments" {{\n    def dependency "luce-std" {{\n        str path = "{std}"\n    }}\n}}\n')
    source = work / 'child.lucb'
    source.write_bytes(('pub func main(arguments: str[]) -> i32:\n'
                      '    for argument in arguments[1..]:\n'
                      '        print(argument)\n'
                      '    return 0\n').replace('\n', '\r\n').encode('utf-8'))
    # the build cache of a package lives under its root; this directory holds only products
    cache = tempfile.mkdtemp(prefix='luce-cache-')
    environment = dict(os.environ, TEMP=str(work), TMP=str(work), LUCE_CACHE=cache)
    for flags in (['--native'], ['--native', '--debug'], ['--backend=c']):
        output = work / '引数.exe'
        subprocess.run([compiler, 'build', source, *flags, '-o', output], check=True, env=environment)
        expected = ''.join(value + '\n' for value in values).encode('utf-8')
        result = subprocess.run([output, *values], check=True, capture_output=True)
        assert result.stdout == expected, result.stdout
        # Base literals use the same escapes needed here; values contain no JSON-only escapes.
        literal = lambda value: json.dumps(value, ensure_ascii=False)
        parent = work / 'parent.lucb'
        parent.write_bytes(('import c\nimport process\nimport io\n'
                          'pub func main(arguments: str[]) -> i32!:\n'
                          f'    let child: c.str[{len(values)}] = [' + ', '.join(map(literal, values)) + ']\n'
                          f'    let (status, output, errors) = try process.run({literal(str(output))}, child)\n'
                          '    assert(status == 0 and errors.length == 0)\n'
                          '    try io.stdout().write(output)\n'
                          '    return 0\n').encode('utf-8'))
        binary = work / '親.exe'
        subprocess.run([compiler, 'build', parent, *flags, '-o', binary], check=True, env=environment)
        result = subprocess.run([binary], check=True, capture_output=True)
        assert result.stdout == expected, result.stdout
        library_source = work / 'library.lucb'
        library_source.write_bytes(b'export func answer() -> i32:\n    return 42\n')
        library = work / '共有'
        subprocess.run([compiler, 'build', library_source, *flags, '--lib', '-o', library],
                       check=True, env=environment)
        assert library.with_suffix('.a').stat().st_size > 0
        assert library.with_suffix('.h').stat().st_size > 0
        expected_files = {'package.prisma', 'child.lucb', '引数.exe', 'parent.lucb', '親.exe',
                          'library.lucb', '共有.a', '共有.h'}
        present = {path.name for path in work.iterdir()}
        assert present == expected_files, sorted(present ^ expected_files)
        print('PASS Unicode source/output paths, CRLF source, argv and process.run', flags[0])
    # A program named with a directory, in forward slashes and without its `.exe`, is found
    # from the `directory` the call names, never from the caller's working directory or
    # the caller's own directory: the parent lives and runs where `nested/child` does not.
    nested = work / 'nested'
    nested.mkdir()
    (nested / 'child.exe').write_bytes((work / '引数.exe').read_bytes())
    elsewhere = work / 'elsewhere'
    elsewhere.mkdir()
    relative = elsewhere / 'relative.lucb'
    relative.write_bytes(('import c\nimport process\nimport io\n'
                          'pub func main(arguments: str[]) -> i32!:\n'
                          '    let child: c.str[1] = ["relative program"]\n'
                          f'    let (status, output, errors) = try process.run("nested/child", child, {literal(str(work))})\n'
                          '    assert(status == 0 and errors.length == 0)\n'
                          '    try io.stdout().write(output)\n'
                          '    return 0\n').encode('utf-8'))
    for flags in (['--native'], ['--backend=c']):
        binary = elsewhere / 'relative.exe'
        subprocess.run([compiler, 'build', relative, *flags, '-o', binary], check=True, env=environment)
        result = subprocess.run([binary], check=True, capture_output=True, cwd=nested)
        assert result.stdout == 'relative program\n'.encode('utf-8'), result.stdout
        print('PASS a relative program with forward slashes and no extension, found from `directory`', flags[0])
