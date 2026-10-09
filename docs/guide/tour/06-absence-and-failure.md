# 6. Absence and failure

Base distinguishes three situations that other languages often handle the same way:

- **A value may be absent.** A search may find nothing. Its type is `T?`, an *optional*,
  where Python would return `None`.
- **An operation may fail.** A file may not open; text may not parse. A function that can
  fail says so in its result type, `T!`, where Python would raise an exception.
- **The program has a bug.** An index is out of range, an addition overflowed. The program
  stops with a *trap*, which cannot be caught.

## Optionals

```luce
func digit_value(c: char) -> u32?:
    if c >= '0' and c <= '9':
        return (u32)c - (u32)'0'
    return none

pub func main(arguments: str[]) -> i32:
    if let d = digit_value('7'): print(f"digit {d}")
    let missing = digit_value('x') else 0
    print(f"fallback {missing}")
    match digit_value('3'):
        .some(n): print(f"some {n}")
        .none: print("none")
    return 0
```

```output
digit 7
fallback 0
some 3
```

A `u32?` holds either a `u32` or `none`. Unlike Python, where a `None` can reach code that
expected a number, an optional has to be unwrapped before the value inside can be used, and
each way of unwrapping says what happens when it is empty:

- `if let name = optional:` runs the block only when there is a value, and names it. This
  is Swift's `if let`.
- `optional else fallback` gives the value, or the fallback, like Python's `x or default`
  but only for `none`. The fallback can also leave: `else return`, `else break`,
  `else error(...)`, or `else trap("reason")`.
- `while let item = next():` repeats while there is a value.
- `match` with the cases `.some(value)` and `.none`.

To assert that a value cannot be missing, write `else trap("the reason")`. There is no
operator that unwraps without saying why.

## Failure

A function that can fail puts `!` after its result type, and `error(code, message)` makes
it fail. Error codes are constants, declared with `ErrorCode.package(n)`:

```luce
let not_a_number = ErrorCode.package(1)

func digit_value(c: char) -> u32?:
    if c >= '0' and c <= '9':
        return (u32)c - (u32)'0'
    return none

func parse(text: str) -> u32!:
    if text.length == 0:
        error(not_a_number, "empty text")
    var value: u32 = 0
    for c in text:
        let digit = digit_value(c) else error(not_a_number, "not a digit")
        value = value * 10 + digit
    return value

func half(text: str) -> u32!:
    let n = try parse(text)
    return n // 2

pub func main(arguments: str[]) -> i32:
    let a = half("84") else 0
    print(f"half of 84 is {a}")
    let b = parse("8a") catch failure:
        print(f"could not parse: {failure.message}")
        recover 0
    print(f"8a parsed as {b}")
    return 0
```

```output
half of 84 is 42
could not parse: not a digit
8a parsed as 0
```

Where Python lets an exception travel up silently, Base makes each call that can fail say
how the failure is handled. There are three ways:

- **`try` passes it on.** `try parse(text)` gives the value, or makes the current function
  fail with the same error, which therefore must itself be marked `!`. This is Rust's `?`
  operator, or Swift's `try`. One `try` covers a whole expression:
  `try combine(read(), parse())` needs only one.
- **`catch` handles it,** like Python's `except`. `expression catch failure:` runs the
  block with the error, whose fields are `failure.code`, `failure.message` and
  `failure.at`, where it was raised. The block
  must end by giving a replacement value with `recover`, or by leaving: `return`,
  `error(...)` or `trap(...)`.
- **`else` replaces it**, as it replaces a missing optional: `parse(text) else 0`.

Ignoring a failure is not allowed: calling `parse(text)` without one of these is a compile
error.

### Constructors and `main` can fail too

A struct's own `init` can fail, and so can `main` when it returns `i32!`. An error that
reaches the end of `main` is printed and the program exits with status 1:

<!-- exits 1 -->
```luce
let out_of_range = ErrorCode.package(2)

struct Percentage:
    let value: u32

    func init(value: u32) -> !:
        if value > 100:
            error(out_of_range, "a percentage is at most 100")
        self.value = value

pub func main(arguments: str[]) -> i32!:
    let p = try Percentage(75)
    print(f"{p.value}%")
    let q = try Percentage(150)
    print(f"{q.value}%")
    return 0
```

```output
error: main.lucb:8:13: a percentage is at most 100 (code 2)
```

The output above is standard error; `75%` went to standard output. `main.lucb:8:13` is the
`error(...)` statement that raised the failure, as a Python traceback ends at the `raise`. `-> !` on `init` means
"returns nothing, but may fail". The code printed is the number given to
`ErrorCode.package`.

### Cleaning up

When a function sets several things up and fails halfway, the earlier ones need undoing.
`defer` runs a statement when the current block ends, however it ends, much like Python's
`finally`; `errdefer` runs it only when the block is left because of an error.
[Chapter 7](07-memory.md) uses both to free memory.

## Traps

A trap reports a bug and stops the program. These trap, in every build: integer overflow
with `+`, `-` or `*`; division by zero; an index or slice out of range; a checked conversion
that does not fit; `else trap(...)`; a failed `assert(condition)`; and running out of stack.
Each prints `trap: file:line:column: reason` and exits with status 1. A trap cannot be
caught, and `defer` does not run.

## Where next

[Chapter 7](07-memory.md) covers where values live, and memory you manage yourself.
