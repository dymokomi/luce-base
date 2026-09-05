# Plan

Slices are ordered by what the self-hosting gate needs. Each ends with the
unit tests green in the oracle and the binary agreeing on `samples/`.

| Slice | Scope | Gate |
| --- | --- | --- |
| 1. Lexer | tokens, literals, layout, `luce-base lex` | every file under `samples/` and the seed's `testdata/` tokenizes; token counts match the seed's `lucb lex` |
| 2. Syntax | arena tree, full grammar of §21, `luce-base parse` | the seed's parse dumps agree on the same files |
| 3. Checking | names, types, effects, diagnostics with stable codes | the seed's `check` diagnostics agree on positive and negative programs |
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
