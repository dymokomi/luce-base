# Testing

Tests are written in the language itself, as `test` blocks, and run by the compiler.
[Reference: Tests](../../language/base.md#16-5-tests).

## Test blocks

```luce
import testing

let full = ErrorCode.package(1)

pub struct Stack:
    var items: i64[8]
    var count: usize

    pub func push(value: i64) -> !:
        if self.count == self.items.length:
            error(full, "the stack is full")
        self.items[self.count] = value
        self.count += 1

    pub func pop() -> i64?:
        if self.count == 0: return none
        self.count -= 1
        return self.items[self.count]

test "push then pop gives the value back":
    var s = Stack()
    try s.push(3)
    assert(s.pop() == 3)
    assert(s.pop() == none)

test "a full stack refuses":
    var s = Stack()
    for i in 0..<8: try s.push((i64)i)
    var refused = false
    s.push(9) catch failure:
        refused = failure.code == full
    testing.expect(refused, "the ninth push fails")
```

```sh
luce-base test stack.lucb
```

```text
ok    push then pop gives the value back
ok    a full stack refuses
2 passed
```

- **A test is a declaration**, `test "description":` followed by a block. It can sit next to
  the code it tests and use the module's private declarations.
- **A test fails, or the run stops.** A test fails when an error leaves it (from `try` or
  `error(...)`), or when an `assert` written in the test itself is false. It is reported as
  `FAIL` with a position and a message, and the other tests still run. Anything else that
  traps (an overflow, an index out of range, an `assert` inside a function the test calls,
  a `testing.expect`) stops the run there, naming the file and line.
- `luce-base build` leaves tests out of the program.

A failing run reports each failure under its test and counts them; the status is 1:

```luce
test "two and two":
    assert(2 + 2 == 5, "arithmetic")

test "still runs":
    assert(true)
```

```text
FAIL  two and two
      sums.lucb:2:5: assert failed: 2 + 2 == 5: arithmetic
ok    still runs
1 passed
1 failed
```

A failed `assert` is reported where it stands, with its condition; a test that fails by an
error is reported at the test, with the error's message.

### Checking values

`assert(condition)` and `assert(condition, "message")` are the usual check: a failure names
the line and the condition. The `testing` module adds checks that also print the values:

| Function | Fails when |
| --- | --- |
| `testing.expect(condition, message)` | `condition` is false |
| `testing.expect_equal(actual, expected, message)` | two integers differ |
| `testing.expect_text(actual, expected, message)` | two strings differ |

A failure names the test's own line, for example
`stack.lucb:37: pop returns what was pushed: expected 2, got 1`.

### What a test runs with

Each test runs with a fresh 1 MiB fixed-buffer allocator as its current allocator, so
`new` in a test never touches the system heap and nothing leaks from one test into the next.
`testing.seed()` gives a number that is the same on every run of the same test, and
`testing.random()` a reproducible sequence from it, for tests that need random data.

A test that changes a global variable affects the tests after it; keep tests independent of
globals, or reset them.

## Which tests run

`luce-base test file.lucb` runs the tests of the file and of every module of the same package
that it imports, directly or not: module by module, each module's tests in the order they
are declared, and an imported module before the module importing it. Tests in a dependency,
another package, do not run; that package runs its own.

In a project, `luc test` runs the tests of every module of the project, imported or not: it
tests the entry module with `--package`, which adds every other `.lucb` module under `src/`,
in the order of their paths. For a project whose `src/main.lucb` imports `helper` and declares
`test "in main"`, whose `src/helper.lucb` declares `test "in helper"`, and whose
`src/extra.lucb`, which nothing imports, declares `test "in extra"`, `luc test` prints:

```text
ok    in helper
ok    in main
ok    in extra
3 passed
```

`luce-base test src/main.lucb --package` does the same outside `luc`.

## Tests in their own files

Tests can live outside the source, so a package's shipped code stays small. For the module
`src/parse.lucb`, the directory `tests/parse/` holds test files, listed in order in a `TESTS`
file:

```text
src/
  parse.lucb
tests/
  parse/
    TESTS          basic.lucb
                   errors.lucb
    basic.lucb
    errors.lucb
```

When `parse` is tested, its test files are added to the module as if they were part of it, so
they can use its private declarations. A build never reads them, and `luc install` leaves the
`tests/` directory out.

For a module that is a directory of files, `src/mime/parse/`, the tests go in
`tests/mime/parse/` in the same way.

### Test programs

Other files under `tests/`, such as programs that exercise the package from outside, import
the package's modules by their module names, `import parse`, as code inside `src/` does. A
helper under `tests/` is imported by its own name.
