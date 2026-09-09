# Releases

`VERSION` is the one place the version lives; `tools/embed_version.py` writes it into
`src/support/version.lucb` for `luce-base --version`, and `build.sh` runs that first. A
release is a VERSION bump, a tag `luce-base-N`, and a push, the way luce-seed does it
(`bootstrap/SEED` pins the seed the tree is built against).

## 0.11.20

- A tuple literal is not a pattern (§8.4): the checker accepted `(0, 0) =>` in a `match`,
  the C backend then compared structs with `==` and the native backend matched nothing;
  the checker refuses it and says to match one member at a time
  (`08_control/errors/tuple_is_not_a_pattern`). Found probing Base for luce's match
  expressions. The seed did the same; pinned to luce-seed-0.68.
- `match true:` whose arms are all guarded `_`: the C backend declared the subject's
  temporary and no arm read it, so the C compiler's unused-variable error refused the
  program (`08_control/match_of_guards`). Found by luce's match expressions over tuples.

## 0.11.19

- The nesting bound is 100 levels, not 200, and a chain of calls or operators, which the
  parser builds in a loop but every later pass recurses over, counts one level per link
  and is bounded at 300 (`03_source/errors/calls_chain_too_deeply`): the checker's
  recursion over a call chain of a few hundred links overflowed an eight-megabyte stack
  from one environment and not another, which the gate's mutation fuzzer found. A bound is
  only a bound when it holds everywhere. 0.11.18 was tagged on that red gate, which this
  release corrects. The seed's chains bypassed its own bound; pinned to luce-seed-0.67.

## 0.11.18

- `consts.flag` inside a file-scope initialiser, `var g: S = S(f = consts.flag)`: the C
  backend folded an unqualified constant's name to its value but wrote a qualified one as
  the C global, which C refuses in an initialiser (§6.4;
  `16_modules/constant_initialisers`). Found by luce's immortal text literals. The seed
  folded neither and called its checked-arithmetic helpers there; pinned to luce-seed-0.65.

## 0.11.17

- A tuple is a type argument (§13): `Box[(i64, str)]` in an expression and in a type. The
  bracket lookahead read the parenthesis as an index or an array length; the spec's list
  of what a type argument may be names tuples now (`13_generics/tuple_arguments`). Wanted
  by luce's lists of tuples and `map.items()`. The seed read it the same way; pinned to
  luce-seed-0.64.

## 0.11.16

- A `const T[]` whose elements are pointers: the C backend spelled the element pointer
  `const T**`, the qualifier on the pointee, where C wants `T* const*` (§5.3), so a span
  parameter and a `for` over it were refused by the C compiler
  (`05_types/const_span_of_pointers`). Found by luce's list runtime, `list_of[T]` over
  `const T[]` with objects as elements. The seed dropped the pointer altogether in its
  loop; pinned to luce-seed-0.63.

## 0.11.15

- `(List[T]*)p`: the parser's cast lookahead skips a generic instance's type arguments, as
  the cast rule of §7.5 admits (`13_generics/instance_over_a_parameter`, which also covers
  `let q: Box[T]* = p` inside `first[T]`). Found by luce's runtime, a list as a traced
  object. The seed emitted such an instance as a C struct over the parameter; pinned to
  luce-seed-0.62.

## 0.11.14

- `let n: i64? = parse(text) catch: recover none` (§11.4): where a `T?` is expected and the
  handled value is a `T`, the `catch` expression is the `T?`, the handler recovers with it,
  and the value on the good path is wrapped, a nullable pointer keeping its one word
  (`11_failure/catch_into_optional`). Checker, C backend and native backend. Wanted by
  luce's `x = f() catch: recover none`. The seed gained the same rule; pinned to
  luce-seed-0.61.

## 0.11.13

- `out.write(...)` where `out: io.Writer*` auto-dereferences (§7.3), and the C backend
  copied the pointer where the fat pointer belonged, so the C compiler refused the program;
  the native backend already read the view out of the pointee
  (`14_interfaces/view_through_pointer`). Found building luce's compiler through C. The seed
  had the same fault in its emitter and its interpreter; pinned to luce-seed-0.59.

## 0.11.12

