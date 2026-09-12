# Package rewrite TODO

Updated: 2026-09-11. This is the working checklist for the ecosystem rewrite.
[PACKAGE-REWRITE.md](PACKAGE-REWRITE.md) holds the full file inventory, design
constraints and acceptance criteria. Follow the phases below in order.

**Status:** full sections 1–4 complete and verified.
**Next task:** U01 — define the UI widget/application contracts, then complete section 5. Sections 5 and 6 have not been rewritten; their existing prototypes were adapted to the new graphics scope.

## How we track work

- `[ ]` means unfinished; `[x]` means completed and verified. Partial work stays
  unchecked, with a short progress note beneath the task.
- Keep task IDs stable so commits and follow-up discussions can refer to them.
- For each completed implementation task, record the relevant test command/result
  and implementation commit in the evidence section. If the checklist update is
  part of that implementation commit, say so instead of inventing its future hash.
- Update this checklist with each completed slice and commit fixes promptly.
  Update the next task and any unresolved dependency when changing phases.
- Rebuild directly: there are no external users or released compatibility
  obligations. Update consumers/tests with each changed API; remove legacy paths,
  compatibility aliases and migration scaffolding instead of preserving them.
- Existing prototype behavior and earlier tests are regression baselines, not
  evidence that the replacement API is complete. Phase gates require the rewritten
  implementation and its consumers to pass.

## 0. Scope and construction syntax

- [x] P01 — Inventory both compilers, standard resources, the three Base libraries
  and the two Luce example projects, including all 35 package/example source files.
- [x] P02 — Use existing Luce construction: `let button = Button("pause")`.
  Remove the proposed construction syntax extension from the rewrite scope.
- [x] P03 — Create this ordered checklist and link it from the scope, ecosystem
  roadmap and documentation index.

The libraries remain Base code using structs, `init`, methods and interfaces.
The applications remain Luce code using their normal object APIs. Standard `gpu`
owns the Metal/Vulkan abstraction; the packages use it. Native builds are the
default. Preserve recoverable errors and explicit Base ownership.

## 1. Constructors, methods, interfaces and ownership

- [x] I01 — Define which Base types cross as values, owned objects or borrowed
  views; specify identity, copying, mutation, private state, destruction and thread
  affinity. Make ownership explicit rather than guessing it from method names.
  Contract: [BASE-INTEROP.md](BASE-INTEROP.md). Its proof matrix is required by the
  implementation tasks below; defining the contract does not complete those tests.
- [x] I02 — Extend Base descriptions with public constructors, instance/static
  methods, receiver mutation, interfaces and conformance. Cover private visibility
  and mismatched compiler formats with fixtures and diagnostics. Maintain one
  current producer/reader format without compatibility branches.
  Implemented and verified in Base/Luce; the execution adapters and their proofs
  are recorded in I04–I07. Base also
  fixes C spelling of handle slots and const spans, tested across all six modes.
- [x] I03 — Preserve parameter names, defaults, fallibility and qualified type
  identity through aliases, re-exports and nested signatures.
- [x] I04 — Import and lower Base constructors through existing `Type(args)` syntax;
  exercise positional, named and default arguments and fallible `init`.
- [x] I05 — Implement imported instance/static methods and bound method values
  against actual private state, preserving mutation without lossy field copying.
- [x] I06 — Implement ARC ownership for imported objects: construction failure,
  close/destruction, aliases, retained children, borrowed arguments/results and
  cross-module identity. Prevent double destruction and use through closed aliases.
  Shared `ownership`/`interop` owners, checked views, active invocation guards,
  cross-module/interface identity and mixed native/Luce cycles pass the proof
  matrix. Retained function callbacks and application workers are covered in section 2.
- [x] I07 — Support Base interfaces and concrete conformance in both directions,
  including heterogeneous widget collections and backing-object/view lifetimes.
- [x] I08 — Reassess pending handle-identity and span-conversion changes against
  the object contract; retain general mechanisms with focused regression coverage.
