# Audit, 2026-09-06 (updated after the fixes)

What the compiler provably does today, the bugs the audit found and their fixes, the parts of
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
| Inline assembly with named-register operands | `tests/programs/asm`: both backends agree |
| Standard modules in Base | memory, io, files, process, thread, sync, atomic, c, strings, paths, math, time, testing, net |
| Proving programs | http, editor, debugger, gui, metal, asm, each with a gate-run `check.sh` |
| Warnings and pruning (§19.6) | both compilers; `-W` prints; unused locals, imports, private functions, unreachable code, and literal branches are pruned by the checker; `tests/samples/warnings.lucb` pins the text |

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

## 3. Bugs found in luce-base, all fixed

Ranked by what they broke; each root cause was found in the source, each fix is
pinned under `luce-seed/testdata/programs/values/` or `tests/samples/errors/`.

1. **Lambdas compiled to a null pointer.** Both backends emitted 0 for a
   `.lambda` node. Now the checker hoists each lambda to a hidden module
   function (`__lambdaN`) with a one-`return` body; enclosing locals are hidden
   from its body, so a capture is a diagnostic (§9.6). `lambda_value`,
   `lambda_capture`.
2. **Function attributes were rejected.** The parser stored the attribute list
   in the field that holds the parameters. Attributes have their own field now
   and reach both backends: `__attribute__` in C; `.weak_definition`,
   `.no_dead_strip`, `.section`, and no prologue for `naked` natively.
   `attributes_linkage`, `naked_function`.
3. **The native backend ignored `align(N)`.** The layout now honours it on a
   struct and on a field; both backends agree with C. `layout_align`.
4. **Module-level `asm` blocks were dropped.** They reach the IR (`module_asm`)
   and the C (`__asm__` at file scope). `module_asm`.
5. **`T: Comparable` called the wrong `compare`**, and scalars had none. Numbers,
   `char`, and `str` have a builtin `compare`; a constrained call at a scalar
   routes to it in both backends. `compare_scalars`.
6. **A method on a value receiver** (`Flags.a.name()`, a call's result) failed
   to lower natively and took an rvalue's address in C. Both hold the value in a
   temporary. `enum_case_method`.
7. **`var v: volatile i64` was accepted.** `volatile` qualifies a pointee (§15.2).
   `volatile_local`, `volatile_pointee`.
8. **Module-level `var x: T = ---` did not parse.** `global_uninit`.
9. **Unused imports were not diagnosed.** By decision they are now pruned by the
   checker in both compilers, so nothing after it sees them; §16.3 says so.
10. **A triple-quoted text kept the newline after its opener.** By decision it is
    dropped, in both compilers; §4.4 says so.

Reclassified: `out fds: i32[2]` on an extern was a misuse of `out`. §17.1 makes
`out` parameters extra results returned as a tuple; neither compiler implements
that yet (see §5).

## 4. Bugs found in the seed oracle, all fixed

Fixed in luce-seed 0.5 and 0.6: `weak func` and `weak var` as attributes; naked
bodies as asm only; `value.bits()` and `f64.bits(u)`; a labeled loop keeping
its variable (the label has its own node field); a top-level binding ending
with a suite; a multi-line `asm` header; unions reinterpreting through the
target's byte layout (`interp/punning`); an untyped arithmetic expression
taking the width it meets; a float literal adapting to `f32`; a floating
literal emitted with a point; a method on a value receiver; an integer-backed
enum forward-declared for its methods.

Remaining, by design: the interpreter cannot run `asm`, so naked functions and
module asm are proven by the two backends agreeing (`# oracle: none`).

## 5. Missing functionality

Parts of the specification neither compiler implements. Ordered by how much a
Base programmer would miss them.

| § | Feature | State |
| --- | --- | --- |
| 14.4 | `Display`, `Iterator`, `Iterable` | done in both: `for` desugars to the protocol; a `Display` struct in a formatted string calls `display` through the string's own sink |
| 17.1 | `out` parameters as tuple results | done in both: an extern's `out` parameter takes no argument and is answered after the declared result, as a tuple when there is more than one value |
| 8.9 | compiler-chosen `reg` operands, `{name}` substitution natively | done in both: the lowerer picks x11–x15 / d16–d23 and writes the register into the text; the C backend uses named operands |
| 5.1 | `f16` | done in both: binary16 in memory, `_Float16` in the C, half instructions in the native backend (`tests/samples/half_floats.lucb`) |
| 16.4, 17.4, 11.3 | the manifest: package name, `symbol_prefix`, `[native]` inputs, error-code identity | done in both: `luce.toml` is found upward from the entry file; `[native] sources`, `libraries`, `link_search`, `frameworks` reach the C compiler and the linker (`pkg_config` is parsed, not yet run by luce-base); exports carry the prefix; every `ErrorCode.package(n)` carries sixteen bits of the package's name (`tests/programs/manifest`) |
| 17.6 | `luce build --lib` with a generated header | done: `--lib -o NAME` writes `NAME.a` and `NAME.h` through either backend; exports of spans, `str`, fallible results, and non-pointer optionals are refused by the header writer for now |
| 19.4 | `--freestanding`, `--profile diagnostic` | `--freestanding` done natively (no shim, the program's `export naked func _start` is the entry, `tests/programs/freestanding`); `--profile diagnostic` fills `---` storage with 0xAA and the C allocator quarantines released blocks filled with 0xDD and records the last 256 allocation sites (`memory.allocation_sites()`), all shown by `tests/samples/diagnostic.lucb` |
| 19.5 | targets beyond arm64-macos | missing; the `Backend` interface is ready |
| 17.5 | `luce bind` | missing; a project of its own |
| 19.6 | `luce fmt`, `--costs`, `--target` listing | `--target` listing done (`build FILE --target` names the targets and the asm architectures the program covers); `fmt` and `--costs` missing |
| 16.6 | TLS for `net`, a `graphics` module | missing |
| plan 9 | `luce-ld` | not started |

Known and accepted: the
interpreter cannot run asm; `var views: Interface[N]` is rejected by both
compilers because a view has no zero value; a union member written only
through a pointer taken earlier is not seen by the interpreter's punning.

## 6. The order

1. **Language gaps**: `Display`, `Iterator`, `Iterable` in both compilers,
   `out` parameters as tuple results, asm `reg` operands natively.
2. **Tooling and targets**: `--lib` with the header, `--freestanding`, `fmt`;
   arm64-linux as the second target; `luce bind` as its own tool.
3. **Release**: `luce-ld`, then the luce-base release and luce-full in Base.
