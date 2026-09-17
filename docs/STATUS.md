# Status

One matrix of what this compiler does, kept current: each promise of the specification
is **verified** (implemented, and proved by the gate through every execution), **limited**
(implemented with a boundary named here), **planned**, or **excluded** (outside Base by
decision). The shape of the compiler is [DESIGN.md](DESIGN.md); what remains to do is
[PLAN.md](PLAN.md). The Unix gate covers arm64 macOS, x86_64 Linux and arm64 Linux; the Windows x64 target and its
checks are in [WINDOWS.md](WINDOWS.md).

## The executions

Native compilation is the default for programs, test runners and libraries. C
emission is an explicitly selected comparison/snapshot facility (`--backend=c` or
`--emit=c`). The production bootstrap switches to native after its initial C snapshot
or seed-built compiler. Native correctness is the primary validation target.

Every positive program of the conformance suite runs through C at `-O0`, C at `-O2`
(`--backend=c --release`), and the native backend at `--opt 0`, `1`, `2`, and `3`; all outputs must
agree. Applicable fixtures also run in the seed's interpreter (`lucb eval`, the reference
semantics). Each execution has a deadline. Every rejected program is
rejected by this compiler with exit status 1 and the diagnostic the test names, and by the
seed; a crash or an acceptance fails the gate. The robustness suite counts allocations
through a measuring allocator; the optimisation suite counts instructions; the platform
suite proves each host's arms of the standard library and emits every target; the proving
programs (`tests/programs`) are driven from outside; the seed's own corpus is built
natively. A host that lacks something a check needs (SDL3, `pkg-config`, a Metal device)
fails the default local gate and says what to install. Hosted CI explicitly permits a
missing Metal device and records that missing hardware evidence; it does not replace a
release check on a GPU-equipped Mac. Metal is inapplicable on non-macOS hosts. The tree builds itself through both backends to the same C and assembly, and the
seed named in `bootstrap/SEED` builds it to the same C.

## The matrix

