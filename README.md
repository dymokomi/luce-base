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

`luce-seed` builds this tree until this tree builds itself; after that the
seed is pinned and only this compiler moves. The language is
[`docs/language/base.md`](docs/language/base.md), the same document the
seed implements. What this compiler must do to earn the switch is in
[`docs/PLAN.md`](docs/PLAN.md); how it is shaped is in
[`docs/DESIGN.md`](docs/DESIGN.md).

## Build and test

```sh
export LUCB=../luce-seed/build/lucb   # or wherever lucb is
./build.sh                            # build/luce-base, the compiler binary
./test.sh                             # unit tests through `lucb test`, then the binary on samples/
./build/luce-base lex samples/hello.lucb
```

## Status

Slices 1 and 2: the lexer and the parser for the whole Base language
(base.md §3, §4, §21), with `lex` and `parse` dump commands. Every Base
file in existence, this compiler's own sources included, parses. Nothing is
checked yet.

## License

Dual-licensed under the Apache License 2.0 and the MIT license, at your
option. See LICENSE, LICENSE-APACHE, and LICENSE-MIT.
