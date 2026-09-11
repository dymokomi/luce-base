# Public package description

`luce-base describe module.lucb` checks a Base module and writes its public API.
Luce consumes this description without parsing Base source. There is one current
format, identified by the first line `description 9`. Both compilers change
together; no older reader, alternate format flag or compatibility fallback exists.

The producer is `src/sema/describe.lucb`. The consumer is
`luce/src/sema/boundary.lucb`. This format describes language declarations; it does
not imply that every native signature already has an executable Luce adapter.
[The rewrite checklist](PACKAGE-REWRITE-TODO.md) tracks those adapters separately.

## Records

Records are newline-terminated. Top-level records start at column one; members
are indented four spaces. Declaration and member order follow the source, except
that a struct's representation/constructor records precede its other members and
conformances follow them. No function body or private field is emitted.

```text
description 9
module example
interface CounterView
    method value() -> i64
    mutating method increase(amount: i64) -> !
struct Counter
    representation private
    constructor init(start: i64) -> !
    storage value
    method value() -> i64
    mutating method increase(amount: i64) -> !
    static method zero() -> Counter!
    conforms CounterView
struct Point
    representation complete
    constructor memberwise
    storage value
    field var x: f64 = default
    field let label: str = default
```

| Record | Meaning |
| --- | --- |
| `description 9` | Required current format marker; Luce rejects a mismatch before importing declarations |
| `worker[C, M, R]` | Canonical `interop.WorkerEntry[C, M, R]`; a named factory creating a thread-local retained handler |
| `callback[A, R]` | Canonical `interop.Callback[A, R]`; a retained Luce function with owned success/error results |
| `module name` | Canonical dotted module name under its owning package source root |
| `import module as alias` | Nonstandard dependency mentioned by a public signature or conformance |
| `standard module as alias` | Embedded standard-module dependency; distinct from a package source import |
| `foreign alias.Type kind` | Referenced foreign nominal type; kind is `struct`, `object`, `view`, `enum`, `interface`, `handle` or `opaque` |
| `func name(p: T) -> R` | Public function; a unit result omits the arrow/result |
| `p: T = default` / `field var name: T = default` | An omittable argument/field; Base evaluates the original checked expression or zero initialization |
| `p: T = caller.file` / `caller.line` / `caller.function` / `caller.location` | A caller fact evaluated at the consumer source call |
| `let name: T` | Public constant and its type |
| `object Name descriptor constant close method` | Explicit native ownership; `-` disables explicit close |
| `owned[Name]` | Typed `interop.Reference[Name]` carrier; parameters borrow and results transfer one strong reference |
| `view Name descriptor constant mutable bool` | Checked borrowed native struct; construction is private |
| `borrowed[Name]` | Typed `interop.View[Name]` carrier; aliases retain the same validity lease |
| `interface[Name]` | An `interop.Interface[Name]` witness with explicit owner and validity guards |
| `unowned_interface[Name]` | A bare native witness; unavailable as a Luce parameter/result |
| `owned_value[T]` | `interop.Owned[T]`; a native value with retained backing storage |
| `outcome[T]` | `interop.Outcome[T]`; maps to `T!` and owns either its success storage or failure text |
| `struct Name` | Public struct with the member records below |
| `representation complete` | All direct native fields are public; this does not prove nested ownership or trivial copyability |
| `representation private` | At least one direct native field is private; the public fields do not describe the complete storage |
| `constructor init(p: T) -> !` | Actual public initializer; the arrow/effect is omitted for an infallible initializer |
| `constructor memberwise` | Base supplies implicit memberwise construction; normal Base initialization/visibility rules apply |
| `constructor private` | A private custom initializer suppresses public construction; its parameters/body are not emitted |
| `storage value` | Complete storage can cross as a copied value; hidden fields contain no untracked borrows, and public text/data can be rebased |
| `storage unavailable` | The native representation needs an explicit ownership contract before it can cross |
| `field var name: T` / `field let name: T` | Public mutable/immutable field |
| `method name(p: T) -> R` | Nonmutating instance method; `self` is implicit |
| `mutating method name(p: T) -> R` | Instance method requiring mutable native storage |
| `static method name(p: T) -> R` | Type method with no receiver |
| `interface Name` | Public interface; every requirement is described without needing a `pub` modifier on the requirement |
| `conforms Interface` | Declared conformance to a public interface; private interfaces are omitted |
| `enum Name as T` / `case name = N` | Integer-backed enum, its cases and evaluated case values; methods/conformance follow the cases |
| `handle Name destroy function` | Base's existing opaque-handle declaration and its checked finalizer |
| `type Name = T` | Alias to the described native type |
| `unavailable Name reason` | A generic declaration, payload enum, union or extern type outside this description's supported declaration forms |

Types preserve native spelling, including pointer/span qualifiers, arrays,
optionals, fallible results, tuples and callback signatures. Foreign nominal types
use the alias of their declaring module even inside those compound types. A native
handle is described as `handle` even though the Base type table represents it using
an opaque struct internally.

Imports include public method and constructor signatures and public interface
conformance. Private method bodies and private conformance must not add imports.
Aliases identify the declaration rather than creating a second native type.

## Consumer responsibilities and current limits

The reader restores field mutability, implicit receivers, method mutation,
constructor effects and interface conformance. Luce constructs the real Base value,
retains complete native storage, and owns copies of public text/data. Static,
nonmutating and mutating methods use typed adapters; mutation is written back even
when the method fails. Error text is owned before cleanup can invalidate it.
Aliases, bound methods and worker copies retain complete value state. Equality
compares rebased native values, including private fields.

