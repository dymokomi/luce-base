# Plan

Slices are ordered by what the self-hosting gate needs. Each ends with the
unit tests green in the oracle and the binary agreeing on `samples/`.

| Slice | Scope | Gate |
| --- | --- | --- |
| 1. Lexer | tokens, literals, layout, `luce-base lex` | done: every file under `samples/`, the seed's `testdata/`, and this tree tokenizes |
| 2. Syntax | arena tree, full grammar of §21, `luce-base parse` | done: every Base file we have parses, including this compiler's own sources |
| 3. Checking | names, types, effects, `luce-base check` | done: every sample and every source of this tree checks; every program under `samples/errors/` is rejected for its stated reason |
| 4. C backend | checked tree to C, `luce-base build` | this tree's own sources compile and pass their tests through the binary |
| 5. Self-hosting | B0 (seed) builds B1; B1 builds B2; B2 builds B3 | B2 and B3 are byte-identical; the seed is pinned |
| 6. Native | one target, arm64-macos, proved against the C backend | every program agrees under both backends |

## The bootstrap gate

```text
lucb build src/main.lucb -o build/B1          # the seed builds luce-base
build/B1 build src/main.lucb -o build/B2      # luce-base builds itself
build/B2 build src/main.lucb -o build/B3      # and again
cmp build/B2 build/B3                         # fixpoint
```

Until slice 5, `test.sh` runs the first line only.

## The standard library

`luce-base` is also where the standard modules of base.md §16.6 become Base
source instead of seed builtins: `memory`, `io`, `files`, `process`,
`strings`, `paths`, `json`, `thread`, `sync`, `atomic`, and `c`. They are
written after slice 4, when this compiler can build them, and they grow in
the order the operating system needs them:

1. `memory`, `io`, `files`, `paths`, `strings`: what the compiler itself uses.
2. `process`, `thread`, `sync`, `atomic`, `time`: what servers and tools use.
3. `net`: sockets, TCP, and UDP over the host's C library, then TLS through a
   bound library.
4. `graphics`: windows, input, and a GPU surface through the host (Metal on
   macOS, Vulkan elsewhere), reached through `extern` and `luce bind`.

Each module is Base code over `extern` declarations; nothing in the compiler
knows their names. That is the point of Base: the operating system's own
libraries are ordinary packages.
