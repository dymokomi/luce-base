#!/usr/bin/env python3
"""Frame storage (`memory.frame`, base.md §12.7) through every backend mode: sized per
call, per loop turn, kept by each level of a recursion, a trap past its most, and the
escape rule refusing to return it."""
from pathlib import Path
import subprocess
import sys
import tempfile
COMPILER = Path(sys.argv[1]).resolve()
HERE = Path(__file__).resolve().parent
MODES = [['--native', '--opt', str(n)] for n in range(4)] + [['--backend=c'], ['--backend=c', '--release']]
with tempfile.TemporaryDirectory(prefix='luce-frame-storage-') as temporary:
    binary = Path(temporary) / 'test'
    for flags in MODES:
        subprocess.run([str(COMPILER), 'build', str(HERE / 'main.lucb'), *flags, '-o', str(binary)], check=True, timeout=120)
        ran = subprocess.run([str(binary)], capture_output=True, text=True, timeout=10)
        assert ran.returncode == 0 and ran.stdout.strip() == '28500 1333216 true', (flags, ran)
        past = subprocess.run([str(binary), 'more'], capture_output=True, text=True, timeout=10)
        assert past.returncode == 1 and 'memory.frame count is past its most' in past.stderr, (flags, past)
    leak = Path(temporary) / 'leak.lucb'
    leak.write_text('import memory\n\nfunc leak(n: usize) -> u8[]:\n    let a = memory.frame[u8](n, 16)\n    return a\n\npub func main(args: str[]) -> i32:\n    return (i32)leak(4).length\n')
    refused = subprocess.run([str(COMPILER), 'check', str(leak)], capture_output=True, text=True, timeout=60)
    assert refused.returncode != 0 and 'must not escape' in refused.stderr, refused
    big = Path(temporary) / 'big.lucb'
    big.write_text('import memory\n\npub func main(args: str[]) -> i32:\n    let a = memory.frame[u64](args.length, 513)\n    return (i32)a.length\n')
    refused = subprocess.run([str(COMPILER), 'check', str(big)], capture_output=True, text=True, timeout=60)
    assert refused.returncode != 0 and 'at most 4096 bytes' in refused.stderr, refused
print('PASS frame storage: per call, per loop turn, through a recursion, a trap past its most, no escape, a bound in bytes; six modes')
