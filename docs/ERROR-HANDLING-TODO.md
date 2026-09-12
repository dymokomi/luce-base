# Checked error propagation implementation

Approved direction: [error-handling research](ERROR-HANDLING-RESEARCH.md).
Luce propagates automatically inside explicitly fallible functions. Base keeps
visible `try` markers, with one marker covering an expression. Both retain their
existing native result ABI, error ownership, allocation policy and cleanup rules.
There is no compatibility mode and no implicit weakening of failure contracts.

## 1. Stored results and callback contracts

- [x] Reserve Luce `T!` for function results; reject it in stored-value positions.
- [x] Provide ordinary owned `Result[T]` values with explicit capture, inspection,
      payload/error lifetime and worker-transfer rules.
- [x] Adapt nonfallible Luce callbacks to corresponding fallible callback types,
      retaining captures and rejecting conversion in the opposite direction.
- [x] Verify native optimization levels 0–3, C comparison and interpreter behavior;
      document and commit this prerequisite slice.

Delivered in Luce `76dc1b4`: 71 conformance programs, 143 rejections and 87 parsed
sources passed; the retained-callback interop suite passed all six compiled modes.
Stored-result coverage includes owned payload cleanup, dynamic errors, optional
and unit payloads, repeated retrieval and worker transfer/rejection.

Implementation dependency: Base's expression/handler lowering (section 3) is
implemented before section 2, so Luce can use the native handler paths directly.

## 2. Luce checked propagation

- [x] Normalize propagation into explicit checked nodes before ownership lowering.
- [x] Propagate unmarked calls in declared fallible functions and cover nested
      operations with the nearest `catch`; reset effects at callback boundaries.
- [x] Preserve lazy evaluation, evaluation order, partial-value cleanup, receiver
      lifetimes and owned dynamic errors through nested handlers and workers.
- [x] Reject unhandled operations in nonfallible functions; update diagnostics,
      language reference, formatter/interpreter and conformance cases.
- [x] Run focused compiler/runtime/interop gates and commit the verified slice.

Delivered in Luce `2503fb0`. The focused effect and imported-handle fixtures pass
all six compiled modes. Native callbacks, views, interfaces, workers and JSON/GPU
interop pass their six-mode gates. The automatic-propagation heap fixture reports
zero leaked bytes. The complete compiler gate and CI are finishing in section 4.

## 3. Base expression-wide `try`

- [x] Define expression coverage and handler boundaries; implement Base checking
      and explicit lowering without changing result ABI or allocating implicitly.
- [x] Mirror semantics in Seed, including parsing, checking and interpretation.
- [x] Verify lazy branches, argument order, `defer`/`errdefer`, allocator restoration,
      borrowed errors and native optimization levels 0–3 against C and Seed.
- [x] Rebuild native bootstrap, regenerate snapshots and embedded sources, update
      both language references and commit the verified compiler slice.

Seed `fc6129e` passed all 583 sanitized tests and the runtime boundary tests.
Base passed the new source-order/cleanup fixture in native levels 0–3 and both
C modes, and rebuilt itself with identical native assembly. The complete Base
gate passed on native ARM64 macOS, including 193 conformance programs, 479
rejections, 66 native corpus checks and 132 fuzz cases. Seed and Base also passed
their macOS/Linux CI gates; Base implementation head is `cd44f1d`.

## 4. Applications and final verification

- [x] Rewrite UI, sphere and HTTP examples in canonical Luce style; simplify Base
      nesting where useful and keep mutation consistency explicit.
- [x] Update toolchain/package pins and run real UI/Metal, HTTP, callback and worker
      tests, including failure paths and generated-file cleanup.
- [ ] Run complete Base/Seed/Luce gates and package CI on macOS and Linux.
- [ ] Push tested commits promptly, record evidence and outstanding limitations,
      and complete this checklist only when the checks have passed.

Package/application commits: server `4695d96`, UI `c1637dd`, 3D `b28160c`,
HTTP app `8b8e982`, demos `a430f59`. UI/3D ownership and Metal readback passed
all six modes; both real demos and HTTP integration passed native levels 0–3.
The HTTP application heap check reports zero leaked blocks and bytes.

Deferred: Base `try:` suites, typed error sets/effect polymorphism, recoverable
collector allocation and broad API failure-contract changes.

## 5. Base performance against C

Requested after the implementation and correctness gates above are complete.

- [ ] Build equivalent representative Base/native and optimized C workloads with
      matching inputs, algorithms and observable outputs.
- [ ] Record compiler versions, flags, hardware, repeated timings, variability,
      memory use and binary size; keep setup and compilation outside runtime timing.
- [ ] Inspect generated code and profiles for meaningful gaps, distinguish safety
      checks from avoidable compiler/runtime overhead, and propose measured priorities.
- [ ] Commit reproducible benchmarks and a report stating results and limitations.
