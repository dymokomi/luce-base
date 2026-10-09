#!/usr/bin/env python3
"""A loop over the faces of a mesh, as luce-geocore's position edit writes it, gathers each
face's points through its corners, which no fact bounds: those checks stay, and fail out of
line, after the function's body, so the loop falls through every one that passes and holds
no trap's call (arm64 and x86-64). Every build answers alike, and a corner out of range
traps at the same place in each."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
PROGRAM = '''import memory

struct Float3:
    var x: f32
    var y: f32
    var z: f32

struct Mesh:
    let positions: const Float3[]
    let offsets: const i32[]
    let corners: const i32[]
    let triangles: const i32[]

let magnitude_mask: u64 = 0x7fffffffffffffff
let exponent_mask: u64 = 0x7ff0000000000000

func is_nan(x: f64) -> bool:
    return (x.bits() & magnitude_mask) > exponent_mask

func larger(a: f64, b: f64) -> f64:
    if is_nan(a):
        return a
    if is_nan(b):
        return b
    return a if a > b else b

## The face's area normal and the largest squared edge, from the flat coordinates.
func area_normal(mesh: const Mesh*, face: usize) -> Float3?:
    let start = (usize)mesh.offsets[face]
    let count = (usize)mesh.offsets[face + 1] - start
    let corners = mesh.corners[start..<start + count]
    let xyz = f32[]((f32*)mesh.positions.data, mesh.positions.length * 3)
    let first = (usize)corners[0] * 3
    let ox = (f64)xyz[first]
    let oy = (f64)xyz[first + 1]
    let oz = (f64)xyz[first + 2]
    var ax: f64 = 0.0
    var ay: f64 = 0.0
    var az: f64 = 0.0
    var extent: f64 = 0.0
    var dx: f64 = 0.0
    var dy: f64 = 0.0
    var dz: f64 = 0.0
    for at in 0..<count:
        let next = (usize)corners[at + 1 if at + 1 < count else 0] * 3
        let ex = (f64)xyz[next] - ox
        let ey = (f64)xyz[next + 1] - oy
        let ez = (f64)xyz[next + 2] - oz
        extent = larger(extent, dx * dx + dy * dy + dz * dz)
        ax = ax + (dy * ez - dz * ey)
        ay = ay + (dz * ex - dx * ez)
        az = az + (dx * ey - dy * ex)
        dx = ex
        dy = ey
        dz = ez
    let length = ax * ax + ay * ay + az * az
    if is_nan(length) or length <= extent * 1e-14:
        return none
    return Float3((f32)ax, (f32)ay, (f32)az)

## How many of the face's triangles turn their corners clockwise in x and z.
func turned(mesh: const Mesh*, face: usize) -> u32:
    let start = (usize)mesh.offsets[face]
    let count = (usize)mesh.offsets[face + 1] - start
    let first = (start - face * 2) * 3
    let triangles = mesh.triangles[first..<first + (count - 2) * 3]
    let xyz = f32[]((f32*)mesh.positions.data, mesh.positions.length * 3)
    var turns: u32 = 0
    for at in 0..<count - 2:
        let a = (usize)mesh.corners[(usize)triangles[at * 3]] * 3
        let b = (usize)mesh.corners[(usize)triangles[at * 3 + 1]] * 3
        let c = (usize)mesh.corners[(usize)triangles[at * 3 + 2]] * 3
        let ux = (f64)xyz[b] - (f64)xyz[a]
        let uz = (f64)xyz[b + 2] - (f64)xyz[a + 2]
        let vx = (f64)xyz[c] - (f64)xyz[a]
        let vz = (f64)xyz[c + 2] - (f64)xyz[a + 2]
        if ux * vz - uz * vx < 0.0:
            turns += 1
    return turns

## A ring's wrapped neighbours: `ring` is `count` long, `at + 1` below it or 0.
noinline func ring_sum(values: const u32[], start: usize, count: usize) -> u64:
    let ring = values[start..<start + count]
    var total: u64 = 0
    for at in 0..<count:
        total = total *% 31 +% (u64)ring[at + 1 if at + 1 < count else 0] +% (u64)ring[at]
    return total

## Rows of three: `part` is `rows * 3` long, and `at * 3 + 2` below it while `at < rows`.
noinline func row_sum(values: const u32[], first: usize, rows: usize) -> u64:
    let part = values[first..<first + rows * 3]
    var total: u64 = 0
    for at in 0..<rows:
        total = total *% 31 +% (u64)part[at * 3] +% (u64)part[at * 3 + 1] *% 7 +% (u64)part[at * 3 + 2]
    return total

noinline func normals(mesh: const Mesh*, out: Float3[]) -> u32:
    var turns: u32 = 0
    for face in 0..<mesh.offsets.length - 1:
        if let normal = area_normal(mesh, face):
            out[face] = normal
        else:
            out[face] = Float3(0.0, 0.0, 0.0)
        turns += turned(mesh, face)
    return turns

pub func main(arguments: str[]) -> i32!:
    let side: usize = 24
    let points = (side + 1) * (side + 1)
    let faces = side * side
    let positions = try new Float3[points] --- in memory.heap
    defer free(positions) in memory.heap
    let offsets = try new i32[faces + 1] --- in memory.heap
    defer free(offsets) in memory.heap
    let corners = try new i32[faces * 4] --- in memory.heap
    defer free(corners) in memory.heap
    let triangles = try new i32[faces * 6] --- in memory.heap
    defer free(triangles) in memory.heap
    let out = try new Float3[faces] --- in memory.heap
    defer free(out) in memory.heap
    for at in 0..<points:
        let i = at % (side + 1)
        let j = at // (side + 1)
        positions[at] = Float3((f32)i, (f32)((i * 7 + j * 3) % 5) * 0.25, (f32)j)
    for f in 0..<faces:
        let p = f // side * (side + 1) + f % side
        offsets[f] = (i32)(f * 4)
        corners[f * 4] = (i32)p
        corners[f * 4 + 1] = (i32)(p + side + 1)
        corners[f * 4 + 2] = (i32)(p + side + 2)
        corners[f * 4 + 3] = (i32)(p + 1)
        triangles[f * 6] = (i32)(f * 4)
        triangles[f * 6 + 1] = (i32)(f * 4 + 1)
        triangles[f * 6 + 2] = (i32)(f * 4 + 2)
        triangles[f * 6 + 3] = (i32)(f * 4)
        triangles[f * 6 + 4] = (i32)(f * 4 + 2)
        triangles[f * 6 + 5] = (i32)(f * 4 + 3)
    offsets[faces] = (i32)(faces * 4)
    if arguments.length > 1:
        # a corner past the points: the gather's check fails
        corners[faces * 2 + 1] = (i32)points
    let mesh = Mesh(positions, offsets, corners, triangles)
    let turns = normals(&mesh, out)
    var sum: f64 = 0.0
    for n in out:
        sum = sum + (f64)n.x + (f64)n.y * 3.0 + (f64)n.z * 7.0
    let values = f32[]((f32*)positions.data, positions.length * 3)
    let words = u32[]((u32*)values.data, values.length)
    print(f"{turns} {sum:.4f} {ring_sum(words, 5, 7 + arguments.length)} {row_sum(words, 4, 9 + arguments.length)}")
    return 0
'''


def function_ir(text, name):
    found = re.search(r'\nfunction \$lb_\w*' + name + r'\(', text)
    assert found, name
    start = found.start()
    end = text.find('\nfunction ', start + 1)
    return text[start:end if end > 0 else len(text)]


def function_asm(text, name):
    """From the function's label to the next function's (or the end of its section)."""
    found = re.search(r'\n_?lb_\w*' + name + r':', text)
    assert found, name
    rest = text[found.end():]
    end = re.search(r'\n_?lb_\w+:|\n\s*\.section', rest)
    return rest[:end.start() if end else len(rest)]


def check_cold(asm, target):
    """No trap's call between the first and the last return of the function's body: each
    failure is a branch to a path after it, which makes the call."""
    body_end = asm.rfind('\n    ret')
    assert body_end > 0, target
    calls = [m.start() for m in re.finditer(r'(bl|call)\s+_?lb_core_\w*trap', asm)]
    if not calls:
        sys.exit(f'FAIL: no trap call at all in normals ({target})')
    if any(at < body_end for at in calls):
        sys.exit(f'FAIL: a failed check calls the trap in the body of the loop ({target})')
    if not re.search(r'\n\.?L\w*_c1:', asm):
        sys.exit(f'FAIL: no out-of-line failure path in normals ({target})')


with tempfile.TemporaryDirectory(prefix='gather-kernel-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    for flags, target in ((['--emit=asm'], 'host'), (['--target', 'x86_64-linux', '--emit=asm'], 'x86_64-linux'), (['--target', 'arm64-macos', '--emit=asm'], 'arm64-macos')):
        asm_path = Path(work) / 'main.s'
        subprocess.run([COMPILER, 'build', source, '--native', '--opt', '3', *flags, '-o', asm_path], check=True)
        check_cold(function_asm(asm_path.read_text(), 'normals'), target)
    binary = Path(work) / 'main'
    answers = []
    failures = []
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '1'], ['--native', '--opt', '2'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
        failed = subprocess.run([binary, 'past'], capture_output=True, text=True)
        if failed.returncode == 0 or 'index out of bounds' not in failed.stderr:
            sys.exit(f'FAIL: a corner past the points did not trap ({flags}): {failed.stderr}')
        failures.append(re.search(r'main\.lucb:\d+:\d+', failed.stderr).group())
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
    if len(set(failures)) != 1:
        sys.exit(f'FAIL: the builds trapped at different places: {failures}')
print('ok a gather loop: failures out of line, every build alike')
