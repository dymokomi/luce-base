# Embedding the checker

A program can check Base source without running the `luce-base` command: it depends on
the `luce-base` package, calls `embed.check_root`, and walks the typed tree that comes
back. This page is for someone writing a backend of their own over that tree, a lowering
to some other target than C or machine code. The first such user is the luced-3d Code
node, whose snippets `luce-kernel` lowers to a column IR.

Paths below are under `src/` of this repository.

## Depending on the front end

`luce-base` is a tool package, and like any package it names the modules other packages
may import (`package.prisma`, `public`):

| Module | What it holds |
|---|---|
| `embed` | `check_root`, `Library` (`check`, `check_file`), the `Checked` result, `Diagnostic`, `standard_modules` |
| `front.ast` | `Node` and `Kind`, the one node shape of the tree, and `dump` |
| `front.source` | `Source`, for turning a node's byte offset into a line and column |
| `front.parser` | `Parser`, to parse without checking |
| `front.layout` | the formatter `luce-base fmt` uses |
| `sema.check` | `Checker`, `find_decl`, `find_member`, the constant evaluators |
| `sema.types` | the type table: `Table`, `Type`, `Kind`, the fixed ids such as `f32_id` |

```
from luce_base import embed
from luce_base.front import ast
import luce_base.sema.types as types
import luce_base.sema.check as check
```

The package you build imports these from the luce-base release it depends on, and checks
snippets as that release's language. A new luce-base release can change the tree; the
consumer follows it.

## Checking a root

```
pub func check_root(root: str, entry: str) -> Checked!
```

`root` is a directory the host owns. `entry` is a module in it, named as an import names
it: `snippet` for `root/snippet.lucb`, `kernels.blur` for `root/kernels/blur.lucb`. The
host puts in the root everything a snippet may import: its own stub modules
(`luce_kernel/lib.lucb`, declarations whose bodies only need to check), copies of library
sources such as luce-std's `math.lucb` and `math32.lucb`, and the snippet itself.

What the call reads, and what it does not:

- Imports resolve under `root` and nowhere else. A module beside the root, a
  `package.prisma` above it, the user's packages: none of them are looked at. An import
  the root does not hold is an error at the import.
- `from luce_kernel import lib` works when `root/luce_kernel/` is a directory of modules,
  as in a package.
- A directory directly under the root is a package to its own modules: they import each
  other by their short names, as in a real package. luce-std's `math32.lucb` says
  `import math`; copied to `root/luce_std/`, that import finds `root/luce_std/math.lucb`
  first, the module `from luce_std import math` names, and only then a `math` at the
  root's top. Nothing outside the root is looked at either way.
- The standard modules (`memory`, `thread`, `c`, `io`, ...) are the copy the checker
  carries inside the binary (`sema/standard_sources.lucb`). Nothing is read from a
  toolchain install, no subprocess runs, and luc is not involved.
- The checker checks for the host's target: `platform.os` and the word size are the
  machine the host runs on.

The call fails (`!`) only when memory runs out before there is a result. Everything the
checker objects to comes back as a diagnostic; nothing is printed.

`check_root` parses and checks the standard modules for that one call, about 12 ms on an
M4 Max. A host that checks again and again keeps a `Library` instead (next section).

## Checking again and again: `Library`

```
pub struct Library:
    pub static func create() -> Library!
    pub func check(root: str, entry: str) -> Checked!
    pub func check_file(path: str) -> Checked!     # next section
    pub func close()
```

`Library.create` parses and checks the standard modules once, about 11 ms. Each
`library.check(root, entry)` is the same check as `check_root(root, entry)`, with the same
diagnostics, the same tree and the same type ids, but checks only the root's modules: about
0.1 ms for the 50-line snippet of `tests/embed/root` on an M4 Max. A host makes one library
when it starts, checks on every pause in typing, and closes the library when it is done:

```
var library = try embed.Library.create()       # once
defer library.close()
...
var result = try library.check(root, "snippet")  # on every edit
defer result.close()
```

What a check makes, the root's trees, the types they add and the diagnostics, is in the
result's own arena, which its `close` frees; the standard modules' trees, which
`result.checker.modules` lists first, are the library's and are shared. So:

- Results may be open at once, an old one beside a new one, and closed in any order.
- Close the library last, after every result it gave: they use its trees.
- Nothing of one check reaches the next. A check copies the library's checker, its type
  table and every list and table it keeps, and adds to the copy alone; it writes on the
  trees of the modules it checks and never on the library's, whose declarations were
  settled when the library was made. The library is the same after a check as before it,
  so every check starts from the same state, whatever was checked before, and the memory a
  check holds is gone at its `close`: thousands of checks hold no more than one
  (`tests/embed/library.lucb` checks both).
