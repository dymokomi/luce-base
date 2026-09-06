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
| `ast` | the syntax tree: one `Node` shape, kinds, flags, sibling lists |
| `parser` | tokens to the tree, the whole grammar of §21 |
| `list` | a growable array over the current allocator |
| `types` | the type table: interned ids for every type, layout, spelling |
| `prelude` | the standard modules of §16.6 as Base source text |
| `check` | names, types, and effects; writes `type_id` and `resolved` onto the tree |
| `main` | the `luce-base` command |

Later slices add `emit` and `driver`.

## Checking

The checker runs in three passes over each module: collect every top-level
name so order does not matter, resolve every signature and field type, then
check every body. What it learns is written onto the tree, so later stages
read `Node.type_id` and `Node.resolved` and never look a name up again.

Types are interned in `types.Table`; two spellings of one type share an id,
so equality is integer equality. The standard modules come from `prelude`:
Base text parsed and bound before the program's own modules, which keeps
`io.stdout()` and `Writer` ordinary declarations rather than special cases.

Generic declarations are checked once, against their written constraints,
with their parameters as opaque types (§13). A use substitutes the arguments
into the signature and never re-checks the body; inference walks parameter
types against argument types. The C backend of slice 4 instantiates.

Diagnostics are `path:line:column: what`, one per run: the first error stops
the check, because a compiler that is also a bootstrap step needs to be right
before it needs to be thorough.

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
