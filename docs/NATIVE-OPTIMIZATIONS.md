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
arithmetic retains the original failure behavior. A row alone, `row * width`, is
the case `column = 0`.

Value numbering makes a slice's length what the program wrote: the length of
`values[start..<start + count]` is `(start + count) - start`, which is `count`, so
`at < count` bounds an index into the slice. A choice of index,
`ring[at + 1 if at + 1 < count else 0]`, joins its two values in a phi; each is
proved against the length with the branch's sense on its edge assumed beside the
facts that hold at the access, and the check goes when both are in range. A loop's
head is no such join. An index read from memory (`points[corners[k]]`, a gather)
has no fact and keeps its check.

Level 3 additionally:

1. Collapses mutually recursive phis that have one dominating external value.
2. Moves nontrapping invariant computations to natural-loop preheaders. A load
   moves only when it accesses valid, unchanged, unescaped local stack storage.
   Calls are memory barriers, including their implicit ABI result storage.
3. Versions suitable counted loops for 128-bit SIMD, retaining the original
   scalar loop as both the fallback and the tail.
4. Packs paired float arithmetic within a basic block into vector operations
   (superword-level parallelism, `opt/slp`), below.

A branch establishes more than its comparison's order: `x != 0` puts `x` above 0, so
`x - 1` under `while x != 0` is unchecked; a comparison of a zero-extended word with a
constant bounds the word as well, so `(1 << s) - 1` is unchecked once `s < 32` has been
checked (a shift of a nonzero constant by less than the bits it leaves is at least the
constant); and the edge records what it decided about the condition itself, so a second
branch on the same condition below it (the check of a second shift by the same count) is
a jump. The decided conditions are a table per temporary, not facts, so they add nothing
to the searches.

Proof searches and loop passes have finite work bounds. Exhausting one leaves
an optimization unapplied; it does not authorize removing a check.

## Chains of tests and dead stores

C's `switch` ported as `if s == 4: … elif s == 3: … elif s == 2: … elif s == 1: …` tests
one value against each case in turn. Where four or more such tests follow each other
through their false sides, each later test alone in its block and entered only from the
one before, and the values are dense enough for a table (the rule a `match` uses,
`ir.dense_range`), `opt/switches` makes the head's branch the `switch` the `match` would
lower to. The first test of a value decides; the last test's false side is the default.
A target with phis entered by more than one of the chain's edges ends the chain. An
OPL2 synthesizer's envelope loop ran a fifth faster this way on an M4.

At level 3 a store whose bytes a later store writes again on the one path from it, before
any load that may read them, any call that may, a trap or a return, goes
(`load.dead_stores`). The search follows blocks that have one successor and passes only
instructions that cannot trap. `if (rng & 1) != 0: chip.rng ^= taps` followed by
`chip.rng >>= 1` keeps the arm only its value, which `ifconvert` then selects.

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

Within one basic block, stores of doubles to two neighbouring addresses, or of
singles to four (else two), seed a tree of lanes: lanes one operation computes
(add, subtract, multiply, divide, negate, square root, and conversion between
singles and doubles) become one vector operation, lanes loaded from neighbouring
addresses one vector load, and other lanes are broadcast or packed from their
scalars. A lane still read as a scalar, by an instruction outside the tree or
by a phi past the block's end, is extracted from the vector. A tree is kept when it saves instructions, packings and extracted
lanes counted against it, and only when the new order keeps the program's: no
load or store crosses a store it may touch (the alias classes of `opt/load`), a
call, or, for a store, a check that may trap. Each lane rounds as its scalar did,
so the results are the same bits; sums and products may take their operands in
either order, as value numbering already does. A vec3 kernel that reads its
points whole and writes the result whole, `p + (q - p) * t` on `Float3` or on
doubles, computes x and y together on both targets; two singles on x86-64 are
only loaded, stored and converted, since SSE computes on four.

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

A check that fails (an index out of bounds, an overflow) branches to a path after the
function's body that reports it, so the code that passes falls through each check
with one compare and one branch not taken, and a loop holds no trap's instructions.
A block that only traps (a slice's `start <= end` failing) moves there too when
nothing falls into it. A `--debug` build keeps each trap where its check is.
A `--release --debug` build gives each moved trap its line.

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

Block layout. A jump or branch to a block that only jumps on goes where that block goes,
through runs of such blocks; once registers are allocated, a block of copies between
temporaries that share a register counts as one (the copies `dessa` leaves on an `if`'s
empty arm), but a branch keeps falling into the block after it (`selection.thread_quiet`).
A rotated loop whose body ends in an `if` would take two branches each round: into the
arm, or from it to the latch, and back to the body's top. `native/layout` moves the chain
of blocks that falls into the latch above the body, as C compilers place a loop's blocks:
the latch's test falls into the body, the body's branch to the moved arm goes back up,
and each round takes one branch. The chain begins at a block that follows a jump, return
or trap, holds no loop of its own, and never reaches back to the body; its first label is
the one aligned. The loop's head is entered once, by a branch over the chain.

A product by a constant other than a power of two (or one more than one) that an add
reads right after is one `madd` on arm64: `&chip.voices[i // 2].operators[i & 1]` with
84- and 40-byte records. A product of two variables keeps its `mul` and `add`: as a
`madd` in matrix_product's inner loop it ran a fifth slower. A branch on a value against
zero is `cbz`/`cbnz`, a bounds check against a fixed length compares with an immediate
on both targets, a 64-bit comparison of a zero-extended word with a constant compares the
word itself (`opt.widened_comparisons`), and an x86-64 `add`, `imul`, `and`, `or` or `xor`
whose second operand is already in the destination register takes the first instead of
moving both.

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
trap against a callee's size; every function is tidied after the second pass. A
function whose slots take more than 1 KiB is not expanded unless it is declared
`inline`: its slots would join the caller's frame for the caller's whole call (a
once-called session with a 16 KiB buffer grew luce-server's `RouterState.dispatch`
frame from 3 KB to 35 KB, which overflowed a macOS worker thread's stack).
A function called from one place only is expanded there up to 256 instructions, and
up to 1024 when that place is inside a loop, where the call's cost is paid at every
turn. A small struct an expansion returns or takes apart stays in registers
(`back.opt.split`), including an optional one: the value copied into the optional
and out of it again, and the flag beside it, are fields of their own.

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
