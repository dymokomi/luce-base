# Package modules

Every package has one layout: its sources directly under its source root, `luce-ui/src/ui.lucb`,
with no directory repeating the package's name. A module is named by its path there
(base.md §16.3). A package name may use hyphens, `luce-ui`; its identifier, `luce_ui`, is
what other packages write before its module paths. A package lists the modules other packages
may import:

```text
#prisma 4.0
def package "luce-ui" {
    str[] public = ["ui", "widgets.button"]
}
```

Inside the package a module is imported by its path, `import layout`; any module may import
any other, public or not. A module named like the package, `src/luce_ui.lucb`, is the
package's starter module: inside the package (its tests too) `import luce_ui` imports it,
and `from luce_ui import Button` brings its declarations. A consumer declares the dependency, relative to its own manifest:

```text
#prisma 4.0
def package "demo" {
    def dependency "luce-ui" {
        str path = "../luce-ui"
    }
}
```

and imports its public modules behind its identifier, as Python spells it:

```luce
from luce_ui import ui
from luce_std import files, paths
from luce_crypto import native as crypto
from luce_geocore.core import parallel
from luce_ui.ui import Button

let button = ui.Button("pause")
```

`from luce_ui import ui` binds the module as `ui`, and so does `import luce_ui.ui`; the
`from` form is the usual one, since it names on the import line what the code below uses.
A `from` import may name a directory of a package's modules (`luce_geocore.core`), and each
name it brings may take an alias (`native as crypto`). A module the
package does not list is not importable from outside (`import luce_ui.layout` is an
error), and neither is the package itself (`import luce_ui`). The standard packages are
packages like any other, `from luce_std import paths`; only the compiler's built-in modules
(`io`, `memory`, `strings`, `c`, ...) are imported bare.

Base and Luce use the same spelling. A dependency's key must match the dependency's own
package name. A dependency without a `path` is a registry package that `luc sync`
unpacked under `.luc/deps/<name>` at or above the root. Dependencies declare dependencies
of their own, which resolve relative to that package. Builds fetch nothing from the network.

In a build, the modules of the package being built keep their bare names and every other
package's modules carry its identifier, `luce_ui.layout`, so two packages' `ui` are two
modules, and a module reached both ways, `import layout` inside luce-ui and
`import luce_ui.layout`, is one. A local module may not take the name of another package
the package imports from. Source paths are canonicalized, so symlinks cannot load one file
twice.

`import io` and the other standard modules in Luce use Base's canonical embedded
modules; luce-std's `math` and `net` are packages like any other. Types unsupported by the boundary stay unavailable; their absence does
not invalidate unrelated exports. A native value's mutable interface conformance
is unavailable in Luce, whose value-interface contract is read-only. Native owned
objects and checked views can expose mutable interface implementations.

Luce uses the compiler selected by `LUCE_BASE` (otherwise `luce-base`) for module
resolution and public descriptions. Install matching compiler revisions together.
The resolver protocol is shared by normal imports and source packaging.

## Compiler protocols

`luce-base resolve FILE SOURCE_ROOT MODULE [--base]` returns NUL-terminated fields:

```
luce-base-module-v1, kind, canonical-name, absolute-source-path, absolute-source-root
```

`kind` is `luce`, `base`, `standard` or `package`. Standard paths and roots are empty. A
`package` is a name that is a package, the importer's own or a dependency, which
`from pkg import module` imports modules of; its path and root are the caller's root. Inside
a package, names start at its declared source root. Outside a package, the caller
supplies the root; standalone Base imports also search enclosing directories.
`--base` selects Base source files only. Otherwise a local `.luc` precedes `.lucb`.

`luce-base describe --standard MODULE` describes the actual embedded declaration,
without loading a copy as a user module. It uses the same current description
format as `describe FILE`.

