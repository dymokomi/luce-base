# Native Base performance against C

Measured again on 2026-09-12 after implementing range proofs, scalar loop
optimization and automatic SIMD. On the same Apple M4, native Base's integer
array sum now takes **1.26× C's time, down from 14.03×**; the float transformation
takes **1.51×, down from 9.08×**. Integer mixing is at parity. Byte classification
and matrix multiplication improved substantially but remain the largest gaps.
These seven workloads do not define a universal language speed ratio.

## Before and after

The ratio is native Base `--opt 3` elapsed time divided by Clang `-O3` elapsed
time: **1.00 means parity; lower is better**. Each number uses the median of nine
trials. The primary run calibrated repetitions to about 100 ms in C; an independent
30 ms calibration repeated all measurements using the identical binaries.

| Workload | Before: Base / C | After: Base / C | Confirmation: Base / C |
| --- | ---: | ---: | ---: |
| Integer mixing | 1.03× | 1.00× | 1.00× |
| Floating-point recurrence | 1.57× | 1.49× | 1.49× |
| Integer array sum | 14.03× | 1.26× | 1.26× |
| Float array transformation | 9.08× | 1.51× | 1.51× |
| Byte classification | 5.86× | 3.16× | 3.16× |
| Dependent indexed loads | 1.32× | 1.26× | 1.23× |
| 96 × 96 matrix multiplication | 6.46× | 2.59× | 2.68× |

The sum's Base/C ratio improved by 11.17×, the transformation's by 6.01×, byte
classification's by 1.86× and the matrix's by 2.49×. These compare normalized
ratios, since each run recalibrates its repetition count. Small changes near
parity should not be interpreted as a reliable speed advantage over C.

The two new runs agree within 0.3% for the first five workloads. Dependent loads
differ by 2.7% and the matrix by 3.2%. In the primary run, Base's median absolute
deviation is below 0.3% except for the matrix at 1.3%. This is a shared desktop
without CPU affinity or a fixed frequency; the raw samples retain the spread.
Local builds and test suites finished before measurement began.

## Method and current timings

Host: Apple M4, 10 cores, 24 GiB RAM, macOS 15.7.9, on AC power. C uses Apple
Clang 17.0.0 with `-O3 -march=armv8-a -ffp-contract=off`. Base uses its native
ARM64 backend with `--cpu neon`, normal safety checks and no debug mode. A common
C driver links directly to the native Base library. Compilation, allocation,
input setup, warmup and output hashing are outside the timed kernel call.

The driver, both kernel sources and harness have exactly the same SHA-256 hashes
as the original baseline. Both C executables also have identical hashes. No
algorithm, input generator, traversal order, C flag, intrinsic, `restrict`, fast
math or LTO change contributes to the improvement. All six variants pass bitwise
output comparisons for three seeds and three sizes per workload before timing;
the timed outputs also agree. Floating operations retain their specified order.

| Workload | C -O3 (ms) | C scalar (ms) | Base opt 0 (ms) | Opt 1 (ms) | Opt 2 (ms) | Opt 3 (ms) |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| Integer mixing | 101.37 | 101.32 | 106.07 | 105.28 | 102.96 | 100.98 |
| Floating-point recurrence | 96.28 | 96.39 | 187.65 | 187.98 | 147.77 | 143.26 |
| Integer array sum | 105.62 | 378.92 | 1435.19 | 1387.07 | 757.53 | 132.67 |
| Float array transformation | 98.12 | 160.88 | 873.32 | 938.94 | 639.67 | 148.32 |
| Byte classification | 99.65 | 99.71 | 581.95 | 488.34 | 338.74 | 314.45 |
| Dependent indexed loads | 97.17 | 97.12 | 129.75 | 130.13 | 124.25 | 122.88 |
| 96 × 96 matrix multiplication | 101.03 | 100.99 | 597.46 | 586.92 | 535.79 | 262.11 |

The scalar C variant disables Clang's loop and SLP vectorizers. Base opt 3 now
outperforms that variant on both the sum and transformation, while optimized C
still wins. Optimization levels are not isolated pass-ablation experiments:
native instruction selection also changes lower levels, range proofs run at
levels 2 and 3, and loop motion and automatic vectorization run at level 3.

Inputs use runtime seed 812. Working sets are 2 MiB for integer sums, 6 MiB across
the three transformation buffers, 1 MiB for byte classification, 1 MiB of
dependent links plus their setup permutation, and three 96 × 96 double matrices.
Exact repetition counts and trial order are in the raw records.

## What changed, and what remains

The implementation is documented in [NATIVE-OPTIMIZATIONS.md](NATIVE-OPTIMIZATIONS.md).
It applies to eligible IR loops generally, without matching benchmark names.

1. **Range proofs remove redundant checks.** Dominating guards and successful
   checks establish facts about immutable SSA values. Safe unsigned increments,
   duplicate bounds checks and proved row-major index arithmetic no longer need
   repeated checks. Uncertain accesses, signed arithmetic and changed values
   retain their checks and failure ordering.
2. **Scalar loops do less repeated work.** Pure invariants move to safe loop
   preheaders; redundant phis, dead frame homes and avoidable jumps disappear.
   Native selection uses immediate arithmetic, direct register addresses and
   combined comparison/branch sequences. Calls remain memory barriers, including
   hidden ABI result writes; potentially trapping work is not speculated.
