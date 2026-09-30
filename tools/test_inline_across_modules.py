#!/usr/bin/env python3
"""Small methods of another module are expanded where they are called, as luce-geocore's
Vector3 and luce-std's math.max are in luce-fbx's hot loops: a `cross` and a `subtract`
that take and return a 24-byte vector (whose copies through memory at every call make them
worth more expanded than their instruction count says), a `max` of NaN and signed-zero
branches, and a `length` that calls the C library's hypot, each called from several
places of the program's own module. At --opt 2, --opt 3
and --release no call of them is left in the program's loops, a `noinline` method stays a
call, and the program answers as it does at --opt 0 and through the C backend."""
from pathlib import Path
import re, subprocess, sys, tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / 'build/luce-base'
VECTOR = '''extern func c_hypot as "hypot"(x: f64, y: f64) -> f64

## sqrt(x^2 + y^2), as luce-std's math.hypot wraps the C library's.
pub func hypot(x: f64, y: f64) -> f64:
    return c_hypot(x, y)

## A point or a direction.
pub struct Vector3:
    pub var x: f64
    pub var y: f64
    pub var z: f64

    ## self - other
    pub func subtract(other: Vector3) -> Vector3:
        return Vector3(self.x - other.x, self.y - other.y, self.z - other.z)

    ## self x other
    pub func cross(other: Vector3) -> Vector3:
        return Vector3(self.y * other.z - self.z * other.y,
                       self.z * other.x - self.x * other.z,
                       self.x * other.y - self.y * other.x)

    ## The length, through the C library: a leaf still, since nothing of the program is called.
    pub func length() -> f64:
        return hypot(hypot(self.x, self.y), self.z)

    ## The same as cross, kept out of line.
    pub noinline func cross_kept(other: Vector3) -> Vector3:
        return Vector3(self.y * other.z - self.z * other.y,
                       self.z * other.x - self.x * other.z,
                       self.x * other.y - self.y * other.x)

## The larger, NaN first, +0 over -0.
pub func max(a: f64, b: f64) -> f64:
    if a != a:
        return a
    if b != b:
        return b
    if a == 0.0 and b == 0.0:
        return f64.bits(a.bits() & b.bits())
    return a if a > b else b
'''
PROGRAM = '''import geometry

func normals(points: const geometry.Vector3[]) -> f64:
    var total: f64 = 0.0
    var i: usize = 2
    while i < points.length:
        let n = points[i].subtract(points[i - 1]).cross(points[i - 2].subtract(points[i - 1]))
        total = geometry.max(total, n.z) + n.length()
        i += 1
    return total

func twisted(points: const geometry.Vector3[]) -> f64:
    var total: f64 = 0.0
    for i in 1..<points.length:
        total += points[i].cross(points[i - 1]).x + points[i - 1].subtract(points[i]).y
        total = geometry.max(total, 0.5) + points[i].length()
    return total

func kept(points: const geometry.Vector3[]) -> f64:
    return points[0].cross_kept(points[1]).z + geometry.max(points[2].cross(points[3]).y, 1.0)

pub func main(arguments: str[]) -> i32:
    var points: geometry.Vector3[64] = ---
    for i in 0..<64:
        points[i] = geometry.Vector3((f64)i, (f64)(i * i % 7), 1.0 + (f64)(i % 3))
    print(f"{normals(points[0..])} {twisted(points[0..])} {kept(points[0..])}")
    return 0
'''
with tempfile.TemporaryDirectory(prefix='inline-across-') as work:
    source = Path(work) / 'main.lucb'
    source.write_text(PROGRAM)
    (Path(work) / 'geometry.lucb').write_text(VECTOR)
    for flags in (['--opt', '2'], ['--opt', '3'], ['--release']):
        asm = Path(work) / 'main.s'
        subprocess.run([COMPILER, 'build', source, '--native', *flags, '--emit=asm', '-o', asm], check=True)
        text = asm.read_text()
        calls = lambda name: len(re.findall(r'\b(?:bl|call)\s+_?lb_\w*geometry\w*_(?:\d+)?' + name + r'\b', text))
        for name in ('subtract', 'cross', 'max', 'length'):
            if calls(name):
                sys.exit(f'FAIL: {name} of another module was left a call at {" ".join(flags)}')
        if calls('cross_kept') == 0:
            sys.exit(f'FAIL: a `noinline` method was expanded at {" ".join(flags)}')
    answers = []
    for flags in (['--native', '--opt', '0'], ['--native', '--opt', '3'], ['--backend=c'], ['--backend=c', '--release']):
        binary = Path(work) / 'main'
        subprocess.run([COMPILER, 'build', source, *flags, '-o', binary], check=True)
        answers.append(subprocess.run([binary], capture_output=True, text=True, check=True).stdout)
    if len(set(answers)) != 1:
        sys.exit(f'FAIL: the builds answered differently: {answers}')
print('ok small methods of another module are expanded')
