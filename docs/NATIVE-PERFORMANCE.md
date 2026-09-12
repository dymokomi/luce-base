# Native Base performance against C

Measured 2026-09-12 UTC on an Apple M4 (10 cores, 24 GiB RAM), macOS 15.7.9,
on AC power. Native Base is close to C on integer mixing, but needs substantial
loop optimization: array summation takes 14.03× as long as optimized C, array
transformation 9.08×, byte classification 5.86×, and matrix multiplication 6.46×.
These results describe the seven workloads below, not a universal language ratio.

## Measured runtime

Each entry is the median of nine trials. Lower elapsed time is better. C uses
Apple Clang 17.0.0, `-O3 -march=armv8-a -ffp-contract=off`; Base uses the native
`--cpu neon --opt 3` backend with normal safety checks and without debug mode.
The same C driver links to both implementations. Base does not emit C in this
comparison. Compilation, allocation, input setup, warmup and output hashing are
outside the measured kernel call.

| Workload | C -O3 (ms) | Native Base (ms) | Base / C time |
| --- | ---: | ---: | ---: |
| Integer mixing | 100.08 | 102.60 | 1.03× |
| Floating-point recurrence | 101.56 | 159.23 | 1.57× |
| Integer array sum | 109.65 | 1537.97 | 14.03× |
| Float array transformation | 99.60 | 904.32 | 9.08× |
| Byte classification | 99.82 | 584.58 | 5.86× |
| Dependent indexed loads | 99.79 | 131.79 | 1.32× |
| 96 × 96 matrix multiplication | 101.22 | 653.74 | 6.46× |

The initial 30 ms calibration run and the longer 100 ms run agree within about
2% on these ratios. Some individual Base trials were faster than their median:
the long-run array-sum range was 1,232–1,613 ms and the matrix range 598–670 ms.
Median absolute deviation was 1.1% for the sum and 2.5% for the matrix; it was
below 0.4% for the other Base workloads. This is a shared desktop without CPU
affinity or fixed frequency. The raw samples preserve the spread.

Inputs are runtime-generated from seed 812. The working sets are 2 MiB for
integer sums, 6 MiB across the three float transformation buffers, 1 MiB for
byte classification, 1 MiB of dependent links plus their setup permutation,
and three 96 × 96 double matrices. Exact repetitions are in the raw records.
Every timed result agrees bit for bit across all six variants. Verification
also checks three seeds and three small/remainder sizes for every workload.

## What explains the gaps

Three additional observations distinguish compiler costs from algorithm changes:

1. **SIMD explains part of the array gap.** Disabling Clang loop and SLP
   vectorization makes the C sum 3.57× slower and the C transformation 1.64×
   slower. Base still takes 3.93× and 5.53× the time of those scalar C versions.
   Clang emits NEON vector loops for both; Base emits scalar loops. SIMD is
   therefore a substantial opportunity, with additional scalar overhead left.
2. **The scalar loops repeat avoidable work.** The Base sum checks the same
   `index < length` relationship at loop entry and at the following load. The
   transformation performs three bounds checks per element and reconstructs
   floating-point constants inside the loop. Loop-counter overflow checks remain
   even where the loop bound proves the increment safe. The matrix repeats
   checked index arithmetic and bounds checks in its innermost loop. These are
   observations of the emitted assembly, not estimates of each instruction’s
   individual contribution to elapsed time.
3. **Instruction selection and control flow matter too.** Clang classifies bytes
   with a compact bit test and conditional increment. Base uses several branches.
   The C byte, matrix and dependent-load results barely change with vectorization
   disabled, so their gaps cannot be attributed to missing SIMD. Base also emits
   explicit multiply/add addressing and compare/materialize-boolean/branch
   sequences where the target offers more compact forms.

Two-second macOS `sample` profiles of the long-running native sum, transformation
and matrix kernels recorded 1,556, 1,557 and 1,559 main-thread samples respectively;
all were inside the corresponding kernel. The measured hot paths are computation
and indexing, rather than allocation or error-message handling. Sampling confirms
the location of the cost; assembly inspection provides the specific hypotheses.

## Native optimization levels

All levels passed the same output checks. Current levels 0 and 1 are often close;
levels 2 and 3 help some workloads but do not solve the loop bottlenecks.

