# Audit, 2026-09-06

What the compiler provably does today, the bugs the audit found, the parts of
the specification neither compiler implements, and the order to close them in.
Every claim was checked against the three executions: the seed's interpreter,
the C backend, and the native arm64 backend. Both gates were green at the time.

## 1. Done

Plan slices 1–6 are done; 7 (proving) and 8 (codegen) are in progress. The
compiler self-hosts through both backends and reaches a fixpoint on the C and
the assembly it emits for itself. The native path involves no C.

| Area | Evidence |
| --- | --- |
| Lexer, parser, checker, C backend, self-hosting, native backend | `test.sh` fixpoint on C and assembly |
| Backend interface, HIR / MIR layering | `back.backend.Backend`; C from the checked tree, native through `ir` |
| Register allocation | linear scan over x19–x28 and d8–d15, live ranges extended across back-edges; 27% less assembly |
| Escape rule §6.6 | both compilers; zero false positives across every program we have |
| FFI: externs, variadics, function-type casts, GOT addressing, `-l -L -framework` | SDL3 editor, Metal compute via the Objective-C runtime |
| Inline assembly with named-register operands | `programs/asm`: both backends agree |
| Standard modules in Base | memory, io, files, process, thread, sync, atomic, c, strings, paths, math, time, testing, net |
| Proving programs | http, editor, debugger, gui, metal, asm, each with a gate-run `check.sh` |

Sizes: 21,790 lines of Base in this tree; 135 corpus programs and 462 unit
tests in the seed; 44 module tests and 16 rejection samples here.

## 2. Verified this session

One probe per feature, run through both compilers and, where it built, the
native binary and the oracle. Listed only when every applicable execution
gave the right answer.

| § | Feature | luce-base | seed | native | oracle |
| --- | --- | --- | --- | --- | --- |
| 4.4 | raw, byte, triple-quoted, `\u{..}` literals | ok | not in core | ok | — |
| 5.7 / 9.3 | tuples and multiple results | ok | ok | ok | ok |
| 6.3 | `thread_local var` | ok | ok | ok | ok |
| 7.2 | wrapping, saturating, checked arithmetic | ok | ok | ok | ok |
| 7.5 | `f64.bits(u64)`, `value.bits()` | ok | rejects | ok | — |
| 7.8 | `match` and conditional expressions | ok | ok | ok | ok |
| 8.5 | labeled `break` / `continue` | ok | rejects | ok | — |
| 8.8 | `errdefer` | ok | ok | ok | ok |
| 9.2 | `noalias` | ok | ok | ok | ok |
| 9.8 | `used`, `section` on `var` | ok | ok | ok | — |
| 10.4 | union punning: scalar, struct, byte-array members | ok | ok | ok | wrong |
| 12.3 / 12.4 | `with`, `new … in`, a hand-written `Allocator` | ok | ok | ok | ok |
| 13 | generic structs, generic methods, generic interfaces | ok | methods, interfaces rejected | ok | — |
| 14.2 / 14.3 | static interface use, views, argument coercion | ok | ok | ok | ok |
| 15.1 | atomics: `+=`, `add`, `store`, `load`, `cas`, `fence` with orderings | ok | ok | ok | ok |
| 16.5 | `test` declarations | ok | ok | ok | — |
| 17.2 | variadic externs | ok | ok | ok | — |
| 17.6 | `export func`, `export` methods, fallible exports | ok | fallible rejected | ok | — |
| — | stress program: generics, payload enums, interfaces, function values, recursion | ok | ok | ok | ok |

Every code block in the specification was also run through both compilers:
of 68, 21 check in both, 44 are fragments that fail at the same position in
both, and 3 check only here.

## 3. Bugs in luce-base

Ranked by what they break; each root cause was found in the source.

1. **Lambdas compile to a null pointer, then crash.** `apply((x) => x + 1, 41)`
   parses and checks and the oracle answers 42, but `emit.lucb` emits
   `((void*)0)` and `lower.lucb` emits constant 0 for a `.lambda` node.
   Fix: hoist each lambda to a hidden module function during checking. Medium.
2. **Every function attribute is rejected.** `inline`, `noinline`, `cold`,
   `weak`, `used`, `section`, `naked` before `func` fail with "a parameter
   needs a type": the declaration parser stores the attribute list into
   `n.right`, where a function keeps its parameters (`parser.lucb:286`).
   Attributes on `var` work. Fix: an own field, then emit them:
   `__attribute__` in C, `.weak_definition` / `.no_dead_strip` / `.section`
   natively, no prologue for `naked`. Small.
