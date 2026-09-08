# Status, 2026-09-07

One matrix of what this compiler does, kept current: each promise of the specification
is **verified** (implemented, and proved by the gate through every execution), **limited**
(implemented with a boundary named here), **planned**, or **excluded** (outside Base by
decision). History lives in [RELEASES.md](RELEASES.md); the shape of the compiler in
[DESIGN.md](DESIGN.md). A claim here is only made when the gate proves it on both native
hosts, arm64 macOS and x86_64 Linux.

## The executions

Every positive program of the conformance suite runs four ways, and the outputs must be
identical: the C backend at `-O0`, the C backend at `-O2` (`--release`), the native backend,
and the seed's interpreter (`lucb eval`, the reference semantics). Every rejected program is
rejected by this compiler with exit status 1 and the diagnostic the test names, and by the
seed; a crash or an acceptance fails the gate. The robustness suite counts allocations
through a measuring allocator; the optimisation suite counts instructions; the platform
suite proves each host's arms of the standard library and emits every target; the proving
programs (`tests/programs`) are driven from outside; the seed's own corpus is built
natively. A host that lacks something a check needs (SDL3, `pkg-config`, a Metal device)
fails the gate and says what to install: a green gate means every check ran. The one skip
left is Metal on a host that is not macOS. The tree builds itself through both backends to the same C and assembly, and the
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
| 15 | atomics with orderings, `volatile`, threads, `sync` | verified | chapter 15, `tests/programs/http`; `thread.spawn` honours `stack` and `name` (`tests/platform/common/thread_options.lucb`) |
| 16 | modules, packages, the manifest, tests, the standard library | verified | chapter 16, `tests/programs/manifest`, `tests/programs/pkgconfig` |
| 17.1–17.4 | `extern` functions, records, variadics, `out` parameters, C sources and libraries | verified | chapter 17, `tests/programs/abi`: records of every ABI class by value both ways, packed records in memory on x86-64 as System V asks |
| 17.6 | export: methods, function pointers (`luce_fn_N`), spans as pointer and length, fallible functions in the status form, the package's error codes, `--lib` with a header | verified | `tests/programs/abi/exports.lucb` through a C consumer; `tests/samples/exports.lucb` |
| 17.5 | `luce bind` | planned | a project of its own |
| 18 | working with full Luce | excluded | the contract of the full language, which this compiler does not implement; nothing in Base depends on it |
| 19.1–19.4 | the driver, `--emit`, `--lib`, `--freestanding`, `--profile diagnostic` | verified | chapter 19, `tests/programs/freestanding`, `tests/samples/diagnostic.lucb`, `tests/robustness/memory/sites_ring.lucb` |
| 19.5 | targets | limited | arm64-macos and x86_64-linux: native, gate green on each host. arm64-linux, x86_64-macos, x86_64-windows: the target model and C emission exist (`tests/platform` emits and syntax-checks them); no native generator, no gate on such a host. wasm32: named by the specification, not modelled by this compiler |
| 19.5 | instruction-set levels: `--cpu`, the running level, snapshots at the baseline | verified | `tests/platform/common/level.lucb`, `halves.lucb` |
| 19.6 | warnings and pruning | limited | unused locals, imports, private functions, unreachable code, and literal branches are pruned and reported with `-W`; the specification's allocation-leak and unjoined-thread lints do not exist in this compiler |
| 19.6 | `luce fmt`, `--costs` | planned | |
| 16.6 | TLS for `net`, a `graphics` module | planned | the SDL3 and Metal proving programs reach their libraries through `extern` alone |
| — | the optimiser: inlining, single-assignment form, value numbering, load elimination, a register allocator over the exact lives | verified | `tests/optimization`, the native fixpoint; splitting a life at a call is the next step (`docs/PLAN.md`) |
| — | debugging: `--debug` frame descriptors and `luce-base-d` | limited | `tests/programs/debugger`; not DWARF, not `lldb` or `gdb` |
| plan 10 | `luce-ld` | planned | not started |

## The fuzzer

`tools/fuzz.py` mutates every program of the corpus (bytes, tokens, nesting, long
identifiers and literals, invalid UTF-8, bidirectional characters, keywords out of place,
recursive types) and requires the checker to accept or to reject with `file:line:column:`;
a signal, a hang, or a bare message is a finding. It also generates well-typed programs
over a wide slice of the language (integers of six widths under every arithmetic form and
cast, bounded floats, structs by value as arguments, results, elements and through
pointers, spans and `for`, fallible calls, optionals, a backed enum under `match`,
generics, an interface, lambdas, `defer`, text) and requires the C, C `-O2`, native, and
seed executions to agree. The gate runs a short
deterministic pass; `tools/fuzz.py --minutes M` runs longer, and findings land under
`build/fuzz/`. Its first hour found four defects, each now a test: a lexer diagnostic
without its file, a self-assignment and a self-comparison the C compiler refused, a
recursive alias that recursed the checker off its stack, and a bracket depth that
trapped instead of reporting. Its first thirty-minute run after that (0.11.2) found four
more: a constant condition folding a cast as transparent, an identifier long enough to
overflow the diagnostic quoting it (an identifier is now at most 128 bytes, §3.1), an array
length beyond `u64` reported without a position, and a file name that was no identifier
reaching the assembler as a symbol. Widening the generator to the whole value language
(0.11.4) found, before its first long run, a zeroable rule both compilers had loose: an
integer-backed enum with no zero case and a struct with a field default or an `init` were
given zero values (§6.1); and the seed typed an `else` fallback under the optional it was
stored into.

## Known and accepted

- The seed's interpreter cannot run `asm`; naked functions and module-level `asm` are
  proved by the two backends agreeing (`# oracle: none`).
- `var views: Interface[N]` is rejected by both compilers: a view has no zero value.
- `allocation_sites()` is a view of the diagnostic record; read it while no other thread
  allocates. The record's updates are guarded.
- The native path's offsets for the second word of a two-word value are the literal 8:
  the one 64-bit assumption left (DESIGN.md).

## The order

The one to-do list is `docs/PLAN.md`, "What remains": what is missing, what is still to
be hardened, and the gate that closes each item.
