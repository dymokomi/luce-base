# Plan

The one to-do list, in the order to close it. Each item names its gate: the test that
turns it from open to done. [`STATUS.md`](STATUS.md) is the matrix of what is verified,
limited, planned, or excluded today; nothing is listed here that already exists.

## Active priority

The standard library (`math`, `net` with HTTP/1.1 and WebSocket, `io`, `files`,
`strings`) is in place; [NET_PROTOCOLS.md](NET_PROTOCOLS.md) holds the protocol
contracts. TLS is paused and `luce-server` is a separate package;
[ECOSYSTEM.md](ECOSYSTEM.md) defines those boundaries.
The compiler items below remain a backlog and are pulled forward only when they block
that work. Native compilation remains the primary execution and hardening target.

### Compiler backlog

1. **Splitting a life at a call.** The allocator gives each temporary
   one place for its whole life; a value live across a call takes a
   callee-saved register or the frame, where a split would let its two halves
   take different registers, and the generators' fixed scratch registers
   (x9–x13, r10, r11, xmm8–xmm11) are not in any pool. Gate: the
   `tests/optimization` limits lowered again, the native fixpoint kept, the
   compiler's own build time recorded in `docs/STATUS.md`.
2. **Every error in one pass, with notes.** The checker stops at the first
   error and names no second location. Gate: the rejection suites report every
   error of a program with several, and a note names the other site (the
   earlier declaration, the escaping local) where one exists.
3. **`luce fmt`.** No formatter exists. Gate: every source in the tree is a
   fixpoint of the formatter, and the gate checks it.
4. **`luce bind`.** Bindings to C headers are written by hand. Gate: SDL3 and
   the Metal entry points bound by the tool, the `gui` and `metal` programs
   built on those bindings, and every FFI shape the tool emits proved by
   `tests/programs/abi`.
5. **The other native hosts.** arm64-linux and x86_64-macos have the target
   model and C emission, no native generator, and no gate; wasm32 is named by
   the specification and not modelled at all. Gate: a native generator and a
   green gate on each host, or wasm32 struck from §19.5.
6. **Optimized debugging.** Development DWARF and packaged artifacts are implemented
   (`docs/DEBUGGING.md`). What remains is location tracking for optimized user code and
   higher-level presentation of payload enums and Luce ARC values. Gate: correct variable
   locations across optimization, inlining, calls and scope exit in both debuggers.
7. **Further library breadth.** TLS belongs to the paused `luce-tls` package. Graphics remains deferred: a portable window/input/GPU
   interface with a proving program on each supported host.
8. **`luce-ld`.** Everything links through the host's `ld` or `cc`. A linker
   of our own, as Zig carries one, in its own repository. Gate: a native build
   that needs nothing from the host toolchain.

### Hardening

The fuzzer (`tools/fuzz.py`) mutates the corpus and generates programs that must agree
across the four executions; the gate runs its short deterministic pass, and `--minutes M`
runs it for longer. Every finding becomes a test.

9. **Fuzzing campaigns before a release.** The generator has run for an hour at a time
   on one host. Gate: a run of several hours on each host recorded in `docs/STATUS.md`
   with the release it precedes, and no finding open.
10. **Sanitizers and a litmus suite.** No sanitizer run and no test of the
    orderings. Gate: the conformance and robustness programs built through the
    C backend at `-O0` and `-O2` under address, undefined-behaviour, and thread
    sanitizers as a gate step; a litmus suite for the atomic orderings of §15.1 under
    `tests/platform`.


11. **The shape of the compiler, from the audit of 2026-09-14.** The remaining work
    of `~/dev/luce-base-audit-2026-09-14.md`, in order: unit tests for the standard
    library, each module's `test` blocks run against the archive, which first needs
    `library_reference.py` to read a header box; every runtime
    layout and mode named once and shared by the C emitter and the lowerer (error
    layout, allocator vtable, `lb_fmtbuf`, memory orders, program modes) and the Win32,
    AppKit, Metal, and GDI numbers named in the adapters; `back/c/emit.lucb`,
    `sema/check.lucb`, `back/ir/lower.lucb`, and the native generators split along the
    seams the audit names, with the tree helpers and type layout written once; the
    header box and `# mark:` sections in every file and `##` on every public
    declaration; the 36 functions over 100 lines split at their named seams; fallback
    glyphs confined to their cell and an unknown font family refused by name; the
    window adapters deciding modifier, focus, and minimize events once. Gate: the
    audit's metrics table reads header 55/55, marks in every file over 150 lines, no
    function over 100 lines but the named dispatches, and `src/std` with `test` blocks
    run by `test.sh`.
12. **Emit only required standard-library code.** Both backends currently emit every
    nongeneric standard function and global, including unused Unicode tables. A tiny
    native hello program at opt 0 and opt 3 occupies 991,024 bytes on ARM64 macOS with
    the Unicode 17 library. Gate: unused module functions and passive tables disappear
    while required runtime roots, callbacks, exported functions, interface witnesses
    and observable global initialization remain correct through both backends and
    native bootstrap. Record linked sizes and keep this compiler optimization separate
    from the standard-library correctness milestone.