| § | Promise | State | Evidence |
| --- | --- | --- | --- |
| 3–4 | source, layout, encoding, every literal form | verified | conformance chapters 03 and 04; decimal literals converted exactly and rounded once at every width (`support.decimal`), an overflowing literal refused |
| 3.5 | no shadowing: a local or a parameter may not reuse a visible local, a parameter, an import, or a declaration of its module | verified | `03_source/errors` |
| 5 | scalars, pointers, arrays, spans, text, tuples, optionals, atomics, aliases, records, packed and aligned layout, vectors | verified | conformance chapter 05; `align(N)` on a field honoured by every layout site through `types.field_alignment` |
| 6–8 | bindings, constants, expressions, evaluation order, control flow, `defer`, `errdefer`, labels | verified | chapters 06–08; the C backend evaluates a receiver before its arguments and every argument in order |
| 9 | functions, defaults, `fmt`, multiple results, function values, lambdas without capture, attributes, naked functions, inline `asm` | verified | chapter 09, `tests/programs/asm` |
| 10 | structs, enums with payloads, unions and their punning | limited | chapter 10; a union member written only through a pointer taken earlier is not seen by the seed's punning (`# oracle: none` where it matters) |
| 11 | errors, `try`, `catch`, `recover`, `assert`, traps | verified | chapter 11; an assertion's report carries a condition of any length |
| 12 | allocators, `with`, `new … in`, `Arena`, `PageAllocator`, `FixedBuffer`, `CAllocator` | verified | chapter 12, the robustness suite; `FixedBuffer` aligns addresses, not offsets |
| 13 | generics: functions, records, interfaces, constraints | verified | chapter 13 |
| 14 | interfaces, views, `Display`, `Iterator`, `Iterable`, `Writer?` in the null niche | verified | chapter 14 |
| 15 | atomics with orderings, `volatile`, threads, `sync` | verified | chapter 15, `tests/programs/http`; `thread.spawn` honours `stack` and `name` (`tests/platform/common/thread_options.lucb`); `tests/platform/common/litmus.lucb` is the litmus suite of §15.1, message passing under release and acquire and store buffering under sequential consistency, twenty thousand rounds each through both backends |
| 16 | modules, packages, the manifest, tests, the standard library | verified | chapter 16, `tests/programs/manifest`, `tests/programs/pkgconfig` |
| 16.6 | standard `net` HTTP/1.1 and WebSocket primitives | verified | `tests/programs/net_protocols`: framing, fragmented input, limits, short writes, independent handshake/frame vectors and malformed input; [contracts and validation](NET_PROTOCOLS.md) |
| 17.1–17.4 | `extern` functions, records, variadics, `out` parameters, C sources and libraries | verified | chapter 17, `tests/programs/abi`: records of every ABI class by value both ways, packed records in memory on x86-64 as System V asks |
| 17.6 | export: methods, function pointers (`luce_fn_N`), spans as pointer and length, fallible functions in the status form, the package's error codes, `--lib` with a header | verified | `tests/programs/abi/exports.lucb` through a C consumer; `tests/samples/exports.lucb` |
| 17.5 | `luce-base bind`: a header's declarations as a Base module, read through the tool's own preprocessor and declaration parser with the host compiler's include directories and predefined macros; a recipe for what the header does not say; `shims.c` for `static inline` functions and the recipe's macros; every declaration it cannot map reported with its place | verified | `tests/programs/bind`: a header of every shape against a C implementation, the generated module compared with the checked-in one; `tests/programs/gui`: the SDL editor on the module written from the installed SDL3 headers; `tests/programs/metal`: the Objective-C runtime from the SDK's `<objc/message.h>`. Metal's own headers are Objective-C and stay hand-declared; `#pragma clang assume_nonnull` is not honoured, so its pointers come out nullable |
| 18 | working with full Luce | excluded | the contract of the full language, which this compiler does not implement; nothing in Base depends on it |
| 19.1–19.4 | the driver, `--emit`, `--lib`, `--freestanding`, `--profile diagnostic` | verified | chapter 19, `tests/programs/freestanding`, `tests/samples/diagnostic.lucb`, `tests/robustness/memory/sites_ring.lucb` |
| 19.5 | targets | limited | arm64-macos, x86_64-linux and arm64-linux: native, gate green on each host (the arm64 generator serves both arm64 targets through `back.native.arm64.object`, the Mach-O and ELF policy). x86_64-windows: native Win64/COFF, self-hosting and Windows execution tests; see the Windows validation record. `tests/platform` emits every native target's assembly from every host and assembles it with clang's integrated assembler. x86_64-macos: the target model and C emission exist; not pursued. wasm32: the C backend through a WASI toolchain (`WASI_SDK`, or Homebrew's llvm, lld, wasi-libc and wasi-runtimes), the standard library built for it by `build.sh`, the proving program `tests/programs/wasm` run under wasmtime by the gate; one thread, WASI's files, streams, time and environment; `thread`, `net`, `process` and graphics compile and do not link |
| 19.5 | instruction-set levels: `--cpu`, the running level, snapshots at the baseline | verified | `tests/platform/common/level.lucb`, `halves.lucb` |
| 19.7 | the build cache: `--cache-dir`, `LUCE_CACHE`, `--cache-report` | verified | `tests/programs/cache`; the compiler's own build hits in 0.6 s against 10 s |
| 19.6 | warnings and pruning | limited | unused locals, imports, private functions, unreachable code, and literal branches are pruned and reported with `-W`; the specification's allocation-leak and unjoined-thread lints do not exist in this compiler |
| 19.6 | diagnostics: every failing declaration of a module in one run, with a note naming a second site | verified | `tests/programs/several_errors` |
| 19.6 | `luce fmt` | verified | `tests/programs/fmt`; the compiler's and the standard library's sources are fixpoints of it, which the gate checks |
| 19.6 | `--costs` | planned | |
| 16.6 | TLS for `net`, a `graphics` module | planned | the SDL3 and Metal proving programs reach their libraries through `extern` alone |
| — | the optimiser: inlining, single-assignment form, value numbering, load elimination, a register allocator over the exact lives | verified | `tests/optimization`, the native fixpoint; splitting a life at a call is the next step (`docs/PLAN.md`); the allocator's caller-saved integer pool on arm64 is x12–x15 (0.15.0: x12 and x13 joined it, the generator's copies and atomics moved to x16 and x17; the compiler's own build, `src/main.lucb` to assembly on an M-series Mac, went from 4.9 s to 3.9 s and its frame accesses down 3.4%; splitting lives at calls was measured on the same build and gained nothing; 0.17.1: record copies, checked arithmetic, returns and aggregate arguments read their operands and addresses where they live instead of through a scratch register, so the compiler's own arm64 assembly shrank from 1,386,437 to 1,320,604 lines and its register-to-register moves from 126 K to 60 K, on x86-64 from 1,591,929 to 1,536,424 lines and 269 K to 213 K moves) |
| — | debugging: native DWARF and `luce-base-d` | limited | `tests/programs/debugger`, `tests/programs/dwarf`: source breakpoints, mixed C/Base stacks, typed locals, scopes, moved artifacts and static-library consumers; optimized user-variable locations and payload-enum presentation remain future work; `--release --debug` (0.15.0): the optimised program with exact lines and its named locals in frame slots or callee-saved registers, checked in `tests/programs/dwarf` at the same breakpoints; without scopes, inlined frames, or locations for values in temporaries |
| — | `luce-ld` | planned | not started |

