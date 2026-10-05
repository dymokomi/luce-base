# Generics and interfaces

Generics let a function or type work with any type; interfaces name a set of methods that
several types provide. Together they cover what Python does with duck typing and protocols,
and what C does with `void*` and macros. [Reference: Generics](../../language/base.md#13-generics),
[Interfaces](../../language/base.md#14-interfaces).

## Generic functions and types

Type parameters are written in square brackets, as in Python 3.12's `def first[T](...)`:

```luce
from luce import Comparable
import memory

struct Pair[A, B]:
    pub var first: A
    pub var second: B

    func swapped() -> Pair[B, A]:
        return Pair[B, A](first = self.second, second = self.first)

func largest[T: Comparable](values: const T[]) -> T?:
    var best = values.first() else return none
    for v in values:
        if v.compare(best) > 0: best = v
    return best

func size_of[T]() -> usize:
    return memory.size_of(T)

pub func main(arguments: str[]) -> i32:
    let p = Pair(first = 1, second = "one")
    let q = p.swapped()
    print(f"{q.first} {q.second}")
    let numbers = [3, 9, 4]
    print(f"{largest(numbers) else 0}")
    print(f"{size_of[i32]()} {size_of[Pair[u8, u32]]()}")
    return 0
```

```output
one 1
9
4 8
```

- **Type arguments are inferred** from the arguments, left to right. When no argument
  mentions a type parameter, write it at the call: `size_of[i32]()`, `decode[Header](bytes)`.
- **A constraint** after `:` limits a type parameter to types implementing one or more
  interfaces, joined with `&`: `[T: Hashable & Display]`.
- **A generic body is checked once, against its constraints only.** Inside `largest`, `T`
  can do exactly what `Comparable` promises, calling `compare`, and nothing else, whatever
  type is used later. (This is unlike C++ templates and Zig's generics, which are checked
  for each use.) So `var z: T` with no value is an error: an unconstrained `T` is not known
  to have a zero value.
- **Each use is compiled separately** for its types, as C++ and Rust do, so generic code
  runs as fast as code written for one type.

There are no value parameters (beyond array lengths), no variadic generics and no
specialisation.

## Interfaces

An interface lists methods. A type declares the interfaces it implements after its name,
and must then provide each method with the exact signature:

```luce
interface Shape:
    func area() -> f64

struct Square: Shape:
    var side: f64

    func area() -> f64:
        return self.side * self.side

struct Circle: Shape:
    var radius: f64

    func area() -> f64:
        return 3.0 * self.radius * self.radius

func total_area(shapes: const Shape[]) -> f64:
    var sum = 0.0
    for s in shapes: sum += s.area()
    return sum

pub func main(arguments: str[]) -> i32:
    let square = Square(side = 2.0)
    let circle = Circle(radius = 1.0)
    let shapes: Shape[2] = [&square, &circle]
    print(f"{total_area(shapes)}")
    return 0
```

```output
7.0
```

- **Conformance is declared**, not inferred from the methods present, as in Java, Swift or
  Rust and unlike Go or Python's protocols. Several interfaces are separated by commas:
  `struct Version: Comparable, Display:`.
- A type cannot be made to implement an interface after the fact, from another module.
- A method that can fail in the interface (`-> T!`) may be implemented by one that cannot.
- Interfaces have no fields, no default method bodies, and no inheritance.

### Two ways to use an interface

**As a constraint**, `func f[T: Shape](s: T*)`: the call is compiled for the concrete type,
with no indirection.

**As a type**, `Shape`: the value is an *interface view*, two words holding a pointer to the
object and a pointer to its type's table of methods, as in Go and like Rust's `&dyn Trait`.
Calls go through the table. A view is made from a pointer to an object of a conforming type,
`let s: Shape = &square`, and the array above holds two of them.

A view does not own or copy the object. The object must outlive the view, as with any
pointer. If the type's methods for the interface change the object, `write` assigning to
a field, the view must be made from a pointer to something changeable, a `var`; a type
whose methods only read can be viewed through a `let`. `Shape?` is a view that may be empty. Views have no `==`, and
a view cannot be turned back into its concrete type: when that is needed, use an enum.

## The standard interfaces

These are imported from the `luce` and `io` modules.

| Interface | Methods | Used by |
| --- | --- | --- |
| `Equatable`, `Hashable` | none you write | `==`, `value.hash()`; provided automatically, cannot be implemented by hand |
| `Comparable` | `compare(other) -> i64` | sorting and ordering; negative, zero or positive |
| `Display` | `display(sink: Writer) -> !` | formatted strings: how `{value}` prints |
| `Writer` (in `io`) | `write(bytes: const u8[]) -> usize!` | anything that accepts output |
| `Iterable[T, I]`, `Iterator[T]` | `iterator() -> I`, `next() -> T?` | `for` loops |

Numbers, `char` and `str` are `Comparable` already. Floats compare in IEEE order, and
`compare` traps on NaN.

### Printing your own types

Implementing `Display` decides how a value appears in a formatted string, the role of
Python's `__str__`. The method writes to the `Writer` it is given rather than returning a
string, because returning a new string would need memory:

```luce
from luce import Comparable, Display
from io import Writer
import io

struct Version: Comparable, Display:
    var major: u32
    var minor: u32

    func compare(other: Version) -> i64:
        if self.major != other.major: return (i64)self.major - (i64)other.major
        return (i64)self.minor - (i64)other.minor

    func display(sink: Writer) -> !:
        _ = try sink.write(f"v{self.major}.{self.minor}")

func newest(versions: const Version[]) -> Version?:
    var best = versions.first() else return none
    for v in versions:
        if v.compare(best) > 0: best = v
    return best

pub func main(arguments: str[]) -> i32!:
    let versions = [Version(major = 1, minor = 2), Version(major = 1, minor = 10), Version(major = 0, minor = 9)]
    if let latest = newest(versions): print(f"newest {latest}")
    _ = try io.stdout().write(f"{Version(major = 2, minor = 0)} through stdout\n")
    return 0
```

```output
newest v1.10
v2.0 through stdout
```

### Writing your own sink

Any type with a `write` method can implement `Writer` and receive formatted output:

```luce
from io import Writer

struct Tally: Writer:
    var bytes: usize

    func write(data: const u8[]) -> usize!:
        self.bytes += data.length
        return data.length

pub func main(arguments: str[]) -> i32!:
    var tally = Tally(bytes = 0)
    let sink: Writer = &tally
    _ = try sink.write(f"{3} apples and {12} pears")
    print(f"{tally.bytes} bytes written")
    return 0
```

```output
21 bytes written
```

`io.stdout()` and `io.stderr()` return `Writer`s for the standard streams, and
`strings.Builder` is a `Writer` that collects text in memory.