- `_ if ((a > b)) => x` was still read as a lambda: a `(` inside a would-be parameter list
  opens a tuple type only after `:`, as in `(p: (i64, i64)) => p.0 + p.1`; anywhere else the
  parentheses hold an expression (`08_control/guard_in_parentheses` covers both). Found by
  luce's generator. Pinned to luce-seed-0.58.

## 0.11.11

- `_ if (n < 0) => x` in a match expression was read as a lambda `(n < 0) => x`; a lambda's
  parameter list holds names with optional types, so anything else before `=>` is a
  parenthesised expression (`08_control/guard_in_parentheses`). Found by luce's emitter,
  which parenthesises every condition. The seed read it the same way; pinned to
  luce-seed-0.57.

## 0.11.10

- A text holding a NUL byte, `"x\0y"` or `b"\0\x01ab"`, came out wrong from the arm64 backend:
  the literals sat in the linker's C-string section, which merges by content up to a NUL,
  so the bytes after it were another literal's. They sit in `__TEXT,__const` now
  (`04_literals/text_c_could_misread` reads past the NUL on every execution). Found by
  luce's bytes tests.

## 0.11.9

- A tuple member is read by its position, `pair.0`, `pair.1` (§5.7), in the parser, the
  checker and both backends; destructuring was the only way before. Luce reads tuples this
  way, and its emitter needs Base to (`10_aggregates/tuple_members`). Pinned to
  luce-seed-0.56, which does the same.
- `none if flag else 3` where the context gave no optional, a `return` of an `i64?` or an
  argument, was typed as the other arm and wrapped whole, so the C had a `{0}` in a
  conditional and the native program answered a present zero. The conditional is now an
  optional of the other arm whatever the context (`08_control/conditional_with_none`).

## 0.11.8

- An array literal passed where a span is wanted, `total(["a", "b"])`, was a temporary of an
  inner C block whose address the span kept, a stack-use-after-scope the host C compiler
  exploited under `-O2`. The temporary is now declared at the function's top, as format
  buffers are (`10_aggregates/array_literal_as_argument`). Found compiling luce's runtime.
  The seed could not compile the shape at all; pinned to luce-seed-0.55, which can.

## 0.11.7

- An array left uninitialised with `= ---` and then sliced empty, `room[..<0]`, made the
  host C compiler refuse the generated code under `-Wuninitialized`: the slice reads the
  array's address, which is what the language allows. The generated C now silences that
  warning, as it does the other style warnings the checker already covers
  (`06_bindings/uninitialised_array_sliced_empty`). Found compiling luce.

## 0.11.6

- The C backend wrote `?` into C string literals as it was, so a text holding `??)` reached
  clang as a trigraph and was refused under `-Werror`. Found compiling luce, whose parser
  tests spell `int??`. Every `?` is now `\?` (`04_literals/text_c_could_misread`). The seed's
  C emitter had the same gap and wrote NUL, `\r`, controls and non-ASCII bytes raw as well;
  pinned to luce-seed-0.54, which escapes them all.

## 0.11.5

- The generator covers memory management and the rest of the value language: heap objects
  and spans with `new`, uninitialised `alloc`, raw bytes, a pointer to a fixed array,
  `free` and `defer free`, a linked list built and released, a `FixedBuffer` arena through
  `in` and `with`, a heap expression tree built under `errdefer`, a fallible allocator with
  `errdefer` caught by its caller; a payload enum by value under `match`, a union, a generic
  struct, vectors, a nullable function holding a named function or a lambda, tuples, static
  and mutating methods.
