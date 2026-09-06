# luce-base

The Luce Base compiler, written in Luce Base. This is the second stage of the
bootstrap and the one that stays:

```text
luce-seed  (C++)                 compiles Luce Base to C, then a binary
     ↓
luce-base  (this tree, Base)     compiles itself; C first, then native
     ↓
luce-full  (Base)                compiles full Luce
```

`luce-seed` built this tree until this tree built itself. The seed is pinned
at the version named in `bootstrap/SEED` (luce-seed 0.12): `LUCB=../luce-seed/build/lucb
./build.sh` still starts from it, the gate proves the compiler it builds
agrees with the snapshot-built one, and the compiler's own sources stay
within what the seed provides. `bootstrap/luce-base.c` is the compiler's own
C, and only this compiler moves. `build/luce-base` is the compiler built by
itself through the native backend, with no C in its path; `build.sh` checks
that it reproduces its own assembly. The language is
[`docs/language/base.md`](docs/language/base.md), the same document the
seed implements. What this compiler must do to earn the switch is in
[`docs/PLAN.md`](docs/PLAN.md); how it is shaped is in
[`docs/DESIGN.md`](docs/DESIGN.md).

## Build and test

```sh
./build.sh                            # bootstrap/luce-base.c with cc, then the compiler from source
./test.sh                             # the gate: both backends over every sample, test, and the compiler
./build/luce-base lex samples/hello.lucb
./build/luce-base parse samples/hello.lucb
./build/luce-base check samples/json.lucb                  # silence means it checks
./build/luce-base build samples/json.lucb -o json          # C through the host cc
./build/luce-base build samples/json.lucb --native -o json # arm64 assembly through as and ld, no C
./build/luce-base test src/front/parser.lucb               # the module's tests, compiled and run
./build/luce-base test src/front/parser.lucb --native      # the same tests through the native backend
./build/luce-base build src/main.lucb --native -o B2       # the compiler builds itself, natively
./build/luce-base build app.lucb --native --debug -o app   # with frame descriptors for luce-base-d
./build/luce-base build app.lucb --native -lSDL3 -L/opt/homebrew/lib -o app   # link a C library
```

The sources are `src/front` (source, tokens, lexer, tree, parser),
`src/sema` (types, the standard modules as Base text, the checker),
`src/back` (names, the C backend, the IR, lowering, arm64), and
`src/support` (list, buffer, the embedded C runtime).

## Status

Slices 1 to 4: lexer, parser, checker, and C backend for the whole Base
language (base.md §3 to §17, §19, §21), with `lex`, `parse`, `check`,
`build`, and `test` commands. Every sample builds and runs; every module's
tests pass both in the seed's oracle and compiled through this compiler;
and the compiler builds itself, twice, to the same C.

Slice 5: the seed is pinned. `bootstrap/luce-base.c` is the compiler's own C,
`build.sh` starts from it with nothing but a C compiler, and the standard
modules (`memory`, `io`, `files`, `process`, `thread`, `sync`, `atomic`) are
Base source in `src/sema/prelude.lucb` over `extern` declarations of the C
library, as are `strings`, `paths`, `math`, `time`, `testing`, and `net`.
What is left in C, under `runtime/`, is what generated code cannot spell
itself: traps, checked arithmetic, formatting of scalars, hashing.

Slice 6: a native backend. `src/back/lower.lucb` takes the checked tree to a
QBE-like IR and `src/back/arm64.lucb` takes that to arm64-macos assembly;
`--native` selects it for `build` and `test`. The native path involves no C:
the runtime a program needs is the `core` module, written in Base, and the
driver assembles with `as` and links with `ld`. Every sample and every
module's tests pass through both backends, the compiler builds itself
natively, and the natively built compiler emits the same C and the same
assembly for the compiler as the C-built one. Code comes out unoptimised,
with every temporary in the frame; register allocation is next.

## Proving programs

`programs/` holds programs large enough to break a compiler, each built
natively under the gate and driven from outside by its `check.sh`:

- `programs/http`: a multi-threaded HTTP/1.1 server (a listener thread, a
  pool of workers over a bounded queue, static files, `/echo`, `/stats`,
  keep-alive), proved with `curl`.
- `programs/editor`: a terminal text editor (a gap buffer, whole-text undo
  and redo, incremental search, a screen of escape sequences, raw mode over
  `termios`), proved by replaying a script of keys headlessly and comparing
  the saved file and the final screen.
- `programs/debugger`: `luce-base-d`, a source-level debugger. `luce-base
  build --debug --native` describes every frame (each named local's slot and
  type) and calls the `debug` module before every statement; the debugger
  lives in the program and talks on standard input and output: breakpoints,
  `step`, `next`, `print`, `locals`, `backtrace`. Proved with a scripted
  session over a sample.
- `programs/gui`: the same editor with a window, over SDL3 reached through
  `extern` alone (`luce-base build --native -lSDL3 -L/opt/homebrew/lib`).
  Proved by replaying keys under SDL's dummy video driver and comparing the
  saved file and the frame's text. It shares the buffer, history, and
  editing session with the terminal editor.
- `programs/metal`: a GPU computation. A compute shader, given as text and
  compiled at run time, squares an array of floats; the result is read back.
  Metal is reached through its one C entry point and the Objective-C runtime
  alone (`-lobjc -framework Foundation -framework Metal`); the bridge in
  `programs/metal/objc.lucb` is a hundred lines of ordinary Base.
- `-W` on `check`, `build`, or `test` prints the checker's warnings; what
  they name is pruned from the program either way (`docs/DESIGN.md`).
- `programs/asm`: hand-written arm64 in Base source (`asm arm64(operands):`),
  the same lines compiled by the native backend and by the host C compiler,
  proved to agree.

Every bug they find is pinned as a test in both compilers before the fix.

## License

Dual-licensed under the Apache License 2.0 and the MIT license, at your
option. See LICENSE, LICENSE-APACHE, and LICENSE-MIT.
