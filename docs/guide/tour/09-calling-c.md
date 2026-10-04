# 9. Calling C

Base lays out structs and passes arguments the same way C does on each platform, so a C
function can be called directly once it is declared. Python needs a layer such as `ctypes`
or `cffi` for this; Base needs only the declaration.

## Declaring C functions

```luce
import c

extern func strlen(text: c.str) -> usize
extern func getenv(name: c.str) -> c.str?
extern func c_abs as "abs"(value: i32) -> i32
extern func qsort(base: void*, count: usize, size: usize, compare: func(const void*, const void*) -> i32)

func by_value(a: const void*, b: const void*) -> i32:
    let x = *(const i32*)a
    let y = *(const i32*)b
    return -1 if x < y else (1 if x > y else 0)

pub func main(arguments: str[]) -> i32!:
    print(f"strlen says {strlen("hello")}")
    print(f"abs(-5) = {c_abs(-5)}")
    let missing = getenv("SURELY_NOT_SET_ANYWHERE") else "(not set)"
    print(try str(missing))
    var values: i32[5] = [5, 3, 9, 1, 4]
    qsort(&values[0], 5, sizeof(i32), by_value)
    print(f"{values[0]} {values[1]} {values[2]} {values[3]} {values[4]}")
    return 0
```

```output
strlen says 5
abs(-5) = 5
(not set)
1 3 4 5 9
```

- **`extern func`** declares a C function with its C signature, written in Base types.
  `as "abs"` binds the C symbol `abs` under a different name, useful when the C name would
  clash with one of yours.
- **C's types come from the `c` module.** Most of them are plain Base types: C's `int` is
  `i32` and `size_t` is `usize`, because those sizes are the same on every supported
  platform. The few whose size depends on the platform are separate types: `c.long`,
  `c.char`, `c.wchar`.
- **C strings are `c.str`**, C's `const char*`. A string literal can be passed as one
  directly, because literals are stored with a terminating zero byte. In the other
  direction, `str(value)` checks that a C string is valid UTF-8 and gives a `str`, or fails.
- **A C pointer that can be null is declared with `?`.** `getenv` returns `NULL` for a
  missing variable, so its result is `c.str?`. A pointer declared without `?` is checked once
  where it comes from C, and a null there traps.
- **Function pointers** are Base function types: `by_value` is passed to `qsort` as is.

Variadic functions such as `printf` can be declared too:
`extern func printf(format: c.str, ...) -> i32`. Note that C's `printf` buffers its output
and `print` does not, so a program that uses both may see their lines out of order.

## C source files in a project

A project can include C files. List them in `package.prisma` and they are compiled with the
program by the C compiler on your machine:

```text
def package "cdemo" {
    ...
    def native "inputs" {
        str[] sources = ["native/mix.c"]
    }
}
```

```c
// native/mix.c
#include <stdint.h>
int32_t mix(int32_t a, int32_t b) { return a * 31 + b; }
```

```luce
extern func mix(a: i32, b: i32) -> i32
```

The same `def native` block takes `libraries` to link (`["sqlite3", "m"]`), `link_search`
directories, macOS `frameworks` and `pkg_config` names. A block named after a platform,
`def native "macos" { ... }`, applies only there.

To use an existing C library, `luce-base bind header.h -o module.lucb` writes the `extern`
declarations from its header and lists anything it could not translate.

## C calling Base

`export func` gives a Base function a C symbol, and `--lib` builds a static library with a
C header:

```luce
pub struct Pixel:
    pub var r: u8
    pub var g: u8
    pub var b: u8

export func blend(left: Pixel, right: Pixel) -> Pixel:
    return Pixel(r = (u8)((u32(left.r) + right.r) // 2), g = (u8)((u32(left.g) + right.g) // 2), b = (u8)((u32(left.b) + right.b) // 2))

export func checksum(data: const u8[]) -> u32:
    var sum: u32 = 0
    for byte in data: sum = sum *% 31 +% byte
    return sum
```

```sh
luce-base build blend.lucb --lib -o libblend    # writes libblend.a and libblend.h
cc use.c libblend.a -o use
```

The generated header is plain C:

```c
typedef struct Pixel Pixel;
struct Pixel {
    uint8_t r;
    uint8_t g;
    uint8_t b;
};

Pixel blend(Pixel left, Pixel right);
uint32_t checksum(const uint8_t* data, size_t data_len);
```

A span parameter becomes a pointer and a length. A function that can fail becomes one that
returns a status code and writes its result through a final pointer argument. Only
functions marked `export` get C symbols, so names that are `pub` in two of your modules
never collide when linking.

## Where next

[Chapter 10](10-where-next.md) lists what to read after the Tour.
