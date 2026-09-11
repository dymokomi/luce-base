# Package API and implementation rewrite

Inventory date: 2026-09-11. This is the rewrite scope, linked from
[the ecosystem roadmap](ECOSYSTEM.md). Track implementation and completion in the
[rewrite TODO list](PACKAGE-REWRITE-TODO.md); this document records the file-level
scope and required contracts. Historical audit reports are not this backlog.

## Required result

There are no external users or released compatibility obligations. Replace APIs
and implementations directly, updating all consumers, tests and documentation in
the same rewrite. Do not retain legacy formats, deprecated aliases, compatibility
wrappers or migration machinery. Format markers may detect mismatched tools;
they do not require supporting older formats.

The infrastructure packages are written in Base, using structs, `init`, methods,
and interfaces. Their Luce consumers should construct objects, declare application
behavior and call methods. Libraries own their internal state machines, threads,
dispatch, resource acquisition and cleanup. This changes the implementations and
responsibilities as well as the spelling of public calls.

The requested Luce construction shape is:

```luce
from ui import Button
let button = Button("pause")
```

This uses Luce's existing `Type(args)` construction syntax. No construction syntax
change is part of this rewrite. Base already has structs, `init`, methods and
interfaces. The work is to expose those APIs correctly through the Base boundary
and implement the concrete components; the package example is still a target API.

Construction of a declarative component should not open a native window or acquire
a GPU. Keep fallible acquisition in explicit operations such as opening/running
an application. Preserve real errors and Base's allocator contracts; do not turn
recoverable failures into traps merely to remove `try` from an example.

Base retains explicit systems-language ownership. Luce owns its imported objects
through its ARC boundary. Define that boundary explicitly: identity, value copying,
borrowing, mutation, destruction, callback retention and thread affinity. Private
state must remain private and intact. A struct with hidden state cannot be imported
by copying only its public fields.

[BASE-INTEROP.md](BASE-INTEROP.md) defines the ownership contract for implementing
this boundary, including copied values, owned objects, leases and runtime threads.

## Repository inventory

| Project | State at inventory | Rewrite responsibility |
| --- | --- | --- |
| `luce-base` | Clean at `03df451`; committed window/GPU foundation | Describe actual type APIs; define resource interoperability and shared graphics contracts |
| `luce` | Uncommitted handle-identity, span-conversion and native-link changes | Complete typed Base object/interface interop and runtime support; reassess the pending changes against this design |
| `luce-server` | Clean at `d9f6b07` | Rewrite public API, application dispatch and transport ownership |
| `luce-http-server` | Clean at `c3eb2ab` | Rewrite all four application modules against the server object API |
| `luce-ui` | New directory, not yet a Git repository | Replace the handle/factory API and closed widget implementation |
| `luce-3d` | New directory, not yet a Git repository | Replace procedural scene/renderer API and central state structures |
| `luce-demos` | New directory, not yet a Git repository | Rewrite both Luce applications and complete build/test packaging |

The three new directories become separate repositories. Package implementations
stay in Base; HTTP and graphics examples stay in Luce. Native compilation remains
the default. Standard `gpu` owns the Metal/Vulkan backend boundary. There is no SDL
dependency, and packages must not embed platform graphics calls.

Repository names such as `luce-ui` and language import names are different layers.
Use the short public module names `ui` and `graphics`, with `http`, `websocket` and
`socket` under the server package. Resolve these names through real package/module
exports, keeping implementation namespaces private. Prove imports from a clean
consumer; do not make an example depend on arbitrary staging-directory aliases.

## 1. Base description and Luce interoperability

### Describe the existing Base language correctly

Primary files: `luce-base/src/sema/describe.lucb`, the corresponding specification
in `docs/language/base.md`, description fixtures in
`tests/conformance/17_c/describe/` and `tests/programs/describe_fields/`.

- Describe public constructors, instance and static methods, receiver mutation,
  interfaces and conformance, alongside fields and functions.
- Preserve parameter names, defaults, fallibility and qualified type identity
  through aliases, re-exports and nested signatures. Private declarations stay
  private; private layout does not disappear from a constructed object.
- Specify ownership information needed at the boundary. Distinguish transferable
  values, owned object references and borrowed views. Do not infer ownership from
  method names or treat every resource struct as a trivially copyable value.
- Use one current description format with a marker to detect mismatched compiler
  builds. Update both compilers directly; reject mismatches before reading APIs.

### Import and execute those APIs in Luce

Primary files: `luce/src/sema/boundary.lucb`, `check.lucb`, `bodies.lucb`,
`src/back/base.lucb`, affected type representation and tooling code,
`rt/heap.lucb`, `rt/kernel.lucb`, generated `src/support/runtime.lucb`,
`docs/luce.md` and `docs/RUNTIME.md`.