| Workload | Opt 0 (ms) | Opt 1 (ms) | Opt 2 (ms) | Opt 3 (ms) |
| --- | ---: | ---: | ---: | ---: |
| Integer mixing | 104.28 | 103.79 | 102.67 | 102.60 |
| Floating-point recurrence | 195.06 | 196.82 | 157.85 | 159.23 |
| Integer array sum | 1573.96 | 1574.02 | 1573.18 | 1537.97 |
| Float array transformation | 1133.33 | 1206.22 | 905.10 | 904.32 |
| Byte classification | 667.74 | 677.37 | 587.41 | 584.58 |
| Dependent indexed loads | 139.34 | 139.63 | 133.42 | 131.79 |
| 96 × 96 matrix multiplication | 673.26 | 674.30 | 673.24 | 653.74 |

## Binary size and memory

The normal native executable is **687,656 bytes**, versus **34,424 bytes** for
C: approximately 20× the file size. Both contain the same driver and seven
exported kernels. The native image has 91,628 bytes of machine code and 520,128
bytes in `__TEXT,__const`; C has 3,912 bytes of machine code. Base also reserves
roughly 1.03 MiB of zero-filled global/thread storage. These virtual sections are
not the same as resident memory.

The native lowerer currently visits every nongeneric function and global of
every loaded module, and emission keeps every collected text. The arithmetic-only
library consequently contains unrelated GPU selector strings and ownership/interop
state. Linking with `-Wl,-dead_strip` only reduces Base to 687,504 bytes: a linker
flag alone does not solve this. All seven checksums still match after that relink.

Median peak RSS in the shared driver is only 48–64 KiB higher for Base in these
tests. For example, the transformation uses 7,376 KiB versus C’s 7,328 KiB.
This does not measure Base allocator performance: input allocation is performed
by the common driver, and the kernels allocate nothing.

## Recommended implementation order

1. **Prove and remove redundant loop checks.** Add branch/range facts and
   induction-variable reasoning in `src/back/opt`. Start with bounds checks
   already implied by a loop guard, duplicate checks, and provably safe loop
   increments. Keep checks that cannot be proved, including the dependent-load
   index check. Tests must cover zero-length loops, maximum integers, aliases,
   side effects, and the position/order of failures. The target is faster safe
   code, without changing Base’s failure semantics.
2. **Simplify scalar loop code.** Move pure invariant constants and addresses out
   of loops; strengthen parameter/slot promotion, eliminate jump chains and
   redundant moves, and select scaled loads/stores and direct conditional
   branches. Preserve zero-trip behavior and never hoist a possible trap into
   a path that previously skipped it. Re-measure the scalar C comparison after
   each coherent change. The relevant components are `src/back/opt`,
   `src/back/native/arm64.lucb`, and `src/back/native/frame.lucb`.
3. **Add automatic vectorization on that foundation.** Start with wrapping integer
   reductions and independent float element operations, using the existing vector
   IR and architecture abstraction. Prove alias independence or use guarded loop
   versions, handle tails, and preserve float operation order within each lane.
   Do not reassociate floating reductions or enable fast math to improve scores.

Treat **unused code/data elimination** as a separate footprint task: retain
exported functions, address-taken functions, used/assembly roots and observable
initializers, then retain only reachable functions, tables, globals and texts.
This should also reduce compiler work, but that benefit has not been measured.

Use the existing native/C/interpreter and fuzz gates for correctness, then this
baseline for performance. Once these compiler paths improve, add allocator,
parsing/string, file/network and whole-application measurements, and collect an
independent x86-64 Linux baseline. No Linux performance claim is made here.

## Reproduction and evidence

Compiler implementation: Base `cd44f1d393b312613b437fa8ef581bac94bb1bc3`.
Benchmark harness: `979829ffb1d79496238fc342201ab86ce119f618`.
The native compiler hash, exact commands, source and binary hashes, build times,
hardware/power metadata, trial order, checksums, peak RSS and process times are
retained in the records below.

- [Harness and methodology](../benchmarks/native_vs_c/README.md)
- [Longer-trial raw results](../benchmarks/native_vs_c/results/2026-09-12-m4-100ms.json)
- [Initial-trial raw results](../benchmarks/native_vs_c/results/2026-09-12-m4-30ms.json)
- [Linked section sizes](../benchmarks/native_vs_c/results/2026-09-12-m4-link-size.json)

```sh
./build.sh
python3 benchmarks/native_vs_c/run.py --verify-only
python3 benchmarks/native_vs_c/run.py --reuse-build --target-ms 100
```

Future optimization commits should demonstrate their improvement on unchanged
workloads while retaining the correctness gates and specified arithmetic behavior.
