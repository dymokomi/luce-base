# Public package imports

Both compilers resolve public module names from `luce.toml`. Repository names may
use hyphens; manifest package names and module names use identifiers such as
`luce_ui`. A package declares its public imports explicitly:

```toml
[package]
name = "luce_ui"
source = "src"

[exports]
ui = "luce_ui.ui"
```

The implementation is `src/luce_ui/ui.lucb`. Private modules can live beside it
and use their full names, such as `luce_ui.layout`. Exports name modules, not
individual declarations; `pub` still determines which declarations are visible.

A consumer declares a local dependency, relative to its own manifest:

```toml
[package]
name = "demo"

[dependencies]
luce_ui = "../luce-ui"
```

Its Luce code uses ordinary construction and imports:

```luce
from ui import Button

let button = Button("pause")
```

Base uses the same import and construction spelling. Dependency keys must match
the dependency's package name. Dependencies can declare dependencies of their
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
manifest with exports and `[module_packages]`. The latter records each bundled
module's original owner, preserving `ErrorCode.package(n)` after relocation.
Ordinary source packages derive ownership from their nearest manifest. Normal
builds remove this generated source package after compilation.

## Native package inputs

A build merges `[native]` requirements from every loaded package. Sources and
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

Standard window/GPU backends declare system requirements beside their
implementation in `links.json`. Object inspection selects only requirements
actually used, so a package importing portable GPU values adds no graphics
frameworks. UI, 3D and application manifests need no duplicate backend settings.