- The type ids of the standard modules' types are the library's and the same in every
  result; a type a root adds takes the next id, the same in every check of that root.

`tests/programs/embed_timing` measures a check alone and on a library:
`./build/luce-base build tests/programs/embed_timing/main.lucb -o build/embed-timing`, then
`./build/embed-timing [ROOT ENTRY [CHECKS]]` from the repository's root.

## Checking a package's files: `check_file`

A script imports packages: `from luce_geocore.script import Cook` reaches 59 modules
of luce-geocore, luce-std and luce-color, and checking those is nearly all of the check. A sealed root cannot hold them, and checking them again on every pause
in typing would cost what `luc check` costs. `check_file` checks a file of a package the
way `luce-base check` does, and keeps the other packages' modules checked:

```
var library = try embed.Library.create()       # once
defer library.close()
...
# the host writes the script into a package of its own, say
#   scripts/package.prisma      declares luce-geocore as a dependency (luc sync fetches it)
#   scripts/src/script.lucb     the node's text
var result = try library.check_file("/…/scripts/src/script.lucb")   # on every edit
defer result.close()
```

- Imports resolve as a build of the file's package resolves them (§16.3): its own modules
  by their paths under `src/`, a dependency's public modules behind its name, found where
  the manifest says or under `.luc/deps/`. The standard modules are still the copy the
  checker carries. Positions name the file as `path` spells it, and a dependency's file as
  `<package>/<path in it>`, `luce_geocore/src/script/cook.lucb`.
- The first check of a file that imports another package loads that package's modules,
  checks them and keeps them, as the library keeps the standard modules: their trees and
  types are settled and no later check writes on them. A later check of any file of the
  same package copies them and checks only the package's own modules. A file that imports
  a module not kept yet, `script2.lucb` importing `luce_geocore.splats`, adds it, and the
  check after that is fast again.
- Every file the kept modules were read from is watched, and the manifests of their
  packages and of the file's own. Before each check the library looks at each: its size,
  inode and modification and change times. A file whose look moved is read, and when its
  bytes changed the kept modules are dropped and that check reads them again (and keeps
  them again); a file written again with the same bytes, or only touched, costs a read and
  nothing more. A file written in the two seconds before the library looked is read at
  each look until two seconds have passed: a second write in the same tick of the file
  system's clock leaves the times as they were, and only the bytes tell. On Windows the
  look is the size and the write time, which moves in steps of about 16 ms.
- A dependency that does not load or check is not kept: each check reads it and reports
  its errors, as a check alone does, until it checks again.
- The kept modules are per package, the directory holding the file's `package.prisma`. A
  library checking files of three packages keeps three sets.

What the result holds is as for `check`, with two differences. `tree` is the module read
from `path`. `checker.modules` is the standard modules, then every module kept for the
package, including those another of its files imported, then the file's own modules: walk
the file's imports, not the list, to see what it reaches. A dependency's warnings (an
unused local in luce-geocore) are not among the diagnostics; the file's own are.

A result holds the kept modules it was made on: when a change drops them, a result made
before the change still reads its trees, and they are freed when the last such result is
closed.

On an M4 Max, for `script.lucb` of a package depending on luce-geocore (59 modules of three
packages, from 241 files) (`./build/embed-timing --file PATH`):

| | |
|---|---|
| first check: loads, checks and keeps the dependencies | about 90 ms |
| each later check, the script edited or not | about 0.3 ms |
| of which looking at the 241 watched files | about 0.2 ms |

`luce-base check` of the same file, a process of its own, takes 90 ms; `luc check` 0.14 s.
The look at the files is the floor of a check on top of kept packages: about 0.6 µs a
file, what the kernel takes to say a file's size and times. The check itself, copying the
kept checker and loading and checking the script, is under 0.1 ms.

## The result

```
pub struct Checked:
    pub var checker: check.Checker
    pub var tree: ast.Node*?
    pub var diagnostics: Diagnostic[]
    pub var failure: str
    pub func ok() -> bool
    pub func close()
```

- `ok()` is true when no error was said. Lower a tree only then: after an error the tree
  is typed only as far as the checker got.
- `tree` is the entry module's tree, `none` when the entry could not be read or parsed.
- `checker.modules` is every module, standard ones first (`is_prelude` set), then the
  root's modules in the order they were loaded, the entry last. `checker.table` is the
  type table. `checker.find_module("luce_kernel.lib")` gives a module's index.
