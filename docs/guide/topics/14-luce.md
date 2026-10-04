# Luce

Luce is a higher-level language built on Base. It has reference-counted classes, built-in
`list`, `map` and `set`, owned strings, closures, and isolated workers: the conveniences of a
language like Python or Swift, with memory managed for you. A Luce program can import Base
modules directly, which is how Luce applications use C libraries, and how performance-critical
parts of a Luce program are written. This chapter is about that boundary; Luce itself is
documented at [luce.luciaos.com](https://luce.luciaos.com).
[Reference: Working with full Luce](../../language/base.md#18-working-with-full-luce).

## Importing Base from Luce

Luce files end in `.luc`. A Luce module imports a Base module the way it imports any other:

```luce
## checksum.lucb: Base

pub func adler32(text: str) -> u32:
    var a: u32 = 1
    var b: u32 = 0
    for byte in text.bytes:
        a = (a + byte) % 65521
        b = (b + a) % 65521
    return (b << 16) | a

pub func describe(value: u32) -> str:
    return "even" if value % 2 == 0 else "odd"
```

```luc
# main.luc: Luce
import checksum

pub func main(arguments: list[str]) -> int!:
    let sum = checksum.adler32("hello")
    print(f"adler32 = {sum}, {checksum.describe(sum)}")
    return 0
```

```output
adler32 = 103547413, odd
```

`luce build main.luc` compiles both into one program. A Base module cannot import a Luce
module; the dependency goes one way.

## What crosses, and how

Base and Luce share most types exactly: numbers, `bool`, `char`, structs, enums, tuples and
arrays made of them, and function pointers. These cross by value, with no conversion.

A few types exist in both languages with different representations, and cross through an
adapter the compiler generates at the call:

| Into Base (arguments) | Out of Base (results) |
| --- | --- |
| a Luce `str` is **lent** as a Base `str`: Base reads the string's own bytes | a Base `str` is **copied** into a new Luce string |
| a Luce `list[T]` is lent as a span `const T[]` (or `T[]`, with the list locked against resizing during the call) | a span cannot be returned to Luce |
| a Luce value, or class instance, is lent as an interface view | an interface view cannot be returned |
| a capture-free function is passed as a function pointer | `T!` failures become Luce errors with the same code and message |

The rule is: **values Luce owns are lent into Base for the duration of the call, and views
returned from Base are copied**, so Luce code never holds a pointer into memory that Base
might free. "Lent" means Base may use the storage until it returns and must not keep a
pointer to it.

`usize` and `isize` appear in Luce as `u64` and `i64`. Raw pointers, unions, atomics and
`fmt` parameters do not cross into ordinary Luce code. A `pub var` of a Base module is not
visible to Luce, which has no mutable globals; provide functions that read and write it. A
`pub let` constant is visible.

## Handing Luce a resource

A Base library that owns memory or an operating-system resource exposes it to Luce as a
*handle* (see [C](13-c.md#handles)):

```luce
pub handle Counter:
    destroy release

pub func open(start: i64) -> Counter!:
    ...

pub func release(counter: Counter):
    ...
```

Luce sees `Counter` as a class with a `close()` method, and closes it automatically when the
last reference goes away, or at the end of a `with` block. The `destroy` function must take
the handle and return nothing, without failing.

For richer wrappers, Luce has a third kind of module, *native Luce* (`.lucn`), which can hold
raw Base pointers in a class and free them in its destructor. The Reference describes it.

## Errors and traps

`ErrorCode` is the same type in both languages, so a Base error reaches Luce with its code
and message, and a Luce program compares `failure.code` with the codes the Base module
exports. A trap in Base code inside a Luce program is a Luce trap, with the same report.

## Allocation

Inside a Luce program, Base's `memory.heap` is Luce's own heap, and it is the current
allocator for Base code that Luce calls. Memory Base allocates belongs to Base structures;
Luce only sees it through handles. Base never frees memory that Luce owns.

## Calling back into Luce

Base code cannot name Luce declarations. It can call a function pointer that Luce passed in,
with state passed as a `void*` context, the C callback pattern. The callback runs on the
same thread, while the Base call is in progress. A thread started by Base cannot call into
Luce.
