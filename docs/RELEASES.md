# Releases

`VERSION` is the one place the version lives; `tools/embed_version.py` writes it into
`src/support/version.lucb` for `luce-base --version`, and `build.sh` runs that first. A
release is a VERSION bump, a tag `luce-base-N`, and a push, the way luce-seed does it
(`bootstrap/SEED` pins the seed the tree is built against).

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
