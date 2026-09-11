# Base-to-Luce ownership contract

Rewrite task I01, 2026-09-11. This document defines the contract the package rewrite
will implement. Implementation remains in progress; the checklist distinguishes verified work from the remaining contract.
Implementation and verification are tracked in
[PACKAGE-REWRITE-TODO.md](PACKAGE-REWRITE-TODO.md).

## Language and representation

Base packages declare ordinary structs, `init`, methods and interfaces. Luce
constructs imported types with existing `Type(args)` syntax. The Base compiler
describes those declarations; Luce generates typed adapters and compiles them
natively with the Base package. A consumer never needs a factory/handle facade to
compensate for an incomplete description.

Descriptions must distinguish the complete native representation from the public
member API. A private field is inaccessible to Luce source, but remains part of
the native value. Visibility is not permission to erase storage.

| Boundary category | Luce meaning | Ownership |
| --- | --- | --- |
| Scalar, enum, optional or copied record | Value | Copies are independent; referenced text/data is owned by the copied value |
| Explicitly exported owned object | Shared object with identity | One canonical owner keeps the complete Base object alive |
| Borrowed object or interface view | Checked view of another object's state | An owner and a validity lease govern every access |
| Text/byte result | Owned Luce text/bytes | Copy before the native borrow ends |
| Text/span argument | Borrow for the call | Base must explicitly acquire ownership before retaining it |
| Unsupported or unspecified representation | Unavailable crossing | Diagnose its use; never guess how to copy or destroy it |

An alias/re-export preserves the declaring package/module/type identity and all
ownership metadata. Equal short names in different modules remain different types.

## Values

The compiler may classify a record as directly copyable only after checking its
complete representation, including private fields. A scalar-only private field
does not make a record an object. Both public and private values must survive
construction, copying, calls and results unchanged.

Records with owned Luce text or other supported value members use the specified
member conversion and retain/drop operations. A Base borrowed string or pointer
hidden in a record is not silently promoted into owned storage. If copying needs
an operation the description cannot express, that record is unavailable as a
value until an explicit copy/drop contract is implemented.

Value assignment copies. Mutating methods require a mutable receiver in Luce;
static methods and nonmutating methods retain their existing meaning. A custom
Base `init` is invoked as written and suppresses bypass through memberwise
construction. Private fields cannot be supplied by Luce callers. Default
expressions are evaluated according to Base's rules, not approximated in Luce.

This replaces the current public-field reconstruction path for records with
hidden state. Unsupported records must receive an actionable diagnostic rather
than have their private fields reset to defaults at the next call.

## Owned objects

Owned-object export is an explicit package interop declaration naming the actual
Base type. This metadata belongs with the package's build/interface contract; it
does not introduce a Luce construction keyword or make every Base struct a class.
The compiler validates the declaration against the checked Base type.

The declaration must specify:

- The native type and canonical owner representation, including how an existing
  native object is acquired or returned with ownership.
- Construction and finalization operations. The finalizer is an actual Base
  method/adapter with a validated signature, not a method guessed by its name.
- Whether explicit close is supported and its terminal-state contract.
- Strong/weak ownership edges held by the Base object and how the descriptor
  visits and releases them.
- Thread affinity, and the ownership/borrowing rules of object arguments and
  results. Unspecified retained pointers do not qualify as exported ownership.

An owned object has stable native storage containing its full Base representation.
Its Luce reference is a shared reference to the canonical owner, not a copied
snapshot of public fields. Calling a mutating Base method on a Luce object reached
through `let` is allowed: the binding is fixed, while the object is mutable.

The canonical owner identifies an allocation and its generation, not just its raw
address. Re-exporting or returning the same object preserves identity; address
reuse cannot resurrect a released object. Interface conversions and bound methods
retain this owner. Creating two unrelated wrappers that independently destroy the
same native object is forbidden.

Base-only callers keep explicit ownership. A library owner/reference type can
provide retain, release and weak references without adding automatic ARC to Base
or linking the Luce runtime into a Base-only program. Native and Luce references
must participate in one lifetime protocol. A native container that stores a child
acquires an explicit owning reference; it cannot keep the raw pointer of a
temporary Luce adapter. This requires a reusable owner/reference bridge in I06,
not an inferred keep-alive list generated from arbitrary function parameters.

