# Modules and packages

A *module* is one source file (or one directory of files). A *package* is a project: a
directory with a `package.prisma` manifest, its modules, and its dependencies. `luc` builds
packages and fetches their dependencies. [Reference: Modules, packages, and
tests](../../language/base.md#16-modules-packages-and-tests).

## Modules

A module is named by its path under the package's source directory, `src/`:

| File | Module |
| --- | --- |
| `src/main.lucb` | `main` |
| `src/image/color.lucb` | `image.color` |
| `src/net/http/client.lucb` | `net.http.client` |

So a file's name, without `.lucb`, must be a valid name: `color_space.lucb`, not
`color-space.lucb`.

- Declarations are **private to the module unless `pub`**. A `pub` function's signature can
  only use `pub` types.
- A module's top-level declarations can refer to each other in any order.
- **Modules may not import each other in a cycle.**
- A `##` block at the top of the file, followed by a blank line, documents the module.

### A module in several files

When one module grows too large for a file, it can be a directory of the same name containing
an `ORDER` file that lists its files in order:

```text
src/canvas/
  ORDER            canvas.lucb
                   drawing.lucb
  canvas.lucb      declares struct Canvas
  drawing.lucb     extend Canvas: ...
```

The files share one scope, as if they were one file, and errors name the file they occur in.
A type declared in one file can take more methods in another with `extend Type:` (see
[Functions and methods](05-functions.md#methods-in-other-files)). Importing the module is
unchanged: `import canvas`.

## Imports

| Form | Makes available |
| --- | --- |
| `import image.color` | the module, as `color` (its last name) |
| `import image.color as palette` | the module, as `palette` |
| `from image import color` | the module `image.color`, as `color` |
| `from image import color, geometry` | several modules from one directory |
| `from image.color import Rgb` | the declaration `Rgb`, by its own name |
| `from image.color import Rgb as Colour` | a declaration under another name |
| `from luce_std import files` | the module `files` of the package `luce-std` |
| `from luce_std import files, paths` | several modules of one package |
| `from luce_crypto import native as crypto` | a package's module under another name |
| `from shapes_lib.geometry import circle` | a module in a directory of another package |

The rules, in brief:

- `import` keeps names qualified: `color.rgb(...)`. `from` brings names in directly, as in
  Python.
- `from X import a` imports *modules* when `X` is a package or a directory of modules, and
  *declarations* when `X` is a module.
- **A package is not a module.** `import luce_ui` is the error "a package is not a module:
  import one of its modules".
- `from io import Writer` brings only `Writer`. Using `io.stdout()` as well needs
  `import io` too.
- There are no wildcard imports and no relative imports (`from . import x`).
- An import can appear anywhere at the top level of a module, near the code that uses it.
- Importing the same thing twice is an error.

### Standard modules

These come with the compiler and are imported by their bare names:

| Module | Contents |
| --- | --- |
| `memory` | allocators, `heap`, `allocator`, `allocate`, `size_of`, `align_of`, `offset_of`, `copy`, `move`, `set`, `read`, `write`, `frame` |
| `io` | `stdout()`, `stderr()`, `Writer`, `Location`, the user's directories |
| `os` | the target platform as constants, environment variables, the process |
| `strings` | `format`, `Builder`, `copy`, `release`, `join`, `split`, `find`, `trim`, number parsing |
| `thread` | `spawn`, `Handle`, `sleep` |
| `sync` | `Mutex`, `Condition`, `Once`, `Semaphore` |
| `atomic` | `fence`, `Ordering` |
| `time` | `now`, `unix`, `since` |
| `luce` | `Comparable`, `Display`, `Iterable`, `Iterator`, `location` |
| `c` | C's types, `errno()` |
| `testing` | helpers for tests |

Their names are reserved: no module of yours can be called `io`, `memory`, `c` and so on.
Everything else, including files, paths, processes, networking and maths, is in packages,
starting with `luce-std`. The [Library](../../LIBRARY.md) lists every module and function.

## Packages

A package is a directory with `package.prisma` and sources under `src/`:

```text
shapes-lib/
  package.prisma
  src/
    geometry/circle.lucb
    canvas/...
    internal.lucb
  tests/
```

The manifest is written in Prisma, a small configuration format:

```text
#prisma 4.0
def package "shapes-lib" {
    str owner = "you"
    str version = "0.1.0"
    str kind = "package"
    str language = "luce-base"
    str[] public = ["geometry.circle", "canvas"]

    def dependency "luce-std" {
        str owner = "dymokomi"
        str version = "^0.3.2"
    }
}
```

| Field | Meaning |
| --- | --- |
| `package "name"` | the package's name; `shapes-lib` is imported as `shapes_lib` |
| `owner`, `version` | who publishes it, and its version, `major.minor.patch` |
| `kind` | `package` (a library), `tool` (a command-line program) or `application` (a desktop program) |
| `language` | `luce-base` |
| `entry` | for a tool or application, its main module, `src/main.lucb` |
| `str[] public` | the modules other packages may import, by module name |
| `str source` | the source directory, if not `src` |
| `def dependency` | a package this one uses (below) |
| `def native` | C sources and libraries to build with (see [C](13-c.md#c-files-and-libraries)) |
| `def task` | a named command for `luc run <task>` |

A package's own modules import each other by their names, public or not. Other packages may
import only the `public` ones; anything else is "the module is not among the package's
`public` ones".

The package name is also the identity of the package's error codes, so two packages' code
1 are different codes.

### Dependencies

A dependency comes from the registry, or from a directory beside the project:

```text
def dependency "luce-std" {
    str owner = "dymokomi"
    str version = "^0.3.2"
}

def dependency "shapes-lib" {
    str path = "../shapes-lib"
}
```

`luc add owner/name` adds the newest release of a registry package with a caret version
(`^0.3.2` accepts any `0.3.x` from `0.3.2`), and `luc add ../path` adds a local one. A
dependency's own dependencies are resolved relative to it.

`luc.lock` records the exact version of every registry package in the build, and the SHA-256
of its source. Commit it: it makes builds reproducible. Registry packages are unpacked into
`.luc/deps/`; do not commit that directory.

| Command | Does |
| --- | --- |
| `luc add owner/name` | add a registry package and lock it |
| `luc add ../path` | add a package checked out beside this one |
| `luc remove name` | remove a dependency |
| `luc lock` | resolve every dependency and rewrite `luc.lock` |
| `luc sync [--offline]` | make `.luc/deps/` match `luc.lock`; `--offline` uses only the download cache |

Builds sync automatically and never contact the network unless something is missing. Reading
from the registry needs no account.

## Building and running a package

| Command | Does |
| --- | --- |
| `luc build [--release]` | build into `build/<name>` |
| `luc run [--release] [-- args]` | build and run, passing `args` to the program |
| `luc test` | build and run the tests (see [Testing](11-testing.md)) |
| `--diagnostic` on `build`, `run`, `test` | the diagnostic profile, into `build/<name>-diagnostic` ([Memory](09-memory.md#finding-memory-bugs)) |
| `luc check` | type-check without building |
| `luc fmt [--check]` | format the sources, or check that they are formatted |
| `luc clean` | remove `build/` |
| `luc run <task>` | run a task declared in the manifest |

A task runs a shell command, after the tasks it depends on:

```text
def task "assets" {
    str cmd = "python3 tools/pack_assets.py"
}
def task "release" {
    str cmd = "luc build --release"
    str[] depends = ["assets"]
}
```

## Installing and publishing

`luc install owner/name` downloads, builds and installs a `tool` (its command goes into
`~/.luce/bin`) or an `application` (into the system's applications folder). `luc list` shows
what is installed, `luc update name` upgrades it, and `luc uninstall name` removes it.

Publishing to pkg.luciaos.com needs an account. Once logged in (`luc login`),
`luc publish -m "what changed"` checks that the work is committed, tags the version in
`package.prisma` as `v<version>`, and pushes it; the registry publishes the source of that
tag as the release. Raise `version` and commit before publishing the next one.
