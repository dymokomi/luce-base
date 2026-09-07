# Plan

Slices are ordered by what the self-hosting gate needs. Each ends with the
unit tests green in the oracle and the binary agreeing on `tests/samples/`.

| Slice | Scope | Gate |
| --- | --- | --- |
| 1. Lexer | tokens, literals, layout, `luce-base lex` | done: every file under `tests/samples/`, the seed's `testdata/`, and this tree tokenizes |
| 2. Syntax | arena tree, full grammar of §21, `luce-base parse` | done: every Base file we have parses, including this compiler's own sources |
| 3. Checking | names, types, effects, `luce-base check` | done: every sample and every source of this tree checks; every program under `tests/samples/errors/` is rejected for its stated reason |
| 4. C backend | checked tree to C, `luce-base build` and `luce-base test` | done: every sample with `main` builds and runs; every module's tests pass through the binary |
| 5. Self-hosting | the seed pinned; the standard modules in Base | done: `bootstrap/luce-base.c` is the compiler's own C and `build.sh` starts from it with only a C compiler; `memory`, `io`, `files`, `process`, `thread`, `sync`, and `atomic` are Base source over `extern` in `src/sema/prelude.lucb`; the C runtime is down to traps, checked arithmetic, formatting, and hashing |
| 6. Native | one target, arm64-macos, proved against the C backend | done: every sample and every module's tests agree under both backends; the compiler builds itself natively and the native build emits the same C and assembly as the C build; `tools/native_check.sh` runs the seed's corpus natively |
| 7. Proving | programs big enough to break things: a threaded HTTP server, a terminal editor, `luce-base-d` (a debugger), an SDL3 editor, a Metal GPU computation, and inline arm64 assembly; built natively, with no C in the path | in progress: `tests/programs/http`, `tests/programs/editor`, `tests/programs/debugger` (`luce-base-d`), and `tests/programs/gui` (an SDL3 window) are under the gate; the rounds so far found pointer arithmetic, negated literals, function-typed field calls, spinning locks, padding in aggregate equality, two-register results, unknown escapes, generic instance sizes, and `sizeof` losing its size in arithmetic, all pinned in `luce-seed/testdata/programs/` or `tests/samples/errors/` |
| 8. Codegen | register allocation over the IR, then the release | in progress: the product is the compiler built by itself natively; locals live in registers, temporaries by linear scan, small records copy inline; the native-built compiler is 4–5× slower than the C `-O2` build, and `docs/DESIGN.md` names what closes the rest of that gap |
| 9. Targets | the second host: x86_64 Linux, natively, with the gate green there | done (0.2.0): `src/back/x86_64.lucb` behind the `Backend` interface, the host read from the compiler's own `platform` module, per-target bootstrap snapshots, `tests/platform`; found §7.1 unenforced in both C backends and `f64.bits` unconstant under GCC; next hosts are arm64-linux (the x86_64 generator's ELF half with the arm64 generator's instructions) and x86_64-macos (the reverse) |
| 10. Linking | `luce-ld`, a linker of our own, as Zig carries one, in its own repository | a native build that needs nothing from the host toolchain |

## The audit

`docs/AUDIT.md` is the dated state of the whole: what is verified, the bugs
found and their root causes, the parts of the specification neither compiler
implements, and the order to close them in. It is rewritten, not appended,
when the picture changes.

## The bootstrap gate

```text
cc bootstrap/luce-base-HOST.c runtime/lucb_rt.c -o build/stage0   # the host's snapshot, with only a C compiler
build/stage0 build src/main.lucb -o build/stage1             # the compiler from source, through C
build/stage1 build src/main.lucb --native -o build/luce-base # the product: by itself, natively
cmp <stage1 asm> <product asm>                               # the native backend's fixpoint
```

`LUCB=../luce-seed/build/lucb ./build.sh` replaces the first line with the
seed named in `bootstrap/SEED`.

```text
build/luce-base build src/main.lucb --native -o build/native   # the compiler, natively
build/native build src/main.lucb --emit=c                      # must match the C build's C
build/native build src/main.lucb --native --emit=asm           # and its assembly
```

`test.sh` runs these lines, comparing the C and assembly the generations emit
rather than the binaries, which differ only in the linker's identifiers. The
seed is pinned: `LUCB=../luce-seed/build/lucb ./build.sh` still starts from
it, but nothing requires it. `tools/snapshot.sh` refreshes the snapshot.

The two backends are the two executions now: every module's tests and every
sample run through both under the gate, and the seed's program corpus runs
natively through `tools/native_check.sh`.

## The standard library

`luce-base` is also where the standard modules of base.md §16.6 are Base
source instead of seed builtins. `memory`, `io`, `files`, `process`,
`thread`, `sync`, `atomic`, `c`, `strings`, `paths`, `math`, `time`,
`testing`, and `net` (TCP and UDP over BSD sockets, with `resolve`) are in
`src/sema/prelude.lucb`, each a piece of Base over `extern` declarations of the C
library; every constant and layout that differs by target is a branch on the
`platform` module the compiler writes for the build, pruned at compile time,
and `tests/platform` proves each host's arms. `tests/samples/library.lucb` and
`tests/samples/loopback.lucb` exercise them under the gate. What remains grows in
the order the operating system needs it:

1. TLS for `net`, through a bound library.
2. `graphics`: windows, input, and a GPU surface through the host (Metal on
   macOS, Vulkan elsewhere), reached through `extern` and `luce bind`.

Each module is Base code over `extern` declarations; nothing in the compiler
knows their names. That is the point of Base: the operating system's own
libraries are ordinary packages.
