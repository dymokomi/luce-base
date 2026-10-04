# Concurrency

Base runs code in parallel with operating-system threads, shares memory between them, and
synchronises with atomics and locks, as C and C++ do. There is no `async` and no global
interpreter lock: threads run truly in parallel. [Reference: Atomics, volatile, and
threads](../../language/base.md#15-atomics-volatile-and-threads).

## Threads

```luce
import atomic
import sync
import thread

struct Job:
    var start: u64
    var end: u64
    var sum: u64

var processed: @u64
var log_lock: sync.Mutex
var lines: u32

func work(context: void*?):
    let job = (Job*)(context else return)
    for n in job.start..<job.end:
        job.sum += n
        processed += 1
    log_lock.lock()
    lines += 1
    log_lock.unlock()

pub func main(arguments: str[]) -> i32!:
    var jobs: Job[4]
    var handles: thread.Handle[4]
    for i in 0..<4:
        jobs[i] = Job(start = (u64)i * 1000, end = (u64)(i + 1) * 1000, sum = 0)
        handles[i] = try thread.spawn(work, &jobs[i])
    for handle in handles: try handle.join()
    var total: u64 = 0
    for job in jobs: total += job.sum
    print(f"total {total}, processed {processed}, lines {lines}")
    return 0
```

```output
total 7998000, processed 4000, lines 4
```

- **`thread.spawn(entry, context)`** starts a thread running `entry(context)`. `entry` is a
  function taking a `void*?`, and `context` is any pointer, or `none`; this is how C's
  `pthread_create` passes data, since Base has no closures. Optional arguments: `stack`, the
  stack size in bytes (8 MiB by default on every platform), and `name`, shown by debuggers.
- **`handle.join()`** waits for the thread to finish; `handle.detach()` lets it run on
  without being waited for.
- `thread.sleep(milliseconds)`, `thread.yield()`, `thread.current()` and `thread.pause()` (a
  hint inside a spin loop) are also available.
- Each job above has its own `Job` and writes only to it, so those writes need no
  synchronisation. The shared counter is atomic, and the shared `lines` is guarded by a
  mutex.

What a thread may see:

- Everything written before `spawn` is visible to the new thread, and everything the thread
  wrote is visible after `join`.
- **Two threads accessing the same ordinary variable at once, when at least one writes, is a
  data race**, and its behaviour is undefined, as in C. Use an atomic, a lock, or ordering
  through `spawn` and `join`.
- A trap in any thread stops the whole process.
- Each thread has its own current allocator, starting as `memory.heap`; a thread that should
  allocate elsewhere receives the allocator through its context and uses `with` or `in`.
- `local var` declares a global with one copy per thread.

## Atomics

An atomic type, `@T`, is a value that several threads may read and write at once. `T` is an
integer, `bool`, `usize`/`isize`, or a pointer (also an optional pointer).

```luce
var hits: @u64
var ready: @bool
var head: @Node*?
```

- **Plain reads, `=` and the compound assignments are atomic**, with sequentially consistent
  ordering: `hits += 1` is one atomic add instruction. Atomic arithmetic wraps on overflow,
  as in C, instead of trapping.
- **Methods give a specific ordering**, and return the previous value:

| Method | Does |
| --- | --- |
| `load(order)`, `store(v, order)` | read, write |
| `add(v, order)`, `sub(v, order)` | add, subtract |
| `set(mask, order)`, `clear(mask, order)`, `flip(mask, order)` | or, and-not, xor |
| `min(v, order)`, `max(v, order)` | keep the smaller, larger |
| `swap(v, order)` | replace |
| `cas(expected, desired, success, failure, weak = false)` | compare and swap; returns `(exchanged, observed)` |
| `wait(expected)` | sleep while the value equals `expected` |
| `wake(count)` | wake up to `count` waiters, or all with `0` |

The orderings, from the `atomic` module's `Ordering`, are `.relaxed`, `.acquire`, `.release`,
`.acq_rel` and `.seq_cst`, as in C11 and C++. An omitted ordering is `.seq_cst`. Arguments can
be named: `counter.add(1, order = .relaxed)`, `head.cas(old, new, success = .acq_rel,
failure = .acquire)`.

```luce
let previous = hits.add(1, .relaxed)
ready.store(true, .release)
while not ready.load(.acquire): thread.pause()
let (exchanged, observed) = head.cas(expected, replacement, .acq_rel, .acquire)
atomic.fence(.release)
```

`atomic.fence(order)` is a standalone fence; `atomic.fence(.signal)` only stops the compiler
from reordering, for code shared with a signal handler. Because atomicity is part of the
type, every access to an `@T` is atomic: it cannot be read non-atomically by mistake. A pointer
to an atomic is written `(@u64)*`.

## Locks and other synchronisation

The `sync` module provides the usual primitives. Each has a zero value that is ready to use,
so a `var lock: sync.Mutex` needs no initialisation:

| Type | Methods |
| --- | --- |
| `sync.Mutex` | `lock()`, `unlock()`, `try_lock() -> bool` |
| `sync.Condition` | `wait(mutex)`, `signal()`, `broadcast()` |
| `sync.Once` | `run(function)`: the function runs once, however many threads call it |
| `sync.Semaphore` | `acquire()`, `release()` |
| `sync.Cancellation` | `request()`, `is_requested()` |

A mutex is usually paired with `defer`, so it is released on every path:

```luce
log_lock.lock()
defer log_lock.unlock()
```
