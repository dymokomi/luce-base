# Memory

Base manages memory as C does: by hand. This chapter covers where values live, pointers and
how long they stay valid, allocating and freeing, allocators, and the tools for finding
memory bugs. [Reference: Memory](../../language/base.md#12-memory).

## Where values live

- **Locals** live in their function's frame and disappear when it returns. This includes
  local arrays and structs, however large.
- **Fields and elements** live inside the struct or array that holds them.
- **Globals** (top-level `var`) live for the whole program.
- **Allocated memory** lives from `new` or `alloc` until `free`.

Only `new` and `alloc` allocate. No other operation does: not passing arguments, not string
operations (there are none that create strings), not loops, not the standard library behind
your back. Any library function that allocates takes or uses an allocator, and says so.

## Pointers and how long they are valid

A pointer, a span and a `str` all refer to memory owned by something else, and are valid only
while that memory exists. The compiler catches the most common mistake, a pointer to a local
outliving its function. A pointer or view that names a local, a local array or a
`memory.frame` span cannot be:

- returned from the function;
- used as an error's message;
- stored in a global;
- stored through a pointer parameter, or into a struct that is returned.

Doing so is the error "this pointer or view names a local and must not escape the function".
The check follows a value through `let` bindings within one function and stops at calls. It
catches the common cases, not every one; the rest is your responsibility, as in C.

Whether a pointer may be written through depends on where it comes from: `&` of a `var` gives
a `T*`, `&` of a `let` gives a `const T*`, and the address of a field follows its root, so
`&task.link` is writable when `task` is a `Task*`, even if `task` itself is a `let`.

## Allocating and freeing

```luce
let node = try new Node(value = 1, next = none)    # Node*: one value, constructed
let zeroed = try new Node                           # Node*: the zero value
let leaf = try new Expr.number(value = 2.0)         # Expr*: an enum case
let bytes = try new u8[4096]                        # u8[]: 4096 zeroed bytes
let pool = try alloc Node[64]                       # Node[]: 64 uninitialised nodes
let raw = try alloc(size, 16)                       # u8[]: uninitialised bytes, 16-byte aligned
let four = try new (u8[4])                          # u8[4]*: a pointer to one fixed array
free(node)
free(bytes)
```

- `new` constructs: a struct through its constructor, an enum case, a zero value, or zeroed
  elements. `alloc` does not initialise; reading before writing is undefined.
- Both can fail with `memory.exhausted`, so both are used with `try`, `catch` or `else`.
- `free` takes what `new` or `alloc` returned: a pointer or a span.
- A pointer to a fixed array is indexed through `*`: `(*four)[1]`. Writing `four[1]` indexes
  the pointer itself, as in C.

### Pairing frees with allocations

The habit that keeps manual memory manageable is to write the `free` next to the `new`:

```luce
let buffer = try new u8[size]
defer free(buffer)
```

`defer` frees the buffer when the block ends, however it ends. For a function that allocates
something to hand back, `errdefer` frees it only if the function fails:

```luce
func load(path: c.str) -> u8[]!:
    let data = try new u8[header_size]
    errdefer free(data)
    try read_into(path, data)
    return data
```

## Allocators

Every `new`, `alloc` and `free` goes to an allocator. Which one:

- **The current allocator**, `memory.allocator`. It starts as `memory.heap`, which is the C
  library's `malloc`, and each thread has its own.
- **`with allocator:`** makes another allocator current for a block, and restores the
  previous one when the block ends, however it ends.
- **`in allocator`** names one for a single operation: `new Node(...) in arena`,
  `free(node) in arena`.

```luce
import memory

pub func main(arguments: str[]) -> i32!:
    var arena = try memory.Arena.over(memory.heap, 1 << 16)
    defer arena.destroy()
    with arena:
        for round in 0..<1000:
            let scratch = try new u8[32]
            scratch[0] = (u8)round
    print(f"the arena holds {arena.in_use()} bytes")
    return 0
```

```output
the arena holds 32000 bytes
```

Memory must be freed by the allocator it came from. A type that allocates on behalf of its
users, such as a list, remembers the allocator it was created with and frees with
`free(...) in self.allocator`, so it does not depend on which allocator is current when it is
destroyed. The standard library's types all do this.

### The standard allocators

| Allocator | What it does | Threads |
| --- | --- | --- |
| `memory.heap` | the C library's `malloc` and `free` | safe to share |
| `memory.Arena` | hands out memory from a block, frees it all with `reset()` or `destroy()` | one thread |
| `memory.FixedBuffer` | hands out memory from a buffer you provide; never calls the system | one thread |
| `memory.PageAllocator` | whole pages from the operating system | safe to share |

An **arena** suits work with a clear end, such as a request, a frame, or a parse: allocate
freely during it, free everything at the end. A **fixed buffer** suits code that must not
touch the system allocator at all, and turns running out of space into an ordinary error:

```luce
import memory

pub func main(arguments: str[]) -> i32!:
    var storage: u8[256]
    var fixed = memory.FixedBuffer.over(storage)
    let small = try new u32[16] in fixed
    print(f"{small.length} values from the fixed buffer")
    let big = new u8[1000] in fixed catch failure:
        print(f"no room: {failure.code == memory.exhausted}")
        return 0
    print(f"unexpected {big.length}")
    return 0
```

```output
16 values from the fixed buffer
no room: true
```

### Writing an allocator

Any type implementing `Allocator` can be used with `with` and `in`:

```luce
pub interface Allocator:
    mutating func allocate(size: usize, alignment: usize) -> u8[]?
    mutating func resize(block: u8[], size: usize) -> bool
    mutating func release(block: u8[])
```

`allocate` returns uninitialised memory of at least `size` bytes at the alignment (0 means 1),
or `none`. `resize` grows or shrinks a block in place and says whether it could. `release`
frees a block. This one counts allocations and passes them on to another allocator:

```luce
import memory
from memory import Allocator

struct Counting: Allocator:
    var parent: Allocator
    var live: usize
    var total: usize

    mutating func allocate(size: usize, alignment: usize) -> u8[]?:
        let block = self.parent.allocate(size, alignment) else return none
        self.live += 1
        self.total += size
        return block

    mutating func resize(block: u8[], size: usize) -> bool:
        return self.parent.resize(block, size)

    mutating func release(block: u8[]):
        self.live -= 1
        self.parent.release(block)

pub func main(arguments: str[]) -> i32!:
    var counting = Counting(parent = memory.heap, live = 0, total = 0)
    with counting:
        let numbers = try new i64[10]
        let more = try new u8[20]
        print(f"live {counting.live}")
        free(numbers)
        free(more)
    print(f"live {counting.live}, {counting.total} bytes requested")
    return 0
```

```output
live 2
live 0, 100 bytes requested
```

## Memory in the frame

`memory.frame[T](count, most)` takes `count` elements of `T` from the current function's
frame, like C's `alloca`. They are uninitialised and disappear when the function returns;
nothing needs freeing. `most` is a constant upper bound, at most 4096 bytes in total, and a
`count` above it traps.

```luce
import memory

func sum_of_squares(values: const f64[]) -> f64:
    let squares = memory.frame[f64](values.length, 64)
    for i in 0..<values.length:
        squares[i] = values[i] * values[i]
    var total = 0.0
    for s in squares: total += s
    return total

pub func main(arguments: str[]) -> i32:
    print(f"{sum_of_squares([1.0, 2.0, 3.0])}")
    return 0
```

```output
14.0
```

The span is the address of a local: it can be passed to functions the current one calls, but
not returned or stored.

## Ownership

There is no ownership syntax. The conventions, which the standard library follows:

- A pointer **parameter** is borrowed for the call; the function does not keep it, unless its
  documentation says it takes ownership.
- A pointer **result** belongs to the caller, who frees it, unless the documentation says it
  is borrowed.
- A type that owns memory has a `destroy` (or `release`, `close`) method that frees it.

## What the language checks, and what it does not

**Checked in every build:**

- integer overflow, division by zero, shifts by the width or more (traps);
- indexing and slicing of arrays, spans and text (traps);
- unwrapping optionals (it must be written);
- null pointers: a `T*` cannot be null, and a null from C where one is not allowed traps;
- reading an uninitialised local (compile error, except after `= ---`);
- `match` covering every case (compile error);
- checked conversions `T(x)` (traps).

**Undefined, as in C, and your responsibility:**

- using memory after `free`, and freeing twice;
- freeing with a different allocator than the one that allocated;
- a dangling pointer the escape check could not see;
- pointer arithmetic outside the object;
- reading memory from `alloc`, `memory.frame` or `---` before writing it;
- reading a union member with an invariant after writing another;
- writing to a `let` or `const` through a cast;
- `(str)bytes` on bytes that are not UTF-8;
- two threads accessing the same non-atomic memory without synchronisation.

## Finding memory bugs

**The diagnostic profile.** `luce-base build program.lucb --profile diagnostic` builds the
program with checks in its allocators:

- A freed block is filled with the byte `0xDD` and held back for a while instead of being
  reused, so reading it after `free` gives the fill rather than someone else's data.
- Freeing a block twice traps: "double free: a block was released twice".
- Writing to a block after freeing it is detected when the block is finally returned, and
  traps: "use after free: a released block was written after its release".
- Uninitialised storage (`= ---`) is filled with `0xAA`.
- The most recent 256 allocations are recorded with the function and line that made them,
  readable from `memory.allocation_sites()`.

It runs at close to normal speed, so it can be used for a program's whole test suite.

**AddressSanitizer.** The C backend can be built with any C compiler flags through
`LUCE_CFLAGS`, which gives access to Clang's and GCC's sanitizers, with a stack trace for each
report:

```sh
LUCE_CFLAGS="-fsanitize=address,undefined -fno-omit-frame-pointer" luce-base build program.lucb --backend=c -o program
```
