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
registrations unchanged. Signal storage records its allocator, which must outlive all signal aliases and
collector-buffered allocations; the default is the process heap. Every callback
edge is traced. Mixed cycles involving a native signal, a managed closure and a
connection participate in the shared collector; explicit disconnect is useful but
is not required to rescue an otherwise unreachable cycle.

## Application workers

`interop.WorkerEntry[C, M, R]` names a factory from configuration `C` to a
retained `Callback[M, R]`. The factory creates its application state on the new
thread and the returned handler stays there. Base supplies a named factory with
`WorkerEntry.native`; Luce supplies an ordinary named application function returning
a package's callback type alias. Capturing factories and bound factory methods are
rejected. An indirect call through an ordinary function value additionally checks
the factory's immutable, capture-free representation before starting a thread.

`interop.Worker[C, M, R]` owns a persistent thread and two bounded FIFO queues.
Its fallible initializer waits for factory completion, so a constructed worker is
ready. A native thread-creation failure or factory failure releases configuration,
joins any started thread and reports the failure. Startup error text belongs to the
creator's temporary ownership pool: manual Base callers scope `ownership.mark` and
`drain` around consuming the failure; generated Luce adapters do that automatically.

Configuration, messages and replies cross as uniquely owned `Packet[T]` values,
separate from both ARC graphs. The native library supplies a `Transfer[T]` deep-copy
policy for each payload. Standard text and byte policies copy heap storage;
`Transfer[T].plain()` is for pointer-free values only. Custom policies must copy
all borrowed members and provide a disposer that works on either thread, without
thread-bound allocators or owners. Enqueuing transfers a packet's release obligation;
ordinary Base copies borrow. Failed copies leave the queues unchanged.

Luce validates worker payloads with the same recursive transfer policy used by
language tasks. Owners, views, interfaces, callbacks and native ownership carriers
cannot cross. Recursion is accepted only when revisiting an already checked nominal
type; an excessively deep acyclic shape is rejected. The native signature must also
be representable at the Base boundary; managed collections remain outside this
worker bridge. No source-thread object is retained by a worker descriptor.

`send` waits for input capacity; `try_send` reports `worker_busy` instead.
`receive` transfers one `Reply[R]`, in accepted-message order. A reply owns either
its copied successful payload or copied failure text; `get` borrows and `release`
ends that obligation. A handler failure affects its message, and later messages
can still run. Native package wrappers copy results into `Outcome` on the receiving
thread before releasing their packets. Both queues have the configured capacity
(default 16); a controller must consume replies while submitting work, or use
nonblocking submission when its input queue is full.

`cancel` is cooperative and terminal. It wakes blocked senders, receivers and the
worker, rejects late dispatch, and discards queued messages/replies. Dequeuing a
message marks its invocation active; cancellation lets that invocation finish.
Native operations that can wait outside the queues use `worker_cancellation()`
with standard interruptible socket operations. The signal belongs to the worker,
and package operations obtain it without exposing runtime setup to application code.

The worker releases its handler and application state on its own thread, then
collects cycles and verifies that its runtime has no live owners. `close` cancels,
joins and disposes remaining packets; it is idempotent. Native callers may use
send/receive/cancel concurrently while keeping the worker alive, and must join
those callers before closing its owner. Shutdown never needs another callback on
the closing thread. Luce packages expose an owned, application-specific struct over
this manual Base carrier, as the shared Base/Luce `workers.Service` fixture does.

The phase gate covers direct Base and Luce consumers: captures, failure ownership,
disconnection during delivery, reentrancy, expired views, mixed cycles, wrong-thread
rejection, worker transfer rejection, startup failure, cancellation while blocked,
late dispatch and joined shutdown with zero live owners on both runtime threads.
