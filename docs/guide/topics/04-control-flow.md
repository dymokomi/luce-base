# Control flow

Base has `if`, `while`, `for`, `match`, labelled `break` and `continue`, `return`, and
`defer`. It has no `goto` and no exceptions. [Reference: Control
flow](../../language/base.md#8-control-flow).

## `if`

```luce
if temperature > 30.0:
    fan.start()
elif temperature < 10.0:
    heater.start()
else:
    climate.hold()
```

The condition must be a `bool`; numbers, pointers and optionals are not tested for
"truthiness" as in Python. To test an optional and use its value in one step, use `if let`
(below). The expression form is `a if condition else b`; both branches are required and
must have the same type.

## `if let` and `while let`

`if let name = optional:` runs the block when the optional has a value, with the value
named. It can be followed by `elif` and `else`:

```luce
if let user = cache.find(name):
    greet(user)
elif name == "guest":
    greet_guest()
else:
    print("not found")
```

`while let` repeats while an expression produces a value, the form that replaces C's
`while ((c = next()) != EOF)`:

```luce
while let token = lexer.next():
    consume(token)
```

There is no `do`/`while`; write the first step before the loop, or `while true:` with a
`break`.

## `for`

`for` walks anything *iterable*: ranges, arrays, spans, text, and your own types.

| Loop | Gives |
| --- | --- |
| `for i in 0..<n` | `0` up to `n - 1` |
| `for i in 1..=n` | `1` up to `n` |
| `for i: u8 in 0..<10` | the range in the type written |
| `for x in items` | each element of an array or span, by value |
| `for x in &items` | a pointer to each element, to change it in place |
| `for (i, x) in items.indexed()` | each index and element, like Python's `enumerate` |
| `for c in text` | each character of a `str`, as `char` |

Ranges only count up, by one. A range of two plain literals is `i64`; if one end has a type
the range takes it. Counting down or in steps uses `while`, or a library iterator.

The loop variable is a new `let` for each iteration, visible only in the body.

### Your own iterable types

`for x in thing` calls `thing.iterator()` once, then the iterator's `next()` until it returns
`none`. A type becomes iterable by implementing the `Iterable` and `Iterator` interfaces
(see [Generics and interfaces](07-generics-and-interfaces.md)), the counterpart of Python's
`__iter__` and `__next__`:

```luce
from luce import Iterable, Iterator

struct Countdown: Iterable[u32, CountdownIterator]:
    var start: u32

    func iterator() -> CountdownIterator:
        return CountdownIterator(remaining = self.start)

struct CountdownIterator: Iterator[u32]:
    var remaining: u32

    func next() -> u32?:
        if self.remaining == 0: return none
        self.remaining -= 1
        return self.remaining + 1

pub func main(arguments: str[]) -> i32:
    for n in Countdown(start = 3): print(f"{n}")
    var queue = Countdown(start = 2).iterator()
    while let item = queue.next(): print(f"item {item}")
    return 0
```

```output
3
2
1
item 2
item 1
```

The iterator is an ordinary value held by the loop: nothing is allocated.

## `break`, `continue` and labels

`break` leaves the innermost loop and `continue` starts its next iteration. To act on an
outer loop, put a label before it and name it:

```luce
rows: for y in 0..<height:
    for x in 0..<width:
        if pixel(x, y) == target:
            found = (x, y)
            break rows
```

## `match`

`match` picks the first arm whose pattern fits the value. The patterns are:

| Pattern | Matches |
| --- | --- |
| `42`, `'a'`, `"text"`, `true` | that literal |
| `1..<10`, `'a'..='z'` | a literal range |
| `.north` | an enum case |
| `.circle(center, radius)` | an enum case, naming its values; `_` skips one |
| `.some(value)`, `.none` | an optional with or without a value |
| `a, b, c` | any of several, sharing one arm |
| `_` | anything |

```luce
pub func main(arguments: str[]) -> i32:
    let reading: i64? = 7
    match reading:
        .some(v) if v > 5: print(f"high {v}")
        .some(v): print(f"low {v}")
        .none: print("no reading")
    return 0
```

```output
high 7
```

- **Every value must be matched.** A `match` over an enum must list every case or end with
  `_`; one over a number, a character or a string needs `_` unless the patterns cover every
  value. A missing case is a compile error that names it.
- **A guard**, `pattern if condition:`, is checked after the pattern matches; if it is false,
  matching continues with the next arm. An arm with a guard does not count toward covering
  every case.
- **One arm runs.** There is no fall-through, as there is in C's `switch`.
- Two patterns that can never be reached, or the same pattern twice, are errors.
- Alternatives that name values must name the same values with the same types.
- Patterns do not nest: `.circle(.origin, r)` is not a pattern. Match the inner value in
  the arm.

The statement form writes `pattern: body`. The expression form writes `pattern => value`
and produces the chosen value:

```luce
let kind = match c:
    '0'..='9' => "digit"
    'a'..='z', 'A'..='Z' => "letter"
    _ => "other"
```

## `return`

`return value` leaves the function. A function with a result must `return` on every path,
or end in something that does not finish: `error(...)`, `trap(...)`, or a call to a function
returning `never`. A function without a result may end without `return`. There is no
implicit return of the last expression.

## `defer` and `errdefer`

`defer` schedules a statement to run when the current block ends: normally, by `return`, by
`break` or `continue`, or by an error passing through. Several run in reverse order, last
scheduled first. It is how Base writes the cleanup that Python writes in `finally` or
`with`, and Go in `defer`.

`errdefer` is the same but runs only when the block is left because of an error. It suits a
function that acquires several things and must release the ones it already has if a later
step fails.

```luce
let failed = ErrorCode.package(1)

func steps(fail: bool) -> !:
    print("start")
    defer print("first defer, runs last")
    var stage = 1
    defer print(f"second defer sees stage {stage}")
    errdefer print("errdefer: only on failure")
    stage = 2
    if fail: error(failed, "stopped")
    print("end of body")

pub func main(arguments: str[]) -> i32:
    steps(false) catch failure: print("unreachable")
    print("--")
    steps(true) catch failure: print(f"caught: {failure.message}")
    return 0
```

```output
start
end of body
second defer sees stage 2
first defer, runs last
--
start
errdefer: only on failure
second defer sees stage 2
first defer, runs last
caught: stopped
```

- **Deferred code sees variables as they are when it runs**, not as they were when it was
  scheduled: the second `defer` prints stage 2. (Go evaluates a deferred call's arguments
  early; Base does not.)
- `defer` takes one simple statement: a call, an assignment or a `free`. For more, write a
  block:

```luce
defer:
    for i in 0..<count:
        free(items[i])
    free(items)
```

- Deferred code cannot leave: no `return`, no `break` out of it, and no failure may escape
  it, so a call that can fail inside a `defer` needs a `catch`.
- A `return` computes its value before the deferred code runs.
- `errdefer` may only appear in a function that can fail.
- Neither runs on a trap, which stops the program at once.
