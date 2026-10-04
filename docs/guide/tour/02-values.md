# 2. Values

## Bindings

`let` names a value that does not change, like a constant in most languages. `var` names
one that can be reassigned.

```luce
let speed_of_light = 299_792_458

pub func main(arguments: str[]) -> i32:
    let width = 1920
    let height: i32 = 1080
    var frames: u32
    frames += 1
    let ratio = 16.0 / 9.0
    let ready = true
    let initial = 'B'
    print(f"{width}x{height}, {frames} frame, ratio {ratio}, {ready}, {initial}")
    print(f"light: {speed_of_light} m/s")
    return 0
```

```output
1920x1080, 1 frame, ratio 1.7777777777777777, true, B
light: 299792458 m/s
```

- **The type is inferred from the value** (`width` is an `i64`), or written after a colon
  (`height: i32`). Once set, a variable's type never changes. An integer literal with
  nothing else to decide its type is an `i64`, and a decimal one an `f64`.
- **A `var` with a written type may leave out its value**, and then starts at that type's
  zero: `frames` starts at `0`. A `let` always needs a value.
- **A `let` at the top level is a constant**, computed when the program compiles.
  Underscores separate digits, as in Python.
- **Names cannot shadow.** Python lets an inner variable reuse an outer name; Base does not.
  A local cannot take the name of another local, a parameter, an import or a declaration
  of its file. Choose another name.

## Numbers

Python has one integer type that grows as needed. Base has fixed sizes, as C and Rust do:

| Type | What it is |
| --- | --- |
| `i8` `i16` `i32` `i64` | signed integers of 8 to 64 bits |
| `u8` `u16` `u32` `u64` | unsigned integers |
| `usize` `isize` | integers as wide as a pointer, used for sizes, lengths and indices |
| `f32` `f64` (and `f16`) | floating-point numbers |
| `bool` | `true` or `false` |
| `char` | one Unicode character, written `'A'` |

`bool` is only ever `true` or `false`: `if count:` is an error, where Python would test
for zero. Write `if count != 0:`.

### Overflow stops the program

Because integers have a fixed size, a result can be too large to fit. `+`, `-` and `*` check
for this, and when it happens the program stops with a message saying where. Base calls
this a *trap*:

<!-- exits 1 -->
```luce
pub func main(arguments: str[]) -> i32:
    var level: u8 = 250
    for step in 0..<10:
        level += 1
    print(f"level {level}")
    return 0
```

```output
trap: main.lucb:4:9: integer overflow
```

A trap means the program has a bug. It cannot be caught, much like a failed `assert` in
Python, and it happens in every build, optimised or not. (C would wrap around silently; Rust
panics in debug builds and wraps in release builds.)

When you want a different behaviour, a different operator says so:

```luce
pub func main(arguments: str[]) -> i32:
    let a: u8 = 250
    print(f"{a +% 10} {a +| 10}")
    let maybe = a +? 10
    if let sum = maybe:
        print(f"fits: {sum}")
    else:
        print("does not fit in a u8")
    print(f"{17 // 5} {17 % 5} {-17 // 5} {-17 % 5}")
    print(f"{0b1010 | 0b0101} {1 << 10} {0xff & 0x0f}")
    return 0
```

```output
4 255
does not fit in a u8
3 2 -3 -2
15 1024 15
```

- `+%`, `-%`, `*%` **wrap around**, as C does. Hashes and random number generators use these.
- `+|`, `-|`, `*|` **saturate**, stopping at the type's largest or smallest value.
- `+?`, `-?`, `*?` produce an **optional** that is empty when the result does not fit
  ([Chapter 6](06-absence-and-failure.md) covers optionals).
- `/` divides floats. Integers divide with `//`, as in Python, but rounding toward zero as
  C does: `-17 // 5` is `-3`, where Python gives `-4`. `%` follows the same rule.
- `&`, `|`, `^`, `~`, `<<` and `>>` work on bits, as in Python.

Dividing by zero is a trap too, and so is indexing past the end of an array.

### Converting between types

An integer converts by itself to a wider integer of the same signedness, so a `u32` can be
added to a `usize` directly. Every other conversion is written, in one of two ways:

```luce
pub func main(arguments: str[]) -> i32:
    let small: u16 = 300
    let wide: u64 = small
    let narrow = u8(42)
    let low_byte = (u8)wide
    print(f"{wide} {narrow} {low_byte}")
    return 0
```

```output
300 42 44
```

- **`u8(x)` checks.** If the value does not fit, it traps: `u8(300)` stops the program.
  It reads like Python's `int(x)`.
- **`(u8)x` is a C cast.** It keeps the low bits of an integer (300 becomes 44) or drops
  the fraction of a float. Use it when that truncation is what you want.

Integers and floats never convert by themselves: write `f64(count)` or `i32(ratio)`.

## Text

`str` is a string of UTF-8 text. Like a Python `str`, it cannot be changed in place.

```luce
pub func main(arguments: str[]) -> i32:
    let text = "naïve café"
    var letters = 0
    for character in text:
        letters += 1
    print(f"{text.length} bytes, {letters} characters")
    var buffer: u8[64]
    let line = format(buffer, f"{text} costs {3}€") else ""
    print(f"'{line}' fits in {buffer.length} bytes")
    return 0
```

```output
12 bytes, 10 characters
'naïve café costs 3€' fits in 64 bytes
```

- **`length` counts bytes, not characters.** `ï` and `é` take two bytes each in UTF-8, so
  the ten characters above are twelve bytes. Looping with `for` gives characters, of type
  `char`.
- **There is no indexing by position**, `text[3]`, because a byte position and a character
  position are not the same thing. Loop over the characters, or use `text.bytes` for the
  raw bytes.
- **There is no `+` for strings.** A new string needs memory, and Base only allocates
  memory where your code asks for it (more in [Chapter 7](07-memory.md)). To build text,
  `format` writes a formatted string into a buffer you provide and gives back the result.
  The `else ""` supplies a value in case the text does not fit.
- **Formatted strings are not values** you can store in a variable. They are written
  directly to `print`, `format`, or another destination of text.

Other forms of string literal: `r"C:\raw\path"` has no escape sequences, as in Python;
`"""` starts a string over several lines; and `b"\x89PNG"` is a sequence of bytes. The
escapes are `\n`, `\t`, `\\`, `\"`, `\0` and `\u{1F600}`.

## Arrays

```luce
pub func main(arguments: str[]) -> i32:
    let pixel = [255, 128, 0]
    var row: u8[8]
    row[3] = 9
    print(f"{pixel.length} channels, green {pixel[1]}, row {row[3]} {row[4]}")
    return 0
```

```output
3 channels, green 128, row 9 0
```

An array has a fixed length that is part of its type: `u8[8]` is eight bytes. It cannot
grow or shrink, unlike a Python list. Assigning an array copies it. A `var` array starts
filled with zeros; if you will fill it before reading it,
`var big: u8[65536] = ---` skips that step, and reading it before writing is then a bug.

Arrays are the only collection built into the language. Growable lists, dictionaries and
string builders are library types, because growing needs memory; [Chapter
7](07-memory.md) shows how memory works.

## Where next

[Chapter 3](03-control-flow.md) covers conditions, loops and `match`.
