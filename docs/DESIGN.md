# Design of luce-base

The compiler is a Base program, so its design is also a claim about the
language: everything a compiler needs can be written with values, pointers,
spans, explicit allocation, tagged enums, generics, interfaces, and precise
failure. Where the claim fails, the language changes, not the compiler.

## Pipeline

```text
source → tokens/layout → syntax tree → checked tree → C → host cc
```

The first backend is C, as the seed's is, so the compiler can rebuild itself
without the seed. A native backend comes after the self-hosting gate
(PLAN.md), from the same checked tree.

## Modules

| Module | Owns |
| --- | --- |
| `source` | file bytes, line/column positions, the encoding gate of §3.1 |
| `token` | token kinds, the keyword and operator tables |
| `lexer` | bytes to tokens, then the layout pass to `newline`/`indent`/`dedent` |
| `main` | the `luce-base` command |

Later slices add `ast`, `parser`, `check`, `emit`, and `driver`.

## Memory

One arena per compilation, made current with `with`, owns everything with
the lifetime of the run: tokens, nodes, types, interned names. Growable
buffers use the current allocator and free their old block. Nothing is
freed individually.

## Two executions

Every module has `test` declarations that run under `lucb test` in the
seed's oracle. The compiled binary runs the same inputs through `test.sh`.
When they disagree, the seed is wrong, and the seed grows a program under
its `testdata/programs/` before this tree moves on.
