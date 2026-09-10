#!/usr/bin/env python3
"""Native protocol contracts plus independent RFC handshake reference vectors."""
import base64
import hashlib
from pathlib import Path
import random
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[3]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
FLAGS = [['--native', '--opt', str(level)] for level in range(4)] + [
    ['--backend=c'], ['--backend=c', '--release']]
EXPECTED = (b'ok HTTP heads, framing, every fragment size, limits and EOF\n'
            b'ok WebSocket handshake, masking, fragmented UTF-8, control frames and errors\n'
            b'ok 10000 deterministic malformed-input cases\n')


def checked(command, timeout=120):
    result = subprocess.run(list(map(str, command)), cwd=ROOT, capture_output=True, timeout=timeout)
    assert result.returncode == 0 and not result.stderr, (command, result.returncode, result.stdout, result.stderr)
    return result.stdout


binary = ROOT / 'build/net-protocol-contracts'
rng = random.Random(6455)
keys = [base64.b64encode(bytes(rng.getrandbits(8) for _ in range(16))) for _ in range(64)]
for flags in FLAGS:
    checked([COMPILER, 'build', ROOT / 'tests/programs/net_protocols/main.lucb', *flags, '-o', binary])
    assert checked([binary]) == EXPECTED
    for key in keys:
        expected = base64.b64encode(hashlib.sha1(key + b'258EAFA5-E914-47DA-95CA-C5AB0DC85B11').digest()) + b'\n'
        assert checked([binary, 'accept', key.decode()]) == expected
    print('PASS protocol contracts and 64 independent handshake vectors:', ' '.join(flags), flush=True)
