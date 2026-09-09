# luce-base

The Luce Base compiler, written in Luce Base. This is the second stage of the
bootstrap and the one that stays:

```text
luce-seed  (C++)                 compiles Luce Base to C, then a binary
     ↓
luce-base  (this tree, Base)     compiles itself and programs natively by default
     ↓
luce       (Base)                compiles full Luce
```

`luce-seed` built this tree until this tree built itself. The seed is pinned
at the version named in `bootstrap/SEED`: `LUCB=../luce-seed/build/lucb
./build.sh` still starts from it, the gate proves the compiler it builds
agrees with the snapshot-built one, and the compiler's own sources stay
within what the seed provides. `bootstrap/luce-base-HOST.c` is the compiler's
own C for each host it runs on natively, arm64-macos and x86_64-linux, and
only this compiler moves. `build/luce-base` is the compiler built by
itself through the native backend, with no C in its path; `build.sh` checks
that it reproduces its own assembly. The language is
[`docs/language/base.md`](docs/language/base.md), the same document the
seed implements. What this compiler must do to earn the switch is in
[`docs/PLAN.md`](docs/PLAN.md); how it is shaped is in
[`docs/DESIGN.md`](docs/DESIGN.md).

Normal builds, test runners and static libraries use the native backend. `--native`
remains an explicit alias. `--backend=c` selects the existing C comparison backend;
`--emit=c` regenerates C snapshots or emits C deliberately. C library interoperability
also works through the native backend and does not require generated C.

After the initial C snapshot or seed-built compiler, both self-hosting stages use
the native backend. Native code generation is the primary hardening target.

## Build and test

```sh
./build.sh                            # the host's bootstrap snapshot with cc, then the compiler from source
./test.sh                             # the gate: both backends over every sample, test, and the compiler

The test material lives under `tests/`: `tests/samples` (programs with their expected output and the rejected programs), `tests/programs` (the proving programs, each with a `check.sh`), and `tests/conformance` (one positive and one negative program per point of the specification, run through both backends and the seed).
./build/luce-base lex tests/samples/hello.lucb
./build/luce-base parse tests/samples/hello.lucb
./build/luce-base check tests/samples/json.lucb                  # silence means it checks
./build/luce-base build tests/samples/json.lucb -o json          # native assembly, assembled and linked
./build/luce-base build tests/samples/json.lucb --backend=c -o json # explicit C comparison backend
./build/luce-base test src/front/parser.lucb               # the module's tests, compiled and run
./build/luce-base test src/front/parser.lucb --backend=c   # explicit C comparison
./build/luce-base build src/main.lucb --native -o B2       # the compiler builds itself, natively
./build/luce-base build app.lucb --debug -o app            # development DWARF for LLDB/GDB
./build/luce-base build app.lucb --native -lSDL3 -L/opt/homebrew/lib -o app   # link a C library
./build/luce-base build app.lucb --target x86_64-linux --emit=c -o app.c        # the C for another target
```

The tree builds and its gate is green on arm64 macOS and on x86_64 Linux; the two
hosts are the two native targets. `tests/platform` holds what depends on the target.
After pulling on either host, `./test.sh` must be green; a bootstrap snapshot that has
drifted is reported as a failure, and `tools/snapshot.sh` writes both hosts' snapshots
from either host.

The sources are `src/front` (source, tokens, lexer, tree, parser),
`src/sema` (types, the standard modules as Base text, the checker),
`src/back` (names, the C backend, the IR, lowering, the arm64 and x86_64
generators, the target), and `src/support` (list, buffer, the embedded C runtime).

## Status

The whole of Base (base.md §3 to §17, §19, §21) through two backends: C for the
host C compiler, and native assembly for arm64-macos and x86_64-linux, with no
C in the native path. The compiler builds itself through both to the same C and
the same assembly, and the seed pinned in `bootstrap/SEED` builds it to the
same C. [`docs/AUDIT.md`](docs/AUDIT.md) is the one current matrix of what is
verified, what is limited and where, and what is planned; it is rewritten, not
appended, when the picture changes.

