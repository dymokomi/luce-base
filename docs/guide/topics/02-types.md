# Types

Every value in Base has a type known when the program compiles. This chapter goes through
them all: numbers, text, arrays and spans, pointers, optionals, tuples, function types,
aliases, vectors, and how values are laid out in memory.
[Reference: Types](../../language/base.md#5-types).

## Inference and conversion

Types are inferred inside a function, from a value to the variable it initialises, from
arguments to a generic function's type parameters, and from the context into literals. A
function's parameters and result are always written.

Very few conversions happen without being written. These do:

- an integer to a wider integer of the same signedness (`u8` to `u32`, `i32` to `i64`);
- a pointer to the same pointer with more restrictions (`T*` to `const T*`), and any object
  pointer to `void*`;
- an array to a span of its elements, and a span to a read-only span;
- a value `T` to an optional `T?`;
- a string literal to a C string, `c.str`.

Everything else, such as narrowing an integer, changing its signedness, or converting
between integers and floats, is written explicitly. [Expressions](03-expressions.md)
describes the two conversion forms.

## Numbers

| Type | Size | Notes |
| --- | --- | --- |
| `i8`, `i16`, `i32`, `i64` | 1, 2, 4, 8 bytes | signed, two's complement |
| `u8`, `u16`, `u32`, `u64` | 1, 2, 4, 8 bytes | unsigned |
| `isize`, `usize` | a pointer's size | 8 bytes on 64-bit targets, 4 on WebAssembly |
| `f16`, `f32`, `f64` | 2, 4, 8 bytes | IEEE 754 floats |

`usize` is the type of lengths, indices and sizes: `array.length`, `sizeof(T)` and array
indices are all `usize`.

Integer literals take their type from where they are used. With nothing to decide, an
integer literal is an `i64` and a float literal an `f64`. A suffix fixes the type: `255u8`,
`-20i32`, `0.5f32`. Literals may be written in hexadecimal `0xff`, octal `0o755` or binary
`0b1010`, with `_` between digits. A literal that does not fit its type is a compile error.

`bool` is `true` or `false`. It does not convert to or from a number by itself; `(i32)flag`
gives 0 or 1, and `(bool)n` is true when `n` is not zero.

`char` is one Unicode character, written `'A'` or `'\u{1F600}'`. Where a byte is expected,
an ASCII character literal is that byte, so `byte == '\n'` needs no conversion.

`unit` is the type of "no value", what a function without `->` returns; its one value is
`()`. `never` is the type of something that does not finish, such as `trap(...)` or
`error(...)`, and fits wherever a value of any type is expected.

## Text

`str` is UTF-8 text: a pointer to bytes and a byte count. It does not own the bytes. A
string literal points into the program's data; other strings point into a buffer, a file's
contents, or an allocation that some other code owns and frees.

- `text.length` is the number of bytes. `text.bytes` is the bytes, a `const u8[]`.
- `for character in text` gives each Unicode character as a `char`.
- `==`, `!=` and the ordering operators compare bytes.
- There is no `text[i]`, because a byte position is not a character position.
- There is no `+`. Text is built by `format` into a buffer you own, or with a
  `strings.Builder`, which allocates.

Converting bytes to text uses the two conversion forms of the language. `str(bytes)` checks
that the bytes are valid UTF-8 and is fallible; `(str)bytes` does not check, and is for bytes
known to be valid already:

```luce
pub func main(arguments: str[]) -> i32:
    let bytes = b"PNG"
    print(f"{bytes.length} bytes, the first is {bytes[0]}")
    let text = str(bytes) else "not UTF-8"
    print(text)
    return 0
```

```output
3 bytes, the first is 80
PNG
```

`c.str` is C's `const char*`: a pointer to text ending in a zero byte, of unknown encoding.
It exists for calling C. A string literal converts to it automatically because every
literal ends in a zero byte; `str(value)` reads one back into a `str`. See
[C](13-c.md#text).

### Literals

| Form | Example | Type |
| --- | --- | --- |
| text | `"hello\n"` | `str` |
| raw text | `r"C:\temp"` | `str`, no escapes |
| multi-line | `"""` ... `"""` | `str`; the indentation of the closing quotes is removed |
| bytes | `b"\x89PNG"` | `const u8[]`; may contain `\xNN` |
| formatted | `f"x = {x}"` | not a value; see below |
| character | `'a'` | `char` |

The escapes in text are `\n`, `\r`, `\t`, `\\`, `\"`, `\'`, `\0` and `\u{...}`. `\xNN`
exists only in byte literals.

### Formatted strings

`f"..."` works like a Python f-string, with three differences:

- The braces hold an expression and nothing else. There is no `:` format specification.
  `hex(n)` and `bin(n)` give digits in base 16 or 2, and `pad(value, width)` right-aligns
  in a field of that width.
- Inside the braces, strings are written with plain quotes:
  `f"{name if name != "" else "anonymous"}"`.
- A formatted string is not a value. It goes directly to `print`, to `format(buffer, ...)`,
  to a `Writer`, or to a function parameter of type `fmt`. You cannot store it in a
  variable, because there is nowhere to keep the text unless you provide a buffer.

## Arrays

`T[N]` is a fixed number of elements of type `T`. The length is part of the type and must
be a constant greater than zero.

- An array is a value: assigning or passing it copies every element. It is stored inline,
  inside the struct or function frame that holds it.
- A `var` array without a value is filled with zeros.
- `array.length` is its length, and `array.first()` and `array.last()` give optionals.
- Arrays nest as in C: `u8[3][2]` is three arrays of two bytes each, indexed
  `grid[row][column]`.
- Array literals are written `[1, 2, 3]`.

```luce
pub func main(arguments: str[]) -> i32:
    let grid: u8[3][2] = [[1, 2], [3, 4], [5, 6]]
    print(f"{grid[2][1]}, {grid.length} rows of {grid[0].length}")
    return 0
```

```output
6, 3 rows of 2
```

## Spans

`T[]` is a *span*: a pointer to some elements and how many there are. It refers to elements
stored elsewhere, in an array, an allocation or another span, and does not own them.
`const T[]` is a span whose elements cannot be changed through it.

```luce
pub func main(arguments: str[]) -> i32:
    let words = ["alpha", "beta", "gamma"]
    let all: const str[] = words
    if let first = all.first(): print(f"first {first}")
    if let last = all.last(): print(f"last {last}")
    let middle = all[1..<2]
    print(f"{middle.length} in the middle: {middle[0]}")
    let none_left: const str[] = all[0..<0]
    print(f"an empty span has no first: {none_left.first() == none}")
    return 0
```

```output
first alpha
last gamma
1 in the middle: beta
an empty span has no first: true
```

- **Making a span:** from an array (it converts automatically), by slicing another span,
  or from a pointer and a count, `i32[](pointer, count)`.
- **Slicing** is half-open: `span[start..<end]`, `span[..<end]` and `span[start..]`.
  It does not copy.
- `span.length` is the number of elements, `span.data` the pointer to the first, and
  `span.first()`, `span.last()` give optionals. `span.indexed()` gives `(index, element)`
  pairs for a `for` loop.
- Indexing and slicing are checked in every build and trap when out of range.

Most functions that would take a pointer and a length in C take a span in Base. The
standard library's functions that read or write bytes take `u8[]` or `const u8[]`.

## Pointers

| Type | Meaning |
| --- | --- |
| `T*` | points to a `T`; never null |
| `const T*` | points to a `T` that cannot be changed through this pointer |
| `T*?` | may be null; `none` is the null pointer |
| `void*`, `const void*` | points to memory of unknown type, as in C |
| `volatile T*` | every read and write through it happens, for hardware registers |

- `&x` takes an address and `*p` reads or writes through it. `p.field` and `p.method()`
  reach through a pointer without `*` (C's `->` is not needed).
- A pointer that may be null must be unwrapped like any optional before use. A `T*` is
  never null, so it never needs checking.
- `==` and `<` compare addresses.
- `p + n` and `p - n` move by `n` elements, `p[i]` reads the element `i` places on, and
  `p - q` is the number of elements between two pointers. These are **not** bounds-checked;
  use spans when the length is known.
- A pointer converts to `void*` automatically; any other pointer conversion is a cast,
  `(Header*)raw`. `(usize)p` gives the address as a number.

```luce
import memory

pub func main(arguments: str[]) -> i32:
    var values: i32[4] = [10, 20, 30, 40]
    let base = &values[0]
    let third = base + 2
    print(f"{*third} {base[3]} {third - base}")
    let view = i32[](base + 1, 2)
    print(f"a span of {view.length}: {view[0]} {view[1]}")
    var bytes: u8[8] = [1, 0, 0, 0, 2, 0, 0, 0]
    print(f"a u32 read from bytes: {memory.read[u32](&bytes[4])}")
    return 0
```

```output
30 40 2
a span of 2: 20 30
a u32 read from bytes: 2
```

`memory.read[T](address)` and `memory.write[T](address, value)` read and write a value of
type `T` at any address, with no alignment requirement. They are the safe way to decode a
binary format. `memory.copy`, `memory.move` and `memory.set` are `memcpy`, `memmove` and
`memset`.

## Optionals

`T?` holds a `T` or `none`, like Rust's `Option<T>` or Swift's `T?`. There is only one
level: `T??` cannot be written. An optional pointer, function or interface takes no extra
space, because `none` is the zero address. [Errors](08-errors.md) covers how optionals are
made and used.

## Tuples

`(i64, str)` groups values without names, for returning several results from a function.
Members are read by position, `pair.0`, or unpacked, `let (count, name) = pair`. A tuple has
no methods and no single-element form; `()` is the empty tuple, the `unit` value. When the
parts deserve names, use a struct.

## Function types

`func(i32, i32) -> i32` is the type of a function taking two `i32`s and returning one. A
value of this type is a C function pointer: one machine word, never null. A function name,
a method named through its type (`Point.distance`), or a lambda that uses no local variables
can be stored in one. `(func(i32) -> i32)?` may be null.

## Aliases

`type Name = SomeType` gives a type another name. It is the same type under a second name,
not a new type:

```luce
type Callback = func(void*, i32) -> unit
type Link = Node*?
pub type Pixel = f32[4]
```

Aliases keep complicated pointer types readable. For a distinct type, one that cannot be
mixed up with the original, declare a struct with one field.

## Vectors

An array of 8 or 16 bytes whose elements are all integers, or all `f32` or `f64`, is also a
*vector*: arithmetic applies to every element at once, and compiles to the processor's SIMD
instructions.

```luce
pub func main(arguments: str[]) -> i32:
    let a: f32[4] = [1.0, 2.0, 3.0, 4.0]
    let half = f32[4](0.5)
    let c = a * half + a
    print(f"{c[0]} {c[3]} {c.sum()}")
    return 0
```

```output
1.5 6.0 15.0
```

- The arithmetic, bit and shift operators work lane by lane, with the same overflow
  rules as on single numbers. A single number on one side applies to every lane.
- `f32[4](x)` makes a vector with every lane set to `x`. (This form takes the array type
  written out; it does not work through an alias.)
- `v.sum()`, `v.min()` and `v.max()` combine the lanes; `v.mul_add(b, c)` computes
  `v * b + c` with one rounding.
- Integer division, comparisons and the `?` operators are not defined on vectors.

## Layout in memory

Structs, unions, arrays and tuples are laid out exactly as C lays out the same declaration
on the target: fields in order, with the platform's alignment and padding. This is what lets
Base share data structures with C.

```luce
packed struct Header:
    var tag: u8
    var length: u32

struct Aligned:
    var tag: u8
    var length: u32

pub func main(arguments: str[]) -> i32:
    print(f"packed {sizeof(Header)}, normal {sizeof(Aligned)}, aligned to {alignof(Aligned)}")
    print(f"length starts at byte {offsetof(Aligned, length)}")
    return 0
```

```output
packed 5, normal 8, aligned to 4
length starts at byte 4
```

- `sizeof(T)`, `alignof(T)` and `offsetof(T, field)` are compile-time constants of type
  `usize`.
- `packed struct` removes padding. Taking the address of a packed field that would be
  misaligned is an error.
- `align(N) struct` raises a struct's alignment, and `align(N)` before a field raises that
  field's, for example to keep two fields on separate cache lines.

## Atomic types

`@T`, such as `@u64` or `@bool`, is a value that several threads may read and write at
once. [Concurrency](12-concurrency.md) covers them.