- [x] I09 — Establish documented public imports and exports, including
  `from ui import Button`, in a clean consumer without staging-specific aliases.
  Contract: [PACKAGE-IMPORTS.md](PACKAGE-IMPORTS.md).
- [x] I10 — Separate boundary conversion/ownership code into focused compiler
  modules; update interop/runtime documentation and generated sources as needed.
- [x] I11 — **Phase gate:** run a small real Base struct/interface library from
  both Base and Luce. Prove private-state mutation, defaults, identity, bound
  methods, errors, destruction and rejected invalid crossings at native opts 0–3.

## Compatibility cleanup identified during I02

The 2026-09-11 Sol audit found the items below. Complete this small cleanup pass
between I02 and I03, updating callers directly. The dated report lives in the
workspace's `audits/legacy-compatibility-2026-09-11.md`; this checklist is the live
backlog. BC05 is a naming simplification, not proven old-version support.

- [x] BC01 — Remove `Connection.receive` in `src/std/net/connection.lucb` and put
  its implementation in mutating `read`. Update HTTP/network fixtures and receiver
  mutability; preserve short-read, EOF and interruption behavior. Regenerate the
  library reference, prelude and snapshots and run the connection/HTTP tests.
- [x] BC02 — Remove `strings.to_i64`/`to_u64`; use `parse_i64`/`parse_u64` with
  their existing decimal default. Update Base fixtures and Luce's interpreter,
  diagnostics and runtime callers. Preserve decimal edge-case coverage, regenerate
  both compilers' embedded sources, and advance Luce's Base pin with the callers.
- [x] BC03 — Remove the six unused `lb_*_i64` scalar arithmetic compatibility
  wrappers from Base's and Seed's canonical runtime C/header files. Preserve the
  active width-parametric helpers. Regenerate embedded runtime/snapshots and verify
  arithmetic, overflow/traps, seed bootstrap and native self-hosting.
- [x] BC04 — Remove Base's unused old-snapshot `LB_MEMORY_EXHAUSTED` macro;
  preserve the active Seed macro. Correct Base's bootstrap README and checker test
  title, retain its error-identity assertion, regenerate runtime/snapshots and
  verify allocation failures plus bootstrap agreement.
- [x] BC05 — Keep native as the default, `--native` as the explicit native selector
  and `--backend=c` for comparison; remove the undocumented `--backend=native`
  alias and its acceptance fixture. Verify driver options and both build modes.

## 2. Callbacks and application workers

- [x] C01 — Define callback capture ownership, retention, disconnection, cycles,
  reentrancy and error propagation for handlers and signals.
  Contract: [CALLBACKS-WORKERS.md](CALLBACKS-WORKERS.md). Execution proofs remain
  C02–C05; this definition alone does not complete those tasks.
- [x] C02 — Implement callback/interface adapters with tests for removal during
  delivery, callback failure and attempted escape of borrowed request/frame data.
- [x] C03 — Implement runtime-aware worker dispatch with per-worker application
  state and enforced Luce transfer rules; keep thread/runtime setup in the library
  and runtime instead of exposing integer tokens or recursive spawning to users.
- [x] C04 — Prove cancellation, late callbacks, startup failure and shutdown/join
  release retained objects and wake blocked operations correctly.
- [x] C05 — **Phase gate:** direct Base and Luce callback/worker fixtures pass
  lifetime, error and concurrency checks before server dispatch uses the bridge.

## 3. Server and HTTP application

### luce-server

- [x] S01 — Define public `Server`, `ServerConfig`, `Router`, `Route`, `Request`
  and `Response` contracts, including construction, configuration and run/close.
- [x] S02 — Split server lifecycle, dispatch queues, connection/session state and
  request state into focused owners; replace the generic handle/state facade.
- [x] S03 — Move bounded worker startup, handler dispatch, cancellation, draining
  and joining into the package using the verified runtime bridge.
- [x] S04 — Bind route declarations directly to handlers and implement typed
  request/header/parameter/query access with documented borrowed/owned results.
