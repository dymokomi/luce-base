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
    source = work / 'child.lucb'
    source.write_text('pub func main(arguments: str[]) -> i32:\n'
                      '    for argument in arguments[1..]:\n'
                      '        print(argument)\n'
                      '    return 0\n', encoding='utf-8', newline='\r\n')
    environment = dict(os.environ, TEMP=str(work), TMP=str(work))
    for flags in (['--native'], ['--backend=c']):
        output = work / '引数.exe'
        subprocess.run([compiler, 'build', source, *flags, '-o', output], check=True, env=environment)
        expected = ''.join(value + '\n' for value in values).encode('utf-8')
        result = subprocess.run([output, *values], check=True, capture_output=True)
        assert result.stdout == expected, result.stdout
        # Base literals use the same escapes needed here; values contain no JSON-only escapes.
        literal = lambda value: json.dumps(value, ensure_ascii=False)
        parent = work / 'parent.lucb'
        parent.write_text('import c\nimport process\nimport io\n'
                          'pub func main(arguments: str[]) -> i32!:\n'
                          f'    let child: c.str[{len(values)}] = [' + ', '.join(map(literal, values)) + ']\n'
                          f'    let (status, output, errors) = try process.run({literal(str(output))}, child)\n'
                          '    assert(status == 0 and errors.length == 0)\n'
                          '    try io.stdout().write(output)\n'
                          '    return 0\n', encoding='utf-8', newline='\n')
        binary = work / '親.exe'
        subprocess.run([compiler, 'build', parent, *flags, '-o', binary], check=True, env=environment)
        result = subprocess.run([binary], check=True, capture_output=True)
        assert result.stdout == expected, result.stdout
        print('PASS Unicode source/output paths, CRLF source, argv and process.run', flags[0])
