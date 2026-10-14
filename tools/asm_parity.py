#!/usr/bin/env python3
"""The compiler's own x86-64 assembler (`luce-base assemble`, src/back/assemble) against GNU
`as` for Windows: each assembly file through both, and the two COFF objects compared.
Sections must hold the same bytes under the same flags; relocations must name the same
places, types and symbols (a section's symbol by the section's name); the symbol tables
must hold the same symbols, each with its section, value, class and auxiliary record,
whatever their order. `--suite` first writes every test program's assembly for
x86_64-windows, in each build mode, with the compiler (`--emit=asm`), so the whole test
suite is the corpus; else the files named are. Exit status 1 when any object differs.

Usage: tools/asm_parity.py [--suite] [--compiler build/luce-base] [--as AS] [--keep DIR]
                           [--jobs N] [-v] [FILE.s | DIR ...]
"""
import argparse
from concurrent.futures import ThreadPoolExecutor
import os
from pathlib import Path
import shutil
import struct
import subprocess
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parents[1]
# the build modes of the suite's corpus: the defaults, optimised, debug, optimised debug,
# unoptimised, and the AVX levels
MODES = {'d': [], 'r': ['--release'], 'g': ['--debug'], 'rg': ['--release', '--debug'], 'o0': ['--opt', '0'],
         'v3': ['--cpu', 'v3', '--release'], 'v4': ['--cpu', 'v4', '--release']}
# the compiler itself, the largest program, in fewer modes
COMPILER_MODES = ('d', 'g', 'v3')
RELOCATION_TYPES = {1: 'ADDR64', 2: 'ADDR32', 3: 'ADDR32NB', 4: 'REL32', 10: 'SECTION', 11: 'SECREL'}


def parse(data):
    """A COFF object as sections (name, flags, bytes, relocations) and symbols."""
    machine, count, stamp, symbols_at, symbol_count, optional, characteristics = struct.unpack_from('<HHIIIHH', data, 0)
    strings_at = symbols_at + symbol_count * 18

    def text(raw):
        if raw[:4] == b'\0\0\0\0':
            offset = struct.unpack_from('<I', raw, 4)[0]
            return data[strings_at + offset:data.index(b'\0', strings_at + offset)].decode()
        return raw.rstrip(b'\0').decode()

    sections = []
    for i in range(count):
        at = 20 + optional + 40 * i
        name = data[at:at + 8].rstrip(b'\0').decode()
        _, _, size, raw_at, relocations_at, _, relocation_count, _, flags = struct.unpack_from('<IIIIIIHHI', data, at + 8)
        if name.startswith('/'):
            offset = int(name[1:])
            name = data[strings_at + offset:data.index(b'\0', strings_at + offset)].decode()
        if flags & 0x01000000:
            relocation_count = struct.unpack_from('<I', data, relocations_at)[0]
        relocations = [struct.unpack_from('<IIH', data, relocations_at + 10 * k) for k in range(relocation_count)]
        if flags & 0x01000000:
            relocations = relocations[1:]
        sections.append(dict(name=name, flags=flags, size=size, data=data[raw_at:raw_at + size] if raw_at else b'', relocations=relocations))
    symbols = {}
    i = 0
    while i < symbol_count:
        at = symbols_at + 18 * i
        value, section, kind, storage, auxiliary = struct.unpack_from('<IhHBB', data, at + 8)
        records = [data[symbols_at + 18 * (i + 1 + k):symbols_at + 18 * (i + 2 + k)] for k in range(auxiliary)]
        symbols[i] = dict(name=text(data[at:at + 8]), value=value, section=section, kind=kind, storage=storage, aux=records)
        i += 1 + auxiliary
    return dict(characteristics=characteristics, sections=sections, symbols=symbols)


def section_name(o, number):
    if number > 0:
        return o['sections'][number - 1]['name']
    return {0: 'UNDEF', -1: 'ABS', -2: 'DEBUG'}.get(number, str(number))