- [x] S05 — Implement response values/builders, one response commit boundary and
  consistent handler-error translation.
- [x] S06 — Define the structured JSON representation and implement its tested
  serializer boundary; put general JSON support in the standard library where
  needed. Cover escaping, supported values, malformed inputs and non-finite numbers.
- [x] S07 — Implement owned body/file/static-root APIs, bounded streaming,
  upload publication and file responses while preserving ranges and validators.
- [x] S08 — Separate HTTP, WebSocket and TCP state machines; preserve common
  transport machinery without treating TCP chunks as HTTP request events.
- [x] S09 — Implement WebSocket session/message APIs, server-initiated sending
  and explicit session lifetime; preserve fragmentation and control-frame behavior.
- [x] S10 — Implement TCP session/stream APIs with explicit chunk/framing semantics.
- [x] S11 — Integrate opt-in signal handling, observation and graceful shutdown
  through the owning server/session objects.
- [x] S12 — Rewrite Base consumers, unit/heap fixtures and independent wire tests;
  preserve routing, keep-alive, pipelining, chunking, `100 Continue`, HEAD/OPTIONS,
  file transfer, limits, deadlines, backpressure and concurrent shutdown coverage.
- [x] S13 — Update server API/design/validation docs, build/test tooling, manifest,
  compiler pins and CI for the rewritten library.

### luce-http-server

- [x] H01 — Rewrite `src/main.luc` to construct/configure the server, register
  application behavior and run it.
- [x] H02 — Rewrite `src/application.luc` as route/static/lifecycle declarations;
  remove worker attachment, integer dispatch and recursive worker spawning.
- [x] H03 — Rewrite `src/api.luc` with request methods, structured responses and
  file/session APIs; remove manual JSON escaping and generic protocol-event logic.
- [x] H04 — Adapt `src/settings.luc` to validated server configuration while
  keeping CLI and application settings in the example.
- [x] H05 — Preserve health, item, greeting, echo, upload, download, WebSocket and
  static-page behavior; update documentation, assets where needed, tests and pins.
- [x] H06 — **Phase gate:** Base and Luce server consumers pass independent HTTP,
  WebSocket, TCP, file-transfer, resource-bound and concurrency tests at native
  opts 0–3 on macOS and Linux. Adding an endpoint requires only application code.

## 4. Standard graphics resources and package linking

- [x] G01 — Specify coherent window/presentation/device/surface ownership and
  behavior after parent closure, resize and failed acquisition.
- [x] G02 — Implement scoped frame/render-target lifetime shared by UI and 3D,
  with explicit clipping, logical/backing coordinates, depth and thread affinity.
- [x] G03 — Keep OS input translation in standard window/input and framework
  dispatch in UI; preserve portable backend selection and capability errors.
- [x] G04 — Propagate native backend link requirements through package tooling;
  reassess pending native-manifest changes and remove duplicated macOS frameworks
  and `objc` declarations from UI, 3D and demo manifests.
- [x] G05 — **Phase gate:** ownership/expiry/resize/failure tests and actual Metal
  pixel checks pass; a clean consumer links through standard `gpu` without
  package-level platform calls. Report unsupported backends explicitly.

## 5. UI framework and button example

- [ ] U01 — Define the public `Widget` interface, application, layout and rendering
  contracts, including custom components and tree/application ownership.
- [ ] U02 — Implement concrete `Button`, `Text`, `Spacer`, `VStack`, `HStack` and
  viewport structs with `init` and methods; replace the closed `Kind`/`Node` model.
- [ ] U03 — Implement measurement/placement through the layout contract, covering
  constraints, spacing, padding, flex, clipping and invalidation.
- [ ] U04 — Implement framework-owned event routing, pointer capture and keyboard
  focus, including cancellation and input delivery after component changes.
- [ ] U05 — Implement actual signals/connections with retained callbacks and
  defined disconnect/reentrancy/cycle behavior; remove pending-count polling.
