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
- [Library](LIBRARY.md) — the standard library's public surface, generated
  from its source.
- [HTTP and WebSocket](NET_PROTOCOLS.md) — standard `net` protocol primitives,
  ownership contracts, limits and validation.
- [Platform architecture](PLATFORM-ARCHITECTURE.md) — OS, CPU and GPU boundaries.
- [Windows](WINDOWS.md) — the x86_64-windows target: toolchain, OS contracts, checks.
- [Desktop services](DESKTOP-SERVICES.md) — clipboard, files and process services.
- [Cursors](CURSORS.md), [text input](TEXT-INPUT.md), [fonts](FONTS.md) — window services.
- [GPU](GPU.md) — the Metal and Vulkan backends behind one drawing API.
- [Math](MATH.md), [Unicode](UNICODE.md) — library module contracts.
- [Native optimizations](NATIVE-OPTIMIZATIONS.md) — the IR passes and their safety rules.
- [Native performance](NATIVE-PERFORMANCE.md) — current measurements against C.