- `failure` is the error text as the command would print it, for a log.

Everything in the result, the trees, the type table, the strings of the diagnostics,
lives in one arena that `close` frees (the standard modules' trees are a `Library`'s when
the result is one of its checks; `check_root`'s result frees its own). Call `close` exactly once, whether the check
passed or not, and use nothing from the result after it; a lowering that keeps anything
copies it out first. The usual shape:

```
var result = try embed.check_root(root, "snippet")
defer result.close()
if not result.ok():
    for d in result.diagnostics:
        show(d.file, d.line, d.column, d.message)
    return
let tree = result.tree else return
lower(&result.checker, tree)
```

Two checks may not run at once on different threads, on one library or on two: the
checker keeps a few tables for the whole process (the paths it has resolved, the modules
of the current compilation). One check after another on any thread is fine, and so is a
result read on one thread while nothing checks.

### Diagnostics

```
pub struct Diagnostic:
    pub var severity: Severity    # error, note or warning
    pub var file: str
    pub var line: u32
    pub var column: u32
    pub var message: str
```

`file` is relative to the root (`snippet.lucb`, `luce_kernel/lib.lucb`), `std/...` for a
standard module. `line` and `column` count from 1; the column counts bytes, so a tab or
a multi-byte character before the position counts as its bytes. A message that names no
place, such as an entry the root does not hold, has an empty `file` and line 0.

The checker reports every failing declaration of a module, not only the first, each as
an error. An error that names a second place is followed by a `note`, and when there are
more errors than fit, a last `note` says how many. Warnings are unused locals, functions
and imports (§19.6); the checker removes what they name from the tree, see below.

### The standard modules

```
pub func standard_modules() -> const str[]
```

The names of the standard modules in the order they are bound: `platform`, `c`,
`memory`, `io`, `thread`, `atomic`, `time` and the rest. A module of one of these names is
always the standard one, so a lowering that accepts a subset of Base refuses an import
by name: an `import_` or `from_import` node whose `text` is in the list.

## The tree

There is one node shape, `ast.Node` (`front/ast.lucb`), for every construct, as in many
compilers written in C: a `kind`, a `text`, a byte span (`start`, `end`) and `line`,
`flags`, four child slots `left`, `right`, `body` and `ty`, and a `next` link that chains
siblings into lists. A list is a pointer to its first node; walk it with `next`:

```
var cursor = tree.body
while let d = cursor:
    declaration(d)
    cursor = d.next
```

The checker writes two more fields on the same nodes: `type_id`, the node's type, and
`resolved`, the declaration a name, call or member stands for. The parser's tree and the
checked tree are the same objects.

`ast.dump(out, node, 0)` prints a subtree as nested s-expressions (`luce-base parse FILE`
prints a whole module that way), which is the quickest way to see a shape.

For a position, take the module's source: `checker.modules.get(i).src.located(node.start)`
returns `(file, line, column)`.

### Declarations

A module node (`Kind.module`) has `text` = the module name and `body` = its top-level
declarations in source order. What a snippet module can hold:

- `import_`: `text` = the dotted module name, `left` = the `as` name when written,
  `resolved` = the imported module's tree.
- `from_import`: `text` = the module, `body` = one `name` node per imported name (`left` =
  its `as` name), each with `resolved` = the imported declaration.
- `constant`, a top-level `let`: `text` = name, `ty` = the written type or none, `left` =
  the value, `type_id` = its type. The value is not folded into the tree;
  `checker.constant_u64(e)`, `constant_bool(e)` and `exact_integer(e, bits, signed)` fold
  one when it is constant. A top-level `var` is `global`.
- `func_`: `text` = name, `right` = the parameter list (`param` nodes: `text`, `ty`,
  `left` = default value, `type_id`), `ty` = the written result type (none for no result),
  `body` = a `block`, `left` = generic parameters when there are any. `flags` has
  `flag_pub`, `flag_static`, `flag_mutating`, `flag_fallible` (`-> T!`).
  `type_id` is the function type, whose `args` are the parameters' types and `elem` the
  result (`unit_id` for none).
- `struct_`, `enum_`: `body` = the members, `field` nodes and `func_` methods; an enum's
  cases are `enum_case` nodes. Snippets do not declare these, but the stub modules do.

`check.find_decl(tree, "point")` finds a top-level declaration by name, and
`check.find_member(struct_node, "area", ast.Kind.func_)` a member.

### `extend`, methods and `self`

`extend Point:` in a module that declares `Point` is merged by the parser: its methods
are appended to the struct's `body`, and no `extend_` node is left in the tree. An
extension method looks like any other method.

A method is a `func_` in a type's `body`. Its receiver is not in the parameter list: the
function type's `args` hold only the written parameters. Inside the body, `self` is a
`self_` node typed as the record itself (not a pointer), and the record is reached
through a hidden first argument: `const T*` for a method that does not change its
receiver, `T*` for one with `flag_mutating` (inferred by the checker, never written) and
for `init`. A static method (`flag_static`) has no receiver.

There is no implicit `self`: inside a method a field is `self.x` and a call of another
method `self.f()`, written out; a bare `x` naming a field is an error. So a lowering
never has to guess whether a name is a field.

A method call `p.area()` is a `call` whose `left` is a `member` (`text` = `area`, `left` =
the receiver `p`), and both the call's and the member's `resolved` are the method's
`func_`. The receiver may be the record or a pointer to it; the checker dereferences one
pointer level. The IR lowering passes the receiver's address as the first argument (the
pointer itself when the receiver is a pointer), `back/ir/lower/calls.lucb`,
`member_call`.