3. **The native backend ignores `align(N)`.** `types.lucb` reads only the
   packed flag; the parser stores the alignment expression and nothing reads
   it. `align(16) struct Vec` is size 8, alignment 4 natively and 16, 16 under
   C; `align(8) var b` on a field is ignored the same way. The backends
   disagree on an ABI fact. Fix: honour it in `aligned()` and the layout,
   per type and per field. Small.
4. **Module-level `asm` blocks are dropped.** The checker accepts a
   file-scope `asm arm64:` block and both backends skip it, so its symbols
   are undefined at link (§8.9). Fix: emit verbatim natively, top-level
   `__asm__` in C. Small.
5. **`out` array parameters on externs break both backends.**
   `extern func pipe(out fds: i32[2]) -> i32` emits a prototype that conflicts
   with the header's, and the native call crashes; neither backend reads the
   `out` flag. Fix: pass `out T[N]` as a pointer to its first element. Small.
6. **`T: Comparable` calls the wrong `compare`.** The monomorphised
   `item.compare(best)` passes two arguments to the one-argument
   compiler-supplied compare: a C compile error, a wrong result natively.
   Separately, `a.compare(b)` on a scalar or `str` is "this value has no
   members" here while the seed supplies it (§14.4). Fix: a builtin
   `compare` for integers, floats, `char`, `str`, and route the constrained
   call through it. Medium.
7. **`var v: volatile i64` is accepted.** §15.2 makes `volatile` a pointee
   qualifier; the seed rejects the local form. Tiny.
8. **Module-level `var x: T = ---` does not parse** (§6.2); the seed parses
   it. Tiny.
9. **Unused imports are not diagnosed**; the seed rejects them. Small.
10. **A triple-quoted string keeps the newline after the opening delimiter.**
    Both backends agree; the specification does not say. Decide, write it
    into §4.4, pin it. Tiny.

## 4. Bugs in the seed oracle

| What | Observed | Consequence |
| --- | --- | --- |
| `weak func`, `weak var` | rejected as full Luce; §9.8 lists them as Base | blocks the attribute differential |
| `naked func` | "must return a value on every path": the asm body is not terminating | blocks naked functions |
| `value.bits()` on a float | "methods are called on structs"; §7.5 defines it | luce-base is right and untested |
| labeled `for` | the outer loop's variable is unknown inside the inner loop | luce-base is right and untested |
| a nested block at end of file | "expected newline" at EOF after a trailing `match` or `catch` block | parser robustness |
| multi-line `asm` operand lists | "expected a dedent" on the continuation line; the spec's own §8.9 example | the example does not parse |
| union reinterpretation | typed slots, not bytes: a scalar pun reads 0, a byte-array pun traps | unions proven by C-versus-native only |

## 5. Missing functionality

| § | Feature | State |
| --- | --- | --- |
| 14.4 | `Display`, `Iterator`, `Iterable` | missing in both; the largest language gap |
| 14.4 | `compare` on scalars and `str` | missing here (bug 6) |
| 9.8 | `naked func` | missing in both |
| 8.9 | compiler-chosen `reg` operands, `{name}` substitution natively | C only |
| 5.1 | `f16` | missing in both; low demand |
| 17.6 | `luce build --lib` with a generated header | missing; `export` works |
| 19.4 | `--freestanding`, `--profile diagnostic` | missing |
| 19.5 | targets beyond arm64-macos | missing; the `Backend` interface is ready |
| 17.5 | `luce bind` | missing; a project of its own |
| 19.6 | `luce fmt`, `--costs`, `--target` listing | missing |
| 16.6 | TLS for `net`, a `graphics` module | missing |
| plan 9 | `luce-ld` | not started |

Known and accepted: the allocator handles block-local temporaries only; the
interpreter cannot run asm or unions; `var views: Interface[N]` is rejected
by both compilers because a view has no zero value.

## 6. The order

1. **Bugs here**: attributes and `align` first (ABI and linkage facts), then
   lambdas, module asm, `out` parameters, `Comparable`, then the four small
   ones. Each pinned in the seed corpus or `samples/errors`; both gates green.
2. **The oracle**: the seven seed bugs, so the differential covers what it
   currently cannot.
3. **Language gaps**: `Display`, `Iterator`, `Iterable` in both compilers;
   `naked func` end to end; asm `reg` operands natively.
4. **Tooling and targets**: `--lib` with the header, `--freestanding`, `fmt`;
   arm64-linux as the second target; `luce bind` as its own tool.
5. **Release**: `luce-ld`, then the luce-base release and luce-full in Base.
