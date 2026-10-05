# 4. Functions

## Declaring and calling

```luce
func area(width: f64, height: f64) -> f64:
    return width * height

func factorial(n: u64) -> u64:
    if n <= 1: return 1
    return n * factorial(n - 1)

pub func main(arguments: str[]) -> i32:
    print(f"{area(3.0, 4.5)} {factorial(20)}")
    return 0
```

```output
13.5 2432902008176640000
```

- `func` declares a function, where Python writes `def`.
- **Every parameter has a type**, and so does the result, after `->`. A function with no
  `->` returns nothing.
- Functions in a file can call each other in any order, as in Python.
- A function is private to its file unless it is marked `pub`.
- **There is no overloading.** One name means one function; variations get their own
  names.

## Defaults and named arguments

These work like Python's default values and keyword arguments:

```luce
func greet(name: str, greeting: str = "Hello", excited: bool = false):
    print(f"{greeting}, {name}{"!" if excited else "."}")

pub func main(arguments: str[]) -> i32:
    greet("Ada")
    greet("Grace", excited = true)
    greet(greeting = "Welcome", name = "Linus")
    return 0
```

```output
Hello, Ada.
Hello, Grace!
Welcome, Linus.
```

A parameter with a default can be left out. Any argument can be passed by name, with
`name = value` (Python writes `name=value`), after the positional ones and in any order.

## Several results

A function can return several values as a *tuple*, and the caller can unpack them, as in
Python:

```luce
func divide(value: i64, divisor: i64) -> (i64, i64):
    return (value // divisor, value % divisor)

pub func main(arguments: str[]) -> i32:
    let (quotient, remainder) = divide(17, 5)
    print(f"17 = 5 * {quotient} + {remainder}")
    let pair = divide(9, 2)
    print(f"{pair.0} {pair.1}")
    return 0
```

```output
17 = 5 * 3 + 2
4 1
```

A tuple's parts are reached by position, `pair.0` and `pair.1`. When the results deserve
names, return a struct instead ([Chapter 5](05-structs-and-enums.md)).

## Functions as values

A function can be passed to another function and stored in a variable. Its type is written
`func(Parameters) -> Result`. A *lambda*, written `(x) => x + 1`, is a small function
defined in place, like Python's `lambda x: x + 1`:

```luce
func apply(f: func(i64) -> i64, x: i64) -> i64:
    return f(x)

func double(x: i64) -> i64:
    return x * 2

pub func main(arguments: str[]) -> i32:
    print(f"{apply(double, 21)} {apply((x) => x + 1, 41)}")
    return 0
```

```output
42 42
```

A lambda cannot use the local variables of the function it is written in. In Python, a
lambda that refers to a variable from its surroundings keeps it alive; Base has no such
closures, because keeping a variable alive after its function returns would need memory
that nobody asked for. When a callback needs data, pass the data to it as an argument.

## Functions that take formatted text

A parameter of type `fmt` accepts a formatted string. And a parameter whose default is
`luce.location` receives the file, function and line of the *caller*. Together they make a
logging function:

```luce
import luce
from io import Location

func log(message: fmt, at: Location = luce.location):
    print(f"[{at.function}:{at.line}] {message}")

pub func main(arguments: str[]) -> i32:
    let count = 3
    log(f"{count} items")
    return 0
```

```output
[main:9] 3 items
```

(`import` is covered in [Chapter 8](08-modules-and-packages.md).)

## Results you don't use

A function's result can be ignored. Writing `_ = compute()` makes it clear to a reader
that you meant to, as `_ = ...` does in Python. A function that can *fail* is different:
the failure must be dealt with before the result can be dropped.
[Chapter 6](06-absence-and-failure.md) covers that.

## Where next

[Chapter 5](05-structs-and-enums.md) covers defining your own types.
