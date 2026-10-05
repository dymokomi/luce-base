# 1. Hello, Base

## Install

On macOS or Linux:

```sh
curl -fsSL https://luce.luciaos.com/install.sh | sh && . "$HOME/.local/luce/env"
```

On Windows, in PowerShell:

```sh
irm https://luce.luciaos.com/install.ps1 | iex
```

This puts the compiler, `luce-base`, and the project tool, `luc`, on your `PATH`. The
compiler uses the C toolchain on your machine to assemble and link, so it needs one: the
Xcode command line tools on macOS (`xcode-select --install`), `gcc` or `clang` on Linux,
and MSYS2's UCRT64 `gcc` on Windows. The installer tells you if it is missing. Check that it
worked:

```sh
luce-base --version
```

## A first program

Save this as `hello.lucb`:

```luce
pub func main(arguments: str[]) -> i32:
    print("Hello, Base!")
    return 0
```

```output
Hello, Base!
```

Build it and run it:

```sh
luce-base build hello.lucb -o hello
./hello
```

If you know Python, most of this reads as you would expect:

- **Indentation marks blocks**, as in Python: a line ending in `:` opens a block indented
  four spaces.
- **`main` is where the program starts**, as in C. It receives the command-line arguments,
  like Python's `sys.argv`, and returns the exit status. `str[]` means "a sequence of
  strings"; [Chapter 7](07-memory.md) explains the `[]`.
- **Types are written after names**, as in Python's type hints, `arguments: str[]`, and a
  function's result type after `->`. Unlike Python's hints, they are checked when the
  program compiles.
- **`pub` makes a declaration visible** to other files. `main` must be `pub`.

`luce-base build` produces a native executable, `hello`, which runs on its own.

## Formatted strings

`print` also takes a formatted string, written as in Python with an `f` before the quote:

```luce
pub func main(arguments: str[]) -> i32:
    let language = "Base"
    let year = 2026
    print(f"Hello from {language}, {year}.")
    print(f"There are {arguments.length} arguments; the first is {arguments[0]}.")
    return 0
```

```output
Hello from Base, 2026.
There are 1 arguments; the first is ./program.
```

The braces hold any expression, and after a colon a format specification as in Python:
`{value:x}` for hexadecimal, `{value:>8}` to pad to a width, `{price:.2f}` for two decimals.

## A project

A single file is enough for a small program. A program with several files or with
dependencies is a *project*, and `luc` creates one:

```sh
luc new greeter --tool
cd greeter
luc run
```

`luc new` writes three files:

```text
greeter/
  package.prisma      the project's name, version, kind and dependencies
  src/main.lucb       the entry point
  .gitignore
```

`package.prisma` describes the project, much as `pyproject.toml` does for Python:

```text
#prisma 4.0
def package "greeter" {
    str owner = "you"
    str version = "0.1.0"
    str kind = "tool"
    str language = "luce-base"
    str entry = "src/main.lucb"
}
```

`luc run` builds the program into `build/greeter` and runs it. The other everyday commands:

| Command | What it does |
| --- | --- |
| `luc build` | build without running; `--release` optimises |
| `luc test` | build and run the tests |
| `luc check` | type-check without building |
| `luc fmt` | format the sources |

`--tool` makes a command-line program. `--application` makes a desktop application and
`--package` a library for other projects to use. [Chapter 8](08-modules-and-packages.md)
covers projects and dependencies.

## The compiler on its own

For single files, `luce-base` works without `luc`:

| Command | What it does |
| --- | --- |
| `luce-base build file.lucb -o out` | build an executable |
| `luce-base build file.lucb --release -o out` | build it optimised |
| `luce-base check file.lucb` | type-check only |
| `luce-base test file.lucb` | build and run the file's tests |
| `luce-base fmt file.lucb --write` | format the file in place |

Run `luce-base` with no arguments for the full list.

## Where next

[Chapter 2](02-values.md) covers the building blocks: bindings, numbers and text.
