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
./build/luce-base parse samples/hello.lucb
./build/luce-base check samples/json_parser.lucb   # silence means it checks
./build/luce-base build samples/json.lucb -o json  # C through the host cc
./build/luce-base test src/parser.lucb             # the module's tests, compiled and run
./build/luce-base build src/main.lucb -o B2        # the compiler builds itself
```

## Status

Slices 1 to 4: lexer, parser, checker, and C backend for the whole Base
language (base.md §3 to §17, §19, §21), with `lex`, `parse`, `check`,
`build`, and `test` commands. Every sample builds and runs; every module's
tests pass both in the seed's oracle and compiled through this compiler;
and the compiler builds itself, twice, to the same C. The runtime the
generated C links is `runtime/`, carried inside the binary. What remains
for slice 5 is pinning the seed, and moving the standard modules from that
runtime into Base.

## License

Dual-licensed under the Apache License 2.0 and the MIT license, at your
option. See LICENSE, LICENSE-APACHE, and LICENSE-MIT.
