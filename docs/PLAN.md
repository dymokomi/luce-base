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

1. **The generators' scratch registers.** The allocator gives each temporary one
   place for its whole life, and the generators keep fixed scratch registers for their
   operands (x9–x11, x16, x17; r10, r11, xmm8–xmm11; on x86-64 no caller-saved integer
   register is in any pool, since the rest carry arguments). Splitting a life at a call,
   a copy out before and a copy back after, was measured on the compiler itself and
   rejected: the generators already reload a frame temporary at each use, so a split
   adds a store per crossing and gained nothing. Reading operands and addresses where
   they live (record copies, checked arithmetic, returns, aggregate arguments) halved
   the register-to-register moves in the compiler's own assembly; what is left of them
   is argument setup. On arm64 the argument registers x0–x7 are in the caller-saved pool
   and a call's integer arguments are placed by one parallel move (`integer_arguments`).
   On x86-64 r8, r9, rsi and rdi are in the SysV pool the same way (rcx and rdx stay
   scratch for the shifts and the divides; Windows reserves them, its arguments being
   staged through the shadow area). What remains: a generator that chooses its scratch
   around the operands' registers, so x9–x11 and r10, r11 could join too. Gate: the
   `tests/optimization` limits lowered again, the native fixpoint kept, the compiler's
   own assembly in `docs/STATUS.md` smaller again.
2. **Optimized debugging, the rest.** `--release --debug` optimises with exact lines,
   lexical scopes and inlined subroutines carried through the passes on the instructions,
   payload enums as a tag and a union of case records, and location lists for the named
   locals the optimiser lifts into temporaries (`docs/DEBUGGING.md`). What remains: Luce
   ARC values, which is Luce's to describe once it emits Base with symbols. Gate: the
   same breakpoints under full optimisation and inlining, in both debuggers.
3. **Further library breadth.** TLS belongs to the paused `luce-tls` package. Graphics remains deferred: a portable window/input/GPU
   interface with a proving program on each supported host.
4. **`luce-ld`.** Everything links through the host's `ld` or `cc`. A linker
   of our own, as Zig carries one, in its own repository. Gate: a native build
   that needs nothing from the host toolchain.

### Hardening

The fuzzer (`tools/fuzz.py`) mutates the corpus and generates programs that must agree
across the four executions; the gate runs its short deterministic pass, and `--minutes M`
runs it for longer. Every finding becomes a test.

5. **Fuzzing campaigns before a release.** An hour on arm64-macos precedes 0.15.0
   (`docs/STATUS.md`). Gate: a run of several hours on each host recorded there with the
   release it precedes, and no finding open. A campaign runs in a tree whose `build/`
   nothing else rebuilds; a gate in the same tree makes false findings.
6. **The shape of the compiler, from the audit of 2026-09-14.** The remaining work
    of `~/dev/luce-base-audit-2026-09-14.md`, in order: unit tests for the rest of the
    standard library under `tests/std` (`net`, `process`, `json`, `unicode`, `os`, the
    graphics modules through their proving programs); every runtime
    layout and mode named once and shared by the C emitter and the lowerer (error
    layout, allocator vtable, `lb_fmtbuf`, memory orders, program modes) and the Win32,
    AppKit, Metal, and GDI numbers named in the adapters; `back/c/emit.lucb`,
    `sema/check.lucb`, `back/ir/lower.lucb`, and the native generators split along the
    seams the audit names, with the tree helpers and type layout written once; the
    header box and `# mark:` sections in every file and `##` on every public
    declaration; the 36 functions over 100 lines split at their named seams; fallback
    glyphs confined to their cell and an unknown font family refused by name; the
    window adapters deciding modifier, focus, and minimize events once. Gate: the
    `tools/shape.py` reads no file without a header box, marks in every file over 150
    lines, no function over 100 lines but the dispatches named in `tools/shape.dispatches`,
    and no undocumented `pub` declaration; `tools/shape.limits` is the ratchet on the
    way there.