The standard library (`memory`, `io`, `os`, `files`, `process`, `thread`,
`sync`, `atomic`, `strings`, `paths`, `math`, `time`, `testing`, `net`, `c`) is
Base source under `src/std/`, one file per module over `extern` declarations of
the C library; `tools/embed_std.py` gathers them into `src/sema/prelude.lucb`,
which the compiler binary carries, and `tools/library_reference.py` writes
[`docs/LIBRARY.md`](docs/LIBRARY.md) from the same source. The gate fails when
either has drifted. Everything decided by target lives in `src/back/target.lucb`
and in the `platform` module the compiler writes for each build (`--target
NAME`); the library branches on `platform.macos` and its kin, and the branch a
target rules out is pruned; `tests/platform` proves each host's arms. What is
left in C, under `runtime/`, is what generated code cannot spell itself: traps,
checked arithmetic, formatting of scalars, hashing.

The native backend lowers the checked tree to a QBE-like IR (`src/back/lower.lucb`),
runs the optimiser over it (inlining, single-assignment form, value numbering,
load elimination), and the target's generator (`arm64.lucb`, `x86_64.lucb`)
places it on the machine: frames, the calling convention with the ABI's
aggregate classification, atomics, half floats, vectors at the instruction-set
level the machine has (`--cpu`). `VERSION` is the tree's version; a release is a
tag `luce-base-N` ([`docs/RELEASES.md`](docs/RELEASES.md)).

## Proving programs

`tests/programs/` holds programs large enough to break a compiler, each built
natively under the gate and driven from outside by its `check.sh`:

- `tests/programs/http`: a multi-threaded HTTP/1.1 server (a listener thread, a
  pool of workers over a bounded queue, static files, `/echo`, `/stats`,
  keep-alive), proved with `curl`.
- `tests/programs/editor`: a terminal text editor (a gap buffer, whole-text undo
  and redo, incremental search, a screen of escape sequences, raw mode over
  `termios`), proved by replaying a script of keys headlessly and comparing
  the saved file and the final screen.
- `tests/programs/debugger`: `luce-base-d`, a source-level debugger. `luce-base
  build --debug --native` describes every frame (each named local's slot and
  type) and calls the `debug` module before every statement; the debugger
  lives in the program and talks on standard input and output: breakpoints,
  `step`, `next`, `print`, `locals`, `backtrace`. Proved with a scripted
  session over a sample.
- `tests/programs/gui`: the same editor with a window, over SDL3 reached through
  `extern` alone (`luce-base build --native -lSDL3 -L/opt/homebrew/lib`).
  Proved by replaying keys under SDL's dummy video driver and comparing the
  saved file and the frame's text. It shares the buffer, history, and
  editing session with the terminal editor.
- `tests/programs/metal`: a GPU computation. A compute shader, given as text and
  compiled at run time, squares an array of floats; the result is read back.
  Metal is reached through its one C entry point and the Objective-C runtime
  alone (`-lobjc -framework Foundation -framework Metal`); the bridge in
  `tests/programs/metal/objc.lucb` is a hundred lines of ordinary Base.
- `-W` on `check`, `build`, or `test` prints the checker's warnings; what
  they name is pruned from the program either way (`docs/DESIGN.md`).
- `tests/programs/asm`: hand-written arm64 in Base source (`asm arm64(operands):`),
  the same lines compiled by the native backend and by the host C compiler,
  proved to agree.
- `tests/programs/abi`: the calling convention both ways. Records of every class
  the target ABIs distinguish cross between Base and C by value, in both
  directions, with the values C computes; and the exported surface of §17.6
  (function pointers, the status form of a fallible function, spans as a pointer
  and a length, the package's error codes) is proved through the header, a C
  consumer, linking, and running.
- `tests/programs/pkgconfig`: a manifest that names a library through
  `pkg-config`.

A host that lacks what a check needs (SDL3, `pkg-config`, a Metal device) fails
the gate and says what to install; a green gate means every check ran. The gate
ends with the fuzzer's short pass (`tools/fuzz.py --gate`), whose generated programs
span the value language; `tools/fuzz.py
--minutes 60` runs it for an hour, and every finding lands under `build/fuzz/`.

Every bug they find is pinned as a test in both compilers before the fix.

## License

Dual-licensed under the Apache License 2.0 and the MIT license, at your
option. See LICENSE, LICENSE-APACHE, and LICENSE-MIT.