def symbol_key(o, index):
    s = o['symbols'][index]
    if s['storage'] == 3 and s['aux'] and s['value'] == 0 and s['section'] > 0 and s['name'] == section_name(o, s['section']):
        return 'section ' + s['name']
    return s['name']


def normal_symbols(o):
    out = []
    for index, s in o['symbols'].items():
        aux = []
        for record in s['aux']:
            if s['storage'] == 105:
                # a weak external's fallback, by name
                aux.append(('fallback', symbol_key(o, struct.unpack_from('<I', record, 0)[0]), record[4:8].hex()))
            else:
                aux.append(record.hex())
        out.append((s['name'], section_name(o, s['section']), s['value'], s['kind'], s['storage'], tuple(aux)))
    return sorted(out)


def normal_relocations(o, s):
    return sorted((offset, RELOCATION_TYPES.get(kind, kind), symbol_key(o, symbol)) for offset, symbol, kind in s['relocations'])


def compare(theirs, ours):
    """The differences between two objects, as lines; none when they agree."""
    a = parse(theirs)
    b = parse(ours)
    problems = []
    if a['characteristics'] != b['characteristics']:
        problems.append(f"file characteristics {a['characteristics']:#x} != {b['characteristics']:#x}")
    named_a = [(s['name'], s) for s in a['sections']]
    named_b = [(s['name'], s) for s in b['sections']]
    if [n for n, _ in named_a] != [n for n, _ in named_b]:
        missing = sorted(set(n for n, _ in named_a) - set(n for n, _ in named_b))
        extra = sorted(set(n for n, _ in named_b) - set(n for n, _ in named_a))
        problems.append(f"sections differ: as {[n for n, _ in named_a]}, ours {[n for n, _ in named_b]}"
                        if not missing and not extra else f"sections missing {missing}, extra {extra}")
    lookup = {}
    for n, s in named_b:
        lookup.setdefault(n, []).append(s)
    for n, s in named_a:
        if not lookup.get(n):
            continue
        t = lookup[n].pop(0)
        if s['flags'] != t['flags']:
            problems.append(f"{n}: flags {s['flags']:#x} != {t['flags']:#x}")
        if s['size'] != t['size']:
            problems.append(f"{n}: size {s['size']:#x} != {t['size']:#x}")
        if s['data'] != t['data']:
            first = next((k for k in range(min(len(s['data']), len(t['data']))) if s['data'][k] != t['data'][k]), min(len(s['data']), len(t['data'])))
            problems.append(f"{n}: bytes differ from {first:#x}: as {s['data'][first:first + 16].hex()} ours {t['data'][first:first + 16].hex()}")
        ra = normal_relocations(a, s)
        rb = normal_relocations(b, t)
        if ra != rb:
            only_a = sorted(set(ra) - set(rb))[:4]
            only_b = sorted(set(rb) - set(ra))[:4]
            problems.append(f"{n}: relocations differ ({len(ra)} vs {len(rb)}): as only {only_a}, ours only {only_b}")
    sa = normal_symbols(a)
    sb = normal_symbols(b)
    if sa != sb:
        only_a = sorted(set(sa) - set(sb))[:4]
        only_b = sorted(set(sb) - set(sa))[:4]
        problems.append(f"symbols differ ({len(sa)} vs {len(sb)}): as only {only_a}, ours only {only_b}")
    return problems


def gnu_as():
    """MinGW-w64's GNU `as`: on the path, or the one its GCC driver runs, or `as` on Windows."""
    if found := shutil.which('x86_64-w64-mingw32-as'):
        return found
    if shutil.which('x86_64-w64-mingw32-gcc'):
        named = subprocess.run(['x86_64-w64-mingw32-gcc', '-print-prog-name=as'], capture_output=True, text=True).stdout.strip()
        if named and Path(named).exists():
            return named
    if os.name == 'nt':
        return 'as'
    sys.exit("FAIL asm_parity: no MinGW-w64 `as` (brew install mingw-w64, or apt install binutils-mingw-w64)")