## Construction, finalization and close

Construction creates unpublished storage, invokes the real initializer and
publishes one owned reference only after success. A failing Base `init` remains
fallible in Luce, preserving its error code and message. No constructor may
publish `self` before it has initialized all its required state.

On initialization failure, the Base initializer cleans up the resources it
acquired, using ordinary Base error cleanup. The bridge frees unpublished storage
and its temporary conversion/ownership state. It does not run a finalizer for an
object that was never successfully initialized. Do not apply both Base cleanup
and automatic field cleanup to the same acquisition.

Luce's existing runtime allocation policy still applies to its own wrappers and
ARC values. It is not permission to turn unrelated recoverable Base errors into
traps. Declarative components should separate construction from fallible native
window/GPU acquisition; each initializer's real signature remains authoritative.

Finalization runs exactly once, on the owning runtime thread, after the last
strong reference and active call have ended. It releases owned native resources
and outbound references, then frees native storage through its recorded allocator.
Weak references retain only the owner shell and become empty once it is dead.

Explicit close exists only on types that declare it. Close transitions the shared
object to its terminal state before releasing external resources or invoking
cleanup that could re-enter. Every alias observes the same state. Repeated close
is harmless. A fallible close may report a flush/shutdown error but does not
resurrect a half-closed object or retry a consumed OS handle.

Storage remains valid for outstanding aliases, active calls and checked views;
physical memory lifetime and operational validity are different. Operations that
require an open resource reject a closed one. Fallible operations return the
documented closed error; infallible operations trap with the Luce call location.
Explicit state queries and idempotent close remain valid. Finalization performs
remaining cleanup without running the close effect twice.

## Borrowed views and interface dispatch

A Base pointer or interface view alone proves neither ownership nor validity.
Each imported borrow needs a declared owner and a scope: one call, the owner's
lifetime, or a shorter lease such as a request dispatch or a rendering frame.
Ambiguous pointer/view results are unavailable to Luce.

The Luce adapter retains enough owner/lease storage to check access safely. It
checks the lease generation, open state and thread before dereferencing the
native view. Retaining a view does not extend a frame or authorize a late reply.
Finishing a frame, committing/ending a request or closing its owner invalidates
the corresponding lease on both success and failure paths.

Luce may store a checked view, including in a closure, but using it after expiry
fails before accessing native storage. Views cannot be converted into owning
objects or sent to workers to evade their scope. A copied text/byte snapshot is
independent and may outlive the view. Static rejection is appropriate where the
type/signature proves an invalid crossing; lease checks cover dynamic expiry.

An interface names behavior. Its description includes method signatures,
fallibility and mutation. A boxed owning interface retains its concrete owner;
a borrowed interface retains the same validity lease as its source. Witness-table
dispatch must perform the same checks and argument conversion as a concrete call.

Base interfaces can require mutation, unlike current read-only Luce value
interface use. A mutating requirement can dispatch to an owned Luce object or a
declared mutable borrowed view. It must not mutate a supposedly copied immutable
value box. Reject incompatible conformance rather than silently changing Luce's
value/interface semantics. Retained collections of widgets store owning interface
references, while transient rendering views remain borrowed.

## Arguments, returns and retained callbacks

Parameters borrow by default. Converting a Luce list into a Base span creates a
call-local array whose elements retain their source owners for the call. The span
itself never becomes a retained container. Base code that keeps an element must
explicitly acquire an owning reference through the owner protocol. Copies of a
raw Base struct/pointer/view do not perform that acquisition.

Owned results transfer one native ownership obligation to the bridge. Borrowed
results carry their declared owner/lease. Wrapping failure releases any transferred
ownership; copying a result happens while its borrow is still valid. Optional and
fallible results preserve these rules independently on success and failure.

Retained handlers/signals hold explicit strong references to their Luce callbacks.
Disconnect releases the registration's reference; an invocation already in flight
keeps a temporary reference until it returns. Bound methods retain their receiver.
Callback failure must not bypass release or escape through an incompatible ABI.