The producer checks every native field before reporting `storage value`. Private
scalar state is copyable; private borrowed text/pointers/interfaces are unavailable
without an ownership contract. A private initializer disables only construction.
Unsupported methods are omitted individually; an unsupported initializer never
permits a memberwise bypass. An interface with an unsupported requirement cannot
lose that requirement and silently acquire a different native ABI.

Default availability is transported; default expressions stay in Base. Luce emits
used argument shapes with named native arguments, leaving omitted defaults to the
Base checker. Supported caller facts are materialized from the Luce source; a fact
whose native type cannot cross makes that signature unavailable. Tuple/optional
nesting and native integer spelling remain part of adapter identity even when two
native scalar types map to the same Luce type.

Owned objects and checked views follow the [ownership contract](BASE-INTEROP.md).
Interface adapters share the same owners, lease checks and cycle tracing.
Standard type import resolution is tracked in I09.

## Verification

`tests/programs/describe_api/check.sh` checks constructors, static/nonmutating/
mutating methods, interface requirements/conformance, private visibility, foreign
types inside spans/tuples/optionals and explicit unavailable declarations. It also
executes the described Base constructor/interface behavior at native opts 0–3.
`describe_fields` checks record representation and mutability, and the conformance
suite compares an exact module description.

Luce's reader tests cover the format marker, defaults, constructors/methods and
unavailable storage/signatures. `test_base_values.py` exercises real initializers,
private state, value/static/bound methods, aliases, mutation before failure, text
ownership, native equality and worker copies at native opts 0–3 and both C modes.
Its negative cases reject hidden borrows, private constructors, private arguments
and unhandled initialization failures. `test_base_objects.py` covers native owners
and `describe_objects` verifies their metadata. `describe_views` and
`test_base_views.py` verify view metadata, retained leases, expiry, mutation,
bound/captured calls, owned snapshots and rejected construction/worker transfer.
Interface consumers in both languages are covered by `test_base_interfaces.py`;
retained function callbacks and workers remain the next gate.

## Owned native structs

A public constant `interop.Type[T](name = ..., dispose = ..., trace = ...,
closeable = ...)` beside a public struct explicitly declares ownership. Recognition
uses the standard `interop.Type` declaration identity. Exactly one declaration is
allowed. `closeable` requires a public mutating disposal method without parameters;
otherwise disposal remains private to the owner. `is_closed` is the shared state
query and cannot also be declared as a package member.

`interop.Reference[T]` is described as `owned[T]`; bare `T` remains a distinct
by-value signature and is unavailable for an owned export. Aliases and foreign
references preserve the original descriptor. The Luce class is the canonical Base
owner; constructors invoke the native initializer in allocated storage, and bound
methods retain that same owner. A result transfers a reference; a native container
clones any parameter reference it retains and traces every stored edge.

Public fields can be read through checked adapters. Text/data is copied and native
child references are acquired. Direct stores are supported for `i64`, `f64` and
`bool`. Replacing other native storage requires a package method that implements
its lifetime rules; the checker diagnoses direct assignment. Closed aliases allow
only the shared state query and declared close operation. Other fallible methods
return `interop.invalid`; infallible access traps before reaching native storage.


## Checked native views

A public `interop.ViewType[T](name = ..., mutable = ...)` declares a borrowed
struct. It imports as a nonconstructible Luce reference. Base creates an
`interop.View[T]` with the complete native view and a lease from its resource
owner. The view keeps the owner and validity state alive; it does not extend the
resource's valid period. Explicit invalidation is permanent, and closing the
resource invalidates its leases. All aliases, captured values and bound methods
check the same lease before accessing native storage. Read-only declarations
cannot expose mutating methods. `is_valid` remains callable after expiry.

A generated native method holds an invocation guard through argument conversion,
the native call and result/error conversion. Close becomes visible immediately;
physical disposal waits for active invocations to leave. Call operands stay alive
through argument evaluation, including replacement of a captured binding. Field
setters capture their receiver before evaluating the right-hand side and check
validity at the actual store. Native text results are copied while access is valid,
so an owned Luce snapshot survives expiry.

## Interface implementations and owned returns

`interop.Interface[I]` pairs the actual native interface witness with a strong
owner and optional validity/invocation guards. Parameters borrow the carrier;
results transfer one reference. A native owner or checked view supplies a witness
using `as_interface[I]`. Bare interface pointers have no ownership proof and do
not cross. Aliases and re-exports retain the canonical interface declaration.

Native conformers keep their actual Base witness and full storage. Luce conformers
use a heap adapter which retains and traces the original Luce interface value.
Retained adapters therefore survive the registering call and participate in mixed
cycles. Round trips unwrap an existing adapter; class-backed interfaces preserve
the concrete owner's identity. Value-backed interfaces own their copied value.

A managed implementation must return explicit native ownership. `interop.Owned[T]`
owns backing storage for a value which may borrow it; `interop.Outcome[T]` owns
either that success storage or failure text. They appear as ordinary `T` and `T!`
in Luce. Generated reverse adapters move managed values/errors into these carriers.
Base callers can handle an error entirely in Base and release it without needing
a later Luce catch. Forward adapters copy/acquire the result before releasing its
carrier. Nested references inside tuples and optionals are acquired individually.

A native interface with a raw borrowed or fallible return can be consumed through
its native implementation. A Luce implementation receives a diagnostic requesting
`Owned` or `Outcome`, since an unmanaged return alone cannot retain dynamic data.
Invalid/closed views fail before dispatch, and active invocation guards delay
physical disposal during a reentrant close.