- [ ] U06 — Give `Application` ownership of the event/render loop, frame recording
  and presentation; keep declarative construction separate from native acquisition.
- [ ] U07 — Provide scoped custom-widget/viewport drawing over standard `gpu`.
- [ ] U08 — Isolate text measurement/rendering; remove silent case conversion and
  document supported characters and replacement behavior.
- [ ] U09 — Rewrite UI tests, add the missing test runner and complete README/API
  docs, build scripts, manifest, pins and CI.
- [ ] D01 — Rewrite `luce-demos/src/ui.luc` with existing `Button("pause")`
  construction, layout and connected actions; use the framework's run operation.
- [ ] U10 — **Phase gate:** Base/Luce and custom-widget tests pass for ownership,
  layout, signals, input/focus, resize and real Metal drawing. The button demo
  contains application behavior instead of framework/event-loop implementation.

## 6. 3D package and sphere example

- [ ] T01 — Define Three.js-like names and module responsibilities using Base
  interfaces/composition: objects, scenes, transforms, geometry, materials,
  cameras, lights and renderer.
- [ ] T02 — Implement vector/transform operations, scene membership and parent
  ownership, shared geometry/material lifetime and disposal; remove scalar import
  workarounds once the supported public import is available.
- [ ] T03 — Implement `BufferGeometry` and `SphereGeometry` constructors/methods,
  retaining checked segments, seams, poles and allocation bounds.
- [ ] T04 — Implement mesh/material, camera/projection/aspect and light APIs with
  defined transform composition and invalidation behavior.
- [ ] T05 — Implement the renderer object with scene traversal and reusable
  buffers through standard `gpu`; document the actual CPU/GPU work division.
- [ ] T06 — Implement the optional UI viewport adapter owning render callbacks
  and scoped target access; keep the core renderer independent of UI internals.
- [ ] T07 — Add geometry/scene/camera/renderer tests and the missing runner,
  including invariants, allocation failures, depth/clipping and composition pixels.
- [ ] T08 — Complete 3D README/API docs, build/test tooling, manifest, pins and CI.
- [ ] D02 — Rewrite `luce-demos/src/sphere.luc` with scene objects, camera,
  materials, lights and viewport; connect pause/reset actions through methods.
- [ ] D03 — Complete demo documentation, build/test tooling, manifests, pins,
  smoke/interaction checks and public imports without demo-only Base helpers.
- [ ] T09 — **Phase gate:** standalone and UI-composed rendering pass geometry,
  lifetime and native pixel tests. The Luce sphere example uses the public API
  without manual frame acquisition, target release or presentation plumbing.

## 7. Cross-project validation and delivery

- [ ] R01 — Compile every documented example and test clean Base/Luce consumers,
  including interfaces and bound methods, against exact dependency commits.
- [ ] R02 — Complete native opts 0–3 compiler/runtime/server gates on ARM64 macOS
  and x86-64 Linux; retain existing supplemental C comparisons. Run graphics only
  on implemented backends and record that scope accurately.
- [ ] R03 — Regenerate affected embedded runtime/prelude sources, reference docs
  and bootstrap snapshots; verify bootstrap consistency and downstream compiler
  behavior before advancing dependency pins.
- [ ] R04 — Verify successful and failed builds remove generated `.lucb` sources,
  staged dependencies and scratch output; normal example builds leave requested
  binaries and other explicitly requested artifacts only.
- [ ] R05 — Finish API/ownership/concurrency documentation and review comments,
  names and module responsibilities across every rewritten project.
- [ ] R06 — Create/publish separate `luce-ui`, `luce-3d` and `luce-demos`
  repositories with tested APIs, licenses, manifests, pins and CI; commit/push
  coherent tested changes in the existing repositories.
- [ ] R07 — Verify every implementation item and phase gate is checked with
  evidence, record remaining limitations and update the ecosystem roadmap before
  selecting the next stage.

TLS, the registry/package manager, databases, HTTP/2, a full UI control catalog and
Vulkan implementation remain later work, as specified in the scope document.