3. **Suitable loops use SIMD automatically.** Wrapping integer reductions and
   independent 32/64-bit element operations use portable 128-bit vector IR,
   implemented by ARM64 NEON and x86-64 SSE2. Partial overlap falls back to the
   original scalar loop; short inputs and tails remain safe. Floating reductions
   are not reassociated, and multiply/add operations are not fused.

Assembly inspection identifies the next runtime opportunities:

- **Byte classification (3.16× C):** its branchy boolean chain stays scalar and
  materializes intermediate booleans. Clang's compact bit test/conditional count
  suggests better boolean simplification and conditional instruction selection.
- **Matrix multiplication (2.59× C):** the same i/j/k algorithm retains scalar
  floating accumulation, address work and register pressure. Improve induction
  addressing and register allocation while preserving strict accumulation order.
- **Floating recurrence (1.49× C):** the hot loop still copies its floating
  accumulator and loop counter across the backedge. Better copy coalescing and
  loop scheduling are candidates; the precise cost of each has not been isolated.
- **SIMD maps and sums (1.51× and 1.26× C):** compare generated loop scheduling,
  unrolling and register use with Clang. The current vectorizer intentionally
  handles a bounded set of straight-line loops.

Dependent loads retain a necessary data-dependent bounds check. A C comparison
without per-access checks cannot establish that every remaining difference is
removable without changing the language's guarantees.

## Binary size and memory

The current opt-3 executable is **671,128 bytes**, versus **34,424 bytes** for C
and **687,656 bytes** for the original Base binary. The roughly 19.5× file-size
gap remains. This work does not implement unused code/data elimination; the
[original footprint analysis](NATIVE-PERFORMANCE-BASELINE.md#binary-size-and-memory)
documents retained unrelated runtime code and data. Its detailed section sizes
describe the baseline binary, not the current one.

Median peak RSS remains 48–64 KiB higher for Base in this common driver. Inputs
are allocated by the driver and kernels allocate nothing, so this is not an
allocator-throughput benchmark. Unused code/data elimination should be a separate
task with explicit exported, address-taken and initialization roots.

## Correctness and consumers

The new loop fixture compares native levels 0–3 with both Base C modes. It covers
overflow and bounds failures, output before a trap, zero-trip behavior, changed
views and loop limits, optional and discarded aggregate call results, overlapping
maps in both directions, every tested vector tail, guard pages and special
floating values. It also checks emitted SIMD and complete x86 vector spills.

Local validation passed Seed's 584 sanitized tests and runtime checks, Base's
bootstrap comparisons and native fixed point, compiler and standard-library
checks, 193 conformance programs, 479 rejections, 11 platform programs,
66 native-corpus cases and 132 fuzz cases with no findings. Luce passed its
complete gate, including interop and 66 fuzz cases with no findings.

The server, UI, 3D package, HTTP application and demos were rebuilt and tested
with the optimized compiler. Checks include network concurrency and shutdown,
REST/static/streamed files/WebSocket, Base/Luce interop, actual Metal rendering,
GUI interaction and clean application output. The HTTP application's native
shutdown heap check reported zero leaks. Compiler and package dependency pins
are committed in each consumer repository.

Cross-platform validation results are recorded in the
[work checklist](NATIVE-OPTIMIZATION-TODO.md). M4 runtime measurements
do not imply Linux or Windows performance; collect an independent x86-64 baseline
and application, allocator, string, file/network and multithreading measurements
before drawing broader conclusions.

## Reproduction and evidence

Baseline compiler implementation: `cd44f1d393b312613b437fa8ef581bac94bb1bc3`.
Measured final source: `8fbce59241bcf5bd63ec2b67e5e516ad25f08f42`, built through
the native bootstrap and fixed point. Seed pin:
`bb485fadf2b109add01724303a330d39d7299908`.
Unchanged benchmark harness: `979829ffb1d79496238fc342201ab86ce119f618`.
The raw records retain compiler/source/binary hashes, commands, build durations,
host and power metadata, trial order, checksums, peak RSS and process times.

- [Harness and methodology](../benchmarks/native_vs_c/README.md)
- [Final primary results, 100 ms calibration](../benchmarks/native_vs_c/results/2026-09-12-m4-optimized-100ms.json)
- [Final confirmation, 30 ms calibration](../benchmarks/native_vs_c/results/2026-09-12-m4-optimized-30ms.json)
- [Original baseline report](NATIVE-PERFORMANCE-BASELINE.md)
- [Original primary results](../benchmarks/native_vs_c/results/2026-09-12-m4-100ms.json)
- [Original confirmation](../benchmarks/native_vs_c/results/2026-09-12-m4-30ms.json)
- [Original linked section sizes](../benchmarks/native_vs_c/results/2026-09-12-m4-link-size.json)

```sh
./build.sh
python3 benchmarks/native_vs_c/run.py --output build/native-vs-c-final --samples 9 --target-ms 100
cp build/native-vs-c-final/results.json build/native-vs-c-final/results-100ms.json
python3 benchmarks/native_vs_c/run.py --output build/native-vs-c-final --reuse-build --samples 9 --target-ms 30
```

Finish other CPU-heavy work before timing. Keep the primary result before a
confirmation run overwrites `results.json`, and rebuild instead of using
`--reuse-build` whenever the compiler or sources change.
