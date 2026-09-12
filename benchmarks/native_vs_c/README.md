# Native Base versus C

This is a reproducible comparison of Base's native machine code and ordinary C
compiled with Clang. The C measurement driver is compiled once and linked to each
implementation through the same exported interface. Base's C backend is not used.

```sh
./build.sh
python3 benchmarks/native_vs_c/run.py --verify-only
# Close other CPU-heavy work before collecting results.
python3 benchmarks/native_vs_c/run.py --reuse-build
```

Outputs stay in `build/native-vs-c`: executables, native/C assembly, compiler
commands and build durations, and `results.json` with every timed sample. Rebuild
after changing sources or compilers; `--reuse-build` intentionally uses the existing
binaries. `--output`, `--base`, `--cc`, `--samples`, and `--target-ms` are configurable.

The seven workloads cover a wrapping integer recurrence, strict floating-point
recurrence, integer array reduction, floating-point array transformation, byte
classification, unpredictable dependent loads, and ordinary i/j/k matrix
multiplication. Each pair uses the same types, inputs, algorithm and traversal
order. Base retains its normal bounds and arithmetic checks. C receives valid
inputs and retains the same explicit entry assertions; it has no per-access bounds
checks. Differences in generated checks are part of what the comparison measures.

Native levels 0–3 are measured independently. The primary C build is `-O3`;
`c-scalar` disables loop and SLP vectorization to help identify SIMD advantages.
Both use the architecture baseline (ARMv8-A/NEON or x86-64-v1). C uses
`-ffp-contract=off`; neither version uses fast math, intrinsics, `restrict`, LTO,
or a different matrix algorithm. Floating-point checksums must agree bit for bit.

The driver allocates and initializes inputs, warms the kernel, restores mutable
inputs, then starts a monotonic clock. Only the kernel call is timed. Results are
consumed after timing through scalar outputs or hashes of every output byte. The
separate object files prevent the driver from folding the workload away. Each
trial is a fresh process with identical seeded input. Nine small seed/size
combinations per workload must agree across all six binaries before timing starts.

Calibration targets 30 ms in optimized C, then fixes that work count for every
variant. Nine trials interleave the six variants in deterministic shuffled order;
the report retains medians, min/max, median absolute deviations and raw samples.
Compilation, input preparation, hashing and process startup are excluded from
kernel time. Whole-process elapsed time and peak RSS are recorded separately.
Peak RSS includes the driver, inputs and runtime: these are not allocation
throughput benchmarks. File sizes include each executable's normal linked code
and metadata, without stripping.

Run on an otherwise idle machine and record power state. Measurements on a shared
desktop are not CPU-pinned, frequency-locked laboratory results. These kernels
characterize specific compiler paths, not a universal language speed ratio. They
do not measure the standard library, networking, storage, allocator throughput,
multithreading, UI rendering, or complete application performance.
