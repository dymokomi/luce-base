# Public package description

`luce-base describe module.lucb` checks a Base module and writes its public API.
Luce consumes this description without parsing Base source. There is one current
format, identified by the first line `description 4`. Both compilers change
together; no older reader, alternate format flag or compatibility fallback exists.

The producer is `src/sema/describe.lucb`. The consumer is
`luce/src/sema/boundary.lucb`. This format describes language declarations; it does
not imply that every native signature already has an executable Luce adapter.
[The rewrite checklist](PACKAGE-REWRITE-TODO.md) tracks those adapters separately.

## Records

Records are newline-terminated. Top-level records start at column one; members
are indented four spaces. Declaration and member order follow the source, except
that a struct's representation/constructor records precede its other members and
conformances follow them. No function body or private field is emitted.

```text
description 4
module example
interface CounterView
    method value() -> i64
    mutating method increase(amount: i64) -> !
struct Counter
    representation private
    constructor init(start: i64) -> !
    storage value
    method value() -> i64
    mutating method increase(amount: i64) -> !
    static method zero() -> Counter!
    conforms CounterView
struct Point
    representation complete
    constructor memberwise
    storage value
    field var x: f64 = default
    field let label: str = default
```

| Record | Meaning |
| --- | --- |
| `description 4` | Required current format marker; Luce rejects a mismatch before importing declarations |
| `module name` | Entry module's filename stem; the consumer supplies its resolved package/module identity |
| `import module as alias` | Nonstandard dependency mentioned by a public signature or conformance |
| `standard module as alias` | Embedded standard-module dependency; distinct from a package source import |
| `foreign alias.Type kind` | Referenced foreign nominal type; kind is `struct`, `enum`, `interface`, `handle` or `opaque` |
| `func name(p: T) -> R` | Public function; a unit result omits the arrow/result |
| `p: T = default` / `field var name: T = default` | An omittable argument/field; Base evaluates the original checked expression or zero initialization |
| `p: T = caller.file` / `caller.line` / `caller.function` / `caller.location` | A caller fact evaluated at the consumer source call |
| `let name: T` | Public constant and its type |
| `struct Name` | Public struct with the member records below |
| `representation complete` | All direct native fields are public; this does not prove nested ownership or trivial copyability |
| `representation private` | At least one direct native field is private; the public fields do not describe the complete storage |
| `constructor init(p: T) -> !` | Actual public initializer; the arrow/effect is omitted for an infallible initializer |
| `constructor memberwise` | Base supplies implicit memberwise construction; normal Base initialization/visibility rules apply |
| `constructor private` | A private custom initializer suppresses public construction; its parameters/body are not emitted |
| `storage value` | Complete storage can cross as a copied value; hidden fields contain no untracked borrows, and public text/data can be rebased |
| `storage unavailable` | The native representation needs an explicit ownership contract before it can cross |
| `field var name: T` / `field let name: T` | Public mutable/immutable field |
| `method name(p: T) -> R` | Nonmutating instance method; `self` is implicit |
| `mutating method name(p: T) -> R` | Instance method requiring mutable native storage |
| `static method name(p: T) -> R` | Type method with no receiver |
| `interface Name` | Public interface; every requirement is described without needing a `pub` modifier on the requirement |
| `conforms Interface` | Declared conformance to a public interface; private interfaces are omitted |
| `enum Name as T` / `case name = N` | Integer-backed enum, its cases and evaluated case values; methods/conformance follow the cases |
| `handle Name destroy function` | Base's existing opaque-handle declaration and its checked finalizer |
| `type Name = T` | Alias to the described native type |
| `unavailable Name reason` | A generic declaration, payload enum, union or extern type outside this description's supported declaration forms |

Types preserve native spelling, including pointer/span qualifiers, arrays,
optionals, fallible results, tuples and callback signatures. Foreign nominal types
use the alias of their declaring module even inside those compound types. A native
handle is described as `handle` even though the Base type table represents it using
an opaque struct internally.

Imports include public method and constructor signatures and public interface
conformance. Private method bodies and private conformance must not add imports.
Aliases identify the declaration rather than creating a second native type.

## Consumer responsibilities and current limits

The reader restores field mutability, implicit receivers, method mutation,
constructor effects and interface conformance. Luce constructs the real Base value,
retains complete native storage, and owns copies of public text/data. Static,
nonmutating and mutating methods use typed adapters; mutation is written back even
when the method fails. Error text is owned before cleanup can invalidate it.
Aliases, bound methods and worker copies retain complete value state. Equality
compares rebased native values, including private fields.

The producer checks every native field before reporting `storage value`. Private
scalar state is copyable; private borrowed text/pointers/interfaces are unavailable
without an ownership contract. A private initializer disables only construction.
Unsupported methods are omitted individually; an unsupported initializer never
permits a memberwise bypass. An interface with an unsupported requirement cannot
lose that requirement and silently acquire a different native ABI.

Default availability is transported; default expressions stay in Base. Luce emits
used argument shapes with named native arguments, leaving omitted defaults to the
Base checker. Supported caller facts are materialized from the Luce source; a fact
whose native type cannot cross makes that signature unavailable. Tuple/optional
nesting and native integer spelling remain part of adapter identity even when two
native scalar types map to the same Luce type.

Owned-object exports, borrowing metadata and lifetime adapters follow the
[ownership contract](BASE-INTEROP.md) in I06–I07. Standard type import resolution
is tracked in I09. Interface execution remains a separate ownership gate.

## Verification

`tests/programs/describe_api/check.sh` checks constructors, static/nonmutating/
mutating methods, interface requirements/conformance, private visibility, foreign
types inside spans/tuples/optionals and explicit unavailable declarations. It also
executes the described Base constructor/interface behavior at native opts 0–3.
`describe_fields` checks record representation and mutability, and the conformance
suite compares an exact module description.

Luce's reader tests cover the format marker, defaults, constructors/methods and
unavailable storage/signatures. `test_base_values.py` exercises real initializers,
private state, value/static/bound methods, aliases, mutation before failure, text
ownership, native equality and worker copies at native opts 0–3 and both C modes.
Its negative cases reject hidden borrows, private constructors, private arguments
and unhandled initialization failures. Owned objects, interfaces and retained
callbacks remain separate gates.
