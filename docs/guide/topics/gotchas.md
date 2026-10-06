# Gotchas

The things most likely to surprise you, especially coming from Python or C. Each links to the
chapter that explains it.

## Names

- **You cannot reuse a name in an inner scope.** A local or parameter cannot take the name of
  another visible local, a parameter, an import or a top-level declaration of the file.
  Python allows this; Base reports "already in scope". [Syntax](01-syntax.md#where-a-name-is-visible)
- **An import takes its name.** After `import c`, a parameter or local named `c` is an
  error, and the same goes for every imported module name.
- **Some ordinary-looking words are reserved**: `local`, `type`, `test`, `in`, `with`,
  `new`, `free`, `none`. [Syntax](01-syntax.md#names-you-cannot-use)
- **The built-in function and type names cannot be declared**: `let format = ...`,
  `func print(...)` and a parameter named `str` are errors. A struct field may use them.
- **A file cannot be named after a standard module**: `c.lucb`, `io.lucb`, `memory.lucb`,
  `os.lucb`, `strings.lucb` and the others are refused.
- **A file name must be a valid identifier**: `color_space.lucb`, not `color-space.lucb`.
- **A package is not a module.** `import luce_std` is an error; import one of its modules:
  `from luce_std import files`. [Modules and packages](10-modules-and-packages.md#imports)
- **A package called `luce-std` is written `luce_std` in code.**

## Layout and syntax

- **Tabs are errors**; indent with four spaces. [Syntax](01-syntax.md#layout)
- **Assignment is a statement**, not an expression, and there is no `++` or `--`. Use
  `while let` where C would assign in a condition. [Expressions](03-expressions.md#assignment)
- **Comparisons do not chain.** `a < b < c` is not `a < b and b < c`.
- **`not` binds tightly**: `not x == 5` means `(not x) == 5`. Write `x != 5`.
  [Expressions](03-expressions.md#comparison-and-logic)
- **Conditions must be `bool`.** `if count:` and `if pointer:` are errors.
- **`&` binds more tightly than `==`**, unlike C: `flags & mask == 0` is
  `(flags & mask) == 0`, which is usually what you meant.

## Numbers

- **Overflow traps, in every build.** `+`, `-` and `*` on integers stop the program when the
  result does not fit, including in `--release`. Use `+%` to wrap, `+|` to saturate, `+?` to
  get an optional. [Expressions](03-expressions.md#arithmetic)
- **`//` rounds toward zero**, as C does: `-7 // 2` is `-3`, where Python gives `-4`. `%`
  matches: `-7 % 2` is `-1`.
- **`/` is only for floats.** Integers divide with `//`.
- **`u8(x)` and `(u8)x` differ.** `u8(300)` traps; `(u8)300` is `44`.
  [Expressions](03-expressions.md#conversions)
- **Literal arithmetic is done in the type it is assigned to**: `let x: u8 = 200 + 100`
  traps, because 300 does not fit a `u8`. In a cast, `(u8)(200 + 100)`, the sum is computed
  as `i64` first and gives 44.
- **Integers and floats never convert by themselves.** Write `f64(count)`.
- **Atomic arithmetic wraps** instead of trapping, as C's does.
  [Concurrency](12-concurrency.md#atomics)

## Text

- **`length` counts bytes**, not characters: `"café".length` is 5.
  [Types](02-types.md#text)
- **A `str` cannot be indexed** by position, and **there is no `+`** to join strings. Use
  `strings.format` into a buffer, or a `strings.Builder`.
- **A formatted string is not a value**: `let s = f"..."` is an error. It goes to `print`,
  `strings.format`, a `Writer` or a `fmt` parameter. [Types](02-types.md#formatted-strings)
- **A format specification takes a number or text**: `{n:x}` and `{name:>8}` work, but a value
  that shows itself through `display` takes none; write `{value}`.
- **`print` and C's `printf` can appear out of order**, because `printf` is buffered.
  [C](13-c.md#variadic-functions)
- **`main(arguments: str[])` traps on an argument that is not UTF-8.** Take `c.str[]` for
  file paths. [Functions](05-functions.md#the-entry-point)

## Types and values

- **Structs are copied on assignment**, not shared as Python objects are. Pass a pointer to
  share one. [Structs](06-structs-and-enums.md#structs)
- **Arrays nest as in C**: `u8[3][2]` is three arrays of two bytes.
  [Types](02-types.md#arrays)
- **A pointer to an array is indexed through `*`**: with `p: u8[4]*`, write `(*p)[1]`. `p[1]`
  indexes the pointer itself. [Memory](09-memory.md#allocating-and-freeing)
- **An optional must be unwrapped before use**, including an optional pointer: `node.next.value`
  does not compile when `next` is `Node*?`. [Errors](08-errors.md#optionals)
- **A `match` on an integer, character or string needs a `_` arm**, and so does a `match` on
  an integer-backed enum, since a combination of flags is not a case.
  [Control flow](04-control-flow.md#match)
- **`none` cannot be an enum case**, since `.none` means an empty optional.
- **A union has no constructor.** Declare it and assign a member.
  [Unions](06-structs-and-enums.md#unions)
- **The vector broadcast `f32[4](x)` needs the type written out**; it does not work through a
  type alias. [Types](02-types.md#vectors)
- **`hash` values change between runs**; do not store them.

## Functions and methods

- **A method that changes its receiver needs a changeable one**: calling it on a `let` is an
  error, and the message names the method. Nothing marks such a method; its body does.
  [Functions](05-functions.md#methods)
- **A `static func` is called through the type**: `Point.origin()`, not `p.origin()`. A
  function in a type without `static` is a method, even when it never uses `self`.
  [Functions](05-functions.md#methods)
- **Default argument values must be constants.**
- **Lambdas cannot capture local variables.** Pass state as a parameter or a context pointer.
  [Functions](05-functions.md#function-values)
- **A generic function can only use what its constraints promise.** `var x: T` with no value
  is an error for an unconstrained `T`. [Generics](07-generics-and-interfaces.md#generic-functions-and-types)

## Errors

- **Every fallible call must be handled** with `try`, `catch` or `else`; it cannot be ignored,
  even with `_ = ...`. [Errors](08-errors.md#handling-a-failure)
- **A `catch` handler's `recover` value must have the type of the expression.** For a call
  that returns nothing, the handler needs no `recover`.
- **One `try` covers the whole expression after it**, every fallible call inside it.
- **An error message cannot point into a local buffer**; it must outlive the function. A
  string literal always does. [Errors](08-errors.md#error-messages)
- **A trap cannot be caught**, and `defer` does not run on a trap.
- **`defer` sees variables as they are when it runs**, at the end of the block, not when it
  was written (unlike Go's argument evaluation). [Control flow](04-control-flow.md#defer-and-errdefer)

## Memory

- **Memory comes from the current allocator**, which `with` changes. A type that allocates
  must free with `free(...) in self.allocator`, not the current one.
  [Memory](09-memory.md#allocators)
- **Each new thread starts with `memory.heap`** as its current allocator, not its parent's.
  [Concurrency](12-concurrency.md#threads)
- **Use after free and double free are not detected in a normal build.** Build with
  `--profile diagnostic`, or AddressSanitizer through the C backend, to find them.
  [Memory](09-memory.md#finding-memory-bugs)

## Tools

- **`luce-base test` runs the tests of one package**: the file's and those of the modules of
  its package it imports, but never a dependency's; with `--package`, as `luc test` runs it,
  every module of the package's too. [Testing](11-testing.md#which-tests-run)
- **A test that fails by an error or a false `assert` in its own body is reported and the
  run continues; any other trap, an `assert` in a function it calls included, ends the run.**
- **`--lib -o name` writes `name.a` and `name.h`**: pass `-o libname`, not `-o libname.a`.
  [C](13-c.md#c-calling-base)
- **`-W` turns warnings on**; without it, unused code is not reported. `check -W` exits with
  status 1 if it warned. [Building](16-building.md#warnings)
