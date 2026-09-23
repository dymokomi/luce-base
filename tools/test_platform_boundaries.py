#!/usr/bin/env python3
"""Keep native APIs and object-format policy below their declared boundaries."""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]


def forbid(relative, pattern, reason):
    text = (ROOT / relative).read_text(encoding='utf-8')
    assert not re.search(pattern, text, re.MULTILINE), f'{relative}: {reason}'


for module in ('src/main.lucb', 'src/support/modules.lucb', 'src/support/host_tools.lucb',
               'src/back/native/dwarf.lucb'):
    forbid(module, r'^extern (func|var)\b', 'host operations belong in the standard library')
forbid('src/back/native/x86_64.lucb', r'"[^"\n]*(?:\.seh_|\.cfi_|\.section|@GOT|@SECREL)',
       'object and unwind directives belong in dedicated policy modules')
forbid('src/back/native/x86_64/abi.lucb', r'import (?:support\.buffer|back\.native\.x86_64\.(?:object|unwind))',
       'ABI classification must not depend on assembly emission')
print('PASS host, x86 ABI, object and unwind boundaries')
