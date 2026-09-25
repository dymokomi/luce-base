# Native loop optimization

The native backend performs these transformations on its own IR. Neither target
uses generated C for optimization. C and Seed remain independent correctness
comparisons and bootstrap routes.

## Pipeline and safety

At optimization levels 2 and 3, `back.opt.ranges` collects unsigned comparisons,
equalities and successful checks while walking the SSA dominator tree. Facts
describe immutable values, not mutable memory. A changed index, length or loaded
value must establish its own facts. Joins without a proof retain their checks.

Checked multiplication also establishes a finite product. That permits smaller
products and row-major indexes to be proved safe: `row < rows` and
`column < width` imply `row * width + column < rows * width` when the dimension
product has already passed its overflow check. Signed and otherwise uncertain
arithmetic retains the original failure behavior.

Level 3 additionally:

1. Collapses mutually recursive phis that have one dominating external value.
2. Moves nontrapping invariant computations to natural-loop preheaders. A load
   moves only when it accesses valid, unchanged, unescaped local stack storage.
   Calls are memory barriers, including their implicit ABI result storage.
3. Versions suitable counted loops for 128-bit SIMD, retaining the original
   scalar loop as both the fallback and the tail.

Proof searches and loop passes have finite work bounds. Exhausting one leaves
an optimization unapplied; it does not authorize removing a check.

## SIMD scope

The vectorizer accepts zero-based, unit-step loops with invariant unsigned bounds,
a straight-line body, and contiguous elements of one 32-bit or 64-bit class.
Supported computations include wrapping integer addition and bit operations, and
floating addition, subtraction and multiplication. A loop may contain at most one
store, or one wrapping integer sum. Four independent vector accumulators reduce
dependency latency for sums.

Loops containing calls, atomics, unresolved checks, branches in their bodies,
unsupported operations or additional loop-carried dependencies remain scalar.
Floating reductions remain scalar. Elementwise floating expressions retain their
operation order, and multiplication/addition are not fused.

For writes, runtime guards require each read stream to have either the same base
or a disjoint byte range. Partial overlap in either direction uses the scalar
loop. The byte-count guard handles integer overflow without forming an
overflowing pointer end. Rounded vector bounds and the scalar tail prevent reads
past the supplied element count, including empty and shorter-than-vector inputs.

Both ARM64 NEON and baseline x86-64 SSE2 implement the generated operations.
Allocated vector registers are used directly where the target instruction permits
it; SSE's destructive destination preserves a distinct right operand. Register
preferences in both directions help coalesce loop-carried copies, subject to the
existing interference checks.

## Frames and instruction selection

Unused temporary and local homes no longer consume stack space. Parameter homes,
implicit call-result storage and debug-described locals remain allocated. Local
selection combines single-use integer comparisons with branches, omits jumps to
the next label, and uses ARM64 immediate arithmetic and direct register addresses.

A `match` on an integer, integer enum, `char` or `bool` with four or more constant
values and no guards dispatches on the scrutinee where it is, never stored. Where the
values are dense (at least 40 % of the range between the least and the greatest name
an arm, at most 4095 entries) the IR's `switch` jumps through a table of arm addresses
in the text: a subtraction, a bounds test and an indirect branch through a table of
label offsets (`adr`/`ldrsw`/`br` on arm64, `leaq`/`movslq`/`jmp *` on x86-64).
Elsewhere it searches the sorted values, and a dense run among them takes a table of
its own. The graph's blocks list every successor (`Block.succs`); de-SSA splits a
table's edges as it splits a branch's. An extension of a value already in its range
(`extub` of a `loadub`) is the value.

`(i32)x` and `(i64)x` of a float are one saturating conversion (`dtosi` marked
saturating): `fcvtzs` on arm64, `cvttsd2si` with the fix-ups for the top of the
range and NaN on x86-64. A checked `T(x)` compares the float with the type's bounds
and traps before an exact conversion. The narrower and unsigned saturating casts keep
`core.f_to_s` and `core.f_to_u`.

Calls and frames. A scalar parameter is promoted like any local, at its own width
(its slot is a register or two wide), and when its only use is the load `ssa.promote`
puts at the entry, the argument moves from its register straight to where that load's
result lives, the moves of all parameters run as one parallel copy (`native/incoming`)
and nothing is stored in the prologue. The address of a slot, or of a field within one,
is formed where it is used (`native/remat`) instead of held in a register or spilled from
the entry, and a load or store through it addresses the frame directly; a load or store
through `base + constant` whose add has no other use folds the constant into the
access. Compares carry small immediates. A result returned through memory is copied
with loads and stores up to 128 bytes, not a call of memcpy, as are aggregate
parameters. The inliner expands an `inline` function at every call up to 1024
instructions, a function calling itself excepted, and counts no block that ends in a
trap against a callee's size; every function is tidied after the second pass.

The assembly-size suite now counts complete function bodies, including code after
numeric trap labels. Its corrected limits were measured from the unchanged
`f4306dc` baseline on both target assemblers, rather than raised to accommodate
the new implementation.

## Regression and performance evidence

`tests/programs/native_loops` runs the same C driver against all four native levels
and both Base C modes. It checks:

- Retained bounds, overflow and division failures, plus output before a trap.
- Changed indexes, views, loop limits and optional call results.
- Discarded aggregate call results and their implicit frame storage.
- Dimension-product proofs and invalid boundary cases.
- Wrapping sums, every tested tail length, and both directions of overlapping maps.
- Empty/null views, inaccessible pages immediately after views, and special floats.
- SIMD in emitted IR, conservative scalar fallbacks and x86-64 cross-assembly.

The full compiler gate adds native bootstrap reproduction, C/Seed bootstrap
comparisons, conformance, optimizer budgets, standard-library checks and fuzzing.
The unchanged native/C benchmark suite and its measurements are described in
[NATIVE-PERFORMANCE.md](NATIVE-PERFORMANCE.md).

This work does not implement arbitrary loop vectorization, floating reassociation,
general heap-load motion, or unused program/data elimination.