### Statements

Function bodies are `block` nodes whose `body` is the statement list.

| Kind | Slots |
|---|---|
| `let_`, `var_` | `text` = name, `ty` = written type, `left` = initializer; `type_id` = the variable's type |
| `assign` | `left` = place, `right` = value, `text` = the operator: `=`, `+=`, `-%=`, `<<=`, ...; the binary operator is `text` without its last `=` |
| `if_` | `left` = condition, `body` = then-block, `right` = an `if_` for `elif`, or the else-block |
| `while_` | `left` = condition, `body`, `text` = label |
| `for_` | `left` = a `let_` binding the loop variable (`text`, `type_id`), `right` = what is iterated, `body`, `text` = label |
| `match_` | `left` = the value, `body` = `match_arm` list; an arm's `left` = `pattern` list, `right` = guard, `body` = block |
| `return_` | `left` = value or none |
| `break_`, `continue_` | `text` = label or empty |
| `expr_stmt` | `left` = the expression, always a call |

`for i in a..<b` iterates a `binary` node whose `text` is `..<` (or `..=`); anything else
is a span, array or string iterated by element. A `pattern` is `flag_wildcard` for `_`,
else `left` = a literal (or `case_value` for an enum case `.name`), and `right` = the
upper bound of a range pattern.

`assert(c)` and `print(...)` inside a body are calls (below). A top-level `assert` is an
`assert_` node, evaluated by the checker.

### Expressions

| Kind | Slots |
|---|---|
| `name` | `text` = identifier, `resolved` = its declaration |
| `self_` | `self` in a method |
| `literal` | `text` = the token as written: `42`, `255u8`, `1.5`, `'a'`, `"s"`, `true`, `none` |
| `unary` | `text` = `-`, `-%`, `~`, `not`, `&`, `*`; `left` = operand |
| `binary` | `text` = the operator, `left`, `right` |
| `call` | `left` = callee, `body` = `argument` list, `resolved` = the function called |
| `argument` | `text` = the parameter name for `name = value`, else empty; `left` = value |
| `member` | `left` = owner, `text` = member name, `resolved` = field, method, case or module declaration |
| `index` | `left` = owner, `body` = index |
| `slice` | `left` = owner, `body` = start, `right` = end |
| `cast` | `(T)x`: `ty` = the type node, `left` = x |
| `conditional` | `x if c else y`: `left` = x, `ty` = c, `right` = y |
| `array_lit` | `body` = elements |
| `tuple` | `body` = members |
| `group` | `left` = inner; also what `try x` becomes |
| `formatted` | an f-string: `body` = `format_text` and `format_field` nodes |

Binary operators by spelling: `or`, `and`; `==`, `!=`, `<`, `<=`, `>`, `>=`; `|`, `^`,
`&`; `<<`, `>>`; `+`, `-`, `*`, `/`, `//`, `%`; the wrapping `+%`, `-%`, `*%`; the
saturating `+|`, `-|`, `*|`; the checked `+?`, `-?`, `*?`, whose type is an optional.
`not` is a unary.

Calls come in a few shapes, told apart by the callee and `resolved`:

- a function, `wave(x)`: callee `name`, `resolved` = the `func_`;
- a module's function, `math32.sin(x)`: callee `member` whose `left` is the module name,
  `resolved` = the `func_` in that module;
- a method, `p.area()`: see above;
- a static method, `T.make()`: callee `member` with `flag_static`, no receiver;
- a checked conversion, `i16(count)`: the callee has `flag_type_ref`, `resolved` is none,
  the call's `type_id` is the target type;