- Import real Base constructors through existing `Type(args)` construction,
  and methods including bound method values. Test positional/named/default
  arguments and fallible initializers through this existing syntax.
  Forward calls to the object's actual private state; preserve mutations and
  avoid copying a resource into temporary field-conversion shims.
- Support Base interfaces and concrete conformance, including heterogeneous
  widget collections. Specify lifetime of interface views and their backing
  objects in both directions.
- Implement explicit ownership at the ARC boundary, including construction
  failure, close/destruction, aliases, retained children, borrowed arguments and
  results, and cross-module types. Released resources must not remain usable
  through an alias or be destroyed twice.
- Support retained callbacks and connections with defined capture ownership,
  disconnection, error propagation, reentrancy and shutdown behavior. Callback
  cycles and borrowed request/frame escape require a deliberate policy.
- Provide runtime-aware application-worker dispatch. A Base network thread cannot
  call arbitrary Luce code with another worker's ARC state. Support per-worker
  handler state and the language's transfer rules within the package/runtime;
  applications must not transport pointer-like integer tokens or recursively
  spawn workers to work around this boundary.
- Reassess the pending handle-list conversion, foreign-name and native-manifest
  changes. Retain useful general mechanisms only with their own tests; public
  package design must not remain constrained to opaque handles.
- Split newly introduced boundary ownership, conversion and dispatch code into
  focused modules instead of further enlarging the monolithic Base emitter.

Completion: a small Base library with a real struct, private state, `init`, methods
and interface can be used directly from Base and constructed/called from Luce.
Tests prove mutation, identity, defaults, errors and destruction. A separate
callback/worker fixture proves lifetime and thread behavior before server dispatch
depends on it. This is the first implementation milestone.

## 2. Standard resources needed by the packages

Primary files: `luce-base/src/std/window/`, `src/std/input.lucb`, `src/std/gpu/`,
their reference documents and tests. Review `thread`/`sync` only where worker
dispatch needs an actual primitive.

- Make window, presentation, device, surface and render-target ownership coherent
  with the interop contract. Define who closes each resource and what survives
  closing a parent, resizing a window or finishing a frame.
- Define scoped frame/render-target access, clipping, logical points versus
  backing pixels, depth behavior and thread affinity once in the standard graphics
  contract. UI widgets and the 3D renderer share that contract.
- Keep native window/input translation in the standard library and event dispatch,
  focus, widgets and layout in `luce-ui`.
- Preserve backend selection and capability/error reporting. Metal stays the first
  implementation; adding Vulkan later must not require application API changes.
- Keep platform framework/link requirements at their owning standard/backend layer
  and propagate them through tooling. The UI, 3D and demo manifests currently
  repeat macOS frameworks and `objc`; remove that duplication as propagation is
  implemented and tested.

Existing `io.Reader`/`Writer`, socket/HTTP/WebSocket codec structs, input events and
pure math/parsing helpers remain useful. Rewrite a standard operation when its
contract or ownership needs changing, not simply because it is a free function.
GPU drawing tests remain regression requirements. The current colored-triangle
pipeline is not a complete portable shader language or Vulkan implementation;
those larger additions require their own follow-up design.

## 3. luce-server

Target public responsibilities: `Server`, `ServerConfig`, `Router`, `Route`,
`Request`, `Response`, typed body/file responses, static mounts, WebSocket sessions
and TCP sessions. Use handler interfaces/callables with explicit lifecycle and
concurrency contracts. Keep normal request/response construction separate from
binding and running the server.

| Existing files under `src/luce_server/` | Rewrite |
| --- | --- |
| `http.lucb` | Replace `pub handle`/free-function facade with real types, constructors and methods; group configuration, routing, request and response responsibilities into modules |
| `websocket.lucb`, `socket.lucb` | Provide actual session/server abstractions; remove raw TCP implemented as an HTTP server cast and generic HTTP request events |
| `internal/model.lucb` | Split the shared state bag into server lifecycle, dispatch queue, per-connection/session and per-request state with explicit owners |
| `internal/pool.lucb` | Own bounded worker startup, application dispatch, join, cancellation and drain inside the package/runtime |
| `internal/http_connection.lucb`, `messages.lucb` | Separate HTTP, WebSocket and TCP state machines; retain shared transport machinery without conflating protocol semantics |
| `internal/routes.lucb` | Bind route declarations to handlers; integer route identifiers become an implementation detail |
| `internal/responses.lucb` | Introduce response values/builders and a single commit boundary instead of mutating a generic pending request through reply functions |
| `internal/body.lucb`, `static_files.lucb`, `storage.lucb` | Give body streams, uploaded files, file responses and static roots precise ownership; retain bounded storage and atomic publication behavior |
| `internal/wire.lucb` | Keep framing/transport adaptation beneath request and session APIs |
| `internal/url.lucb`, `dates.lucb`, `signals.lucb` | Retain validated parsing/formatting algorithms; place typed parameter access and opt-in process-signal registration behind their owning objects |