## The fuzzer

`tools/fuzz.py` mutates every program of the corpus (bytes, tokens, nesting, long
identifiers and literals, invalid UTF-8, bidirectional characters, keywords out of place,
recursive types) and requires the checker to accept or to reject with `file:line:column:`;
a signal, a hang, or a bare message is a finding. It also generates well-typed programs
over a wide slice of the language (integers of six widths under every arithmetic form and
cast, bounded floats, structs by value as arguments, results, elements and through
pointers, spans and `for`, fallible calls, optionals, a backed enum under `match`,
generics, an interface, lambdas, `defer`, text, payload enums, unions,
generic structs, vectors, nullable functions, tuples, methods, and memory: `new`, `alloc`,
raw bytes, `free`, `defer free`, linked lists, a `FixedBuffer` arena under `in` and `with`,
heap trees under `errdefer`) and requires the C, C `-O2`, native, and seed executions to
agree. The gate runs a short
deterministic pass; `tools/fuzz.py --minutes M` runs longer, and findings land under
`build/fuzz/`.

The last campaign: 2026-09-15 on arm64-macos before 0.15.0, sixty minutes, 21,273
mutations and 2,801 generated programs, no finding.

## The standard library's unit tests

`tests/std/*_test.lucb` are programs of `test` blocks over each module's public surface,
run against the archive through both backends by the gate (`luce-base test`): `strings`,
`paths`, `math` and `math32`, `time`, `utf8`, `io`, `memory`, `files`, and `thread` with
`sync` and `atomic`. A test lives beside the module's users rather than in the module,
since a standard module's own file cannot be built as a program.

## The shape of the tree

`tools/shape.py` measures what the audit of 2026-09-14 asked for: a header box in every
file, `# mark:` sections in every file over 150 lines, no function over 100 lines but
the dispatches, and a `##` line on every `pub` declaration. Today: 161 of 201 files
without a header box, 65 files over 150 lines without marks, 47 functions over 100
lines, 1,325 undocumented public declarations. `tools/shape.limits` is the ratchet the
gate holds: a count may fall, and its limit with it, never rise.

## Sanitizers and the other C compilers

`tests/sanitize/run.sh`, a gate step, builds every positive program of the conformance
and robustness suites through the C backend at -O0 and -O2 under the address and
undefined-behaviour sanitizers (`LUCE_CFLAGS`, which adds flags to every C compile and
link of a program) and runs it against its expectation; the two programs that misuse
memory on purpose say `# sanitize: skip`, and alignment is not checked because a packed
record reads unaligned by design. `tools/cross_c.sh`, another gate step, compiles the
compiler's own C and its standard library's with GNU GCC (the host's snapshot, where the
host's `cc` is clang) and with MinGW-w64 GCC (the x86_64-windows snapshot, from any host),
so the C compilers a release meets have compiled the emitted C before the release runs.

## Known and accepted

- The seed's interpreter cannot run `asm`; naked functions and module-level `asm` are
  proved by the two backends agreeing (`# oracle: none`).
- `var views: Interface[N]` is rejected by both compilers: a view has no zero value.
- `allocation_sites()` is a view of the diagnostic record; read it while no other thread
  allocates. The record's updates are guarded.
- The native path's offsets for the second word of a two-word value are the literal 8:
  the one 64-bit assumption left (DESIGN.md).
- Two limits of this compiler, not of the language, each refused with a diagnostic: a
  declaration has at most 16 type parameters (`types.max_type_arguments`), and at most 16
  labeled loops nest.
- A symbol is read back piece by piece (`back/names.lucb`): a piece holding an underscore
  carries its length in front, so `lb_core_6f_to_s` is `core.f_to_s`, and every shape
  marker starts with `_0`.

## The order

The one to-do list is `docs/PLAN.md`, "What remains": what is missing, what is still to
be hardened, and the gate that closes each item.
