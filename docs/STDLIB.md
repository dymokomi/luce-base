# Standard-library readiness

This is the active first stage of [the ecosystem roadmap](ECOSYSTEM.md). Completion
means a defined API surface with precise contracts and repeatable evidence, rather
than an unlimited claim that no defect can remain. All five modules must pass before
`luce-tls` implementation starts.

## Contracts first

For every public operation, specify inputs, result, ownership/borrowing, allocator,
mutation, partial progress, error category, empty input, resource lifetime and thread
behavior. Specify which operations may block and how deadlines/cancellation apply.
Document platform differences instead of hiding them behind generic errors.

Keep byte I/O, text decoding and path handling distinct. Standardize Reader/Writer
partial-progress semantics so files, sockets and later TLS compose without adapters
that silently lose data. Separate read-some/write-some from read-exact/write-all.
Define EOF, zero-length operations, interruption, would-block and timeout separately.

## Module scope

| Module | Current source | Required work |
| --- | --- | --- |
| `math` | Mostly f64 libm wrappers, classification and a small integer API | Floating-point contracts for NaN, signed zero, infinities, subnormals, rounding and domain/range errors; documented accuracy per function; f32/f64 coverage; stable elementary helpers such as log1p/expm1, nextafter, copysign, fma and decomposition/scaling; explicit checked integer behavior |
| `net` | IPv4 TCP/UDP, first-address resolution and blocking sockets | IPv4/IPv6 address parsing/formatting and resolution results, TCP/UDP lifecycle, endpoint queries, socket options, configurable backlog, shutdown, nonblocking/readiness support, deadlines/cancellation, precise errors and datagram truncation behavior |
| `io` | Writer, stdout/stderr and formatting sink | Reader/Writer contracts and adapters, buffered input/output, stdin, exact/all/copy helpers with limits, explicit flush, seeking where supported, ownership and close semantics; shared substrate for files, sockets and TLS |
| `files` | Whole-file read/write, readability probe and sorted directory names | Owned file handles and open modes, streaming, seek/position, metadata, directories/iteration/walk, create/remove/rename/copy, temporary files, atomic replacement, explicit sync/durability, symlink/path behavior and actionable errors |
| `strings` | Byte searches/slices, byte separator split, ASCII case conversion, decimal i64 and a builder | Document byte offsets/borrowed views; substring search/split/replace and bounded variants; checked size arithmetic, reserve/capacity and aliasing rules; numeric parsing/formatting; explicit UTF-8 validation/decoding and Unicode-aware operations separate from ASCII helpers |

Do not silently change existing ASCII functions into locale-dependent Unicode
operations. Define Unicode version and invalid-input policy before exposing Unicode
case folding, normalization or grapheme operations. Full Unicode support may be
implemented in submodules, but any exclusions must be explicit in the readiness scope.

Using platform libm or OS calls through Base's C ABI is compatible with native
compilation. Agreement between a wrapper and the same libm is not an independent
accuracy test. Decide per function whether cross-host bit identity is required or
a published error bound is the contract; do not promise correctly rounded
transcendentals based only on a few approximate comparisons.

## Initial source-review targets

These observations prioritize contract tests; they are not a completed library audit.

- `math.abs` uses a comparison/subtraction, so negative zero is retained. `min` and
  `max` use ordered comparisons, making NaN and equal-zero behavior operand-dependent.
  Specify intended semantics and test exact bits. Cover integer minimum values,
  division by zero, overflow and reversed clamp bounds.
- `net.resolve` releases its address-info allocation only after obtaining an address;
  cover every unsuccessful exit after acquisition. Endpoint queries currently discard
  `getsockname` errors. Socket close methods need explicit ownership and repeated-close
  contracts, including how copied handles are treated.
- `io.File.write` flushes all C streams before writing and lazily wraps descriptors.
  Define buffering, ordering, initialization/thread behavior and resource ownership
  rather than extending implicit global flushing into the general I/O abstraction.
- `files.read` relies on seek-to-end sizing; define streams, growing/shrinking files
  and bounded reads. Read/write interruption handling, delayed write/close failures,
  and directory-read error versus end-of-directory need direct tests. `exists` currently
  means readable-open succeeds, not general existence.
- String results mix borrowed views and allocations that must be freed through the
  current allocator, while Builder remembers its allocator. Make that distinction
  explicit. Exercise builder self-append across growth, allocation failure, size
  overflow, empty inputs and invalid lifecycle calls according to the chosen contract.

## Delivery slices

1. Freeze shared error, ownership and I/O contracts; inventory every current public
   operation against them. Start implementation with math edge-case contracts/tests,
   then add missing numerical operations in small reviewed commits.
2. Implement the shared I/O substrate and file-handle APIs, then complete file
   operations and failure behavior. This dependency order is internal to stage 1.
3. Complete networking on that substrate, including IPv6, deadlines and readiness.
4. Complete byte/text APIs and precision/round-trip behavior of numeric conversion.
5. Run cross-module examples and sustained campaigns; publish a Base release only
   after all five modules meet the gate. Fix and commit each bounded change promptly.

## Exit gate

- Every promised operation has reference documentation and contract tests; no known
  correctness defect remains open in these five modules.
- Native tests pass at optimization levels 0–3 on ARM64 macOS and x86-64 Linux,
  including direct Base use and Luce callers. Preserve native bootstrap equivalence.
- Numerical vectors use independent high-precision/reference evidence with explicit
  tolerances or bit expectations. Parsing/formatting has round-trip and boundary tests.
- Deterministic faults cover each allocation/acquisition failure, partial I/O, EINTR,
  would-block, EOF, timeouts, cancellation, flush/sync/close failure and cleanup. Assert
  outstanding allocations and descriptors, including failure after partial progress.
- Generated/property tests cover buffer boundaries, text and numeric inputs, handles
  and network state transitions; retain replay seeds and minimal regression cases.
- Sustained concurrent transfers, file copying and bounded streaming demonstrate
  resource limits. Record throughput, allocation counts and scaling on both hosts;
  use realistic large inputs to expose accidental quadratic behavior.
- Regenerate embedded standard-library sources, reference documentation and bootstrap
  snapshots where required. Run the full compiler gates and downstream Luce checks.

TLS and HTTP stay out of this standard-library milestone. Networking supplies their
transport substrate; the separate packages supply their protocols.