## Completion evidence

| Tasks | Evidence |
| --- | --- |
| P01 | Inventory committed in `luce-base` at `0e7e921`; source enumeration accounted for all 35 package/example source files. |
| P02, P03 | Documentation-only update in this checklist's creation commit: corrected construction, removed the syntax-extension task, checked scope/checklist links and task IDs, and ran `git diff --check`. |
| I01 | Contract and checklist update committed together. Reviewed Base descriptions, Luce record/handle adapters, ARC/worker runtime, and native UI/GPU owners; recorded category, lifecycle, lease, identity, mutation, cycle, thread and versioning rules in `BASE-INTEROP.md`. Documentation links and `git diff --check` verified; executable implementation proofs remain open. |
| I02 | Base `6244d71` / `2a9760c`; Luce `6452a2a`. Base description fixtures verify constructors, methods, conformance, visibility and foreign types at native opts 0–3. Luce reader tests pass in native/C modes; foreign records, enums, aliases and handle lists pass all six compiled modes. Private storage/private initialization is rejected pending real adapters. |
| I02 gates | ARM64 macOS: Base main checks/proving programs passed; after correcting a private identifier collision in the seed C emitter, the unchanged gate remainder from bootstrap onward passed: seed/C/native self-host agreement, snapshots, robustness, optimization, 193 conformance programs / 479 rejections, 11 platform programs / five targets emitted, 66 seed-corpus comparisons, and fuzzing (120 mutations / 12 programs, zero findings). Luce full gate passed: 69 conformance programs / 138 rejections, formatting and fuzzing (60 mutations / six programs, zero findings). Final reader cleanup was rechecked in native/C modes; the final pinned compiler passed the foreign-type fixture in all six modes. No Linux-host gate was run in this slice. |
| I02 builds | Clean isolated checkout verified exact Base commit selection, native handle interop, cache reuse and invalid-pin rejection. Normal `luce/build.sh` also rebuilt successfully against final Base pin `2a9760c426aa1ca7dafa0e94df5eb22e106098d9`. Default native builds and generated-source cleanup tests passed in the Luce gate. |
| BC01–BC05 audit | Read-only Sol audit across all eight language/package/example repositories; root checked call sites and runtime references. Four compatibility leftovers and one redundant CLI selector recorded in `ce878ff`; removal tasks are completed below. Active Seed infrastructure, current wire-format markers and protocol/platform behavior are explicitly excluded from blanket removal. |
| BC01, BC02 | Implemented in the Base commit containing this checklist update; matching Luce caller/runtime update follows with the exact pin. Removed receive/to_i64/to_u64 outright. Refreshed prelude, library reference and both snapshots; native bootstrap reproduced its assembly. Integer reference corpus, networking/stream/allocation fault injection and socket transfer tests passed at native opts 0–3 and both C modes; the four-worker HTTP fixture passed. Luce decimal conversion passed in its interpreter and six compiled modes. |

