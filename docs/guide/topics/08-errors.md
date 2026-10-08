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
- An error is an `Error` value with two fields: `code`, an `ErrorCode`, and `message`, a
  `str`.

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
    error(failure.code, failure.message)
```

The handler runs with the error named, and must end in one of: `recover value` (the value of
the whole expression), `return`, `error(...)` (failing the function, possibly with the same
error), `trap(...)`, or `break`/`continue` inside a loop. `catch:` without a name ignores the
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

A failure that reaches the end of `main` is printed as `error: message (code n)`, where `n` is
the number given to `ErrorCode.package`, and the exit status is 1.

### Error messages

The message is a `str`. A string literal is the usual choice. To include details, format
into a buffer the caller provides, or into memory from an arena that outlives the call; the
compiler rejects a message that names a local buffer: "an error message must not name a local;
format into a buffer that outlives the function".

`error` copies a message that is not a literal before any `defer` runs, much as a Python
exception keeps its own message. So a message made from storage that cleanup frees is safe:

```luce
func meshed(job: Job) -> Mesh!:
    let outcome = job.run()
    defer outcome.release()        # frees the text of the failure's message
    return try outcome.get()       # the caller still reads that message whole
```

The copy lasts until the handler that catches the error finishes, when its `catch` block
ends or its `else` takes the alternative. Inside the handler, `failure.message` can be passed on
as it is or formatted into a new message. Keep a copy of your own if you need the text after
the handler. Messages longer than 4 KiB are cut short with `…`.

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
