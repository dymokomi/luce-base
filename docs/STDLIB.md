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
| `math`, `math32` | Explicit special-value contracts, f64/f32 libm operations, precision helpers and checked integer operations | Complete per-function accuracy/domain documentation and wider reference campaigns; rounding-mode and boundary coverage beyond the initial vectors |
| `net` | IPv4/IPv6 value parsing, canonical formatting and byte conversion; IPv4 TCP/UDP, first-address resolution and blocking sockets; TCP Reader/Writer with explicit short transfers and recoverable write progress, closed zero values, checked close/adoption, close-on-exec handles, local/peer endpoint queries, configurable backlog, TCP half-close and explicit UDP truncation/empty-packet behavior | IPv6 socket endpoints and complete resolution results, socket options, nonblocking/readiness support, deadlines/cancellation, broader error categories and sustained transfer coverage |
| `io` | Reader/Writer contracts, borrowed slice and buffered adapters, exact/all/bounded-copy helpers with confirmed progress, unbuffered stdin, synchronized libc stdout/stderr, explicit flush and formatting sink | Seeking where supported, broader concurrent and sustained-transfer coverage; confirm file/socket adapters are ready for the later TLS stage |
| `files` | Owned Reader/Writer handles, open modes, seeking/sync, checked close, path/handle metadata and checked length/permission/timestamp updates; bounded streaming whole-file helpers, owned directory iteration, bounded depth-first traversal and descriptor-relative lookup/open, checked existence, single-entry mutation, bounded symlink reads, owned temporary files and atomic replacement and bounded copying with publication status | Broader concurrent filesystem campaigns and error detail |
| `strings`, `utf8` | Byte searches/slices, byte separator split, ASCII case conversion, decimal i64, an alias-safe builder and strict UTF-8 scalar operations | Document byte offsets/borrowed views; substring search/split/replace and bounded variants; checked size arithmetic, reserve/capacity and aliasing rules; numeric parsing/formatting; streaming UTF-8 decoding and Unicode-aware operations separate from ASCII helpers |

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

- `math` and `math32` specify NaN propagation and signed-zero behavior and test exact
  bits. The accuracy gate has independent Decimal references for `log1p` and `expm1`;
  it does not establish a global error bound for all libm operations. Broaden those
  numerical campaigns, including host rounding modes and exceptional arguments.
- `net.resolve` now releases complete result chains on every exit and skips missing
  or undersized addresses; deterministic fixtures check cleanup. Sockets now have
  closed zero values, consume-before-close ownership, checked close-on-exec adoption,
  checked endpoint queries and recoverable write progress. Extend coverage to IPv6,
  readiness/deadlines, socket options and sustained packet campaigns.
- Standard output now borrows existing libc streams, locks each write and flushes
  only that stream. Stdin uses explicit unbuffered reads. Tests cover short reads,
  interruption, would-block, closed input, flush failure and sequential C interop
  ordering. Add sustained concurrent stream campaigns.
- File and directory helpers now cover interruption, delayed close errors and every
  allocation failure. Whole-file reads support streams and explicit limits; existence
  checks do not open paths. Metadata is compared with host headers, and mutation,
  atomic replacement/copy and traversal have independent fixtures and injected
  failures. Broader concurrent mutation campaigns remain.
- String results mix borrowed views and allocations that must be freed through the
  current allocator, while Builder remembers its allocator. Make that distinction
  explicit. Builder self-append across growth, allocation failure, size overflow and closed
  lifecycle calls now have regression coverage. Extend it to the remaining text APIs.

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

Socket creation uses atomic `SOCK_CLOEXEC`/`accept4` on Linux. macOS requires
separate descriptor flag updates; applications must coordinate socket
creation/acceptance with concurrent fork/exec. `Connection.over` transfers
ownership even on setup failure and is now fallible. Adoption on either host
requires the same fork/exec coordination. See the host contracts for
[socket creation](https://man7.org/linux/man-pages/man2/socket.2.html),
[acceptance](https://man7.org/linux/man-pages/man2/accept.2.html), and
[descriptor flags](https://man7.org/linux/man-pages/man2/F_GETFD.2const.html).

UDP receives use the host `recvmsg` layout and its output truncation flag.
Oversized packets are consumed with a `message_too_large` error, while a zero
length packet remains a successful receive. See [recvmsg semantics](https://man7.org/linux/man-pages/man2/recvmsg.2.html).

`IpAddress` parsing and formatting are implemented in Base. Bare values exclude
ports, interface zones and prefix lengths. Formatting follows the zero compression
and case rules of [RFC 5952](https://www.rfc-editor.org/rfc/rfc5952.html), with dotted
IPv4 tails for mapped IPv6. A fixed Python `ipaddress` corpus independently checks
parsed octets, canonical text, invalid inputs and round trips in all six configurations.
TCP/UDP endpoints still use the existing IPv4 `Address` until the next migration.
