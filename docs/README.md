# Documentation

- [Language](language/base.md) — Luce Base, the language this compiler
  implements and is written in, including this compiler's tooling contracts.
  The seed implements the same language; Base's package tooling evolves here.
- [Design](DESIGN.md) — the shape of the compiler.
- [Status](STATUS.md) — the one current matrix of what is verified, limited,
  planned, or excluded.
- [Plan](PLAN.md) — what remains, in order, and the gate that closes each item.
- [Error-handling research](ERROR-HANDLING-RESEARCH.md) — a cited proposal for
  reducing repeated `try`, with current compiler limitations and safety criteria.
- [Ecosystem](ECOSYSTEM.md) — the packages around the compiler and their boundaries.
- [Base interop contract](BASE-INTEROP.md) — ownership and lifetime rules at the
  Base/Luce boundary.
- [Callbacks and workers](CALLBACKS-WORKERS.md) — retained callbacks and application
  worker threads across that boundary.
- [Public package imports](PACKAGE-IMPORTS.md) — exports, local dependencies,
  canonical standard modules and relocatable source bundles.
- [Package descriptions](PACKAGE-DESCRIPTION.md) — the current compiler-to-compiler
  API format, its records and executable adapter limits.
- [Debugging](DEBUGGING.md) — native source debugging.
- [CI](CI.md) — the hosted gate.
- [Library](LIBRARY.md) — the runtime's public surface (core, memory, io, os, thread,
  sync, strings, …), generated from its source. Everything else a program imports is a
  package: `luce-std` (files, paths, processes, networking, math, UTF-8, Unicode, crash
  reports), `luce-window` (windows, input, drops), `luce-gpu`, `luce-fonts`,
  `luce-clipboard` and `luce-dialogs`, each documenting its own modules.
- [Platform architecture](PLATFORM-ARCHITECTURE.md) — OS, CPU and GPU boundaries.
- [Windows](WINDOWS.md) — the x86_64-windows target: toolchain, OS contracts, checks.
- [Native optimizations](NATIVE-OPTIMIZATIONS.md) — the IR passes and their safety rules.
- [Native performance](NATIVE-PERFORMANCE.md) — current measurements against C.