| BC03–BC05 | Base implementation and checklist committed together; Seed `428f77c`. Seed build and all 580 tests passed. Default-backend driver tests passed, including rejection of the removed flag. Arithmetic, signed/unsigned overflow traps, allocation and memory-exhaustion fixtures passed at native opts 0–3 and both C modes. Refreshed runtime and both snapshots; native bootstrap reproduced assembly, and the current Seed-built Base compiler emitted identical C to the native self-hosted compiler. |
| I03 | Base description/default metadata and this checklist committed together; matching Luce adapters follow with the exact pin. `describe_api` passed native opts 0–3; `describe_fields` and exact description expectations updated. Native self-host and refreshed snapshots passed bootstrap assembly agreement. Luce reader passed native/C tests; `test_base_defaults.py`, `test_base_fields.py` and `test_base_description.py` passed native opts 0–3 and both C modes, covering named/omitted arguments, private native defaults, caller file/function facts, full-arity function values, aliases/reexports, nested foreign tuples/optionals, distinct i64/usize adapters, errors and owned public fields. Native types outside the supported boundary remain unavailable. |
| I04, I05 | Base native-storage classification/current format and this checklist committed together; matching Luce implementation follows with the exact pin. `test_base_values.py` passes native opts 0–3 and both C modes: real/custom/memberwise/default/private initialization; private scalar preservation; immutable owned text; direct/static/bound struct and enum methods; aliases; escaped bound copies; mutation before failure; complete native equality; value copies through existing Luce workers; and rejected hidden borrows/private arguments/unhandled errors. Reader tests pass native/C. Base description fixtures pass native opts 0–3, exact description comparison passes, and refreshed snapshots reproduce native bootstrap assembly. Owned-object initialization/lifetime and interface dispatch remain I06/I07; these tests verify copied native values. The full Luce gate passed on ARM64 macOS: native/C compiler unit tests, all boundary/cleanup/package/worker checks, 69 conformance programs / 138 rejections / 85 parsed, formatting and fuzzing (60 mutations / six generated programs, zero findings). Implementations: Base `0e79680`, Luce `78e8e4c`. |

| I06 foundation (partial) | Shared Base `ownership` runtime replaces Luce's separate native heap; typed `interop.Type`, `Reservation`, `Reference` and `WeakReference` provide explicit Base ownership. Ownership and interop fixtures pass all six modes, including native/self cycles, finalizer order, weak expiry, failed construction, allocator reuse/generations and wrong-thread rejection. Exact standard source embedding passes six modes after converting template-escaped files to ordinary source; the preexisting modules' compiled bytes were compared before conversion. `new_initializer` verifies stable allocated `self`, zero-argument/default construction, captured allocators and zero live allocations after failure in six modes. Native bootstrap reproduces its assembly; both snapshots refreshed. Luce native values, 64-task worker/cycle/error fixtures and clean builds pass six modes using the shared runtime. Committed with this progress entry; owned Luce adapters and the remaining I06 proofs are still open. |

| I06 owned objects (partial) | Base ownership descriptions and Luce canonical-owner adapters committed with this entry. `describe_objects` verifies standard declaration identity, aliases, borrowed parameter/owned result carriers and rejected contracts. `test_base_objects.py` passes native opts 0–3 and both C modes: real/named/default/memberwise constructors; public fields/private state; aliases/reexports; retained children; native/self cycles; static/bound methods; construction errors; destruction; close/state/error behavior; and rejected raw-value, cross-worker and native-storage writes. Existing value/default/field/foreign-description fixtures pass six modes; Base description fixtures pass native 0–3. `new_initializer` additionally verifies allocated memberwise defaults in six modes. Native bootstrap reproduces assembly and snapshots are refreshed. Leased views and interfaces remain open. |

| I06 checked views (partial) | Base implementation and checklist committed together; Luce adapters follow with the exact pin. `interop_views` verifies lease expiry, alias state, read-only policy and deferred disposal during active calls in all six modes. Existing ownership/interop tests pass all six modes; `describe_views` and `describe_objects` pass native 0–3. Native bootstrap reproduces assembly and both snapshots are refreshed. Luce view, object and value fixtures pass all six modes, including captured/bound expired views, owned text snapshots, receiver replacement during argument/RHS evaluation and lazy conditional branches. Mixed native/Luce cycles and interface identity remain open in I07. |

| I06, I07 | Base interface/result primitives, current description and this checklist committed together; matching Luce adapters follow with the exact pin. `interop_interfaces`, `unit_storage`, `describe_interfaces`, ownership and lease fixtures pass native opts 0–3 and both C modes (descriptions are host compiler checks). `describe_api` passes native opts 0–3; 75 Base checker tests pass. `test_base_interfaces.py` builds the same real library for direct Base and Luce consumers in six modes, covering heterogeneous native/managed widgets, real native value witnesses, aliases/re-exports, public retained interface fields, nested optional/tuple results, canonical identity, owned text/errors, Base-handled managed failures, bound/captured expired views, reentrant close and mixed cycles with zero live owners at exit. Rejected cases cover ownerless witnesses, managed borrowed/fallible returns without ownership contracts and worker transfer. Native self-host reproduces assembly; prelude/library reference/snapshots refreshed. Existing Luce object, foreign-description and field fixtures pass six modes. The full ownership/view Luce gate passed at `c07485c`: 69 programs, 138 rejections, formatting and fuzzing (60 mutations / six programs, zero findings). Full section-one gate completion is recorded in I11 below. No Linux-host execution is claimed. |