- What extending it found: a global or local of a generic struct's instance, `Pair[i64]`,
  was refused a zero value because the rule read the fields' parameters instead of the
  instance's arguments (`13_generics/zeroable_instance`); a lambda where `(func(i64) ->
  i64)?` was expected was refused for lacking parameter types
  (`09_functions/lambda_to_nullable_function`); and the seed read `a[(usize)i].x` as a
  generic instantiation, a hazard this tree had worked around since the audit. Pinned to
  luce-seed-0.53.

## 0.11.4

- The generator covers the value language: integers of six widths under wrapping, checked
  (on masked operands), saturating, dividing and shifting arithmetic and every cast between
  them; floats kept finite; structs by value, small and large, as arguments, results, array
  elements and through pointers; spans, slices and `for`; fallible calls with `try`, `catch`
  and `recover`; optionals; a backed enum under `match`; generic functions; an interface
  dispatched statically; lambdas and function values; `defer`; text. Nothing it writes traps.
- What widening it found before its first run: a struct with a field default or a custom
  `init` and an integer-backed enum with no zero case were given zero values, where §6.1
  says they have none; the type table now reads the enum's case values and the struct's
  members (`06_bindings/zero_values_of_enums` and four rejections). The seed had the enum
  rule and lacked the struct one, and typed an `else` fallback under the optional it was
  stored into; pinned to luce-seed-0.52.
- Integer literal decoding moved to `support.literals` and enum case values to the type
  table, so the table can answer zeroability without the checker.

## 0.11.3

- The fuzzer's first hour (`tools/fuzz.py --minutes 60`, seed 23: 19,500 mutations, 2,562
  generated programs) found one defect: the lexer took any letters after a number as its
  suffix, so `25aaa5u8` reached the decoder and was refused without a position. A suffix is
  now checked at the literal, `a literal suffix names an integer or float type`, and the
  decoder's other failures carry a position too (`04_literals/errors/literal_suffix_*`).
- `tools/fuzz.py` flushes each finding as it comes and prints a progress line per round, so
  a long run can be watched through a file or a pipe.

## 0.11.2

- A thirty-minute fuzz run after 0.11.1 (`tools/fuzz.py --minutes 30`), fixed with a test
  each: a constant condition folded a cast as if it were transparent, so `if (i64)(u8)-864
  >= -639:` dropped its branch where the program's value is 160 and the seed took it (the
  folder now converts to the cast's type, §7.5); an identifier of five thousand bytes
  overflowed the diagnostic's buffer and was reported without a position, so an identifier
  is now at most 128 bytes (§3.1, both compilers, luce-seed-0.51) and the buffers quoting
  one hold it; an array length beyond `u64` was reported without a position; and a file
  whose name is not an identifier, `bad-name.lucb`, reached the assembler as a bad symbol
  where it is now refused at `1:1` (§16.1). The generator named a loop counter `i8`, which
  §3.5 reserves; it counts as `idx8` now.
- Pinned to luce-seed-0.51.

## 0.11.1

- `tools/fuzz.py`: mutated programs must be accepted or rejected with a positioned
  diagnostic, generated programs must agree across the C, C `-O2`, native, and seed
  executions; the gate runs its short deterministic pass. Its first hour found, and this
  release fixes with a test each: a lexer diagnostic that named no file; `x = x` and
  `x == x`, legal statements whose C the host compiler refused under `-Wall -Werror`
  (the style warnings generated C may raise are off, the type checks stay); an alias
  that named itself, `type Loop = Loop*`, which recursed the checker off its stack; and a
  source with more open brackets than the lexer's table, which trapped instead of
  saying so; twenty thousand dereferences in a row, which recursed the parser off its
  stack (the parser's nesting guard now covers operators); and a source refused for its
  encoding, which was reported without a line and column.
- Every rejection runner now demands `file:line:column:` on the diagnostic.
- The fuzzer's gate pass found the seed computing an untyped integer under a cast with no
  width, then in the cast's type: `(u8)(200 + 100)` trapped where the compiled program
  printed 44. The spec now says it: a cast gives its operand no context, so an untyped
  operand computes as `i64` and is converted after (§7.5). Pinned to luce-seed-0.50.
- Comparing the two on that rule found a hole in this compiler: a literal inside an
  untyped expression with no context was never checked, so `18446744073709551615 - 1`
  reached the C compiler, and `-(9223372036854775808)` and `let x: i8 = -129` compiled to
  a trap. Every literal in an untyped expression is now checked against the type the
  expression takes, only `-literal` is a negative literal, unary `-` on an untyped value
  is refused for an unsigned type, a literal beyond `u64` is refused instead of trapping
  the compiler, and an integer literal mixed with a float literal says so
  (`04_literals/untyped_context` and seven rejections beside it).

## 0.11.0

The register allocator over the exact lives (`src/back/regalloc.lucb`): liveness by
dataflow over the blocks, intervals with holes, linear scan with two pools per class, the
callee-saved registers and, for a temporary that crosses no call, asm block, or block copy,
the caller-saved ones (arm64: x14, x15, d24–d31, the last as q registers for vectors;
x86-64: xmm12–xmm15, the first float registers a temporary may hold there), a copy's
destination preferring its source's register, and the farthest next use giving way when
every register is taken. Instruction positions are doubled so a result may share the
register of an operand that dies there. `docs/DESIGN.md`, "The native backend's code
quality", describes it; the assembly counts of `tests/optimization` fell by two to seven
percent, and the compiler's own C emission runs eight percent faster under the new
compiler; the allocation costs the self-build a few percent of compile time, which the
lighter `cfg.Graph.blocks_of` keeps to that.

Found and fixed on the way, each with a test through every execution: a small aggregate
result was stored as a whole register, eight bytes into a slot of one to seven, so the
slot's neighbour lost its bytes (`10_aggregates/small_results`); a word's zero-extension
was skipped when its source and destination were one register, keeping the upper half; a
vector operand went straight to a frame home even when the temporary had a register.

## 0.10.1

- A host that lacks what a check needs (SDL3, `pkg-config`, a Metal device) fails the gate
  and names what to install; a green gate means every check ran. The one skip left is
  Metal on a host that is not macOS.
- The first run of `tests/programs/pkgconfig` on the Mac found that pkg-config's `-Wl,`
  flags went to Apple's `ld` as they stand; the driver now hands `ld` the linker's own
  words.

## 0.10.0

The audit of 2026-09-07 (`luce-base-audit-2026-09-07.md`, eleven findings and the
source-reviewed risks behind them), closed in full, each with a test through every
execution.

- **Evaluation order.** The C backend computes a method call's receiver, and a call's
  function value, into a temporary before the arguments it hoists (§7.1), where before the
  receiver was read after them; `07_expressions/receiver_before_arguments`.
- **Float literals.** A decimal literal is converted exactly by `support.decimal`, big
  integers and one rounding, to the width the literal has, so an `f32` or `f16` literal is
  never rounded through a double; the C carries the bits as hexadecimal floats; a literal
  that would round to an infinity is refused; an integer literal never takes a float type,
  as the seed always said. `04_literals/rounding`, the decimal module's own tests.
- **Records at the C boundary.** A record pointing at itself or at a later one no longer
  crashes the checker and is exported as C's linked structure; a field's `align(N)` is
  spelled in the header and honoured by every layout site, through one
  `types.field_alignment`; a packed record with a misaligned field is MEMORY class on
  x86-64 as System V asks, for arguments and results alike. `tests/programs/abi` proves
  records of every class by value both ways; `19_compilation/driver.sh` links C consumers
  against the headers.
- **The exported surface of §17.6.** Function pointer parameters and fields (`luce_fn_N`
  typedefs), spans as a pointer and a length, fallible functions in the status form
  (`int`, 0 or the error's code, the value through `out`), the package's error codes as
  `#define`s, arrays in records; a function whose C face differs is reached through a
  wrapper both backends write. A span inside a function pointer's signature is refused.
