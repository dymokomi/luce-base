# 7. Memory

In Python, memory is managed for you: objects are created as needed and freed when nothing
refers to them. Base works as C does. A value lives in the function that declares it, or
inside the struct or array that contains it, and anything that must outlive that is
allocated and freed by your code.

## Pointers

A pointer holds the address of a value. `&x` gives the address of `x`, and `*p` is the
value a pointer `p` points to. Through a pointer, `p.field` reaches a field directly (C
writes `p->field`).

```luce
func bump(counter: i64*):
    *counter += 1

pub func main(arguments: str[]) -> i32:
    var hits: i64 = 0
    bump(&hits)
    bump(&hits)
    print(f"hits {hits}")
    return 0
```

```output
hits 2
```

Passing `hits` itself would give `bump` a copy; passing `&hits` lets it change the
original. This is how a function changes something its caller owns.

- **`i64*` is a pointer to an `i64`, and it is never null.** A pointer that may be null is
  an optional pointer, `i64*?`, and must be unwrapped with `if let` or `else` before use,
  like any optional.
- `const i64*` points to a value that cannot be changed through it. The address of a `let`
  is a `const` pointer; the address of a `var` is not.
- **A pointer to a local must not outlive its function.** Returning `&count` from the
  function that declared `count` is rejected: "this pointer or view names a local and must
  not escape the function". The compiler catches the common forms of this mistake, though
  not every one.

## Spans

A **span**, written `T[]`, is a pointer together with a length: it refers to a run of
elements stored somewhere else. An array converts to a span of its elements, and slicing a
span gives a smaller span, with the same syntax as Python's slices but no step:

```luce
func total(values: const i64[]) -> i64:
    var sum: i64 = 0
    for v in values: sum += v
    return sum

pub func main(arguments: str[]) -> i32:
    var numbers = [3, 1, 4, 1, 5, 9]
    let all: i64[] = numbers
    print(f"total {total(all)}, first three {total(all[..<3])}, rest {total(all[3..])}")
    return 0
```

```output
total 23, first three 8, rest 15
```

- `all[..<3]` is the first three elements and `all[3..]` the rest. Slicing does not copy:
  both spans point into `numbers`.
- Indexing and slicing check the length and trap when out of range.
- A span does not own the elements it refers to; it is valid only while they exist.
  `const i64[]` is a span whose elements cannot be changed through it.
- `str` is a read-only span of UTF-8 bytes, and the `str[]` that `main` receives is a span
  of strings.

## Allocating

Memory that outlives a function, or whose size is only known while the program runs, is
allocated with `new` and returned with `free`:

```luce
struct Node:
    var value: i64
    var next: Node*?

func push(head: Node*?, value: i64) -> Node*!:
    return try new Node(value = value, next = head)

pub func main(arguments: str[]) -> i32!:
    let squares = try new i64[5]
    defer free(squares)
    for i in 0..<squares.length: squares[i] = (i64)(i * i)
    print(f"{squares[4]}")
    var list: Node*? = none
    for v in 1..=3: list = try push(list, v)
    if let head = list: print(f"head {head.value}")
    while let node = list:
        list = node.next
        free(node)
    return 0
```

```output
16
head 3
```

- `new Node(...)` allocates one value, constructs it, and gives a `Node*`. `new i64[5]`
  allocates five elements set to zero and gives a span. `new T[count] ---` allocates them
  without setting them, for memory you are about to fill.
- **Allocation can fail**, so `new` is used with `try` (or `catch`, or `else`). Running out
  of memory is an error your program can handle, not a crash.
- **`free(x)` returns the memory.** Using memory after freeing it, or freeing it twice, is
  a bug the language does not detect, as in C.
- **`defer free(x)` right after the allocation** frees it when the current block ends,
  whichever way it ends. `errdefer free(x)` frees it only if the function fails, which suits
  a function that allocates something to hand back to its caller.

## Allocators

Every `new` takes memory from an *allocator*. Unless you choose otherwise, that is
`memory.heap`, the C library's `malloc`. `with` makes another allocator the current one for
a block, and `in` names one for a single allocation:

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
    let pinned = try new u8[64] in arena
    print(f"{pinned.length} more bytes in the arena")
    return 0
```

```output
the arena holds 32000 bytes
64 more bytes in the arena
```

An **arena** allocates by moving a pointer forward through a block of memory, and frees
everything at once when it is destroyed. The thousand allocations above need no `free` each;
`arena.destroy()` returns them all. Code that makes many short-lived allocations for one
task, such as handling one request or parsing one file, often uses an arena for that task.

The standard allocators are `memory.heap`, `memory.Arena`, `memory.FixedBuffer` (which
allocates from a buffer you provide) and `memory.PageAllocator`. A type of your own can be
an allocator too, by implementing the `Allocator` interface.

## Where memory is allocated

Only `new` allocates. Nothing else in the language does: not string operations,
not passing arguments, not `for` loops. That is why Base has no `+` on strings and no
built-in growable list. Those come from library types such as `strings.Builder` for text and
`List` in the `luce-std` package for any values (see the
[memory topic](../topics/09-memory.md#growing-storage)), which take memory from an allocator and
must be destroyed when you are done with them.

## Where next

[Chapter 8](08-modules-and-packages.md) covers splitting a program into files and using
other packages.
