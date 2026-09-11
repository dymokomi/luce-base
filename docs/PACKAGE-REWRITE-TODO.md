# Package rewrite TODO

Updated: 2026-09-11. This is the working checklist for the ecosystem rewrite.
[PACKAGE-REWRITE.md](PACKAGE-REWRITE.md) holds the full file inventory, design
constraints and acceptance criteria. Follow the phases below in order.

**Status:** ownership contract defined; description implementation next.
**Next task:** I02 — expose constructors, methods and interfaces in a versioned
Base description.

## How we track work

- `[ ]` means unfinished; `[x]` means completed and verified. Partial work stays
  unchecked, with a short progress note beneath the task.
- Keep task IDs stable so commits and follow-up discussions can refer to them.
- For each completed implementation task, record the relevant test command/result
  and implementation commit in the evidence section. If the checklist update is
  part of that implementation commit, say so instead of inventing its future hash.
- Update this checklist with each completed slice and commit fixes promptly.
  Update the next task and any unresolved dependency when changing phases.
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
- [ ] I02 — Extend Base descriptions with public constructors, instance/static
  methods, receiver mutation, interfaces and conformance. Cover private visibility
  and incompatible description versions with fixtures and diagnostics.
- [ ] I03 — Preserve parameter names, defaults, fallibility and qualified type
  identity through aliases, re-exports and nested signatures.
- [ ] I04 — Import and lower Base constructors through existing `Type(args)` syntax;
  exercise positional, named and default arguments and fallible `init`.
- [ ] I05 — Implement imported instance/static methods and bound method values
  against actual private state, preserving mutation without lossy field copying.
- [ ] I06 — Implement ARC ownership for imported objects: construction failure,
  close/destruction, aliases, retained children, borrowed arguments/results and
  cross-module identity. Prevent double destruction and use through closed aliases.
- [ ] I07 — Support Base interfaces and concrete conformance in both directions,
  including heterogeneous widget collections and backing-object/view lifetimes.
- [ ] I08 — Reassess pending handle-identity and span-conversion changes against
  the object contract; retain general mechanisms with focused regression coverage.
- [ ] I09 — Establish documented public imports and exports, including
  `from ui import Button`, in a clean consumer without staging-specific aliases.
- [ ] I10 — Separate boundary conversion/ownership code into focused compiler
  modules; update interop/runtime documentation and generated sources as needed.
- [ ] I11 — **Phase gate:** run a small real Base struct/interface library from
  both Base and Luce. Prove private-state mutation, defaults, identity, bound
  methods, errors, destruction and rejected invalid crossings at native opts 0–3.

## 2. Callbacks and application workers

- [ ] C01 — Define callback capture ownership, retention, disconnection, cycles,
  reentrancy and error propagation for handlers and signals.
- [ ] C02 — Implement callback/interface adapters with tests for removal during
  delivery, callback failure and attempted escape of borrowed request/frame data.
- [ ] C03 — Implement runtime-aware worker dispatch with per-worker application
  state and enforced Luce transfer rules; keep thread/runtime setup in the library
  and runtime instead of exposing integer tokens or recursive spawning to users.
- [ ] C04 — Prove cancellation, late callbacks, startup failure and shutdown/join
  release retained objects and wake blocked operations correctly.
- [ ] C05 — **Phase gate:** direct Base and Luce callback/worker fixtures pass
  lifetime, error and concurrency checks before server dispatch uses the bridge.

## 3. Server and HTTP application

### luce-server

- [ ] S01 — Define public `Server`, `ServerConfig`, `Router`, `Route`, `Request`
  and `Response` contracts, including construction, configuration and run/close.
- [ ] S02 — Split server lifecycle, dispatch queues, connection/session state and
  request state into focused owners; replace the generic handle/state facade.
- [ ] S03 — Move bounded worker startup, handler dispatch, cancellation, draining
  and joining into the package using the verified runtime bridge.
- [ ] S04 — Bind route declarations directly to handlers and implement typed
  request/header/parameter/query access with documented borrowed/owned results.
- [ ] S05 — Implement response values/builders, one response commit boundary and
  consistent handler-error translation.
- [ ] S06 — Define the structured JSON representation and implement its tested
  serializer boundary; put general JSON support in the standard library where
  needed. Cover escaping, supported values, malformed inputs and non-finite numbers.
- [ ] S07 — Implement owned body/file/static-root APIs, bounded streaming,
  upload publication and file responses while preserving ranges and validators.
- [ ] S08 — Separate HTTP, WebSocket and TCP state machines; preserve common
  transport machinery without treating TCP chunks as HTTP request events.
- [ ] S09 — Implement WebSocket session/message APIs, server-initiated sending
  and explicit session lifetime; preserve fragmentation and control-frame behavior.
- [ ] S10 — Implement TCP session/stream APIs with explicit chunk/framing semantics.
- [ ] S11 — Integrate opt-in signal handling, observation and graceful shutdown
  through the owning server/session objects.
- [ ] S12 — Rewrite Base consumers, unit/heap fixtures and independent wire tests;
  preserve routing, keep-alive, pipelining, chunking, `100 Continue`, HEAD/OPTIONS,
  file transfer, limits, deadlines, backpressure and concurrent shutdown coverage.
- [ ] S13 — Update server API/design/validation docs, build/test tooling, manifest,
  compiler pins and CI for the rewritten library.

### luce-http-server

- [ ] H01 — Rewrite `src/main.luc` to construct/configure the server, register
  application behavior and run it.
- [ ] H02 — Rewrite `src/application.luc` as route/static/lifecycle declarations;
  remove worker attachment, integer dispatch and recursive worker spawning.
- [ ] H03 — Rewrite `src/api.luc` with request methods, structured responses and
  file/session APIs; remove manual JSON escaping and generic protocol-event logic.
- [ ] H04 — Adapt `src/settings.luc` to validated server configuration while
  keeping CLI and application settings in the example.
- [ ] H05 — Preserve health, item, greeting, echo, upload, download, WebSocket and
  static-page behavior; update documentation, assets where needed, tests and pins.
- [ ] H06 — **Phase gate:** Base and Luce server consumers pass independent HTTP,
  WebSocket, TCP, file-transfer, resource-bound and concurrency tests at native
  opts 0–3 on macOS and Linux. Adding an endpoint requires only application code.

## 4. Standard graphics resources and package linking

- [ ] G01 — Specify coherent window/presentation/device/surface ownership and
  behavior after parent closure, resize and failed acquisition.
- [ ] G02 — Implement scoped frame/render-target lifetime shared by UI and 3D,
  with explicit clipping, logical/backing coordinates, depth and thread affinity.
- [ ] G03 — Keep OS input translation in standard window/input and framework
  dispatch in UI; preserve portable backend selection and capability errors.
- [ ] G04 — Propagate native backend link requirements through package tooling;
  reassess pending native-manifest changes and remove duplicated macOS frameworks
  and `objc` declarations from UI, 3D and demo manifests.
- [ ] G05 — **Phase gate:** ownership/expiry/resize/failure tests and actual Metal
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

For implementation entries, record repository, commit, test commands/results,
native target/optimization coverage and any remaining limit relevant to the task.