- **The library.** `FixedBuffer` aligns addresses, not offsets. A write to a connection
  whose peer has closed answers `closed` on both hosts; macOS refuses the mark once the
  peer is gone, and such a write does not send. `files.list` gives back what it allocated
  through `release_list`, sized exactly; `files.read` frees on a failed read. `to_i64`
  reads the endpoints of `i64`. `process.run` allocates before the fork, closes and reaps
  on every failure, waits again after a signal, and answers exact allocations given back by
  `process.release`; `strings.Builder` keeps the allocator it was made in and has
  `destroy`; `strings.release` for the texts that module makes. `thread.spawn` honours
  `stack` and `name`; `thread.sleep` sleeps on after a signal. `c.errno`. The diagnostic
  profile's records are guarded by a lock, keep the most recent 256 sites oldest first,
  and quarantine pages as well as heap blocks; `FixedBuffer` fills released blocks.
- **The compiler.** The C backend declares a formatted text's buffer at the function's
  top, so a `fmt` argument outlives the expression that made it under `-O2` (found by the
  conformance suite's new release pass); a long left-leaning chain is written as a sequence
  rather than 256 nested brackets; an assertion's report carries a condition of any
  length; the fallbacks that wrote `/* unsupported */` are errors. A call's placements are
  no longer capped at 32 arguments in either native generator. The driver builds command
  lines without a fixed count, restores `-Wall`, and consumes `[native] pkg_config`.
  `.data` on an array is refused, as the specification says (§5.4); a call of a call's
  function value is no longer resolved to the callee's own declaration; a local or a
  parameter may not shadow a declaration of its module (§3.5), as the seed always said.
- **The gate.** Rejection runners require exit status 1 and a diagnostic, and take the
  status without ending the script; a snapshot that has drifted is a failure; positive
  conformance programs also run from the C built at `-O2`; the embedded standard library,
  runtime, version, and `docs/LIBRARY.md` are checked against their sources
  (`tools/*.py --check`); the seed's corpus runs natively under the gate
  (`tools/native_check.sh`), which now fails on a failure.
- **Documents.** `docs/AUDIT.md` is one current status matrix; `README.md` and
  `docs/PLAN.md` say what is, not what was next; `docs/SHARE.md` is gone; the
  specification says what both compilers do about shadowing, array members, exports, and
  the diagnostic profile.
- pinned to luce-seed-0.48: exact float literals and hexadecimal floats in the seed's C
  too, format buffers at the function's top, `# release: true` program tests, fallible
  exports accepted, `c.str` as a generic argument, and the specification in sync.

## 0.9.1

- a bootstrap snapshot is for the family's baseline level (`tools/snapshot.sh` and the
  gate's check pass `--cpu v1` or `--cpu neon`): the Linux host had written its own level 4
  into `bootstrap/luce-base-x86_64-linux.c`, a compiler that would have run on AVX-512
  machines only;
- pinned to luce-seed-0.44; both gates green on arm64 macOS after the Linux pass.

## 0.9.0

The instruction-set level is automatic.

- without `--cpu`, a build for the host is for the level of the processor it is built on
  (`os.cpu_level_running()`, asked by the driver), a build for another target for the
  baseline; `--cpu v1` still asks for a program that runs anywhere (§19.5);
- the x86_64 generator's half floats follow the level: F16C from v3, below it two routines
  of its own (`.Llb_half_to_single`, `.Llb_single_to_half`) emitted once per unit, rounding
  to nearest even and quieting NaNs as the hardware does;
- `tests/platform/common/halves.lucb` proves every half bit pattern through the C compiler,
  F16C, and the software path; `tests/platform/common/level.lucb` proves the choice; on
  x86-64 the platform suite runs every program natively at `--cpu v1` as well.

## 0.8.1

The Linux gate over 0.3.0 to 0.8.0: green on x86_64 Linux, with two fixes it took.

- `atomic_cas` keeps its expected and desired values in the argument list, where only calls
  were looked for: single-assignment renaming, value numbering, the allocator's live ranges,
  and slot promotion now walk them through `ir.argument_range`. The Mac gate had passed by
  allocation luck; `tests/conformance/15_atomics/cas_operands_live.lucb` pins it;
- an asm block's discarded output on a register the block also reads (`cpuid` with
  `in("eax")` and `out("eax") _`) is a dummy output operand in the C, not a clobber, which
  GCC refuses; on x86_64 the native backend pushes the callee-saved registers a block names
  (`rbx` under `cpuid`) around it and stores the outputs after restoring them, since the
  output places' addresses may live in those registers; the lowerer hands a discarded
  output to the generator as a `get_reg` with no place;
