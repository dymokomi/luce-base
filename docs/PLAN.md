# Plan

Slices are ordered by what the self-hosting gate needs. Each ends with the
unit tests green in the oracle and the binary agreeing on `samples/`.

| Slice | Scope | Gate |
| --- | --- | --- |
| 1. Lexer | tokens, literals, layout, `luce-base lex` | done: every file under `samples/`, the seed's `testdata/`, and this tree tokenizes |
| 2. Syntax | arena tree, full grammar of §21, `luce-base parse` | done: every Base file we have parses, including this compiler's own sources |
| 3. Checking | names, types, effects, `luce-base check` | done: every sample and every source of this tree checks; every program under `samples/errors/` is rejected for its stated reason |
| 4. C backend | checked tree to C, `luce-base build` and `luce-base test` | done: every sample with `main` builds and runs; every module's tests pass through the binary |
| 5. Self-hosting | the seed pinned; the standard modules in Base | done: `bootstrap/luce-base.c` is the compiler's own C and `build.sh` starts from it with only a C compiler; `memory`, `io`, `files`, `process`, `thread`, `sync`, and `atomic` are Base source over `extern` in `src/prelude.lucb`; the C runtime is down to traps, checked arithmetic, formatting, and hashing |
| 6. Native | one target, arm64-macos, proved against the C backend | every program agrees under both backends |

## The bootstrap gate

```text
cc bootstrap/luce-base.c runtime/lucb_rt.c -o build/stage0   # the snapshot, with only a C compiler
build/stage0 build src/main.lucb -o build/luce-base          # the compiler from source
build/luce-base build src/main.lucb -o build/stage2          # and again, by itself
cmp <stage1 C> <stage2 C>                                    # fixpoint
```

`test.sh` runs these lines, comparing the C the two generations emit rather
than the binaries, which differ only in the linker's identifiers. The seed is
pinned: `LUCB=../luce-seed/build/lucb ./build.sh` still starts from it, and
the gate still runs every module's tests in its oracle when it is present,
but nothing requires it. `tools/snapshot.sh` refreshes the snapshot.

## The standard library

`luce-base` is also where the standard modules of base.md §16.6 are Base
source instead of seed builtins. `memory`, `io`, `files`, `process`,
`thread`, `sync`, `atomic`, and `c` are in `src/prelude.lucb` now, each a
piece of Base over `extern` declarations of the C library; the constants are
those of arm64-macos, and a second target gets its own copy through the
per-target modules of §16.4. The rest grows in the order the operating system
needs it:

1. `paths`, `strings`, `math`, `testing`: what the compiler and its tests use next.
2. `time`, and the pieces of `process` and `thread` the spec names but nothing calls yet.
3. `net`: sockets, TCP, and UDP over the host's C library, then TLS through a
   bound library.
4. `graphics`: windows, input, and a GPU surface through the host (Metal on
   macOS, Vulkan elsewhere), reached through `extern` and `luce bind`.

Each module is Base code over `extern` declarations; nothing in the compiler
knows their names. That is the point of Base: the operating system's own
libraries are ordinary packages.
