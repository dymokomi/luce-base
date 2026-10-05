# Structs, enums and unions

[Reference: Structs, enums, and unions](../../language/base.md#10-structs-enums-and-unions).

## Structs

```luce
pub struct Style:
    pub let width: f64 = 1.0
    pub var visible: bool = true
    var cache: Layout*?
```

- **Fields** are `let` (set when the value is made, then fixed) or `var`, and private to
  the module unless `pub`.
- **Layout follows declaration order**, as in C; see [Types](02-types.md#layout-in-memory).
- **A struct is a value.** Assigning or passing it copies all its fields, as with a C
  struct or a Swift struct, and unlike a Python object, which is shared by reference. To
  share one struct between several places, pass a pointer.
- **A struct cannot contain itself**, directly or through an array or optional; a pointer
  to itself is fine (`next: Node*?`).
- **`==` and `hash`** come automatically when every field supports them.
- There is no syntax for copying a struct with some fields changed; copy it into a `var`
  and assign the fields.

### Construction

Without an `init` of its own, a struct gets a constructor taking its fields in order or by
name: `Style(width = 0.5)`, `Point(3.0, 4.0)`. A field may be left out when it has a default,
or when its type has a zero value (numbers, `bool`, optionals, spans, ...), in which case it
starts at zero. Every other field must be given. The constructor can be used outside the
module only if the struct and all its required fields are `pub`.

### Custom initialisers

A method named `init` replaces the generated constructor. It must assign every field exactly
once, and cannot read a field or call a method before all are assigned. It may fail, which
makes construction fallible:

```luce
let out_of_range = ErrorCode.package(1)

struct Range:
    let low: i64
    let high: i64

    func init(low: i64, high: i64) -> !:
        if low > high:
            error(out_of_range, "low is above high")
        self.low = low
        self.high = high

    func contains(value: i64) -> bool:
        return self.low <= value and value < self.high

pub func main(arguments: str[]) -> i32!:
    let range = try Range(1, 10)
    print(f"{range.contains(5)} {range.contains(10)}")
    let fallback = Range(5, 1) catch failure:
        print(f"refused: {failure.message}")
        recover try Range(1, 5)
    print(f"{fallback.low}..<{fallback.high}")
    return 0
```

```output
true false
refused: low is above high
1..<5
```

Another common pattern is a function of the type that builds a value, `Point.origin()` or
`Image.open(path)`, alongside or instead of `init`: a `static func` in the struct, called
through the type.

## Enums

An enum's value is one of its cases. A case may carry values, as in Rust and Swift:

```luce
enum Token:
    number(value: f64)
    name(text: str)
    end

    func describe() -> str:
        return match self:
            .number(_) => "a number"
            .name(_) => "a name"
            .end => "the end"

pub func main(arguments: str[]) -> i32:
    let tokens = [Token.number(value = 2.5), .name(text = "x"), .end]
    for t in tokens: print(t.describe())
    return 0
```

```output
a number
a name
the end
```

- A case is written `Token.end`, or `.end` where the type is known from context.
- **A case's values are reached only by `match`**, which must handle every case. Adding a
  case makes every `match` that does not handle it fail to compile, which shows you each
  place to update.
- Enums can have methods, as above.
- The numeric value of a case is not visible; cases are not integers (use an integer-backed
  enum, below, for that).
- `none` cannot be a case name, because `.none` means an empty optional.
- An enum cannot contain itself by value through a case; use a pointer, as a tree's nodes
  do.

A `var` of an enum type with no value given starts as its first case, if that case carries
no values.

## Integer-backed enums

An enum declared `as` an integer type, with a value for each case, is stored as that
integer, as a C enum is. It is used for flags and for constants shared with C:

```luce
enum Access as u32:
    empty = 0
    read = 1
    write = 2
    execute = 4

pub func main(arguments: str[]) -> i32:
    let mode = Access.read | Access.write
    let allowed = (mode & Access.write) != Access.empty
    print(f"{(u32)mode} {allowed}")
    return 0
```

```output
3 true
```

- `|`, `&`, `^` and `~` combine cases into a value of the same enum type, like Python's
  `enum.Flag`.
- `(u32)mode` gives the integer. `Access(n)` converts back and traps if `n` is not one of
  the declared values; `(Access)n` converts without checking.
- Because a combination is not itself a declared case, a `match` over an integer-backed
  enum always needs a `_` arm.

## Unions

A union stores one of its members in the same memory, as a C union does, with nothing
recording which one. It exists to match C's unions and to reinterpret bytes:

```luce
union Bits:
    real: f64
    integer: u64

pub func main(arguments: str[]) -> i32:
    var bits: Bits
    bits.real = 1.0
    print(f"{bits.integer:x}")
    return 0
```

```output
3ff0000000000000
```

- Members are written `name: Type`, without `let` or `var`, and are private unless `pub`.
- A union starts zeroed. It is created by declaring it and assigning one member; there is no
  constructor.
- Reading a member other than the last one written reinterprets the bytes. That is
  undefined when the member's type has rules about its bytes: reading a `bool`, an enum, a
  pointer, a `str` or an optional that was not the last member written.
- A union may have methods, but cannot implement an interface.

To store "one of several things" safely, use an enum: it records which case it holds.