- measured here: the vector conformance and optimisation programs run natively at every
  x86-64 level v1 to v4 (this host has AVX-512), `os.cpu_level_running()` answers 4 through
  both backends, and the doubleword lane multiply is `pmulld` at v2 and scalar lanes at v1.

## 0.8.0

Instruction-set levels (§19.5).

- `--cpu` names the level a build is for: x86-64 `v1` (SSE2) to `v4` (AVX-512), arm64
  `neon` and `sve`; the `Target` carries it, `isa.has_vector` and the generators read it,
  `os.cpu_level` states it, and `os.cpu_level_running()` asks the processor with `cpuid`;
- the first level-specific form: x86-64-v2's doubleword lane multiply, `pmulld`;
- `tests/conformance/19_compilation/levels.lucb` and the driver test: the form appears at
  v2 and not at v1, an unknown level is refused; pinned to luce-seed-0.43, whose `platform`
  module carries the level.

## 0.7.0

The optimiser: QBE's passes on this IR.

- `back/cfg.lucb`: blocks, reverse post-order, dominators, frontiers, depths, loop
  weights; `back/ssa.lucb`: slots into temporaries, phis, renaming; `back/gvn.lucb`:
  value numbering over the dominator tree with constant, identity, phi and branch folding
  and unreachable-block removal; `back/load.lucb`: alias classes and loads answered by the
  stores, loads, blits and zeroings before them, across blocks with phis; `back/dessa.lucb`:
  phis back into parallel copies with edge blocks; `frame` accepts a temporary assigned in
  several places; the IR has `phi` and `PhiArg`, the printer shows them and the right
  branch target of `jnz`;
