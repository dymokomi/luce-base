# 5. Structs and enums

## Structs

A struct groups named fields, like a Python dataclass or a C struct. A struct value is
copied when it is assigned or passed, as numbers are; it is not a shared reference like a
Python object.

```luce
struct Point:
    pub var x: f64
    pub var y: f64

    func squared_length() -> f64:
        return self.x * self.x + self.y * self.y

    mutating func move_by(dx: f64, dy: f64):
        self.x += dx
        self.y += dy

    static func origin() -> Point:
        return Point(x = 0.0, y = 0.0)

pub func main(arguments: str[]) -> i32:
    var p = Point(3.0, 4.0)
    print(f"({p.x}, {p.y}) has squared length {p.squared_length()}")
    p.move_by(1.0, 1.0)
    print(f"moved to ({p.x}, {p.y})")
    let o = Point.origin()
    print(f"origin is zero: {o == Point(x = 0.0, y = 0.0)}")
    return 0
```

```output
(3.0, 4.0) has squared length 25.0
moved to (4.0, 5.0)
origin is zero: true
```

- **Fields** are `let` (set once, when the value is made) or `var`. They are private to
  the file unless marked `pub`.
- **A constructor is provided**: `Point(3.0, 4.0)` or `Point(x = 3.0, y = 4.0)`, like a
  dataclass. You can write your own `init` instead, for example to check the values;
  [Chapter 6](06-absence-and-failure.md) shows one.
- **Methods** are functions declared inside the struct. Python's `self` parameter is
  implicit here: it is available in the body but not written in the parameter list.
- **A method that changes the struct is marked `mutating`.** It can only be called on a
  value that may change: a `var`, or a pointer to one. Calling `move_by` on a `let` is an
  error.
- **`static func`** belongs to the type rather than to a value, like Python's
  `@staticmethod`: `Point.origin()`.
- **`==` compares field by field** when every field can be compared, as a dataclass's
  `__eq__` does.

### Default values

```luce
struct Style:
    pub var width: f64 = 1.0
    pub var visible: bool = true
    pub var layer: u32

pub func main(arguments: str[]) -> i32:
    let style = Style(layer = 2)
    print(f"width {style.width}, visible {style.visible}, layer {style.layer}")
    return 0
```

```output
width 1.0, visible true, layer 2
```

A field with a default can be left out when constructing. So can a field whose type has a
zero value, such as a number, a `bool` or an optional; it starts at zero. Other fields, a
pointer for example, must be given.

## Enums

An enum is a value that is one of several named cases:

```luce
enum Direction:
    north
    east
    south
    west

pub func main(arguments: str[]) -> i32:
    let heading = Direction.east
    if heading == .east: print("heading east")
    return 0
```

```output
heading east
```

When the type is already known, `.east` is enough.

### Cases that carry data

A case can carry values of its own. Rust and Swift have the same kind of enum; in Python
you might model it with a class per case. `match` is the way to reach the values:

```luce
struct Point:
    pub var x: f64
    pub var y: f64

enum Shape:
    circle(center: Point, radius: f64)
    rectangle(corner: Point, width: f64, height: f64)
    empty

func area(shape: Shape) -> f64:
    match shape:
        .circle(_, radius): return 3.14159 * radius * radius
        .rectangle(_, width, height): return width * height
        .empty: return 0.0

pub func main(arguments: str[]) -> i32:
    let origin = Point(0.0, 0.0)
    let shapes = [Shape.circle(center = origin, radius = 1.0), .rectangle(corner = origin, width = 2.0, height = 3.0), .empty]
    for shape in shapes: print(f"area {area(shape)}")
    return 0
```

```output
area 3.14159
area 6.0
area 0.0
```

`.circle(_, radius)` matches a circle and names its radius; `_` skips the center. Because
`match` must cover every case, adding a case to `Shape` makes each `match` that does not
handle it fail to compile, and the error names the missing case.

### Enums as numbers

For bit flags, and for matching the integer constants of a C library, an enum can be given
explicit integer values. The bit operators then combine its cases, much like Python's
`enum.Flag`:

```luce
enum Access as u32:
    empty = 0
    read = 1
    write = 2
    execute = 4

pub func main(arguments: str[]) -> i32:
    let mode = Access.read | Access.write
    print(f"bits {(u32)mode}, can write: {(mode & Access.write) != Access.empty}")
    return 0
```

```output
bits 3, can write: true
```

`(u32)mode` gives the number. In the other direction, `Access(n)` traps if `n` is not one of
the declared values, and `(Access)n` does not check. A combination of flags is not itself a
case, so a `match` over such an enum always needs a `_` arm.

## Unions

A `union`, as in C, stores one of several types in the same memory, with nothing recording
which one. It is used to match C libraries and to reinterpret bytes. For a value that is one
of several things, use an enum.

## Where next

[Chapter 6](06-absence-and-failure.md) covers values that may be missing and operations that
may fail.
