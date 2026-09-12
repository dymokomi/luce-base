# Documentation

- [Language](language/base.md) — Luce Base, the language this compiler
  implements and is written in, including this compiler's tooling contracts.
  The seed implements the same language; Base's package tooling evolves here.
- [Design](DESIGN.md) — the shape of the compiler.
- [Status](STATUS.md) — the one current matrix of what is verified, limited,
  planned, or excluded.
- [Plan](PLAN.md) — what remains, in order, and the gate that closes each item.
- [Package rewrite TODO](PACKAGE-REWRITE-TODO.md) — the active cross-project
  checklist, with completion evidence and a [file-level scope](PACKAGE-REWRITE.md).
- [Reported defects](REPORTED-DEFECTS.md) — dispositions and regression evidence
  for the nine supplied correctness reports.
- [Error-handling research](ERROR-HANDLING-RESEARCH.md) — a cited proposal for
  reducing repeated `try`, with current compiler limitations and safety criteria.
- [Base interop contract](BASE-INTEROP.md) — ownership and lifetime rules for the
  package rewrite; implementation progress is tracked in the TODO list.
- [Public package imports](PACKAGE-IMPORTS.md) — exports, local dependencies,
  canonical standard modules and relocatable source bundles.
- [Package descriptions](PACKAGE-DESCRIPTION.md) — the current compiler-to-compiler
  API format, its records and executable adapter limits.
- [Debugging](DEBUGGING.md) — native source debugging.
- [CI](CI.md) — the hosted gate.
- [Library](LIBRARY.md) — the standard library's public surface, generated
  from its source.
- [HTTP and WebSocket](NET_PROTOCOLS.md) — standard `net` protocol primitives,
  ownership contracts, limits and validation.
