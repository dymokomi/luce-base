- luce-base 0.2.0: the tree builds and its gate is green on x86_64 Linux and (as before) arm64 macOS. `build.sh` starts from the host's snapshot, `bootstrap/luce-base-HOST.c`; `tools/snapshot.sh` writes both from either host.
- luce-seed 0.41 is what `bootstrap/SEED` pins; its gate is green on Linux too.

Where the Linux work lives:

- `src/back/x86_64.lucb`: the x86_64-linux generator behind the `Backend` interface (`src/back/backend.lucb` picks it by `Target.arch`); `docs/DESIGN.md` describes it.
- `src/back/target.lucb`: the host is `platform.name`, the compiler's own target; the `section` rule of §9.8.
- `src/back/lower.lucb`: `sse_words` (the eightbyte classification), `asm` arms by target architecture, the initialiser section by OS.
- `src/main.lucb`: `link_elf`, the C driver as the Linux linker.
- `src/back/emit.lucb` and the seed's `src/emit/call.cpp`: `begin_sequence`/`end_sequence`, the §7.1 fix; `float_constant`, the `f64.bits` spelling.
- `tests/platform/`: the platform suite; `tests/platform/run.sh` is part of the gate.

What the macOS host should confirm after pulling: `./test.sh` green, and the note about `bootstrap/luce-base-arm64-macos.c` absent (that snapshot was written on Linux by cross-emission; if the gate notes a drift, `tools/snapshot.sh` on the Mac and the diff says where the two hosts' C differ, which would be a bug worth a test).

Known edges: the x86_64 generator assumes F16C (every x86-64-v3 machine has it); a packed struct with misaligned fields is classified by its scalars, not by the MEMORY rule of the ABI; a method call's receiver is evaluated by C's own order relative to the hoisted arguments.