- a construction, `Point(x = 1.0)`: callee has `flag_type_ref`; `resolved` is the type's
  `init` when it has one; otherwise each argument's `text` is the field name and its
  `resolved` the `field`;
- the core functions `print`, `assert`, `trap`, `format`, `size_of`: callee is a bare
  `name` with `flag_builtin` and no `resolved`.

`format_text.text` is the literal piece as written, still escaped (decode it as
`back/ir/lower/text.lucb` does). `format_field.left` is the value; a field with a format
spec (`{x:.2}`) is rewritten by the checker into a call that writes to a sink, so a
lowering that supports specs reads that call.

### Types: `type_id`

Every expression, type node and declaration carries `type_id`, an index into
`checker.table` (`sema/types.lucb`). The low ids are fixed: `types.none_id` (0, no type),
`unit_id`, `bool_id`, `i8_id` ... `usize_id`, `f32_id`, `f64_id`, `char_id`, `str_id`, and
`untyped_int_id` / `untyped_float_id` for a literal no context typed. Compare a scalar by
id: `e.type_id == types.f32_id`.

Anything else is read from the table:

```
let t = checker.table.get(e.type_id)    # a types.Type
match t.kind: ...                        # types.Kind
```

`Type` has `kind`, `elem` (the pointee, element, optional's payload or function result),
`args` (function parameters, tuple members, a generic's arguments), `length` (an array's),
`is_const`, and `decl` (the declaration node of a struct, enum or module). So:

- `f32[4]` is `Kind.array` with `elem = f32_id` and `length = 4`; it is a vector, with
  lane-wise operators, when `checker.table.is_vector(id)` (8 or 16 bytes of integer or
  float lanes). Fixed arrays of other sizes are the same kind without the operators.
- `Point*` is `Kind.pointer` with `elem` = the struct's id; `const Point*` sets `is_const`.
- A struct's fields are `checker.table.get(id).decl.body`, the `field` nodes, each with
  its own `type_id`.
- `checker.table.describe(out, id)` writes a type as source spells it, for messages.

What a `type_id` does not carry is the conversion a use needs. The checker inserts no
conversion nodes: a value of one type used where another is expected (an `i32` argument
to an `i64` parameter, a value into an optional) keeps its own `type_id`, and the backend
converts at the use by comparing it with the context's type (the parameter's type in the
function type's `args`, the variable's `type_id`, the field's). Literals are the
exception: a literal that took its type from context has that type written on it. For an
arithmetic `binary`, the IR lowering computes in the left operand's type, or the right's
when the left is an untyped literal (`back/ir/lower/operators.lucb`); `x * 2.0` with `x:
f32` is an `f32` multiply.

### Names: `resolved`

| Node | `resolved` |
|---|---|
| `name` of a local | its `let_` / `var_` node |
| `name` of a parameter | the `param` node |
| `name` of a `for` variable | the `for_`'s `let_` binding |
| `name` of a constant, global, function | the top-level declaration, in whatever module |
| `name` of a from-imported name | the imported declaration itself |
| `name` of an imported module | the module's tree |
| `call` | the `func_` called; none for a core function, a conversion, a function value |
| `member` | the `field`, method `func_`, `enum_case`, or the module's declaration |
| `import_`, `from_import` | the module's tree |

Locals are identified by their declaration node: a lowering keeps a table from `let_`,
`var_` and `param` nodes to its own registers or slots, as `back/ir/lower/function.lucb`
does. Names never need to be looked up by spelling.

### What the checker changed

The checked tree is not exactly what was written:

- unused imports, unused private functions and unused locals are removed (each with a
  warning); an `if` whose condition is a constant becomes the `block` of the branch taken;
- statements after a `return`, `break` or `continue` are cut;
- `try x` becomes a `group`, and a failing operation in it a `propagate` node;
- lambdas become hidden module functions `__lambdaN`;
- a `for` over a type with an `iterator()` method becomes a block with a `while let`.

A snippet subset that excludes failure, lambdas and iterators meets only the first two.

## The model to follow

The C and native backends lower this same tree to an IR, `back/ir/lower/`: `program.lucb`
walks `checker.modules` and their declarations, `functions.lucb` sets up a function's
receiver and parameters and lowers its body, `statements.lucb` and `expressions.lucb` take
each node kind, `calls.lucb` the call shapes above, and `expressions.lucb`'s `value(e,
want)` does the conversions. A third backend is the same walk with another target.

`tests/embed/` checks this contract: the snippet root `root/`, the diagnostics, and a walk
(`walk.lucb`) that must meet every node kind the Code node's subset accepts.
