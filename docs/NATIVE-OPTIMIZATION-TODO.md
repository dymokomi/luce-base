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

- [ ] Hoist pure loop invariants without speculating loads, calls or traps.
- [ ] Improve constant placement, addressing, conditional branches and dead frame storage.
- [ ] Validate scalar behavior and both native targets; commit the verified changes.

## 3. Automatic vectorization

- [ ] Vectorize wrapping integer reductions and independent float element operations.
- [ ] Prove or guard alias independence and preserve scalar tails and zero-trip behavior.
- [ ] Preserve floating-point operation order; keep uncertain or effectful loops scalar.
- [ ] Verify actual vector instructions, results and fallback paths on both native targets.
- [ ] Commit the verified vectorizer.

## 4. Final validation and measurement

- [ ] Regenerate bootstrap snapshots and close the native bootstrap loop.
- [ ] Complete correctness, conformance, optimizer, fuzz and cross-platform CI gates.
- [ ] Rebuild dependent Luce/package consumers with the optimized native compiler.
- [ ] Rerun the unchanged Base/C benchmarks with repeated trials on an idle host.
- [ ] Publish before/after measurements, limitations and the remaining priorities.

Unused code/data elimination is a separate footprint task, outside these three
runtime optimizations.
