# 8. Modules and packages

## Modules

Each file is a *module*, named after the file, as in Python. Declarations in a module are
private unless marked `pub`; there is no `__all__` and no leading-underscore convention.

<!-- file geometry.lucb -->
```luce
## Shapes and their measurements.

pub struct Circle:
    pub let radius: f64

    pub func area() -> f64:
        return pi * self.radius * self.radius

pub let pi = 3.14159

func private_helper() -> i64:
    return 1
```

Save that as `geometry.lucb`, and this beside it as `main.lucb`:

<!-- with geometry.lucb -->
```luce
import geometry
from geometry import Circle

pub func main(arguments: str[]) -> i32:
    let c = Circle(radius = 2.0)
    print(f"area {c.area()}, pi {geometry.pi}")
    return 0
```

```output
area 12.56636, pi 3.14159
```

`luce-base build main.lucb` finds `geometry.lucb` in the same directory.

- **`import geometry`** makes the module available under its name, `geometry.pi`, as in
  Python.
- **`from geometry import Circle`** brings a declaration in by name, also as in Python.
  There is no `import *`.
- **Private declarations are not reachable.** `geometry.private_helper()` in `main.lucb`
  is the error "`geometry` has no public `private_helper`".
- Comments starting with `##` document the declaration after them, as a Python docstring
  does. A `##` block at the top of a file, followed by a blank line, documents the module.
- Two modules may not import each other.

In a project, a module's name is its path under `src/`: `src/image/color.lucb` is the
module `image.color`, imported with `import image.color` and used as `color.rgb`, or
renamed with `import image.color as palette`.

## Standard modules

A few modules come with the compiler and need no installation: `memory`, `io`, `os`,
`strings`, `thread`, `sync`, `atomic`, `time`, `luce` (the language's built-in interfaces,
such as `Comparable`), `c` (C's types) and `testing`.

```luce
import io
import strings

pub func main(arguments: str[]) -> i32!:
    var room: u8[64]
    let text = try strings.format(room, f"built in {2} steps")
    _ = try io.stdout().write(text.bytes)
    print("")
    return 0
```

```output
built in 2 steps
```

These names are taken: a file of your own cannot be called `io.lucb`, `memory.lucb` or
`c.lucb`.

## Packages

A project is a *package*: a directory with a `package.prisma` manifest and its sources
under `src/`. Other packages are added as dependencies with `luc`, much as `pip install`
adds to a Python environment:

```sh
luc add luce-std
```

This downloads the package from the registry at pkg.luciaos.com, records the exact version
in `luc.lock`, unpacks it under `.luc/deps/`, and adds it to the manifest:

```text
def dependency "luce-std" {
    str owner = "dymokomi"
}
```

No version means the newest release; `luc.lock` keeps the build on the one it chose until
`luc lock` runs again. `luc add luce-std@^0.3.2` holds a project to `0.3.x` instead.

Its modules are imported behind the package's name, with `-` written as `_`:

<!-- needs luce-std -->
```luce
from luce_std import files

pub func main(arguments: str[]) -> i32!:
    try files.write("note.txt", "remember the milk".bytes)
    let note = try files.read("note.txt")
    defer note.release()
    print(f"read back: {try str(note.value)}")
    return 0
```

```output
read back: remember the milk
```

`from luce_std import files` imports the module `files` from the package `luce-std`, and
the code then uses `files.read`. A package lists the modules other packages may import as
`public` in its manifest; the rest are internal to it.

`luce-std` holds everyday modules that are not part of the compiler: `files`, `paths`,
`process`, `net`, `math`, `utf8`, `unicode`, `collections` (growable lists and byte
buffers) and others. The [Library](../../LIBRARY.md)
reference lists them.

A package kept in a directory beside your project, rather than on the registry, is added by
path, `luc add ../my-library`, and imported the same way.

## Larger modules

A module too large for one file can be a directory of the same name, holding an `ORDER`
file that lists its files in order. The files share one module: a declaration in one is
visible in the others, and methods of a type can be spread across them under
`extend Type:`. The module is imported exactly as if it were one file.

## Where next

[Chapter 9](09-calling-c.md) covers calling C functions.
