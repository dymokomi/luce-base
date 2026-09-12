# Native optimization implementation

Follow-up to [the measured baseline](NATIVE-PERFORMANCE.md). Keep the benchmark
algorithms, input generation, checksums and C compiler flags unchanged. Native
remains the default backend; no optimization may weaken specified safety checks.

## 1. Prove redundant checks

- [x] Use SSA branch facts and dominating checks to eliminate redundant bounds checks.
- [x] Prove safe arithmetic from ranges, retaining checks for uncertain operations.
- [x] Cover changed values, zero-trip loops, limits and trap ordering.
- [x] Run focused native/C checks, unchanged benchmark verification and a native self-build; commit the pass.
- [x] Correct the optimizer suite's numeric-label instruction counting, then run its complete checks and the Seed bootstrap gate.

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

- [x] Regenerate bootstrap snapshots and close the native bootstrap loop.
- [ ] Complete correctness, conformance, optimizer, fuzz and cross-platform CI gates.
- [x] Rebuild dependent Luce/package consumers with the optimized native compiler.
- [x] Rerun the unchanged Base/C benchmarks with repeated trials on an idle host.
- [x] Publish before/after measurements, limitations and the remaining priorities.

## Validation record

Measured compiler source: `8fbce59241bcf5bd63ec2b67e5e516ad25f08f42`.
Both bootstrap snapshots include the optimizations and corrected x86 vector spill
widths. Seed `bb485fa` fixes optional tuple literal construction found by the
bootstrap comparison. Native stage builds reproduce both compiler output forms.

Local compiler, standard-library, optimizer, conformance, platform, native corpus
and fuzz checks passed. Base conformance covers 193 programs and 479 rejections;
its 132 fuzz cases reported no findings. Luce's complete gate and all dependent
package/application checks passed, including real Metal rendering and HTTP heap
cleanup with zero leaks. Final native loop regressions passed all six modes with
the installed compiler, plus x86 cross-assembly.

CI for the exact implementation and consumer pins:

| Repository | Commit | Run | State |
| --- | --- | --- | --- |
| luce-seed | `bb485fa` | [Correctness](https://github.com/dymokomi/luce-seed/actions/runs/34709158201) | Passed |
| luce-base | `8fbce59` | [Correctness](https://github.com/dymokomi/luce-base/actions/runs/34709206912) | macOS and Linux gates running |
| luce | `6346a6d` | [Correctness](https://github.com/dymokomi/luce/actions/runs/34709426994) | Passed |
| luce-server | `29354f3` | [Correctness](https://github.com/dymokomi/luce-server/actions/runs/34709620214) | Both platforms' tests passed; macOS runner finalizing |
| luce-ui | `b73eda1` | [Correctness](https://github.com/dymokomi/luce-ui/actions/runs/34709626009) | Passed |
| luce-3d | `5f077bb` | [Correctness](https://github.com/dymokomi/luce-3d/actions/runs/34709630109) | Passed |
| luce-http-server | `51a2feb` | [Correctness](https://github.com/dymokomi/luce-http-server/actions/runs/34709634049) | Passed |
| luce-demos | `2da4404` | [Correctness](https://github.com/dymokomi/luce-demos/actions/runs/34709636709) | Passed |

The [performance report](NATIVE-PERFORMANCE.md) links both final nine-trial runs
and the preserved original baseline. Benchmark source hashes and C executable
hashes are unchanged. Final and confirmation runs use identical native binaries.

Unused code/data elimination is a separate footprint task, outside these three
runtime optimizations.
