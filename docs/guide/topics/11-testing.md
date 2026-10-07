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
  a `testing.expect`) stops the run there: the test is reported as `FAIL`, the trap's line
  follows, then the count of the tests run so far.
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
error is reported at the test, with the error's message. Positions name the file relative to
the project root, the directory with `package.prisma`, as in the rest of this guide.

A trap ends the run, as a trap ends a program. Like an unhandled exception in a pytest
worker, it takes the test down with it, but the report still says which test and how far the
run got:

```luce
func third(items: const i64[]) -> i64:
    return items[2]

test "two and two":
    assert(2 + 2 == 4)

test "reads past the end":
    let pair: i64[2] = [1, 2]
    _ = third(pair)

test "never reached":
    assert(true)
```

```text
ok    two and two
FAIL  reads past the end
trap: sums.lucb:2:5: index out of bounds
1 passed
1 failed
```

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

`luce-base test src/main.lucb --package` does the same outside `luc`. A library with no
`src/main.lucb` and no module named after the package is tested the same way, from its first
module. When the package also has Luce modules (`.luc`), `luc test` runs their tests with
`luce test --package` as well, so a test in either language is never left out. `luc test`
then runs the package's test programs (below) and ends with one total. A package with no
test at all, no `test` block and no test program, fails with "no tests found".

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

A check that needs a process of its own, fixtures read from disk, a server, a window, the
GPU or a comparison with another tool, is a program instead: a directory under `tests/`
holding a `main.lucb` (or a Luce `main.luc`) with `pub func main`.

```text
tests/
  roundtrip/
    main.lucb      pub func main(arguments: str[]) -> i32
    sample.bin
    expected       what main prints, exactly
```

`luc test` finds every directory `tests/<name>/` with a `main`, as pytest finds `test_*.py`
files, builds it with the package's dependencies and runs it from the package root, as `luc
test` itself runs; `LUC_TEST_DIR` names its own directory, for the fixtures beside it. It
passes when it exits with status 0 and, if its directory has an `expected` file, when its
standard output is exactly that file; one that exits 0 after printing a line `skip: reason`
is skipped. Programs run in parallel, each with `HOME` and `LUC_HOME` pointing at a fresh
scratch directory, removed afterwards, so a test never touches your own settings or
keychain, and with `LUCE` and `LUCE_BASE` naming the compilers `luc test` uses. They build
into `build/luc-test/<name>/`; `build/tests/<name>/` is the program's own scratch space,
which luc makes a directory and otherwise leaves alone.

```text
ok    push then pop gives the value back
1 passed
ok    tests/roundtrip
total: 2 passed, 0 failed (1 test block, 1 program)
```

A program imports any module of the package, private ones too, by its module name, `import
parse`, as code inside `src/` does, and a helper beside it by its own name. One with a `package.prisma` of
its own is a separate package, for dependencies only the test needs, and imports the
package's public modules as any dependent does. A directory under `tests/` without a `main`
is data, and a directory with a `TESTS` file holds test fragments, as above. `luc test
--list` names the programs and the test blocks without running them.
