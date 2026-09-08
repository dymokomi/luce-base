# Plan

Slices are ordered by what the self-hosting gate needs. Each ends with the
unit tests green in the oracle and the binary agreeing on `tests/samples/`.

| Slice | Scope | Gate |
| --- | --- | --- |
| 1. Lexer | tokens, literals, layout, `luce-base lex` | done: every file under `tests/samples/`, the seed's `testdata/`, and this tree tokenizes |
| 2. Syntax | arena tree, full grammar of §21, `luce-base parse` | done: every Base file we have parses, including this compiler's own sources |
| 3. Checking | names, types, effects, `luce-base check` | done: every sample and every source of this tree checks; every program under `tests/samples/errors/` is rejected for its stated reason |
| 4. C backend | checked tree to C, `luce-base build` and `luce-base test` | done: every sample with `main` builds and runs; every module's tests pass through the binary |
| 5. Self-hosting | the seed pinned; the standard modules in Base | done: `bootstrap/luce-base-HOST.c` is the compiler's own C for each host and `build.sh` starts from it with only a C compiler; every standard module is Base source under `src/std/` over `extern` declarations, embedded into `src/sema/prelude.lucb`; the C runtime is down to traps, checked arithmetic, formatting, and hashing |
| 6. Native | one target, arm64-macos, proved against the C backend | done: every sample and every module's tests agree under both backends; the compiler builds itself natively and the native build emits the same C and assembly as the C build; `tools/native_check.sh` runs the seed's corpus natively |
| 7. Proving | programs big enough to break things, built natively with no C in the path, each driven from outside by its `check.sh` | done: `http` (a threaded server), `editor`, `debugger` (`luce-base-d`), `gui` (SDL3), `metal` (a GPU computation), `asm`, `freestanding`, `manifest`, `abi` (the calling convention both ways), and `pkgconfig` are all under the gate; a host lacking what one needs fails the gate and says what to install |
| 8. Codegen | the optimiser over the IR, then the release | done: inlining, single-assignment form, value numbering, load elimination, and de-SSA over the IR (`docs/DESIGN.md`, "The optimiser"), measured by `tests/optimization`; a register allocator over the single-assignment form is what remains |
| 9. Targets | the second host: x86_64 Linux, natively, with the gate green there | done (0.2.0): `src/back/x86_64.lucb` behind the `Backend` interface, the host read from the compiler's own `platform` module, per-target bootstrap snapshots, `tests/platform`; the calling convention proved both ways by `tests/programs/abi`; next hosts are arm64-linux (the x86_64 generator's ELF half with the arm64 generator's instructions) and x86_64-macos (the reverse) |
| 10. Linking | `luce-ld`, a linker of our own, as Zig carries one, in its own repository | a native build that needs nothing from the host toolchain |

## What remains

The one to-do list, in the order to close it. Each item names its gate: the
test that turns it from open to done. `docs/AUDIT.md` is the matrix of what is
verified, limited, planned, or excluded today; `docs/RELEASES.md` is the
history. Nothing is listed here that already exists.

### Missing

1. **Splitting a life at a call.** The allocator (0.11.0) gives each temporary
   one place for its whole life; a value live across a call takes a
   callee-saved register or the frame, where a split would let its two halves
   take different registers, and the generators' fixed scratch registers
   (x9–x13, r10, r11, xmm8–xmm11) are not in any pool. Gate: the
   `tests/optimization` limits lowered again, the native fixpoint kept, the
   compiler's own build time recorded in `docs/RELEASES.md`.
2. **Every error in one pass, with notes.** The checker stops at the first
   error and names no second location. Gate: the rejection suites report every
   error of a program with several, and a note names the other site (the
   earlier declaration, the escaping local) where one exists.
3. **`luce fmt`.** No formatter exists. Gate: every source in the tree is a
   fixpoint of the formatter, and the gate checks it.
4. **`luce bind`.** Bindings to C headers are written by hand. Gate: SDL3 and
   the Metal entry points bound by the tool, the `gui` and `metal` programs
   built on those bindings, and every FFI shape the tool emits proved by
   `tests/programs/abi`.
5. **The other native hosts.** arm64-linux and x86_64-macos have the target
   model and C emission, no native generator, and no gate; wasm32 is named by
   the specification and not modelled at all. Gate: a native generator and a
   green gate on each host, or wasm32 struck from §19.5.
6. **DWARF.** `--debug` emits frame descriptors for `luce-base-d` and nothing
   `lldb` or `gdb` can read. Gate: a breakpoint, `bt`, and `p local` in `lldb`
   on macOS and `gdb` on Linux, scripted under `tests/programs/debugger`.
7. **Library breadth.** `net` has no TLS and no IPv6, `io` is thin, and there
   is no `graphics` module; the proving programs reach SDL3 and Metal through
   `extern` alone. Gate, in order: TLS for `net` through a bound library, IPv6
   in `net`, then `graphics` (windows, input, a GPU surface: Metal on macOS,
   Vulkan elsewhere) reached through `extern` and `luce bind`, each with a
   proving program under the gate.
8. **`luce-ld`.** Everything links through the host's `ld` or `cc`. A linker
   of our own, as Zig carries one, in its own repository. Gate: a native build
   that needs nothing from the host toolchain.

### Hardening

The fuzzer exists (`tools/fuzz.py`, 0.11.1): mutated programs must be accepted or
rejected with a positioned diagnostic, generated programs must agree across the four
executions; the gate runs its short deterministic pass, and `--minutes M` runs it for
longer. Run it for hours on both hosts before a release; every finding becomes a test.

9. **The optimiser under a differential matrix.** `tests/optimization` counts
    instructions; nothing runs every program at every level. Gate: the
    conformance runner builds every positive program at `--opt 0` through
    `--opt 3` and compares the outputs, in the gate.
10. **Sanitizers and a litmus suite.** No sanitizer run and no test of the
    orderings. Gate: the conformance and robustness programs built through the
    C backend under address, undefined-behaviour, and thread sanitizers as a
    gate step; a litmus suite for the atomic orderings of §15.1 under
    `tests/platform`.
11. **The Linux pass.** Everything since the last pull is proven on the Mac
    only; `tests/programs/abi` runs the packed-record convention at run time
    there for the first time. Gate: `./test.sh` green on x86_64 Linux at each
    release, recorded in `docs/RELEASES.md`.
12. **Continuous integration.** No checked-in workflow runs both hosts on every
    push; "green on both hosts" is a claim about the last time someone ran it.
    Gate: a workflow that builds and gates on arm64 macOS and x86_64 Linux on
    every push, with the toolchain versions recorded, and a red gate blocking a
    release.
13. **The C backend at `-O2`.** The release pass exists and found one dangling
    buffer on its first run; it is one build flag away from the sanitizer run
    above. Gate: item 10 covers it.

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
source instead of seed builtins. `platform`, `c`, `core`, `memory`, `io`,
`luce`, `atomic`, `thread`, `sync`, `files`, `process`, `strings`, `paths`,
`math`, `time`, `os`, `testing`, `net` (TCP and UDP over BSD sockets, with
`resolve`), and `debug` are `src/std/*.lucb` in the binding order of
`src/std/ORDER`, each a piece of Base over `extern` declarations of the C
library; every constant and layout that differs by target is a branch on the
`platform` module the compiler writes for the build, pruned at compile time,
and `tests/platform` proves each host's arms. What remains for the library is
item 7 above.

Each module is Base code over `extern` declarations; nothing in the compiler
knows their names. That is the point of Base: the operating system's own
libraries are ordinary packages.