The package owns threads, request dispatch and graceful shutdown. The public
application does not attach workers, look up route IDs, poll generic event kinds
or manually abandon every request. WebSockets need actual connection/message
lifetime and server-initiated send semantics; TCP exposes streams/chunks without
pretending a read chunk is an HTTP request or a framed application message.

Add structured JSON responses with one tested serializer boundary, typed route
and query access, and consistent handler-error responses. Neither compiler tree
currently contains a JSON module. Place general JSON encoding/decoding in a shared
standard module if required by the chosen public representation; HTTP selects
status/content type and uses it. Do not leave JSON quoting/string interpolation
in example handlers. Specify supported value types and invalid/non-finite inputs
rather than assuming arbitrary object reflection exists.

Retain existing routing precedence, keep-alive, pipelining, chunking, `100 Continue`,
HEAD/OPTIONS, file ranges/validators, uploads/downloads, WebSocket fragmentation,
control frames, deadlines, limits, backpressure and shutdown behavior as regression
constraints. Improve streaming APIs without reintroducing unbounded buffering.

Rewrite `tests/unit.lucb`, `tests/server.lucb` and affected Python integration/heap
fixtures, `README.md`, `docs/API.md`, `DESIGN.md`, `VALIDATION.md`, build tooling,
manifest and compiler pins. Keep independent wire clients and concurrency checks;
add direct Base and Luce object-API consumers.

## 4. luce-http-server

| File | Result |
| --- | --- |
| `src/main.luc` | Construct/configure the server, register application behavior and run it |
| `src/application.luc` | Declare routes/static mounts and lifecycle hooks; remove worker-token attachment, route-ID dispatch and recursive worker spawning |
| `src/api.luc` | Business handlers using request methods, structured responses and file/session APIs; remove manual JSON escaping and WebSocket event-kind dispatch |
| `src/settings.luc` | Keep application CLI configuration, validated through coherent server configuration; no thread-engine implementation |

Preserve the health, item, greeting, echo, upload, download and WebSocket examples,
plus the served static page/assets. Update assets only where the public behavior
changes. Rewrite README, validation notes, build/run/test scripts, dependency pins
and integration tests. A reader should be able to add a REST endpoint without
understanding Base ownership, wire protocols or worker scheduling.

## 5. luce-ui

Target types: a real `Widget` interface; concrete `Button`, `Text`, `Spacer`,
`VStack`, `HStack` and renderable viewport components; `Application`, layout value
types and signal/connection abstractions. Put each substantial responsibility in
its own module, with a small public entry module.

| Existing files under `src/luce_ui/` | Rewrite |
| --- | --- |
| `ui.lucb` | Replace generic widget/application/connection/frame handles and factory functions with typed constructors, methods and interface-based composition |
| `internal/model.lucb` | Replace the closed `Kind`/`Node` state bag with component implementations and explicit tree/application ownership; support custom conforming widgets |
| `internal/layout.lucb` | Layout constraints, measurement and placement through the widget/layout contract; define spacing, padding, flex and clipping |
| `internal/events.lucb` | Input routing, pointer capture, keyboard focus and signal delivery owned by the framework |
| `internal/paint.lucb` | Renderer and frame management over standard `gpu`, including invalidation and viewport drawing |
| `internal/font.lucb` | Isolate text measurement/rendering; remove silent lowercase-to-uppercase display and document the supported text/replacement behavior |

Components are constructed before opening the native application. `Application`
owns pumping events, layout, drawing and presentation. A signal connection invokes
the registered behavior; users do not poll a pending signal count. Specify callback
retention, disconnection during delivery, reentrancy and ownership cycles.

Expose a widget viewport through the standard GPU render-target contract, with
frame lifetime enforced at the boundary. Ordinary application code should not
manually acquire and release frame/target handles to keep a button responsive.
Keep an explicit low-level drawing hook for custom widgets and the 3D integration.

Rewrite `tests/main.lucb`; add the currently missing `tests/run.py`, ownership and
custom-widget tests, interaction tests and native drawing checks. Complete package
README/API documentation, manifest, bootstrap pins, build/test scripts and CI.
The first framework remains small; full native text shaping, a comprehensive
control catalog and a complete SwiftUI/Qt feature set are separate work.

## 6. luce-3d

Use the requested Three.js-like structure and names where they fit the language:
`Vector3`, transforms, `Object3D`, `Scene`, `Mesh`, `BufferGeometry`,
`SphereGeometry`, `MeshLambertMaterial`, `PerspectiveCamera`, `DirectionalLight`
and `Renderer`. Base interfaces and composition provide shared behavior; this
does not require inventing class inheritance.

