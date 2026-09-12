# Error handling in Luce and Luce Base

The strongest direction for Luce is **automatic, statically checked propagation
inside functions already declared fallible with `-> T!`**. A caller would still
have to declare that it can fail, handle the failure, or explicitly capture a
result. Ordinary application code could then say `let button = Button("Pause")`
without changing what happens when construction fails.

For Base, the recommended first change is **one `try` for an entire expression**.
It preserves visible error exits in code that manages resources manually while
removing repeated markers inside nested construction. An explicit propagation
suite is a possible subsequent Base feature if expression coverage leaves too
much repetition. These are design recommendations, not implemented syntax.

Neither recommendation requires platform exceptions, a different native ABI,
discarding errors, or converting recoverable allocation failures into traps.
The compiler would make propagation explicit internally before ownership analysis
and native lowering. The safety argument depends on that ordering and on preserving
all existing cleanup paths; removing words from the source is not sufficient.

## Current behavior and measured examples

The reference code is Base `04b7dec`, Luce `c88a1eb`, UI `b7a6699`, 3D `e4ba812`,
HTTP application `2f8916a`, and demos `4c997fe`. The package rewrite and nine supplied
defect reports precede this study. The examples below describe the current native
toolchain unless explicitly labeled as proposals.

| File | Nonblank, noncomment lines | `try` tokens | Lines containing `try` |
| --- | ---: | ---: | ---: |
| `luce-demos/src/ui_demo.luc` | 32 | 12 | 11 |
| `luce-demos/src/sphere.luc` | 64 | 32 | 26 |
| `luce-http-server/src/main.luc` | 17 | 8 | 7 |