- the passes' memory is the heap's, so the compiler's own build fits its arena; after
  them only the sweep runs, not the old block-local rounds;
- `--opt N` (0 none, 1 single-assignment form, 2 value numbering, 3 the default),
  `--opt-count K` (the first K functions), and `--opt-report` (milliseconds per stage), for
  finding an optimiser's fault by bisection and for measuring;
- measured on the compiler's own 400k-instruction build: the passes take 0.66 s and give
  back 0.05 s in the generator; the optimisation suite's loads fell by a factor of four to
  eight, its instruction counts by a third; the compiler's own code runs no faster, as its
  time is in copies and allocation;
- `docs/DESIGN.md`: "The optimiser", and the plan for instruction-set levels.

## 0.6.0

Vectors compute in vector registers.

- the IR's class `v` and the vector instructions (`loadv storev vsplat vadd vsub vmul vdiv
  vneg vaddw vsubw vmulw vaddo vsubo vadds vsubs vshl vshr vand vor vxor vnot`), each
  carrying its lane shape and meaning the lane-wise scalar operation, traps included;
- `back/isa.lucb` says which shapes each instruction set computes in one sequence
  (`has_vector`); the lowerer emits the vector form there and scalar lanes elsewhere;
- the arm64 generator emits NEON (`fadd v.4s`, `sqadd`, `uminv` for the checked forms,
  `sshl` by a spread count, `dup` for a broadcast); the x86_64 generator emits SSE2
  (`addps`, `paddsb`/`pcmpeqb`/`pmovmskb` for the checked forms, the sign test for
  doublewords, `pshufd` for a broadcast, `xorps` with a sign mask to negate);
- `frame` gives a vector temporary a sixteen-byte home; the IR printer shows lane shapes
  and the right branch target of `jnz`;
- `tests/optimization/vectors.lucb`: the counts on both targets; the x86_64 output
  assembles on macOS and awaits the Linux gate to run.

## 0.5.0

Vectors (§5.12).

- an array of eight or sixteen bytes of one integer or float lane type computes lane by
  lane under `+ - * / +% -% *% +| -| *| & | ^ << >>` and unary `- -% ~`, a scalar of the
  lane type broadcasting; `T[N](x)` fills every lane; `sum()`, `min()`, `max()` fold the
  lanes, a float `min`/`max` skipping NaN lanes; each lane computes as the scalar would,
  traps included, in all three executions (interpreter, C, native);
- a lane-wise operator is not a constant expression (§6.4); a module-level vector is an
  array literal or a broadcast of a constant;
- the lowerer's `place` no longer reads through a unary operator: `(-v)[1]` indexes the
  operator's value;
- `tests/conformance/05_types/vectors.lucb`, `vector_lane_overflow.trap`, and eight
  rejections; pinned to luce-seed-0.42, which has the same feature and eleven tests of it;
- `docs/DESIGN.md` "Vectors": what is done, and what the native backend's SIMD step is.

## 0.4.0

The inliner expands what can be expanded, and the policy is measured.

- `src/back/inline.lucb`: callees before callers (a depth-first order over the call
  graph), callees with calls of their own, one callee's slots shared by its expansions in
  one caller, a function called from one place expanded there whatever its size (up to
  256 instructions) and dropped when nothing else names it; the census of what names a
  function (calls, addresses, witness tables, assembly text, the object file);
- the IR names the trap reporter (`Unit.trap_function`) as it names the initialiser: the
  generators spell no symbol of the program;
- `tests/optimization/inlining.lucb`: a chain of small functions, a once-called large one,
  a method, a generic instance, all gone into `main`; the assembly counts of the suite
  cover whole functions (a local label no longer ended the count); every limit re-measured
  and explained in place;
- measured on the compiler: wider policies grow the code a tenth for no speed, so the
  next step is an optimiser that keeps values out of slots across blocks.

## 0.3.0

The target boundary: one IR, generators attached.

- `src/back/frame.lucb`: the frame layout, slot promotion, live ranges, and the linear-scan
  allocator, once, parameterised by the target's callee-saved registers; both generators
  emit byte-identical assembly to what they emitted with their own copies;
- the IR carries no calling convention: an aggregate argument, parameter, or result has
  a *shape*, its scalar leaves, and each generator reads it by its own rule (arm64's
  homogeneous float aggregates, x86_64's SSE eightbytes); `is_float_only`, `float_count`,
  and `sse_words` are gone from the IR and the lowerer;
- the IR names the function the loader runs (`Unit.init_function`); the generators place
  it in `__mod_init_func` or `.init_array`; the lowerer emits no assembler text;
- `src/back/isa.lucb`: the registers inline assembly may name and the scratch registers
  `reg` operands get, per architecture; `sp`, `fp`, and `lr` are integers, not floats;
- `Target` says its linker (`Linker`: Apple's `ld` or the C driver), its system libraries,
  and its architecture's name; the driver reads them instead of the host's `platform`;
- `types.Table.word` from the target's `pointer_bits` sizes pointers, `usize`, texts,
  spans, interface views, and error values;
- `--lib` with `--emit=c` or `--emit=asm` writes the library's code as text for any target;
- a `let` array converts to `const T[]` only (§5.3), as the seed always said and this
  compiler now does too; three rejection tests; `process.run` takes `const c.str[]`;
- `docs/DESIGN.md` describes the boundary; `docs/AUDIT.md` §7 records the pass.

## 0.2.0

The second host: x86_64 Linux, natively.

- `src/back/x86_64.lucb`: an x86_64 code generator over the same IR, System V calls with
  eightbyte classification (`sse_words` on the IR, computed by the lowerer), ELF sections,
  PIE-safe addressing, initial-exec thread-locals, F16C half floats; the compiler builds
  itself natively on Linux and reaches its assembly and C fixpoints there;
- the host is the target the compiler was built for, read from its own `platform` module;
  the driver links through the C driver on Linux; `asm ARCH` arms are taken for the
  target's architecture; `section(".name")` is one spelling for every target (§9.8);
- both C backends compute a call's effectful arguments in order (§7.1); `f64.bits(N)` is a
  hexadecimal float literal; the label attribute form GCC accepts;
- per-target bootstrap snapshots, `bootstrap/luce-base-arm64-macos.c` and
  `bootstrap/luce-base-x86_64-linux.c`, written from any host by `tools/snapshot.sh`;
- `tests/platform`: the target-dependent standard library proved on each host, every
  target emitted from every host; the proving programs run on Linux (the editor over
  Linux's `termios`, the freestanding program through Linux system calls, an `asm x86_64`
  arm in the assembly program); `asm-x86_64` limits in the optimisation suite;
- the standard library's Linux arms, written before, now executed and proved: the futex,
  `dirent`, `addrinfo`, `open` flags, `mmap` flags, `SOL_SOCKET`, `CLOCK_MONOTONIC`;
- pinned to luce-seed-0.41, whose own gate is green on Linux.

## 0.1.0

The first versioned tree, arm64-macos. What it holds:

- the self-hosting compiler: lexer, parser, checker, C backend, and the native arm64
  backend through the IR with inlining and the pre-backend passes; the product is built
  with no C in its path and reaches a fixpoint on its own assembly;
- the whole specification covered by the conformance suite: 136 programs run through the
  C backend, the native backend, and the seed's interpreter, and 430 rejections checked by
  both compilers, one chapter directory each with a `combined` program beside the simple
  ones; the robustness and optimisation suites; the proving programs;
- the standard library as Base source under `src/std/`, 19 modules, with `docs/LIBRARY.md`
  generated from it; every target-dependent constant and layout decided by the `platform`
  module the compiler writes for `--target`, pruned at compile time;
- targets: arm64-macos natively; the C for any of the five targets with `--emit=c`; the
  Linux values are written and untested, the Windows arms marked.
