# Public package imports

Both compilers resolve public module names from `package.prisma`. A package name
may use hyphens, `luce-ui`; the compilers' identifier for it is `luce_ui`, which
module names use. A package declares its public imports explicitly:

```text
#prisma 4.0
def package "luce-ui" {
    str source = "src"
    def export "ui" {
        str module = "luce_ui.ui"
    }
}
```

The implementation is `src/luce_ui/ui.lucb`. Private modules can live beside it
and use their full names, such as `luce_ui.layout`. Exports name modules, not
individual declarations; `pub` still determines which declarations are visible.

A consumer declares a local dependency, relative to its own manifest:

```text
#prisma 4.0
def package "demo" {
    def dependency "luce-ui" {
        str path = "../luce-ui"
    }
}
```

Its Luce code uses ordinary construction and imports:

```luce
from ui import Button

let button = Button("pause")
```

Base uses the same import and construction spelling. A dependency's name must match
the dependency's own package name. A dependency without a `path` is a registry
package that `luc sync` unpacked under `.luc/deps/<name>` at or above the root. Dependencies can declare dependencies of their
own; they resolve relative to that package. Builds do not fetch anything from the
network. Registry installation and version resolution remain separate work.

An export cannot compete with another dependency export or a different local
source file. Multiple exports of the same source preserve one nominal identity.
Standard module names remain reserved. Source paths are canonicalized so aliases
and symlinks cannot create duplicate declarations for the same file. Canonical
module names must identify one source throughout a build; packages should keep
private modules beneath their package namespace.

`import math` and `import net` in Luce use Base's canonical embedded standard
modules. Types unsupported by the boundary stay unavailable; their absence does
not invalidate unrelated exports. A native value's mutable interface conformance
is unavailable in Luce, whose value-interface contract is read-only. Native owned
objects and checked views can expose mutable interface implementations.

Luce uses the compiler selected by `LUCE_BASE` (otherwise `luce-base`) for module
resolution and public descriptions. Install matching compiler revisions together.
The resolver protocol is shared by normal imports and source packaging, so a
consumer needs no generated import aliases or copied source tree.

## Compiler protocols

`luce-base resolve FILE SOURCE_ROOT MODULE [--base]` returns NUL-terminated fields:

```
luce-base-module-v1, kind, canonical-name, absolute-source-path, absolute-source-root
```

`kind` is `luce`, `base` or `standard`. Standard paths and roots are empty. Inside
a package, names start at its declared source root. Outside a package, the caller
supplies the root; standalone Base imports also search enclosing directories.
`--base` selects Base source files only. Otherwise a local `.luc` precedes `.lucb`.

`luce-base describe --standard MODULE` describes the actual embedded declaration,
without loading a copy as a user module. It uses the same current description
format as `describe FILE`.

`luce-base dependencies FILE` starts with `luce-base-dependencies-v3` and a NUL,
followed by tagged triples, with every field NUL-terminated:

| Tag | Second field | Third field |
| --- | --- | --- |
| `source` | Canonical module name | Resolved source path |
| `alias` | Public export name | Canonical module name |
| `package` | Canonical module name | Owning package name |
| `native` | `sources`, `link_search`, `libraries`, `frameworks` or `pkg_config` | Resolved input |

Source records exclude the entry and embedded standard modules. Package records
include the entry. The compiler checks the complete program before writing any
records. Paths can contain whitespace, including newlines.

Explicit Luce `--emit=base` output contains unchanged native sources and a generated
`package.prisma` with exports and `module_package` elements. The latter records each bundled
module's original owner, preserving `ErrorCode.package(n)` after relocation.
Ordinary source packages derive ownership from their nearest manifest. Normal
builds remove this generated source package after compilation.

## Native package inputs

A build merges `native` inputs from every loaded package. Sources and
search directories resolve relative to their declaring manifest, then travel as
absolute paths through Luce’s temporary Base workspace. Identical inputs are
included once. Libraries/frameworks/pkg-config names retain declaration order.
The generated manifest has one merged native section. Explicit `--emit=base`
keeps those absolute references; native sources are external inputs, so moving
that diagnostic package does not make it independent of the original native files.

`luce-base native-inputs FILE` reports only the containing manifest’s native
records using the same current dependency format. It accepts Base or Luce source
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
declares. A program imports only its direct dependencies' exports; a module a
dependency uses internally is not importable through it.
