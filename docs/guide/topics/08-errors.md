# Errors

Base keeps three situations apart: a value that may be **absent** (`T?`), an operation that
may **fail** (`T!`), and a **bug** (a trap, which stops the program). There is no null
reference, no exception, and no error class hierarchy.
[Reference: Absence, failure, and traps](../../language/base.md#11-absence-failure-and-traps).

## Optionals

`T?` holds a `T` or `none`, like Rust's `Option<T>` or Swift's `T?`.

**Making one.** A `T` becomes a `T?` wherever one is expected, so a function returning `u32?`
can `return 7` or `return none`. `none` needs to know its type from context: `let x: i32? =
none`.

**Using one.** The value inside can only be reached by handling the empty case:

| Form | Does |
| --- | --- |
| `if let v = opt:` | runs the block when there is a value |
| `while let v = next():` | repeats while there is a value |
| `opt else fallback` | the value, or the fallback |
| `opt else return` / `else break` / `else continue` | the value, or leaves |
| `opt else error(code, message)` | the value, or fails the function |
| `opt else trap("reason")` | the value, or stops the program |
| `match opt:` with `.some(v)` and `.none` | either case |
| `opt == none` | whether it is empty |

There is no operator that unwraps without handling `none`; `else trap("why this cannot be
empty")` is the explicit spelling.

**Representation.** An optional pointer, function or interface view is one word, with `none`
as the zero address; this is how Base represents C's `NULL`. Other optionals store a flag next
to the value. Optionals are one level deep: `T??` cannot be written.

## Fallible functions

A function that can fail puts `!` after its result type: `-> u32!`, or `-> !` for a function
that returns nothing. It fails with `error(code, message)`:

```luce
pub let not_found = ErrorCode.package(1)
pub let too_long = ErrorCode.package(2)

func lookup(key: str) -> i64?!:
    if key.length > 8: error(too_long, "key longer than 8 bytes")
    if key == "answer": return 42
    return none

func value_of(key: str) -> i64!:
    let found = try lookup(key) else error(not_found, "no such key")
    return found

pub func main(arguments: str[]) -> i32:
    for key in ["answer", "question", "a very long key"]:
        let v = value_of(key) catch failure:
            if failure.code == not_found:
                print(f"{key}: missing")
                continue
            print(f"{key}: {failure.message}")
            continue
        print(f"{key}: {v}")
    return 0
```

```output
answer: 42
question: missing
a very long key: key longer than 8 bytes
```

- `T!` is "a `T` or an error" in the result of a function. It is not a type you can store:
  a variable, field or parameter cannot be `T!`. To keep an outcome for later, declare an
  enum with a success case and a failure case.
- `T?!` is a function that may fail, and may also succeed with no value, as `lookup` above.
- An error is an `Error` value with four fields: `code`, an `ErrorCode`; `message`, a
  `str`; `at`, where it was raised; and `called_at`, the call in your code it came out of
  (see [below](#where-an-error-was-raised)).

### Handling a failure

Every call that can fail must be handled in one of these ways, or the program does not
compile ("a fallible result must be handled: `try`, `catch`, or `else`"):

**`try` passes the failure on**, to the enclosing `catch` or out of the current function,
which must then be fallible itself. This is Rust's `?` and Swift's `try`. One `try` covers the
whole expression after it: in `try combine(read(), parse())`, a failure of `read`, `parse` or
`combine` is passed on. When `try` sits inside an operand, parenthesise what it should cover:
`left + try (read() + parse())`.

**`catch` handles it**, like Python's `except`:

```luce
let text = settings_text(path) catch failure:
    if failure.code == files.missing:
        recover ""
    error(failure)
```

The handler runs with the error named, and must end in one of: `recover value` (the value of
the whole expression), `return`, `error(...)` (failing the function: `error(failure)` passes
the same error on, like a bare `raise` in Python's `except`), `trap(...)`, or `break`/`continue` inside a loop. `catch:` without a name ignores the
error's details: `let n = parse(text) catch: recover 0`. When an optional is expected, the
handler can `recover none`: `let n: i64? = parse(text) catch: recover none`.

**`else` replaces it**, as for an optional: `parse(text) else 0`, or `else return`. When the
call returns `T?!`, `try` passes the failure on and the `else` handles the absence, as in
`value_of` above.

Failures are checked in the order the expression is evaluated, left to right, and the first
one stops the expression. There is no automatic undo of what already happened; use `errdefer`
([Control flow](04-control-flow.md#defer-and-errdefer)) to release what was acquired.

## Error codes

```luce
pub let not_found = ErrorCode.package(1)
```

An error code is a number that belongs to its package: `ErrorCode.package(n)` combines the
package's identity with `n`, so two packages can both use code 1 without confusion. Each `n`
may be used once per package, and the call is only allowed as a top-level constant. Compare
codes with `==`: `failure.code == not_found`, or `failure.code == files.missing` for a code
another package exports.

A failure that reaches the end of `main` is printed as `error: file:line:column: message
(code n)`, where the position is where it was raised and `n` is the number given to
`ErrorCode.package`, and the exit status is 1.

### Error messages

The message is a `str`. A string literal is the usual choice. To include details, format
into a local buffer:

```luce
func open_layer(index: i64) -> !:
    var buffer: u8[128]
    error(missing, try strings.format(buffer, f"layer {index} does not exist"))
```

`error` copies a message that is not a literal before the function returns and before any
`defer` runs, much as a Python exception keeps its own message. So a message made in the
function's own buffer, or from storage that cleanup frees, is safe:

```luce
func meshed(job: Job) -> Mesh!:
    let outcome = job.run()
    defer outcome.release()        # frees the text of the failure's message
    return try outcome.get()       # the caller still reads that message whole
```

The copy lasts until the handler that catches the error finishes, when its `catch` block
ends or its `else` takes the alternative. Inside the handler, `failure.message` can be read,
passed to a function, bound to a name, or raised again as it is or formatted into a new
message. It cannot leave the handler: the compiler rejects returning it, recovering it, and
storing it, or a struct or tuple holding it, in a variable declared outside the handler, a
global, a field reached through a pointer, or a container such as a list. Copy it to keep it:

```luce
var last_error: str = ""

func remember(path: str) -> !:
    load(path) catch failure:
        if last_error.length > 0:
            strings.release(last_error)
        last_error = try strings.copy(failure.message)   # yours until you release it
```

Without the copy, the compiler says "a caught failure's message lives until its handler
finishes and must not be stored where it outlives the handler". Messages longer than 4 KiB
are cut short with `…`.

### Where an error was raised

`failure.at` names the statement that raised the error, as `file:line:column`, the same text
a trap prints for a statement. It is the last line of a Python traceback, without the frames
above it:

```luce
let refused = ErrorCode.package(1)

func check(n: i64) -> i64!:
    if n < 0:
        error(refused, "below zero")
    return n

func doubled(n: i64) -> i64!:
    return try check(n) * 2

pub func main(arguments: str[]) -> i32:
    let v = doubled(-1) catch failure:
        print(f"{failure.at}: {failure.message}")
        recover 0
    print(f"{v}")
    return 0
```

```output
main.lucb:5:9: below zero
0
```

- `try` and `error(failure)` pass the error on with its `at` unchanged. `error(failure.code,
  failure.message)` raises a new error where it stands, so its `at` is the handler's line.
- An error the language raises itself, `memory.exhausted` from `new` or `invalid_utf8` from
  `str(bytes)`, names the statement that asked for it.
- A position is relative to the project's root (the directory with `package.prisma`); a
  `--debug` build keeps the full path.
- `at` is static text that lives as long as the program, so, unlike `failure.message`, it may
  be kept after the handler without a copy.
- It is one position, not a stack trace: an error raised inside a library names the library's
  line. `called_at`, below, names yours.

An error raised in a library is mostly wanted at the line that called the library.
`failure.called_at` is that line: the outermost call into another package that the error
came out of. Here the standard `strings` module raises, and `called_at` names the `try` in this
program:

```luce
import strings

func cell_value(cell: str) -> f32!:
    let x = try strings.parse_f32(cell)
    return x * 2.0

pub func main(arguments: str[]) -> i32:
    let v = cell_value("1.5x") catch failure:
        print(f"{failure.message}")
        print(f"raised at {failure.at}")
        print(f"called at {failure.called_at}")
        recover 0.0
    print(f"{v}")
    return 0
```

```output
the text goes on past the number
raised at std/strings/floats.lucb:38:9
called at main.lucb:4:5
0.0
```

- The call counts when it names a function or method of another package, by `try` or as a
  handler's operand. A call through a function value or an interface names no package and
  is passed over.
- The outermost such call is kept: when your code calls a library that calls another
  library that raises, it is your line. `try` and `error(failure)` further up keep it
  until another package's caller replaces it.
- An error that never came out of another package, and one raised anew with
  `error(failure.code, failure.message)`, has `called_at` equal to `at`.
- An error that escapes a fallible `main` prints `called_at` on a second line when it
  differs: `error: std/strings/floats.lucb:38:9: the text goes on past the number (code 51)`,
  then `  called at main.lucb:4:5`.
- It costs a few instructions on the failure branch of a call into another package, and
  nothing on any other path.

## Out of memory

`new` and `memory.allocate` fail with the code `memory.exhausted` when the allocator has no room. This is
an ordinary failure, handled like any other. With an allocator over a fixed buffer, running
out is an expected condition, not a disaster.

## Traps

A trap reports a bug and ends the program. It prints `trap: file:line:column: reason` to
standard error and exits with status 1. The location is the statement being run. The
compiler inserts traps for:

- integer overflow in `+`, `-`, `*`, `//` and `%`, and shifting by the type's width or more;
- division by zero;
- indexing or slicing past the end of an array, span or text;
- a checked conversion `T(x)` that does not fit, including an integer-backed enum from an
  undeclared value;
- `else trap(...)` on an empty optional, and a failed `assert`;
- a null pointer arriving from C where the declaration says it cannot be null;
- invalid UTF-8 in the arguments of a `main` that takes `str[]`;
- running out of stack.

`trap(message)` traps on purpose. A trap cannot be caught, and `defer` blocks do not run: once
an invariant is broken, the program stops instead of continuing in an unknown state.

## Assertions

```luce
assert(index < count)
assert(header.version == 2, "only version 2 headers are supported")
```

`assert` traps when its condition is false, with the condition and the optional message:
`trap: main.lucb:27:5: assert failed: arguments.length > 5: needs more arguments`. Assertions
are kept in every build, optimised or not. The condition must not have side effects.

At the top level of a file, outside any function, `assert` is checked by the compiler, as C's
`static_assert` is:

```luce
assert(memory.size_of(Header) == 32, "Header must match the file format")
```
