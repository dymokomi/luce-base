# Expressions and bindings

This chapter covers variables and constants, operators, conversions and equality.
[Reference: Bindings](../../language/base.md#6-bindings-and-initialisation),
[Expressions](../../language/base.md#7-expressions).

## Variables

`let` binds a value once; `var` can be reassigned but keeps its type. Function parameters
behave like `let`.

```luce
let width = 1920              # type inferred: i64
var frame: u32                # zero
var title: str = "Preview"
var buffer: u8[4096]          # 4096 zero bytes
var scratch: u8[4096] = ---   # not initialised
```

### Zero values

A `var` with a written type may leave out its value if the type has a *zero value*, and then
holds it. Numbers, `bool`, `char`, `str` and spans (empty), optionals (`none`), arrays of
those, and structs whose fields all have zero values do. Types that have no sensible zero
must always be given a value: a pointer `T*` (it would be null), a function, an interface,
and any struct containing one of them. A struct that declares its own `init` or a field
default must be constructed too. This is the same rule Go uses, minus the null pointers.

### Skipping initialisation

`= ---` reserves storage without writing anything, for a buffer that will be filled before
it is read, or an array of structs that have no zero value. Reading it before writing is
undefined, as reading an uninitialised variable is in C. The spelling is meant to be easy to
find.

### Top-level variables and constants

```luce
var next_id: u32
let max_users: usize = 16 * 1024
local var calls_on_this_thread: u64

func fresh_id() -> u32:
    next_id += 1
    calls_on_this_thread += 1
    return next_id

pub func main(arguments: str[]) -> i32:
    print(f"{fresh_id()} {fresh_id()} {max_users} {calls_on_this_thread}")
    return 0
```

```output
1 2 16384 2
```

- **A top-level `let` is a constant**, computed by the compiler. Constants can use literals,
  arithmetic, `sizeof`, other constants, array and struct literals of constants, and enum
  cases.
- **A top-level `var` is a global variable.** It starts at its type's zero, or at a
  constant. It is never initialised by running code, so there is no question of which
  global is set up first.
- **`local var` is one variable per thread**, C's `_Thread_local`.

## Assignment

Assignment is a statement, not an expression, so `if (x = next())` cannot be written (use
`while let`, see [Control flow](04-control-flow.md)). There are no `++` and `--`; write
`+= 1`. All the compound forms exist: `+=`, `-=`, `*=`, `//=`, `%=`, `&=`, `|=`, `^=`,
`<<=`, `>>=`, and the wrapping `+%=` and friends.

The right side is evaluated completely before anything is assigned, and a tuple can be
unpacked into new bindings:

```luce
pub func main(arguments: str[]) -> i32:
    var a = 1
    var b = 2
    let (x, y) = (b, a)
    a = x
    b = y
    print(f"{a} {b}")
    return 0
```

```output
2 1
```

Expressions are evaluated left to right, always: the receiver of a method before its
arguments, arguments in order, both sides of an operator in order.

## Operators

### Arithmetic

| Operator | On integers | On floats |
| --- | --- | --- |
| `+` `-` `*` | checked: overflow traps | IEEE arithmetic |
| `+%` `-%` `*%` | wrap around | not defined |
| `+\|` `-\|` `*\|` | saturate at the limits | not defined |
| `+?` `-?` `*?` | give `T?`: `none` on overflow | not defined |
| `//` | divide, rounding toward zero | not defined |
| `%` | remainder, with the sign of the left side | not defined |
| `/` | not defined | divide |

- Dividing by zero traps, and so does the one division that overflows,
  `minimum // -1`.
- `//` and `%` round as C does, toward zero: `-7 // 2` is `-3` and `-7 % 2` is `-1`.
  Python rounds down, giving `-4` and `1`. `math.div_floor` and `math.mod_floor` in
  `luce_std` round down.
- Unary `-` is not allowed on unsigned types; unary `-%` negates with wrapping, so
  `x & -%x` isolates the lowest set bit as in C.
- An expression made only of literals takes the type of its context and is computed in
  that type: `let x: u8 = 200 + 100` computes in `u8`, and traps.
- `a.mul_add(b, c)` on floats computes `a * b + c` with a single rounding (a fused
  multiply-add).

### Bits

`&`, `|`, `^`, `~`, `<<` and `>>` work on integers of any size. Shifting by the type's width
or more traps; bits shifted off the top by `<<` are discarded. `>>` on a signed integer
keeps the sign.

### Comparison and logic

`==`, `!=`, `<`, `<=`, `>`, `>=` compare values of the same type. `and`, `or` and `not` take
`bool` and short-circuit, as in Python. Two rules differ from Python:

- **Comparisons do not chain.** `low <= x < high` is written `low <= x and x < high`.
- **`not` binds more tightly than `==`.** `not x == 5` means `(not x) == 5` and does not
  compile; write `not (x == 5)`, or `x != 5`.

### Precedence

From tightest to loosest:

1. member access `.`, calls, indexing
2. unary `try`, `not`, `-`, `-%`, `~`, `*` (dereference), `&` (address), casts
3. `*` `/` `//` `%` `*%` `*|` `*?`
4. `+` `-` `+%` `-%` `+|` `-|` `+?` `-?`
5. `<<` `>>`
6. `&`, then `^`, then `|`
7. ranges `..<` `..=`
8. comparisons
9. `and`, then `or`
10. the conditional `a if c else b`
11. the fallback `x else y`
12. `catch`

Unlike C, `&` binds more tightly than `==`, so `flags & mask == 0` means
`(flags & mask) == 0`.

## Conversions

An integer widens automatically to a larger integer of the same signedness. Every other
conversion is written, in one of two forms with different meanings:

| Form | Meaning | Example |
| --- | --- | --- |
| `T(x)` | checked: traps if the value does not fit | `u8(value)`, `i32(ratio)` |
| `(T)x` | C's cast: keeps the low bits, reinterprets, truncates | `(u8)value`, `(i32)ratio` |

```luce
pub func main(arguments: str[]) -> i32:
    print(f"{(u8)(200 + 100)} {(u32)(1 << 40)} {(i32)3.99} {(i32)-3.99} {(u8)-1}")
    print(f"{u64(7)} {f64(3)}")
    return 0
```

```output
44 0 3 -3 255
7 3.0
```

The cast column in detail:

| Cast | Result |
| --- | --- |
| integer to a smaller integer | the low bits |
| integer to the other signedness | the same bits, read the other way |
| float to integer | rounds toward zero; saturates out of range; NaN gives 0 |
| integer to float, float to float | the nearest value |
| `bool` to integer, integer to `bool` | 0 or 1; non-zero is `true` |
| integer-backed enum to integer, and back | the value; back is unchecked |
| pointer to pointer, pointer to `usize` | as in C |

A cast gives its operand no context, so in `(u8)(200 + 100)` the sum is computed as an
`i64` (300) and then cut to `u8` (44). The checked form `u8(200 + 100)` traps.

`str(bytes)` checks UTF-8 and returns `str!`; `(str)bytes` does not check. Reading a float's
bits uses `value.bits()`, and `f32.bits(n)` makes a float from them. There is no other way
to reinterpret one number type as another, except a `union`.

## Equality and hashing

`==` works on numbers, `char`, `bool`, `str` (comparing bytes), pointers (comparing
addresses), optionals, tuples, arrays, and structs and enums whose parts all support it.
Comparing any optional with `none` asks whether it is empty.

`hash(value)` gives a `u64` for any value that supports `==`. It is seeded per process, so
it differs between runs; do not store it.

```luce
struct Pair:
    var a: i32
    var b: i32

pub func main(arguments: str[]) -> i32:
    print(f"{hash(42) == hash(42)} {Pair(a = 1, b = 2) == Pair(a = 1, b = 2)} {"abc" < "abd"}")
    return 0
```

```output
true true true
```

There is no operator overloading: `==` on a struct always compares fields. A type that
needs another notion of equality provides a method with a name, such as `same_as`.

## Discarding a result

A call whose result is not used can stand as a statement. `discard(call())` says the
result is ignored on purpose. A call that can fail cannot be discarded until its failure is
handled: `discard(parse(text) else 0)`.