Every native-held Luce reference is visible to Luce's lifetime system. Mixed
native/Luce cycles require traceable owner edges and deterministic release through
the bridge; opaque unreported edges are not supported. Weak parent/back references
and explicit connection disconnection avoid unnecessary cycles. I06/C01/C02 must
prove tracing and disconnection before UI/server registration stores callbacks.

## Threads

Luce ARC objects, interface boxes, callbacks and views belong to one runtime
thread. Their ordinary counts and cycle collector are not cross-thread operations.
UI/window/GPU owners additionally require the main thread. An atomic native
reference count alone does not make a Luce object sendable.

Native server workers may share separately synchronized native state. Each Luce
application worker owns its own facade, handlers and ARC graph. Dispatch uses the
runtime's supported entry/exit protocol and copies transferable values according
to existing Luce worker rules. Arbitrary native threads cannot invoke a callback,
release a Luce owner or run its finalizer without that protocol.

Shutdown stops new dispatch, invalidates leases, waits for active invocations and
releases registrations on their owning threads before those threads destroy their
runtime state. Cancellation cannot forcibly unwind arbitrary application code.
The server must retain state needed by still-running handlers and document the
limits of bounded shutdown. C03/C04 implement and test this protocol.

## Description format

Maintain one current description format and update its producer, consumer and
fixtures together. Its format marker detects mismatched compiler builds and is
checked before consuming declarations. There is no format selection, older reader
or fallback path. The language has no released compatibility contract to preserve;
replace obsolete APIs and machinery directly throughout the rewrite.

The new format must report public constructors/methods/interfaces, conformance,
defaults and whether a public-field record describes the full representation.
Native layout details are compiler facts, not a public right to access private
members. The exact description records belong to I02/I03; validated package
ownership declarations and the owner bridge belong to I06.

## Required proofs

| Contract | Fixture / observable result |
| --- | --- |
| Complete value representation | A private nonzero scalar survives Base → Luce → Base; mutation/copying preserve the specified value behavior |
| Real initialization | Named/default arguments reach `init`; private state and validation cannot be bypassed by memberwise construction |
| Canonical identity | The same child returned through different modules/interfaces compares as the same object and finalizes once |
| Partial construction | Each injected failure releases exactly the acquired resources; no successful-object finalizer runs |
| Native retention | A container keeps a child alive after the caller releases it and releases that ownership when removing the child |
| Close and reentrancy | All aliases observe closure before reentrant calls; repeated close and final drop do not double-release |
| Leases | Stored request/frame/interface views reject access after expiry, including captured and bound-method uses |
| Mixed cycles | Native-held callbacks and child/parent edges are traced or weak; disconnected and unreachable graphs leave no owners alive |
| Thread affinity | Wrong-thread calls/releases are rejected before touching ARC/native state; valid worker shutdown drains its own graph |
| Matching tools | A mismatched description marker fails explicitly before declarations are consumed; one writer and reader implement the current contract |

These are acceptance requirements for implementation tasks, not claims that the
current compiler passes them. I01 is complete when this contract is recorded;
I02–I11 and C01–C05 remain open until their executable fixtures pass.

## Shared ownership implementation

The standard `ownership` module now owns the intrusive header, per-thread cycle
collector, weak shells and temporary pools used by compiled Luce. The interpreter
keeps its own evaluation heap. Base libraries use explicit retain/release operations;
there is no implicit Base ARC or independent native reference counter.

The standard `interop` module provides a typed `Type[T]` disposal/trace/affinity
declaration, unpublished `Reservation[T]`, strong `Reference[T]` and
`WeakReference[T]`. A reference parameter borrows; `clone` acquires a reference,
`release` relinquishes it, and successful publication transfers one reference.
A carrier's ordinary Base struct copy acquires nothing. Disposal runs once;
closed aliases keep their shell but cannot access the native resource. Every
retained edge must be reported by the declaration's trace callback and released
by disposal. Main-thread declarations check affinity before reservation.

Declared native owners now import as Luce classes with real construction, methods,
identity, retained children and checked field access. The object fixture verifies
those adapters in all six compiled modes. Checked borrowed views and retained
callback/interface adapters remain tracked by I06/I07/C02.
