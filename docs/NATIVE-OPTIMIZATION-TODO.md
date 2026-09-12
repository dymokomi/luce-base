# Native optimization implementation

Follow-up to [the measured baseline](NATIVE-PERFORMANCE.md). Keep the benchmark
algorithms, input generation, checksums and C compiler flags unchanged. Native
remains the default backend; no optimization may weaken specified safety checks.

## 1. Prove redundant checks

- [x] Use SSA branch facts and dominating checks to eliminate redundant bounds checks.
- [x] Prove safe arithmetic from ranges, retaining checks for uncertain operations.
- [x] Cover changed values, zero-trip loops, limits and trap ordering.
- [x] Run focused native/C checks, unchanged benchmark verification and a native self-build; commit the pass.
- [ ] Correct the optimizer suite's numeric-label instruction counting, then run its complete checks and the Seed bootstrap gate.

## 2. Simplify scalar loops

- [x] Hoist pure loop invariants and proven unchanged local stack loads without speculating calls or traps.
- [x] Improve constant placement, addressing, conditional branches and dead frame storage.
- [x] Validate scalar behavior, cross-assemble x86_64 and commit the changes; execute both targets in final CI.

## 3. Automatic vectorization

- [x] Vectorize wrapping integer reductions and independent float element operations.
- [x] Prove or guard alias independence and preserve scalar tails and zero-trip behavior.
- [x] Preserve floating-point operation order; keep uncertain or effectful loops scalar.
- [x] Verify SIMD selection, tails, overlap fallbacks, guard pages and x86_64 assembly locally.
- [ ] Execute vectorized regressions on both native targets in final CI.
- [x] Commit the verified vectorizer and dimension-product range proofs.

## 4. Final validation and measurement

- [ ] Regenerate bootstrap snapshots and close the native bootstrap loop.
- [ ] Complete correctness, conformance, optimizer, fuzz and cross-platform CI gates.
- [ ] Rebuild dependent Luce/package consumers with the optimized native compiler.
- [ ] Rerun the unchanged Base/C benchmarks with repeated trials on an idle host.
- [ ] Publish before/after measurements, limitations and the remaining priorities.

Unused code/data elimination is a separate footprint task, outside these three
runtime optimizations.
