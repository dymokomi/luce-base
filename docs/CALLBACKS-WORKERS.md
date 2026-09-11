# Callbacks and application workers

This is the section-two implementation contract. Implementation and execution
evidence are tracked separately in [the rewrite checklist](PACKAGE-REWRITE-TODO.md).

## Retained callbacks

`interop.Callback[A, R]` is an explicit native reference to a callable owner. Base
copies borrow; `clone` acquires a reference, `release` ends it, and `trace` exposes
the edge to the shared collector. Luce sees an ordinary captured function value
with a fallible result. A `unit` argument means no application arguments; a tuple
is one tuple argument. Ordinary raw Base function pointers remain capture-free.

An invocation retains the callable through return. Bound native methods also
check their source owner and hold its active-call guard. Closing that source
publishes closure immediately and defers disposal until the active call returns.
Luce closures retain their captured values and cells through the existing ARC
graph. Capturing a checked request/frame view retains its lease, without extending
validity: every later use still checks whether the scope expired.

Results use `interop.Outcome[R]`, which owns either the successful value's backing
storage or its failure message. A Base caller can handle and release the failure
without a subsequent Luce catch. An invocation error stops that invocation; it
never bypasses cleanup. Native binding failures copy dynamic error text before
releasing any source. If that copy cannot be allocated, the result reports memory
exhaustion with static text.

Callbacks belong to the runtime thread that owns their graph. Invoking them from
another thread is rejected before executing application code. A managed callback
also requires entry into its thread's runtime. Cross-thread dispatch uses a worker
entry and transferable messages, rather than transporting a captured callback.

## Signals and connections

`interop.Signal[A]` owns ordered `Callback[A, unit]` registrations. `connect`
returns an owned `Connection` with `disconnect` and `is_connected` methods.
The caller retains the connection to retain its registration. Dropping the last
connection alias disconnects it. Explicit disconnection is idempotent and releases
its registration and signal-state references immediately.

Each emission takes its own retained snapshot in registration order:

- A connection added during delivery first participates in the next emission.
- A connection removed before its turn is skipped, including in an existing snapshot.
- Disconnecting the active connection lets that invocation finish.
- Reentrant emission has its own snapshot and observes the current registrations.
- The first callback failure stops that emission and returns its owned failure.
  Other registrations remain connected for later emissions.
- Closing the signal rejects new registrations and skips all remaining callbacks.
  The active invocation finishes, then releases its temporary references.

Allocation failure during connection or snapshot creation leaves the previous
registrations unchanged. Native storage retains its allocator, and every callback
edge is traced. Mixed cycles involving a native signal, a managed closure and a
connection participate in the shared collector; explicit disconnect is useful but
is not required to rescue an otherwise unreachable cycle.

## Application workers

Worker boundaries create application state on the worker's runtime thread. Source
configuration stays pinned until the worker has copied it into its own graph;
results stay pinned until the receiving thread has copied them. Existing Luce
transfer rules apply recursively. Owners, views, interfaces, ordinary closures and
other thread-bound references are not transferable.

Library/runtime code owns thread creation, runtime entry, message queues,
cancellation and joining. Application code supplies named worker entry behavior
and transferable configuration/messages, with no integer runtime tokens or
recursive spawning to establish worker state. A startup error is observable and
leaves no retained configuration or partially running worker behind.

Cancellation is cooperative and terminal for new dispatch. It wakes waiters on
the dispatch queues. The worker finishes an active application invocation, rejects
late dispatch, releases callbacks/state on its own thread and joins before runtime
teardown. Operations that can block outside the queue must receive the worker's
cancellation source. Shutdown must not depend on another application callback
being scheduled on the closing thread.

The phase gate covers direct Base and Luce consumers: captures, failure ownership,
disconnection during delivery, reentrancy, expired views, mixed cycles, wrong-thread
rejection, worker transfer rejection, startup failure, cancellation while blocked,
late dispatch and joined shutdown with zero live owners on both runtime threads.
