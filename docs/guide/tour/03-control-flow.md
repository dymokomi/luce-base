# 3. Control flow

## Conditions

`if`, `elif` and `else` work as in Python:

```luce
pub func main(arguments: str[]) -> i32:
    let temperature = 23.5
    if temperature > 30.0:
        print("hot")
    elif temperature < 10.0:
        print("cold")
    else:
        print("pleasant")
    let parity = "even" if 42 % 2 == 0 else "odd"
    print(parity)
    if parity == "even": print("a short branch can stay on one line")
    return 0
```

```output
pleasant
even
a short branch can stay on one line
```

- Conditions must be `bool`. `if count:` is an error; write `if count != 0:`.
- `and`, `or` and `not` are words, as in Python.
- Comparisons do not chain. Python's `low <= x < high` is written
  `low <= x and x < high`.
- The conditional expression is Python's, `a if condition else b`.

## Loops

```luce
pub func main(arguments: str[]) -> i32:
    var countdown = 3
    while countdown > 0:
        print(f"{countdown}...")
        countdown -= 1
    for i in 0..<3: print(f"i = {i}")
    for n: u8 in 1..=3: print(f"n = {n}")
    return 0
```

```output
3...
2...
1...
i = 0
i = 1
i = 2
n = 1
n = 2
n = 3
```

- `0..<3` counts 0, 1, 2, like Python's `range(3)`. `1..=3` includes the end: 1, 2, 3.
  Ranges count up by one; for other steps, use `while`.
- The loop variable can have a type, `n: u8`, and the range takes that type.
- There is no `++`; write `+= 1`.

`for` also walks arrays, by value, by pointer, or with an index, as Python's `enumerate`
does:

```luce
pub func main(arguments: str[]) -> i32:
    let primes = [2, 3, 5, 7]
    var sum = 0
    for p in primes: sum += p
    print(f"sum {sum}")
    for (index, p) in primes.indexed():
        if index == 2: print(f"the third prime is {p}")
    var scores = [10, 20, 30]
    for score in &scores: *score += 1
    print(f"{scores[0]} {scores[1]} {scores[2]}")
    return 0
```

```output
sum 17
the third prime is 5
11 21 31
```

In Python, `for score in scores: score += 1` changes only the loop variable. `for score
in &scores` instead gives a pointer to each element, and `*score += 1` changes the element
itself. [Chapter 7](07-memory.md) explains pointers. A `for` over a `str` gives its
characters.

### Leaving loops

`break` and `continue` act on the innermost loop, as in Python. To leave an outer loop,
give it a label and name it:

```luce
pub func main(arguments: str[]) -> i32:
    rows: for y in 0..<4:
        for x in 0..<4:
            if x * y == 6:
                print(f"found at {x}, {y}")
                break rows
    return 0
```

```output
found at 3, 2
```

## Match

`match` compares a value against patterns and runs the first arm that fits. It resembles
Python's `match` statement and Rust's `match`:

```luce
func describe(code: i32) -> str:
    match code:
        200: return "ok"
        301, 302: return "moved"
        400..<500: return "client error"
        _: return "something else"

func classify(c: char) -> str:
    return match c:
        '0'..='9' => "a digit"
        'a'..='z', 'A'..='Z' => "a letter"
        ' ' => "a space"
        _ => "something else"

pub func main(arguments: str[]) -> i32:
    print(f"{describe(302)}, {describe(404)}, {describe(200)}, {describe(7)}")
    for c in "a1 ?": print(f"'{c}' is {classify(c)}")
    return 0
```

```output
moved, client error, ok, something else
'a' is a letter
'1' is a digit
' ' is a space
'?' is something else
```

- A pattern is a literal (a number, character, string, `true` or `false`), a range,
  several of those separated by commas, or `_` for anything else.
- **Every possible value must be covered**, or the program does not compile. For integers
  and strings that usually means ending with `_`.
- Exactly one arm runs; there is no falling through to the next, as there is in C's
  `switch`.
- As a statement, an arm is written `pattern: body`. As an expression, `pattern => value`,
  and the `match` produces the value.
- An arm can add a condition, `n if n > 100: ...`, checked after the pattern matches.

`match` is most useful with enums, where it can also take a value apart. That is in
[Chapter 5](05-structs-and-enums.md).

## Where next

[Chapter 4](04-functions.md) covers functions: parameters, defaults and results.