| I09 | Base public resolver, exports, canonical standard descriptions and this checklist committed together; matching Luce reader/packager follows with the exact pin. `package_exports` and `test_public_imports.py` pass native opts 0–3 and both C modes, including `Button("pause")`, aliases, transitive exports, standard math/net identity, distinct package error codes and rebuilding a relocated emitted bundle after deleting its original sources. Existing package diamond/collision/protocol fixtures pass six modes; availability reader tests pass native/C; 75 Base checker tests pass. Native self-host reproduces assembly and both snapshots are refreshed. Local filesystem dependencies are implemented; registry fetching/version selection remain later work. |

| I08, I10 | Luce implementation and matching Base contract/checklist committed as a verified slice. `back.crossings`, `back.emission` and `back.native_types` own conversion code, shared output/type spelling and signature identity; the real interface fixture emits byte-identical Base before/after extraction. Extended `test_base_interfaces.py` passes direct Base and Luce at native opts 0–3 and both C modes, including retained owner/interface/view span elements and empty-span failure cleanup. Description/foreign-record fixtures pass six modes; nine reader tests pass native/C, including rejection of raw handle fields and `Owned`/`Outcome` payloads through aliases. Reverse interface adapters require borrowable parameters. Full section-one gate completion is recorded in I11 below. |

| I11 | Luce `73c4ae6` plus diagnostic fix `bbc1c09`, pinned to Base `67081ec`. Full ARM64 macOS gate passed (`luce/build/section-one-full-gate.log`): compiler unit checks in native/C, all boundary/package/cleanup/worker matrices, 69 programs, 138 rejections, 85 parsed, formatting, and fuzzing (60 mutations / six generated programs, zero findings). The real Base/interface library is exercised from both Base and Luce at native opts 0–3 and both C modes, including private storage, defaults, identity, bound methods, failures, destruction and rejected crossings. No Linux-host run is claimed. |

| C01 | Contract committed as Base `2825c4d`: capture retention, guards, checked-view escape, traceable cycles, ordered snapshots, disconnect/close during emission and owned callback failures. Implementation evidence appears in C02–C05 below. |

| C02 | Base `48e3b70`; Luce `a79fd6c`. `interop_callbacks` passes native opts 0–3 and both C modes: retained/bound handlers, reentrant ordered signals, additions/removals/close during delivery, callback failures, registration/snapshot allocation failure, automatic disconnection, mixed cycles and wrong-thread rejection. `test_base_callbacks.py` passes six modes for captured and bound Luce handlers, native callbacks, text/bytes/tuple results, dynamic errors handled by Base, checked-frame escape, reentrant managed delivery and zero live owners. Interface, public-import and native-value regression matrices pass six modes; reader tests pass native/C. Qualified generic span/function arguments have a dedicated six-mode parser regression. Native bootstrap reproduces assembly; standard sources, reference and both snapshots refreshed. ARM64 macOS execution only. |

| C03, C04 | Base `85cb79c`; Luce `7a74247`. Standard WorkerEntry/Worker, neutral Packet/Transfer/Reply storage and bounded queues separate thread transfer from retained callbacks. Native and shared Base/Luce worker fixtures pass native opts 0–3 and both C modes: persistent per-thread state, native value configuration, unit factories/handlers, copied text, dynamic results/errors, local cycles, direct/indirect factory guards and rejected unsafe payloads. Native tests repeat each mode three times and check explicit packet counts, changed source buffers, copy failures, native/factory startup failure, blocked input/output/receivers, cancellation of socket readiness, skipped queued work and joined disposal on the owning thread. Unit-leading aggregate initialization exposed by unit messages is corrected in the C comparison backend with a six-mode regression; callback regression matrices pass. Native bootstrap and refreshed snapshots pass. Full gate completion is recorded in C05 below; ARM64 macOS only. |