def corpus(compiler, folder, jobs):
    """Every test program's x86_64-windows assembly in each mode, into `folder`."""
    sources = sorted(p for p in ROOT.glob('tests/**/*.lucb') if '/errors/' not in p.as_posix())
    work = []
    for source in sources + [ROOT / 'src/main.lucb']:
        compiler_itself = source == ROOT / 'src/main.lucb'
        for mode, flags in MODES.items():
            if compiler_itself and mode not in COMPILER_MODES:
                continue
            name = source.relative_to(ROOT).as_posix().replace('/', '__')[:-5] + f'.{mode}.s'
            work.append((source, flags, folder / name))

    def emit(item):
        source, flags, out = item
        result = subprocess.run([str(compiler), 'build', str(source), '--native', '--target', 'x86_64-windows', '--emit=asm', '-o', str(out), *flags],
                                cwd=source.parent, capture_output=True, timeout=600)
        return result.returncode == 0

    with ThreadPoolExecutor(jobs) as pool:
        made = sum(pool.map(emit, work))
    # sources that are not programs (fragments, rejected cases) write nothing
    return made, len(work)


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('files', nargs='*', type=Path)
    parser.add_argument('--suite', action='store_true')
    parser.add_argument('--compiler', type=Path, default=ROOT / 'build' / ('luce-base.exe' if os.name == 'nt' else 'luce-base'))
    parser.add_argument('--as', dest='assembler')
    parser.add_argument('--keep', type=Path)
    parser.add_argument('--jobs', type=int, default=os.cpu_count() or 2)
    parser.add_argument('-v', '--verbose', action='store_true')
    args = parser.parse_args()
    args.assembler = args.assembler or gnu_as()
    scratch = Path(tempfile.mkdtemp(prefix='asm-parity-'))
    try:
        # a directory stands for the assembly files in it
        files = []
        for f in args.files:
            files += sorted(f.resolve().glob('*.s')) if f.is_dir() else [f.resolve()]
        if args.suite:
            folder = args.keep.resolve() if args.keep else scratch / 'corpus'
            folder.mkdir(parents=True, exist_ok=True)
            made, tried = corpus(args.compiler.resolve(), folder, args.jobs)
            print(f'corpus: {made} assembly files from {tried} builds')
            files += sorted(folder.glob('*.s'))
        timing = {'as': 0.0, 'ours': 0.0}

        def check(path):
            theirs = scratch / (path.name + '.as.o')
            ours = scratch / (path.name + '.ours.o')
            started = time.perf_counter()
            gas = subprocess.run([args.assembler, '-o', str(theirs), str(path)], capture_output=True)
            middle = time.perf_counter()
            mine = subprocess.run([str(args.compiler), 'assemble', str(path), '-o', str(ours)], capture_output=True)
            timing['as'] += middle - started
            timing['ours'] += time.perf_counter() - middle
            if gas.returncode != 0 and mine.returncode != 0:
                # both refuse it: agreement
                return path, []
            if gas.returncode != 0:
                return path, ['GNU as rejected it: ' + gas.stderr.decode(errors='replace').strip()[:300]]
            if mine.returncode != 0:
                return path, ['ours rejected it: ' + (mine.stdout + mine.stderr).decode(errors='replace').strip()[:300]]
            problems = compare(theirs.read_bytes(), ours.read_bytes())
            theirs.unlink()
            ours.unlink()
            return path, problems

        with ThreadPoolExecutor(args.jobs) as pool:
            results = list(pool.map(check, files))
        failing = [(p, problems) for p, problems in results if problems]
        for path, problems in failing:
            print(f'DIFF {path.name}')
            for line in problems[:None if args.verbose else 3]:
                print(f'    {line}')
        print(f"{len(results) - len(failing)} of {len(results)} objects identical "
              f"(time in as {timing['as']:.1f}s, ours {timing['ours']:.1f}s, summed over threads)")
        return 1 if failing else 0
    finally:
        shutil.rmtree(scratch, ignore_errors=True)


if __name__ == '__main__':
    sys.exit(main())
