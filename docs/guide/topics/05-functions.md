# Functions and methods

[Reference: Functions and methods](../../language/base.md#9-functions-and-methods).

## Declaring functions

```luce
pub func clamp(value: f64, minimum: f64, maximum: f64) -> f64:
    if value < minimum: return minimum
    if value > maximum: return maximum
    return value
```

- Parameters and the result have written types. Without `->`, the function returns
  nothing (its result type is `unit`). `-> !` means "returns nothing, and may fail"; see
  [Errors](08-errors.md).
- A function is private to its module unless it is `pub`. A `pub` function's signature may
  only mention `pub` types.
- **There is no overloading**: one name in a scope is one function. Functions that do
  similar things get different names, `Image.open` and `Image.decode`.
- **Base functions do not take a variable number of arguments.** (Calling C's variadic
  functions is possible; see [C](13-c.md).)
- Recursion works; running out of stack is a trap with a message, not a crash.
- A function that never returns, such as one that always traps or exits, declares
  `-> never`.

## Parameters

A parameter is a `let` in the function's body: it cannot be reassigned. What a parameter
type passes:

| Parameter | What is passed |
| --- | --- |
| a number, a struct, an array `T[N]` | a copy |
| a span `T[]`, a `str` | a view of the caller's elements; nothing is copied |
| a pointer `T*` | the address; the function can change the caller's value through it |

There is no "pass by reference" keyword; pass a pointer. A pointer or span parameter can be
marked `noalias` (`out: noalias f32[]`) to promise that it does not overlap any other
parameter during the call, which lets the compiler keep values in registers; breaking the
promise is undefined behaviour.

## Defaults and named arguments

```luce
func render(scene: Scene*, samples: u32 = 64, denoise: bool = true) -> Image!:
    ...

let image = try render(&scene, samples = 256, denoise = false)
```

- A default must be a constant. It is filled in at each call site.
- Any argument can be given by name, `name = value`, as Python's keyword arguments are,
  after the positional ones. Python writes `name=value`; Base writes `=` with spaces, as the
  formatter lays it out.
- Giving an argument twice, an unknown name, or leaving out a parameter without a default
  are compile errors.

## Several results

```luce
func divide(value: i64, divisor: i64) -> (i64, i64):
    return (value // divisor, value % divisor)

let (quotient, remainder) = divide(17, 5)
```

A tuple result replaces C's "out" pointer parameters for the common case. A result whose
parts deserve names is better as a struct.

## Formatted text parameters

A parameter of type `fmt` accepts a formatted string (`f"..."`) or a `str`. In the function
it can only be passed on: to `print`, to `strings.format`, to a `Writer`, or to another `fmt`
parameter. It cannot be stored or compared. The caller formats the text before the call.

A parameter whose default is `luce.location` (of type `io.Location`) receives the caller's
source position: `file`, `function` and `line`. With a `fmt` parameter, this is how a
logging or checking function records where it was called, the job a macro does in C:

```luce
import luce
from io import Location

func log(message: fmt, at: Location = luce.location):
    print(f"{at.file}:{at.line}: {message}")
```

`luce.file`, `luce.line` and `luce.function` are also available separately, anywhere.

## Function values

A function's type is written `func(Parameter types) -> Result`. A value of that type is a
plain C function pointer, never null; `(func(...) -> R)?` may be null. It can hold:

- a function, by name;
- a method, named through its type: `Counter.doubled` takes the receiver as its first
  parameter (a pointer, as described under Methods below);
- a lambda, `(x) => x + 1`, that uses no local variables of the function around it.

There are no closures: a lambda cannot capture local variables. A callback that needs
state takes it as a parameter, usually a pointer, as C callbacks take a `void*` context. A
top-level `let` naming a function, `pub let add = math.add`, makes the function available
under another name, with its defaults and named arguments.

## Methods

A function declared inside a struct, enum or union is a *method*. Inside it, `self` is the
value the method was called on; `self` is not written in the parameter list.

```luce
struct Counter:
    pub var count: u32

    func add(amount: u32):
        self.count += amount

extend Counter:
    func doubled() -> u32:
        return self.count * 2

    func reset():
        self = Counter(count = 0)

func bump_through(counter: Counter*):
    counter.add(10)

func twice(f: func(const Counter*) -> u32, value: Counter) -> u32:
    return f(&value) * 2

pub func main(arguments: str[]) -> i32:
    var counter = Counter(count = 1)
    counter.add(2)
    bump_through(&counter)
    print(f"{counter.count} {counter.doubled()}")
    print(f"{twice(Counter.doubled, counter)}")
    counter.reset()
    print(f"{counter.count} {Counter(count = 5).doubled()}")
    return 0
```

```output
13 26
52
0 10
```

- **The receiver is passed by pointer**, not copied: a method that only reads receives
  `self` as a `const Counter*`, and one that changes the value as a `Counter*`. So calling a
  method on a large struct costs nothing, and a change is visible to the caller.
- **A method changes its receiver** when its body assigns to `self` or one of its fields,
  calls a method that does, or hands out `&self.field` where a `T*` is wanted, as an
  argument or as its result (or a view of the field that can change it); `add` and
  `reset` above do. Nothing is written for it: the compiler reads the body. Such a method
  can only be called on something changeable, a `var`, a pointer `T*`, or an element of a
  changeable span; calling `add` on a `let` is the error "`add` changes its receiver, so
  it needs a `var` here".
- **A method can be called through a pointer** without dereferencing: `counter.add(10)`
  with `counter: Counter*`. On a temporary, `Counter(count = 5).doubled()`, the value is
  materialised for the call.
- **`static func`** has no receiver and is called through the type, `Point.origin()`, like
  Python's `@staticmethod`. Any other function in a type is a method, called on a value,
  whether or not its body uses `self`; an interface's requirement is always implemented
  by a method.
- **A method named through its type is a function value** with the receiver first:
  `Counter.doubled` is a `func(const Counter*) -> u32`, as `twice` above takes it. It
  also stands where a `func(Counter*) -> u32` is wanted, since a function that only reads
  may be given what it could change.
- **`value.member` without parentheses is always a field.** There are no computed
  properties; a computed value is a method.
- A method named `init` is the initialiser; see [Structs](06-structs-and-enums.md).

### Methods in other files

A type with many methods can spread them across the files of its module with `extend`:

```luce
# canvas/selecting.lucb, a file of the module that declares Canvas
extend Canvas:
    pub func select_all():
        self.selected = self.area()
```

An `extend` block holds only methods, never fields, and only for a type declared in the same
module. (A module made of several files is described in
[Modules and packages](10-modules-and-packages.md).)

## The entry point

```luce
pub func main(arguments: str[]) -> i32:
    return 0
```

`main` takes `str[]` or `c.str[]` and returns `i32` or `i32!`.

- With `str[]`, each argument is checked to be valid UTF-8, and the program traps if one
  is not. A program that takes file paths should take `c.str[]` instead, because a path on
  macOS or Linux is a sequence of bytes and need not be UTF-8.
- An error returned from an `i32!` `main` is printed to standard error as
  `error: file:line:column: message (code n)`, naming where it was raised, then
  `  called at file:line:column` when it came out of a call into another package, and the
  exit status is 1.

The first argument is the program's name, as in C.