These are direct counts of the three files, excluding blank lines and lines whose
first nonspace character is `#`. Their strings contain no `try` tokens. They are
not a whole-ecosystem complexity metric. The concentration in setup expressions,
however, explains why the repetition dominates the presentation of these small
applications. [Source files](https://github.com/dymokomi/luce-demos/tree/4c997fe/src).

The UI tree currently contains six markers in one construction expression:

```luce
let content = try VStack([
    try Text("Luce UI"),
    try HStack([button, label, try Spacer()], spacing = 20.0),
    try Text("Click the button or use Tab and Space"),
    try Spacer()
], spacing = 20.0, padding = 24.0)
```

Today, `try` is a unary operation on one `T!` result. An outer marker does not
authorize unwrapping an argument's result. `try outer(value())` is rejected when
both functions are fallible and `outer` needs the plain value. Luce's parser,
checker and Base emitter all reflect this narrow operation. The emitter also
looks for explicit `try` nodes when deciding whether partially evaluated owned
expressions need cleanup. That last dependency is central to any safe change.
[Current parser and checker](https://github.com/dymokomi/luce/blob/c88a1eb/src/sema/bodies.lucb),
[ownership-sensitive emission](https://github.com/dymokomi/luce/blob/c88a1eb/src/back/base.lucb).

The existing implementation already separates absence, failure and traps. Base
uses `T?` for absence and `T!` for a fallible function result. A trap terminates the
program and cannot be caught. Base's `Error.message` is borrowed storage; Luce's
error runtime and the native `interop.Outcome` boundary provide owned message
lifetimes where required. A change to propagation syntax must preserve those
different ownership contracts. [Base §11](language/base.md#11-absence-failure-and-traps),
[Luce runtime](https://github.com/dymokomi/luce/blob/c88a1eb/docs/RUNTIME.md).

### Two additional design prerequisites

Temporary compile probes found two existing limitations relevant to this decision.
They are separate from the nine supplied reports and have not been changed during
this study.

First, Luce documents explicitly bound fallible values, and its checker accepts
`let pending: int! = value()`. Native compilation then fails because the emitted
Base attempts to store `T!`, which Base intentionally permits only as a function
result effect. Automatic propagation must not silently reinterpret that binding.
The two languages need an explicit decision about stored results before an
inference rule is introduced.

Second, a named `func() -> unit` cannot currently be passed where Luce expects
`func() -> unit!`. That makes application callbacks advertise fallibility even
when their body has no recoverable failure. Base already specifies the safe
nonfallible-to-fallible function conversion. Luce should eventually support the
same direction with a real adapter; the reverse conversion must remain illegal.
[Luce result specification](https://github.com/dymokomi/luce/blob/c88a1eb/docs/luce.md),
[Base function conversions](language/base.md#5-types).

| Probe | Current `luce check` | Current native build |
| --- | --- | --- |
| `try outer(value())`, both calls fallible | Rejects the unhandled inner result | Same rejection |
| Bind `pending: int!`, then propagate `pending` on a later line | Accepts | Base rejects a stored `T!` |
| Pass a nonfallible named callback to `func() -> unit!` | Rejects the function type | Same rejection |
| `let answer = value()` inside `main -> int!` | Rejects the unhandled result | Same rejection |

A minimal stored-result probe is:

```luce
func value() -> int!:
    return 7

pub func main(arguments: list[str]) -> int!:
    let pending: int! = value()
    return try pending
```

## Why the APIs are fallible

Changing notation and changing an API's failure contract are independent decisions.
Most markers in these examples are not mechanically removable from the present
API. Several operations combine more than one failure category.

| Operation family | Current reasons for failure | Appropriate treatment |
| --- | --- | --- |
| `Button`, `Text`, stacks, `Scene`, geometry and materials | Allocation, copied text, dimensions, limits, identity and ownership setup | Keep failures recoverable; simplify propagation separately |
| `on_click`, `on_frame` | Connection allocation, closed signal, identity limits | Preserve connection lifetime and failure delivery |
| `set_text` | Text validation and owned replacement allocation | Preserve the old caption if replacement fails |
| Transform and camera setters | Finite/range checks, valid lens/scale constraints, native owner guards | Review reusable validated values; do not simply remove checks |
| Scene membership | Parent rules, cycles, limits, allocation and reentry | Keep transactional validation and error reporting |
| `Application.run` | Window/device/frame operations and application callbacks | Handle at an application boundary with an explicit shutdown policy |
| Server configuration/start/run | Configuration, files, sockets, worker startup and request execution | Keep deployment and request failures distinct |

For example, `Button.set_text` validates and allocates the replacement before
releasing the old text. `ObjectNode.set_rotation` validates the vector before
mutation. `Signal.emit` retains an ordered snapshot and can itself fail to allocate
even when every callback is nonfallible. Removing the callback's artificial `!`
would therefore not make signal emission infallible.
[Button](https://github.com/dymokomi/luce-ui/blob/b7a6699/src/luce_ui/widgets/button.lucb),
[object transforms](https://github.com/dymokomi/luce-3d/blob/e4ba812/src/luce_3d/core/object.lucb),
[signals](https://github.com/dymokomi/luce-base/blob/04b7dec/src/std/interop/signal.lucb).

There is also an allocation-policy difference today. Luce's ordinary managed
allocations trap on exhaustion. Base's explicit allocation operations return
recoverable failure, and many imported constructors retain that contract. The
shared ownership runtime still has fatal allocation paths for bookkeeping and
cycle-collection storage. Thus the current ecosystem does not promise that every
possible out-of-memory condition is recoverable, despite the number of `try`
markers. [Luce allocation runtime](https://github.com/dymokomi/luce/blob/c88a1eb/rt/kernel.lucb),
[shared collector](https://github.com/dymokomi/luce-base/blob/04b7dec/src/std/ownership/cycles.lucb).

The recommendation is to keep these policies unchanged during the syntax work.
Making the shared collector recoverable would be a separate runtime project.
Automatically swallowing `memory.exhausted` at the Luce boundary would weaken
existing APIs and would still leave validation and lifecycle failures to handle.

## Evidence from other languages

The important distinction is between **tracking whether a function can fail** and
**requiring a mark at every call that propagates failure**. A compiler can enforce
the first without requiring the second. Different languages choose different
combinations, and their runtime mechanisms need not be copied with their syntax.

| Model | Call-site notation | Enforcement and useful lesson |
| --- | --- | --- |
| Swift | `try` covers a throwing expression, including nested calls | Declared throwing effects and expression coverage coexist |
| Rust | `?` unwraps/propagates a particular result | Shorter notation retains individual propagation sites |
| Zig | `try` unwraps/returns an error union; `catch` handles it | Explicit results and `errdefer` closely resemble Base |
| Java checked exceptions | Calls inside an appropriate method/handler need no individual marker | Static declaration/handling does not require per-call syntax |
| Chapel production mode | Throwing functions propagate unmarked throwing calls | A close precedent for function-level checked propagation |
| Kotlin | Calls generally have no marker or required throwing declaration | Concision comes with weaker compile-time failure obligations |
| Koka | Effects are inferred and can be polymorphic | Higher-order effect tracking is possible, with a larger type-system cost |

### Swift: broader expressions, explicit effects

Swift's reference explicitly allows one leading `try` to cover multiple throwing
calls in an infix expression. Its error model also requires errors to be handled
inside a nonthrowing function. Swift describes its throwing mechanism as avoiding
the stack-unwinding mechanism used by many exception systems. Those are separate
choices: broader syntax does not imply introducing C++-style exceptions into
Luce. [Swift expression reference](https://raw.githubusercontent.com/swiftlang/swift-book/main/TSPL.docc/ReferenceManual/Expressions.md)[^1],
[Swift error handling](https://raw.githubusercontent.com/swiftlang/swift-book/main/TSPL.docc/LanguageGuide/ErrorHandling.md)[^2].

Swift's original rationale provides the strongest counterargument to removing
call-site markers: a reader loses an immediate map of possible error exits, and
partially updated state becomes harder to audit. It also distinguishes typed
propagation from marked propagation. This is a design tradeoff, not proof that
unmarked propagation is inherently unsafe. Luce would need reliable cleanup and
clear function contracts to take that tradeoff deliberately.
[Swift rationale](https://github.com/swiftlang/swift/blob/main/docs/ErrorHandlingRationale.md)[^3].

Swift's typed-throws proposal permits nonthrowing functions to convert to throwing
function types. Its current text distinguishes implemented Swift 6.0 functionality
from broader inference work moved to future directions. That supports a modest
Luce callback conversion first, without assuming that a complete effect-polymorphic
system is necessary. [SE-0413](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0413-typed-throws.md)[^4].

SwiftUI-like presentation also benefits from a declarative construction transform.
Swift's result builders transform supported statement sequences into calls such as
`buildBlock`; this is an API-composition facility, not a universal error-handling
solution. Adding a UI-specific language transform would not solve the same clutter
in HTTP applications or the compiler itself.
[SE-0289](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0289-result-builders.md)[^5].

### Rust and Zig: explicit propagation remains explicit

Rust's `?` extracts a successful `Result` or returns an error from the surrounding
function, with error conversion through the appropriate trait machinery. It can
also apply to compatible optional-returning code. Replacing Luce's `try` with a
postfix symbol would shorten the display, but it would preserve the same number
of individual propagation operations. Rust also shows that purpose-built library
operations can consolidate common open/read/close workflows.
[Rust book](https://doc.rust-lang.org/book/ch09-02-recoverable-errors-with-result.html)[^6].

Zig's `try` is similarly a shortcut for returning an error and otherwise extracting
the value. Its `catch`, error unions and `errdefer` make it a particularly useful
comparison for Base's manual-resource code. Adopting that notation alone would
retain the repetition already present here. These observations use the documented
core behavior; the moving master documentation is not a promise about other
experimental Zig features.
[Zig language reference](https://ziglang.org/documentation/master/#Errors)[^7].

### Checked propagation without individual markers

Java statically requires checked exceptions to be caught or permitted by the
enclosing declaration, while exempting unchecked exception classes. Its calls do
not each need a `try` marker. This establishes that checking and marking can be
separated, although Java's exception hierarchy and runtime are not a proposed
implementation for Luce. The reference here is Java SE 25, not a claim to use the
latest Java edition. [JLS §11.2](https://docs.oracle.com/javase/specs/jls/se25/html/jls-11.html#jls-11.2)[^8].

Chapel 2.9's production mode is an especially close comparison: a throwing caller
propagates errors, while a nonthrowing caller must handle them. Its prototype
mode permits additional fatal behavior. Luce should borrow the production-mode
principle, not introduce source-dependent prototype/production policies.
[Chapel error handling](https://chapel-lang.org/docs/language/spec/error-handling.html#production-mode)[^9].

Kotlin takes another direction: exceptions are unchecked by default, without a
requirement to declare or handle them. That is concise, but it would discard a
useful part of Luce's current contract if copied wholesale.
[Kotlin exceptions](https://kotlinlang.org/docs/exceptions.html)[^10].

Koka demonstrates inference of effect rows and higher-order effect polymorphism,
including exception effects and operations whose effects depend on callbacks.
It is useful evidence for a future direction, especially for generic collection
operations. It is a substantially larger design than the two-state fallible versus
nonfallible distinction needed for the present demos.
[Koka book](https://koka-lang.github.io/koka/doc/book.html)[^11].

### Allocation policy and library-level batching

Ordinary Swift runtime allocation invokes an allocation-failure abort path rather
than producing a throwing initializer result. Rust exposes explicit fallible
reservation operations such as `Vec.try_reserve`, alongside allocation-error
handling that can terminate execution. These examples explain why superficially
similar construction code can have fewer error markers. They do not justify
removing Base's recoverable allocator contract.
[Swift heap implementation](https://raw.githubusercontent.com/swiftlang/swift/main/stdlib/public/runtime/Heap.cpp)[^12],
[Rust reservation](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.try_reserve)[^13],
[Rust allocation failure](https://doc.rust-lang.org/std/alloc/fn.handle_alloc_error.html)[^14].

Go's `errWriter` example stores the first failure and makes subsequent writes
no-ops until the caller checks the result. This can be appropriate for a bounded
encoder or command recorder. It is a poor universal policy for mutable widgets:
later application statements could continue after a failed operation and observe
partially updated state. A batched API must document where failure becomes visible
and what happened before it. [Errors are values](https://go.dev/blog/errors-are-values)[^15].

## Alternatives for this ecosystem

| Alternative | Effect on the three examples | Main cost or limitation | Judgment |
| --- | --- | --- | --- |
| Keep current syntax | 12 / 32 / 8 markers | Continued repetition in nested setup | Strong baseline for regression comparison |
| Replace `try` with postfix `?` | Same propagation-site count | New syntax and possible confusion with optionals | Insufficient benefit on its own |
| Cover an entire expression with one `try` | Approximately 7 / 24 / 7 markers | Separate statements still need markers | Best first Base improvement |
| Explicit propagation suite | One marker for a sequence | New scope and definite-initialization rules | Viable Base alternative if needed |
| Automatic propagation in declared fallible functions | No required per-call markers in these files | Error exits become less visible locally | Recommended Luce direction |
| Make every function implicitly fallible | Very little notation | Loses explicit API boundaries and weakens review | Reject |
| Trap on imported errors | Removes some markers | Changes recoverable failure into process termination | Reject as a cleanup strategy |
| Rebuild APIs around deferred validation | Can consolidate some setup failures | Larger API/lifetime redesign; does not cover general code | Targeted future work |
| General effect polymorphism | Can remove false fallibility in generic code | Broad type-system and diagnostics project | Defer |

The expression-wide counts are a manual estimate from the current files: collapse
nested markers under one enclosing marker without moving statements or changing
APIs. They are not measurements from a new compiler. Function-level propagation
would remove the required markers, not the runtime checks, failure branches or
fallible declarations.

## Proposed Luce contract

Inside a function explicitly declared `-> T!`, an unhandled fallible operation
would yield its success value or propagate its failure. The checker would resolve
that behavior before the ownership-sensitive intermediate representation is
processed. A nonfallible function would still reject an unhandled fallible call.
An expression with `catch` would route failures to its handler first.

For the UI example, the proposed spelling is:

```luce
# Proposed Luce propagation; not accepted by the current compiler.
pub func main(arguments: list[str]) -> int!:
    let label = Text("Clicks 0")
    let counter = Counter(label)
    let button = Button("Add one")
    let clicked = button.on_click(counter.increment)
    let content = VStack([
        Text("Luce UI"),
        HStack([button, label, Spacer()], spacing = 20.0),
        Text("Click the button or use Tab and Space"),
        Spacer()
    ], spacing = 20.0, padding = 24.0)
    let app = Application(content, title = "Luce UI", width = 760, height = 360)
    app.run()
    clicked.disconnect()
    return 0
```

This abbreviated example omits the existing smoke-argument handling and final
message solely for readability. It retains the connection so it remains alive
while the application runs. If setup fails, previously constructed managed values
must be released through the existing ownership paths. If `run` fails, statements
after it do not execute; cleanup must not depend on reaching `disconnect()`.

Several rules should be normative rather than left to inference accidents:

1. **Declared boundaries remain explicit.** Public and named functions state
   fallibility. Adding a failing call to a nonfallible function produces a source
   diagnostic; it does not silently change its public function type.
2. **Calls and values remain distinct.** Propagation applies to a fallible
   operation, not an arbitrary value because an expected type happens to fit.
   Storing an owned result uses an explicit result representation.
3. **Local handlers take priority.** `parse(load(path)) catch failure:` should
   handle failures from the covered expression, including its arguments. A failure
   in the handler itself goes to an enclosing handler/function, not back into the
   same handler.
4. **No implicit loss of information.** Failure never becomes `none`, `false`, an
   empty string, an ignored return or a trap just because the marker is absent.
   `T?!` retains the distinction between success-with-absence and failure.
5. **Nested functions start a fresh effect context.** Creating a callback inside
   a fallible function does not give its later invocation permission to return
   through that outer function. Contextual lambda typing must remain explicit in
   the checked representation.
6. **Only the evaluated branch can fail.** Short-circuit operators, conditional
   expressions, optional fallbacks and match arms preserve lazy evaluation.
7. **Effects do not cross foreign entry points accidentally.** Native callbacks,
   UI dispatch, worker messages and exported C functions use their established
   status/outcome boundaries.

Existing explicit `try` can remain as an intentional local marker in the new
language definition if it helps highlight a significant error exit. That would
be a supported notation with one meaning, not a legacy mode. The compiler should
not carry separate old/new propagation semantics, and rewritten examples should
use the chosen canonical style consistently.

### Stored results require a decision first

The preferred model is to reserve `T!` for fallible function results and represent
stored success/failure as an ordinary, owned `Result[T]` value. Such a type would
need a defined capture operation, payload access, error ownership, destruction and
worker-transfer policy. Those details should be designed before adding a public
API; spelling a hypothetical `capture` keyword here would prematurely settle syntax.

An alternative is to fully implement Luce's currently documented stored `T!`,
lowering it into an ordinary generated enum rather than an illegal Base field or
local type. That could preserve a compact notation, but it combines value and
effect roles and needs rules for assignment, parameters, containers and explicit
propagation of an already stored result. Neither option should be selected by
silently changing the meaning of `let pending: int! = value()`.

## Proposed Base expression coverage

Base should first retain explicit propagation markers while allowing one marker
to cover fallible subexpressions. A marked expression would have a success type
and a checked failure effect internally, rather than requiring every child to
already produce a plain value before the outer marker is examined.

```luce
# Proposed Base expression coverage.
let size = try target.get().size()
```

The actual Base button painter currently spells that operation
`try (try target.get()).size()`: it first obtains a checked render-target pointer,
then asks the target for its dimensions. The broader marker would cover both
failures while preserving their order and the target's lease checks. A Base
caller would continue to follow the package's allocation, reference and scoped
GPU lifetime rules.

If repetition across statements remains excessive, a Base `try:` suite could
authorize propagation for a lexical sequence inside a fallible function. That
would be an additional grammar feature and must specify scope exit, `defer`,
`errdefer`, handler attachment and whether introduced bindings escape the suite.
It should not be implemented as a captured closure: closure allocation, capture
semantics and nonlocal returns would alter the systems-language model.

Function-wide automatic propagation in Base is also technically possible. The
reason to postpone it is reviewability in manual-resource code, not a claim that
the compiler cannot enforce it. If having identical propagation rules in both
languages is considered more valuable than visible Base exits, that alternative
should be evaluated explicitly using the same cleanup and assembly gates.

## Ownership, mutation and error boundaries

The current Luce emitter uses `may_fail` to recognize explicit `try` syntax before
hoisting partially evaluated owned values. Merely allowing unmarked calls in the
checker could leave those values outside the necessary cleanup path. A safe
implementation must elaborate implicit propagation into explicit checked nodes
before `may_fail`, temporary pooling, native conversions and Base emission run.
An alternative is to make all those consumers use effect annotations, but that is
a wider change and needs an equally complete audit.

The same rule applies to receiver lifetimes. A bound method may capture an owner
or checked view; evaluating another argument may close it, replace it or fail.
The receiver must remain retained for the required interval, and the existing
owner/lease guards must still decide whether invocation is valid. A syntactic
change must not hoist calls across those guards or across lazy branches.

Errors also own or borrow resources. Luce's dynamically constructed message must
survive native propagation, a nested cleanup failure, a callback boundary and the
eventual handler. Base must not acquire an implicit allocation just to implement
a syntax feature. Reuse the existing borrowed Base error convention and the owned
interop carriers, preserving their lifetimes exactly.

Cleanup is not transaction rollback. The current counter increments its number
before replacing the label. If replacement fails, the counter and displayed text
can differ. The current explicit `try` already permits this outcome. A smaller
syntax does not fix it. Where consistency is required, compute and validate the
replacement first, then commit the coupled state, or provide a domain operation
with a documented all-or-nothing guarantee.

Server error policy similarly belongs to the framework boundary. A request
failure should follow the server's documented response/connection policy; a
startup failure can terminate startup. A WebSocket failure should respect session
and transport state. Automatic propagation cannot retry a partially sent response
or safely rerun a request with side effects. UI callback failures need a deliberate
policy as well; the current signal stops at the first failure rather than silently
delivering the rest of the snapshot.

Destructors and other mandatory cleanup paths must not begin propagating through
an already active failure. Base's deferred-call rules already prevent replacing
an in-flight error by returning from cleanup. Explicit close operations that need
to report a flush/write failure remain separate from best-effort destruction.

## Native implementation and validation

The recommended implementation path is to retain the existing native result
convention and make the source policy a front-end decision. Luce still lowers to
Base, and Base compiles through the native backend by default. Supplemental C
emission remains a comparison target, not the proposed runtime mechanism.

| Compiler responsibility | Required work |
| --- | --- |
| Parsing | Define expression coverage and handler extent; add suite grammar only if selected |
| Type/effect checking | Track success type and possible failure; enforce declared boundaries and fresh callback contexts |
| Elaboration | Materialize each propagation/handler edge before ownership-sensitive analysis |
| Ownership and cleanup | Preserve temporary release, partial initialization, receiver retention and error-message lifetime |
| Native interop | Preserve Outcome, Connection, worker Reply and C status boundaries; adapt nonfallible callbacks safely |
| Diagnostics and tools | Point to the actual failing call, show its declared effect, and map synthetic operations to real source locations |
| Interpreter and backends | Execute the same checked semantics; preserve native/C comparison and bootstrap agreement |

A dedicated normalized propagation node would be clearer than relying indefinitely
on the spelling of a parser unary node. The initial implementation can reuse
existing lowering if it preserves source positions and ownership ordering. Either
way, an infallible-to-fallible callback conversion needs a wrapper that produces
the correct success representation; a function-pointer reinterpretation is not an
ABI conversion.

No speedup is established by this report. If the new source elaborates to the
same calls, branches and cleanup as an explicit reference program, the runtime
work should be equivalent; that is an engineering hypothesis to verify. Measure
native assembly and allocation counts before attempting timing claims. Source
size and dynamic error-handling cost are different quantities.

The acceptance matrix should include:

- Failure at every operand and argument position, with a trace proving left-to-right,
  exactly-once evaluation and that later operations do not run.
- Short-circuit, conditional, optional fallback, match, loop condition and named
  argument cases, including nested local handlers and failure inside a handler.
- Managed lists/tuples containing several fallible constructors, with failure
  after each successful element and zero leaked owners afterward.
- Failed class/Base initialization, private native storage, mixed cycles, bound
  methods, expired views, receiver replacement and reentrant close.
- Base `defer`/`errdefer` ordering and allocator restoration; dynamic messages
  surviving nested cleanup, worker transfer and native-managed-native callbacks.
- Rejected unhandled errors in nonfallible code; rejected fallible-to-infallible
  callbacks; explicit and implicit propagation with identical behavior.
- Stored-result cases for whichever representation is chosen, including owned
  payloads, failure messages, containers and later inspection.
- Real UI, sphere and HTTP consumers, including allocation failure and startup,
  callback, request and shutdown boundaries.

Run those cases at native optimization levels 0–3 on ARM64 macOS and x86-64 Linux,
with existing C debug/release comparisons. For Base changes, refresh embedding,
reference material and both bootstrap snapshots and prove native self-hosting.
For Luce changes, compare normalized operations with explicit reference programs,
then run the full boundary/ownership/worker gate and generated-source cleanup tests.
Base DWARF positions must preserve the real operations behind implicit
propagation. Luce-to-Base source mapping needs its own explicit check; this report
does not establish complete Luce-level DWARF support.

## Decision and proposed sequence

The recommended decision is to make Luce's existing `!` declaration carry the
ordinary propagation policy, retain checked failure boundaries, and improve Base
expression coverage without changing its manual-memory model. This addresses the
application examples directly while containing the first systems-language change.
It does not depend on making constructors infallible or inventing a new UI DSL.

Implementation should begin only after settling three design choices: the stored
result representation, the desired amount of call-site visibility in Base, and
the precise extent of an expression-level handler. Then proceed in this order:

1. Reconcile stored-result checking, lowering and documentation; define the
   nonfallible-to-fallible callback conversion and its owned ABI adapter.
2. Add explicit effect/propagation representation and ownership regressions while
   keeping current source behavior, so cleanup correctness is independently visible.
3. Implement Luce function-level propagation and broad handler coverage. Rewrite
   the three examples directly, using one canonical syntax and no compatibility mode.
4. Implement Base expression coverage and regenerate/test the bootstrap chain.
   Evaluate an explicit Base suite only against remaining real repetition.
5. Review individual API failure contracts and repeated validation separately.
   Consider validated configuration and bounded preparation APIs where they remove
   real repeated work, rather than merely relocating errors.

This study leaves language syntax and runtime semantics unchanged. The temporary
probes establish current limitations; the marker reductions are estimates; native
performance equivalence and the proposed safety properties remain acceptance
criteria for a future implementation. No comparative usability experiment proves
which notation developers will prefer, so the final choice about Base visibility
remains a product and language-design judgment.

## Sources

External sources were consulted on 2026-09-11/12. Moving documentation and source
branches describe the retrieved revision; explicitly numbered specifications are
identified below. Local implementation facts use the commits listed at the start
of the report and linked beside the relevant claims.

[^1]: Swift project contributors. [The Swift Programming Language: Expressions, Try Operator](https://raw.githubusercontent.com/swiftlang/swift-book/main/TSPL.docc/ReferenceManual/Expressions.md). Current documentation source; expression coverage.
[^2]: Swift project contributors. [The Swift Programming Language: Error Handling](https://raw.githubusercontent.com/swiftlang/swift-book/main/TSPL.docc/LanguageGuide/ErrorHandling.md). Current documentation source; propagation and nonthrowing boundaries.
[^3]: Swift project. [Error Handling Rationale](https://github.com/swiftlang/swift/blob/main/docs/ErrorHandlingRationale.md). Historical design rationale, current repository copy; marked versus typed propagation and cleanup tradeoffs.
[^4]: Jorge Revuelta, Torsten Lehmann and Doug Gregor. [SE-0413: Typed throws](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0413-typed-throws.md). Implemented in Swift 6.0; current text separates deferred inference work.
[^5]: Swift Evolution contributors. [SE-0289: Result builders](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0289-result-builders.md). Declarative source transformation.
[^6]: Rust project contributors. [The Rust Programming Language: Recoverable Errors with Result](https://doc.rust-lang.org/book/ch09-02-recoverable-errors-with-result.html). Current online book; propagation, conversion and library composition.
[^7]: Zig project contributors. [Language Reference: Errors](https://ziglang.org/documentation/master/#Errors). Master documentation; `try`, `catch`, error unions and `errdefer`.
[^8]: Oracle. [Java Language Specification, Java SE 25, Chapter 11](https://docs.oracle.com/javase/specs/jls/se25/html/jls-11.html). Checked and unchecked exception obligations.
[^9]: Chapel project contributors. [Chapel 2.9 Language Specification: Error Handling](https://chapel-lang.org/docs/language/spec/error-handling.html). Production/prototype policies and propagation.
[^10]: JetBrains. [Kotlin: Exception and error handling](https://kotlinlang.org/docs/exceptions.html). Updated August 12, 2026; unchecked exceptions and interoperability.
[^11]: Koka project. [The Koka Programming Language](https://koka-lang.github.io/koka/doc/book.html). Effect rows, inference, polymorphism and handlers.
[^12]: Swift project contributors. [Heap.cpp](https://raw.githubusercontent.com/swiftlang/swift/main/stdlib/public/runtime/Heap.cpp). Runtime source; ordinary allocation failure path.
[^13]: Rust project contributors. [Vec::try_reserve](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.try_reserve). Fallible reservation and preservation after failure.
[^14]: Rust project contributors. [std::alloc::handle_alloc_error](https://doc.rust-lang.org/std/alloc/fn.handle_alloc_error.html). Allocation failure behavior.
[^15]: Rob Pike. [Errors are values](https://go.dev/blog/errors-are-values). Go blog, January 12, 2015; accumulated writer errors and the final check.