`luce-base dependencies FILE [BUILD_ROOT]` names modules as a build of the package enclosing
`BUILD_ROOT` does (default: FILE's own package); it starts with `luce-base-dependencies-v4` and a NUL,
followed by tagged triples, with every field NUL-terminated:

| Tag | Second field | Third field |
| --- | --- | --- |
| `source` | Canonical module name | Resolved source path |
| `package` | Canonical module name | Owning package name |
| `native` | `sources`, `link_search`, `libraries`, `frameworks` or `pkg_config` | Resolved input |

`luce-base describe-closure FILE` checks the module once and answers both questions for
its whole closure: `luce-base-closure-v1` and a NUL, then for every module `module`, its
source path and its `describe` text, each NUL-terminated, the list ended by an empty field,
and then the closure's `dependencies` report as above. Describing each module and asking
each for its dependencies would check the same closure once per module.

`luce-base describe-closure --modules BUILD_ROOT NAME FILE SOURCE_ROOT...` does the same for several
modules at once, each loaded under its canonical name from its package's source root: the
union of their closures is checked once and described in the same format, and its report
names every module of the union, these included (they carry their canonical names, so
none is left out as an entry). `BUILD_ROOT` is the build's source root: the package enclosing
it is the one whose modules keep their bare names, as `resolve` derives it. Luce describes
every Base module a program imports this way, in one run.

`luce-base resolve-all FILE SOURCE_ROOT MODULE... [-- FILE SOURCE_ROOT MODULE...]...`
resolves the imports of one module or more as `resolve` does, in one run:
`luce-base-modules-v2` and a NUL, then for each module `importer` and its path, followed
by a record for each name, either `module`, the name, its kind (`base`, `luce` or
`standard`), canonical name, path and source root, or `error`, the name and the message,
every field NUL-terminated. Luce resolves the imports of every module at one depth of a
program's import graph together this way.

With a cache named (`--cache-dir DIR` before `--modules`, or `LUCE_CACHE`),
`describe-closure --modules` keeps its answer as a record: the answer, each file the run
read with the hash of its bytes, and each path a lookup found absent. The next run with
the same arguments answers from the record while every file hashes the same and every
absent path is still absent, reading and checking nothing else.

Source records exclude the entry and embedded standard modules. Package records
include the entry. The compiler checks the complete program before writing any
records. Paths can contain whitespace, including newlines.

Explicit Luce `--emit=base` output is a package whose `package.prisma` declares each Base
package the program reaches as a dependency under `deps/<identifier>/`, a copy of that
package's modules with a manifest of its own, so every module keeps its package, its name
and its `ErrorCode.package(n)` identity. Normal builds remove this generated package after
compilation.

## Native package inputs

A build merges `native` inputs from every loaded package. Sources and
search directories resolve relative to their declaring manifest, then travel as
absolute paths through Luce’s temporary Base workspace. Identical inputs are
included once. Libraries/frameworks/pkg-config names retain declaration order.
The generated manifest has one merged native section. Explicit `--emit=base`
keeps those absolute references; native sources are external inputs, so moving
that diagnostic package does not make it independent of the original native files.

`luce-base native-inputs FILE...` reports only the containing manifests’ native
records using the same current dependency format, each record once, in the order
the files and their declarations give. It accepts Base or Luce source
paths; Base owns manifest parsing and Luce delegates that policy to it. There is
no copied raw-TOML adapter or separate Luce limitation on source/search inputs.

A `def native "NAME"` element applies by target: `inputs` (or `all`) everywhere, an
operating system (`macos`, `linux`, `windows`, `wasi`) on each of its architectures, or
one exact target (`x86_64-windows`). A package declares the libraries and frameworks its
platform code calls, per OS, in its own manifest; the linker keeps only those the program
actually uses (`-dead_strip_dylibs` on macOS, `--as-needed` on Linux, PE imports on
Windows), so importing a package's portable values adds no graphics frameworks. A
`link_search` entry may start with `$NAME`: it is that environment variable's directory,
and it is skipped where the variable is unset (luce-gpu searches `$VULKAN_SDK/Lib`).

Every module a program imports is library code, whichever package it comes from: the
backends keep only the functions and storage the program reaches, so another target's
platform code costs nothing and names no library. Only the entry file keeps all it
declares. A program imports only its direct dependencies' public modules; a module a
dependency uses internally is not importable through it.
