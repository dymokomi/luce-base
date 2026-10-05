# Syntax and names

This chapter covers how source files are written: layout, comments, names and the rules
for where a name is visible. [Reference: Source text](../../language/base.md#3-source-text).

## Files

A source file is UTF-8 text with the suffix `.lucb`. Names in code are ASCII (letters,
digits and `_`, not starting with a digit, at most 128 characters); text and comments may
use any Unicode. The compiler rejects a few invisible characters in source that can make
code read differently from how it runs: NUL bytes, the Unicode direction overrides, and
characters that look like ASCII punctuation.

## Layout

Blocks are marked by indentation, as in Python, with two differences: the indent is always
four spaces, and tabs are an error ("tabs are not allowed; use four spaces").

```luce
pub func main(arguments: str[]) -> i32:
    let cached = arguments.length > 1
    if cached: print("a block of one simple statement can follow the colon")
    if not cached:
        print("a longer block goes on the following lines")
        print("indented four spaces")
    return 0
```

```output
a longer block goes on the following lines
indented four spaces
```

- A line ending in `:` opens a block. The block is either one simple statement on the same
  line, or the following lines indented four spaces. A same-line block cannot hold another
  `if`, loop or `match`.
- There are no semicolons. A statement ends at the end of its line, except inside `( )`,
  `[ ]` or `{ }`, where a long expression can continue onto further lines, as in Python.
- A trailing comma is allowed in lists that span several lines: parameters, arguments,
  arrays, tuples.
- `luce-base fmt file.lucb --write` (or `luc fmt` in a project) formats a file. There is
  one layout and the formatter decides it, as `gofmt` does for Go.

## Comments

```luce
# An ordinary comment, to the end of the line.

## A documentation comment, for the declaration that follows.
## Several lines form one comment, written in Markdown.
pub func area(width: f64, height: f64) -> f64:
    return width * height
```

A `##` comment directly above a declaration documents it, the role a docstring plays in
Python. A `##` block at the very top of a file, followed by a blank line, documents the
module.

## Naming

By convention, types are `PascalCase` (`Point`, `HttpClient`, treating an acronym as a
word) and everything else is `snake_case`: functions, variables, fields, enum cases,
modules and packages. The conventions are not enforced; they are what the standard library
and the tools follow.

## Where a name is visible

- **Inside a file, top-level declarations can be used before they appear.** Functions,
  types and constants refer to each other in any order, as in Python.
- **Inside a function, a local is visible from its declaration onward.** Using it earlier
  is an error.
- **A block introduces a scope.** The variable of a loop, an `if let`, a `match` arm or a
  `catch` handler exists only inside that block.
- **No shadowing.** A local or parameter cannot take the name of another visible local, a
  parameter, an import, or a top-level declaration of the same file. Python and Rust allow
  this; Base does not, so a name in a function always refers to one thing.

```luce
pub func main(arguments: str[]) -> i32:
    let total = 1
    if total > 0:
        let doubled = total * 2
        print(f"{doubled}")
    return 0
```

```output
2
```

Writing `let total = 2` inside the `if` would be the error "`total` is already in scope".

## Names you cannot use

**Keywords** cannot be used as names:

```text
and as asm break catch const continue defer elif else enum errdefer
extern false for free from func if import in interface let
match new none not or pub recover return self struct test
true try type union var volatile while with
```

`type` is the one most likely to catch you out as a variable name.

**The language's built-in names** cannot be declared either, as a variable, parameter,
function or type: the built-in functions `assert`, `error`, `trap` and `print`, and the
built-in types `bool`, `i8` to `i64`, `u8` to `u64`, `isize`, `usize`, `f16`, `f32`, `f64`,
`char`, `str`, `unit`, `never`, `void`, `fmt`, `Error` and `ErrorCode`. Declaring
`let print = 1` is the error "this name belongs to the language". A member may use one of
these names, a field, a method or an enum case, since it is always reached through its
value or its type: `report.print()` is fine. Everything else the language offers lives in
a standard module you import, as in Python: `memory.size_of(T)`, `strings.format(...)`.

**Standard module names** belong to the standard modules: a file cannot be named
`memory.lucb`, `io.lucb`, `c.lucb`, `os.lucb` and so on.

Some words are reserved only in one position: `local` before a module-level `var`, `export`
before a declaration, `extend` before a type name, `handle` and `destroy` in a handle
declaration, attribute words such as `inline` or `section` before a declaration, and `out`
and `blocking` in `extern` declarations. Elsewhere they are ordinary names.