| Existing files under `src/luce_3d/` | Rewrite |
| --- | --- |
| `graphics.lucb` | Typed public entry point exporting constructors and methods, replacing resource handles and procedural factories/setters |
| `core/model.lucb` | Separate scene membership, objects/transforms, geometry, materials, cameras and renderer ownership into their modules |
| `geometries/sphere.lucb` | `SphereGeometry` construction over the indexed geometry representation; retain checked seam/pole and segment behavior |
| `math/vector.lucb`, `math/scalar.lucb` | Coherent vector/transform operations; remove scalar forwarding functions whose only purpose is an import limitation |
| `renderers/renderer.lucb` | Renderer object, camera transforms, scene traversal, reusable buffers and explicit render configuration through standard `gpu` |
| `ui.lucb` | Optional UI viewport adapter owning render callbacks; the core renderer depends on `gpu`, not on UI internals |

Define shared geometry/material lifetime, scene add/remove, parent ownership,
transform composition, projection/aspect updates, light configuration, disposal
and rendering after invalidation. The current renderer computes transforms and
Lambert colors on the CPU before GPU rasterization; describe that accurately and
keep the rendering abstraction suitable for later programmable GPU work.

Add the currently absent geometry/scene/camera/renderer tests and missing test
runner, including mathematical invariants, allocation failures and native pixel
checks for depth, clipping and widget composition. Complete README/API docs,
manifest, bootstrap pins, build/test tooling and CI.

## 7. luce-demos

- Rewrite `src/ui.luc` around constructed components, layout and connected actions.
  The application runs the framework; it does not implement its event loop.
- Rewrite `src/sphere.luc` around a scene, camera, meshes, materials, lights and a
  UI viewport. Pause/reset update application state and objects through methods.
  The integration owns frame acquisition, clipping and presentation.
- Make both examples use the documented imports and the same APIs available to
  any consumer, without demo-only Base helper functions.
- Complete README, build/test tooling, manifests, dependency pins, smoke tests and
  interactive acceptance checks. Preserve native binaries as the requested build
  artifacts; generated `.lucb` trees belong in automatically removed workspaces.

## 8. Validation and delivery across every project

- Compile all documented examples. Test both Base callers and Luce callers at each
  package boundary, including custom interface implementations and bound methods.
- Verify construction failure, partial acquisition, allocation refusal, retain/drop,
  aliases, borrowed-view expiry, callback removal, errors and thread restrictions.
- Retain independent protocol tests and exercise concurrent requests, slow peers,
  file transfers, cancellation, shutdown and bounded outstanding resources.
- Exercise UI input/focus/layout/resize and actual Metal drawing. Add scene/math
  invariants and depth/clipping checks, not just a demo that exits without crashing.
- Run native optimization levels 0–3. Run portable/compiler/server gates on ARM64
  macOS and x86-64 Linux; report graphics execution only on implemented backends.
  Keep existing supplemental C comparisons without changing the native default.
- Regenerate embedded runtime/prelude sources and bootstrap snapshots when the
  relevant sources change. Update pins only to tested compiler/package commits.
- Verify clean builds and failed builds remove temporary generated sources. No
  `.lucb`, staged dependency trees or scratch logs in normal example build output.
- Update API/ownership/concurrency documentation with each implementation slice.
  Comments explain contracts, invariants and reasons; type/module names express
  responsibility. Avoid duplicated state bags and broad facade modules.
- Commit each tested, coherent slice promptly. The current rejected prototypes are
  not release candidates. Record actual test evidence before marking items done.

## Implementation order and completion gates

1. **Interop contract and minimal working example:** actual Base struct constructor,
   private state and methods callable from Luce, then interfaces and ownership.
   Use existing `Type(args)` construction and documented module imports.
2. **Callbacks and worker dispatch:** prove lifecycle, capture, error and thread
   behavior with focused compiler/runtime fixtures.
3. **Server plus HTTP application:** rewrite the Base library and replace example
   framework code, preserving protocol/file/concurrency behavior. Add the shared
   serialization support this API needs.
4. **Standard graphics resource contract:** settle frame/target lifetime and link
   propagation before UI and 3D depend on it.
5. **UI plus button example:** implement component/interface/layout/signal ownership
   and application run behavior; prove custom widgets and real input/drawing.
6. **3D plus sphere example:** typed scene/renderer implementation and optional UI
   viewport integration, with standalone and composed rendering tests.
7. **Cross-project release gate:** clean consumer builds, complete documentation,
   exact dependency pins and all required native checks. Create/publish the three
   new repositories with the reviewed APIs.

TLS, the package registry, database integration, HTTP/2, a full control catalog and
the Vulkan backend are later work. They remain on the wider roadmap; this rewrite
must establish sound foundations without claiming those features are complete.