| C05 | Full sections-one/two gate passed on ARM64 macOS. Base: compiler unit/profile/archive/proving checks, native/C/Seed bootstrap agreement and snapshot consistency, robustness and optimization, 193 conformance programs / 479 rejections, 11 platform programs / five targets emitted, 66 native corpus comparisons, and fuzzing (120 mutations / 12 generated programs, zero findings). After correcting the stale dependency fixture (`c94e8e0`) and restoring Seed bootstrap parity (`luce-seed` `68b3638`, all 581 tests passed), the unchanged remaining gate stages passed; logs are `luce-base/build/sections-one-two-full-gate.log`, `sections-one-two-gate-remainder.log`, and `sections-one-two-bootstrap-remainder.log`. Base `81e0355` pins that exact Seed commit. Luce's full gate at `7a74247` passed all boundary/worker matrices, native/C compiler tests, 69 programs / 138 rejections / 85 parsed, formatting, and fuzzing (60 mutations / six programs, zero findings); log: `luce/build/sections-one-two-full-gate.log`. Final Luce pin `cf8f517` rebuilt successfully and passed the shared Base/Luce worker matrix and cleanup tests. Native opts 0–3 and both C modes are covered. No Linux-host run is claimed; that remains in R02. |

| S01–S13, H01–H06 | Base `98df767` (standard JSON), server `7f32b12` and `3c6a489` (direct type imports), Luce `5c62a6a`, application `7892d6f`. Server/application native opts 0–3 pass independent HTTP/WebSocket/TCP, files, lifetime, cancellation and concurrency checks. macOS heap checks report zero leaked blocks. Final pins: Base `1e39cbd`, Luce `8c1941d`, server `3f5d529`, application `2d1c53b`. Native opts 0–3 also pass with these pins locally and in macOS/Linux CI (server run 34659992094, application run 34660083950); macOS server test/heap steps are green while its post-job cleanup remains in progress. Public API, examples, design and validation documentation rewritten; no application worker tokens, route IDs or manual JSON construction remain. |

| G01–G05 | Base `1e39cbd` and Luce `8c1941d` contain scoped frames/checked regions, nested clipping and depth, parent/resize/expiry checks, acquisition/allocation unwind, portable presentation hooks and backend-owned automatic linking. `tests/programs/gpu/check.sh` passes native opts 0–3 and C/C-release with required Metal pixels, wrong-thread rejection and zero retained Base allocations. `native_packages/check.sh` passes transitive sources/archives/search paths including quoted/comma paths in six modes. Luce GPU-bound-method and package-link fixtures pass six modes; UI/sphere prototypes build without framework manifests and pass Metal validation smoke runs. Bootstrap builds a native compiler linking only libSystem. Both full local compiler gates pass. Base: native/C/seed bootstrap agreement, exact snapshots, robustness, optimization, 193 conformance programs / 479 expected rejections, 11 host platform programs / five targets emitted, 66 seed-corpus comparisons and fuzzing (120 mutations / 12 generated programs, zero findings). Luce: full interop/worker/package gates, 69 conformance programs / 138 rejections, formatting and fuzzing (60 mutations / six programs, zero findings). Luce’s Linux full CI gate passes; full Base macOS/Linux CI remains in progress. A normal Luce build also succeeds from its exact isolated Base checkout. Local UI tests and final UI/sphere Metal smoke runs pass; those prototypes remain local until R06 and their API rewrites remain sections 5–6. |

For implementation entries, record repository, commit, test commands/results,
native target/optimization coverage and any remaining limit relevant to the task.
