# The Guide

One topic per chapter, each complete on its subject. Where the [Tour](../tour/README.md)
gives a first look, the Guide gives every form and rule you will meet, with examples, and
links to the [Reference](../../language/base.md) for the precise wording.

**The language**

1. [Syntax and names](01-syntax.md): layout, comments, naming, scope, reserved words
2. [Types](02-types.md): numbers, text, arrays, spans, pointers, optionals, tuples, vectors, layout
3. [Expressions and bindings](03-expressions.md): variables, globals, operators, conversions, equality
4. [Control flow](04-control-flow.md): `if`, loops, iteration, `match`, labels, `defer`
5. [Functions and methods](05-functions.md): parameters, defaults, named arguments, methods, function values
6. [Structs, enums and unions](06-structs-and-enums.md): fields, initialisers, cases, flags, unions
7. [Generics and interfaces](07-generics-and-interfaces.md): type parameters, constraints, interfaces, the standard interfaces
8. [Errors](08-errors.md): optionals, failure, `try`, `catch`, `else`, error codes, traps, assertions
9. [Memory](09-memory.md): pointers, `new` and `free`, allocators, arenas, ownership, what is checked

**Programs**

10. [Modules and packages](10-modules-and-packages.md): files, every form of import, manifests, dependencies, `luc`
11. [Testing](11-testing.md): `test` blocks, test files, running them
12. [Concurrency](12-concurrency.md): threads, atomics, `sync`
13. [C](13-c.md): declaring C functions and types, C sources and libraries, `bind`, exporting
14. [Luce](14-luce.md): using Base modules from Luce
15. [Low-level tools](15-low-level.md): inline assembly, attributes, `volatile`, freestanding programs
16. [Building and debugging](16-building.md): the compiler's commands, targets, the cache, traps, crash reports, debuggers

**[Gotchas](gotchas.md)**: the things most likely to surprise you, in one list.
