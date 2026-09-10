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
| `math`, `math32` | Explicit special-value contracts, f64/f32 libm operations, precision helpers and checked integer operations; documented numerical contracts, independent reference vectors across 28 operations and exceptional-value checks under all four rounding directions | Final host gates and continued reference coverage |
| `net` | IPv4/IPv6 value parsing, canonical formatting and byte conversion; IPv4/IPv6 TCP/UDP, first/all-address resolution with owned results and blocking sockets; TCP Reader/Writer with explicit short transfers and recoverable write progress, closed zero values, checked close/adoption, close-on-exec handles, local/peer endpoint queries, configurable backlog, TCP half-close and explicit UDP truncation/empty-packet behavior; nonblocking controls, explicit accepted-socket mode, TCP no-delay/keepalive and kernel buffer settings; reusable readiness polling, bounded connection setup, borrowed deadline streams with cancellation and typed host error categories; sustained concurrent buffered transfers | Final host gates |
| `io` | Reader/Writer contracts, borrowed slice and buffered adapters, exact/all/bounded-copy helpers with confirmed progress, unbuffered stdin, synchronized libc stdout/stderr, explicit flush and formatting sink; sustained concurrent file/socket adapter coverage | Final host gates; seeking remains on file handles rather than the byte-stream interfaces |
| `files` | Owned Reader/Writer handles, open modes, seeking/sync, checked close, path/handle metadata and checked length/permission/timestamp updates; bounded streaming whole-file helpers, owned directory iteration, bounded depth-first traversal and descriptor-relative lookup/open, checked existence, single-entry mutation, bounded symlink reads, owned temporary files and atomic replacement and bounded copying with publication status; concurrent publication/read campaigns | Final host gates |
| `strings`, `utf8`, `unicode` | Linear forward/reverse byte searches and offset searches, byte and substring splitting with borrowed iterators, bounded substring replacement, ASCII case conversion, checked signed/unsigned radix conversion, locale-independent floating-point text conversion, an alias-safe builder, strict UTF-8 scalar operations, an allocation-free streaming decoder, pinned Unicode 17 full default casing/case folding, all four normalization forms and allocation-free extended grapheme iteration | Final host and downstream integration gates |

Do not silently change existing ASCII functions into locale-dependent Unicode
operations. Define Unicode version and invalid-input policy before exposing Unicode
case folding, normalization or grapheme operations. Full Unicode support may be
implemented in submodules, but any exclusions must be explicit in the readiness scope.
The [Unicode surface](UNICODE.md) now pins version 17.0.0, rejects malformed UTF-8
and keeps default Unicode operations separate from ASCII and language tailoring.

Using platform libm or OS calls through Base's C ABI is compatible with native
compilation. Agreement between a wrapper and the same libm is not an independent
accuracy test. Decide per function whether cross-host bit identity is required or
a published error bound is the contract; do not promise correctly rounded
transcendentals based only on a few approximate comparisons.

## Initial source-review targets

These observations prioritize contract tests; they are not a completed library audit.

- `math` and `math32` specify NaN propagation and signed-zero behavior and test exact
  bits. [Numerical contracts and evidence](MATH.md) document the surface and precision
  policy. Live Decimal references for log1p/expm1 and 4,838 offline high-precision
  vectors across 28 operations provide regression coverage, without asserting a
  global libm error bound. The contract suite covers all four host rounding directions
  and exposed two host defects now corrected in the wrappers: the sign of a zero
  remainder and the exact expm1(-infinity) limit.
- `net.resolve` now releases complete result chains on every exit and skips missing
  or undersized addresses; deterministic fixtures check cleanup. Sockets now have
  closed zero values, consume-before-close ownership, checked close-on-exec adoption,
  checked endpoint queries and recoverable write progress, IPv6/dual-stack endpoints,
  typed socket controls, readiness/deadline failure tests and sustained transfers.
- Standard output now borrows existing libc streams, locks each write and flushes
  only that stream. Stdin uses explicit unbuffered reads. Tests cover short reads,
  interruption, would-block, closed input, flush failure and sequential C interop
  ordering. Concurrent socket campaigns exercise the buffered adapters with allocation refused.
- File and directory helpers now cover interruption, delayed close errors and every
  allocation failure. Whole-file reads support streams and explicit limits; existence
  checks do not open paths. Metadata is compared with host headers, and mutation,
  atomic replacement/copy and traversal have independent fixtures and injected
  failures. Concurrent replacement campaigns verify complete generations during competing writes.
- String results mix borrowed views and allocations that must be freed through the
  current allocator, while Builder remembers its allocator. Make that distinction
  explicit. Builder self-append across growth, allocation failure, size overflow and closed
  lifecycle calls have regression coverage, alongside allocation failures in the owned text APIs.

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
`SocketAddress` pairs an IP value with a port and numeric IPv6 scope ID. Its
parser accepts IPv4:port and [IPv6%scope]:port; formatting uses canonical IP text.
It replaces the former IPv4-only `Address`. Listener and datagram binds default
to IPv6-only operation; explicit `ipv6_only=false` enables mapped IPv4 peers.
Resolution accepts either IP version by default, with an optional version filter.
`resolve_all` preserves every usable endpoint in host order, including duplicates;
its `ResolvedAddresses` collection retains the allocating context for destruction.
Fault tests cover malformed entries, allocation refusal, complete OS-chain cleanup,
and destruction under a different allocator.
The IPv6 regression compares endpoints with host socket headers, exercises
IPv4/IPv6/dual-stack TCP and UDP, and checks nonzero scope layout and ownership
on bind failure and resolver completion.

Socket controls preserve unrelated file-status flags and retry interrupted calls.
Accepted connections have an explicit blocking-mode policy on both hosts. Buffer
settings expose the values reported by the host; Linux accounts for extra kernel
bookkeeping in those values. TCP keepalive uses host timing defaults and is not an
operation deadline. See [socket options](https://man7.org/linux/man-pages/man7/socket.7.html),
[TCP controls](https://man7.org/linux/man-pages/man7/tcp.7.html), and
[file status flags](https://man7.org/linux/man-pages/man2/F_GETFL.2const.html).

`Poller` owns reusable wait storage while borrowing watched descriptors. Individual
socket waits use stack storage. Both preserve an absolute monotonic `Deadline`
across interruptions; a readiness result never guarantees that later blocking I/O
will meet that deadline. Callers use nonblocking transfers and retry would-block.
Cancellation is a shared one-way atomic signal, checked around each poll with
kernel waits capped at 10 ms when cancellation is supplied; scheduler delay remains
possible. A descriptor occupies one slot because macOS poll does not report duplicate
entries consistently. Deterministic clock/syscall tests cover deadline accounting,
error cleanup and cancellation precedence, alongside real TCP/UDP readiness and
cross-thread cancellation. See [poll semantics](https://man7.org/linux/man-pages/man2/poll.2.html).

`Connection.connect` uses nonblocking establishment internally, waits for completion,
and checks `SO_ERROR` before returning an owner. It accepts an absolute deadline,
cancellation and a requested final blocking mode. Every failure after socket creation
closes the descriptor. Pre-expired or pre-cancelled attempts acquire nothing; DNS
lookup remains a separate blocking operation. Deterministic tests cover pending
failure, deadline/cancellation, poll/option failure and completion after expiration.

`DeadlineStream` borrows a nonblocking connection and implements Reader/Writer with
one absolute deadline across partial transfers. It allocates nothing, leaves socket
flags unchanged and rejects a connection whose nonblocking mode was removed. Tests
confirm exact progress after timeout/cancellation, retry only the remaining suffix,
and compare a real backpressured transfer's reported prefix with bytes at the peer.
The nonblocking requirement matters on macOS: a standalone C reproducer showed a
send blocking with MSG_DONTWAIT alone, consistent with the send-buffer checks in
[Apple's socket implementation](https://github.com/apple-oss-distributions/xnu/blob/main/bsd/kern/uipc_socket.c).
The wrapper retains per-call flags as well; [Linux documents their separate semantics](https://man7.org/linux/man-pages/man2/recv.2.html).

Network syscall errors share typed categories for refusal, reachability, address
conflicts, permissions, resource pressure, unsupported operations, abortion,
cancellation and timeout. Resolver failures distinguish temporary lookup failure
from unknown names and OS resource/permission failure. Error messages remain static
borrowed text. Cleanup captures the original category before closing handles so a
changed errno cannot hide the cause. Tests derive their errno/EAI constants from
host headers and exercise both acquisition/transfer paths and both resolver APIs.

String search uses the [two-way algorithm](https://monge.univ-mlv.fr/~mac/Articles-PDF/CP-1991-jacm.pdf)
with constant auxiliary storage and linear work. Forward and reverse searches
share one implementation through reversed byte indexing. Offsets are bytes;
search does not validate UTF-8 or stop at NUL. A Python reference corpus covers
exhaustive short binary strings, random bytes, overlaps, empty inputs, offset
bounds and long repetitive inputs. All searches remain usable under an allocator
that refuses every allocation.

`SplitIterator` borrows both input and separator, preserves empty fields and limits
parts without allocating. `split_by` allocates only its field array; `split_once`
and `split_last` return borrowed pairs. Repeated splitting and replacement require
a nonempty separator; the one-shot split functions define empty separators at the
start/end. `replace` matches nonoverlapping byte substrings, checks output growth
and an optional byte limit before allocation, and returns owned NUL-terminated
text. Python byte-operation references and every-allocation failure tests cover
these contracts, including deletion to an empty result and aliased inputs.

Builder capacity counts usable text bytes, excluding the terminator. Creating a
capacity of N reserves N+1 bytes, so writing N bytes requires no extra allocation;
zero selects 64 usable bytes. capacity/length queries return zero after destruction.
Failure tests verify no unexpected allocation within the promised capacity,
preservation when growth fails, and rejection of unrepresentable capacities.

Integer parsing covers signed/unsigned 64-bit values in bases 2 through 36, including
both range endpoints, optional signs and leading zeroes. It rejects whitespace,
embedded NUL, separators, invalid digits and overflow. Formatting emits canonical
lowercase digits into caller storage without a terminator, leaving it unchanged on
failure. The Python arbitrary-precision reference corpus covers all bases, boundary
neighbors, random wider-than-64-bit values and malformed mutations, with every
operation run under an allocator that refuses allocation.

Floating-point parsing accepts complete ASCII decimal syntax and signed,
case-insensitive inf/infinity/nan. It rejects overflow and malformed text, preserves
signed zero and accepts rounded underflow. Separate strtod_l/strtof_l calls avoid
double rounding for f32. Formatting uses 17/9 significant digits and caller storage;
it promises finite round trips under round-to-nearest, not shortest decimal text.
Both use the C numeric locale and honor the calling thread's rounding mode without
changing the process locale. Decimal parsing copies through the current allocator;
formatting only needs a temporary libc locale. Failure paths release these resources
and leave output storage unchanged. Exact-rational IEEE reference vectors, random
finite values, midpoint/subnormal/overflow boundaries, rounding-mode checks and
injected locale/conversion/formatting failures run in all six configurations. Tests
preserve an existing thread locale, using a comma-decimal locale when installed.

The UTF-8 Decoder retains a partial scalar across arbitrary chunk boundaries and
returns a scalar only after its final byte. It rejects impossible prefixes as soon
as they arrive; finish distinguishes incomplete EOF from malformed bytes. Errors
remain latched until reset, and no replacement characters are synthesized. The
inline state needs no allocator. Scalar and streaming implementations live in
separate fragments of the same utf8 module. Tests stream every Unicode scalar and
compare malformed prefixes, failure timing, EOF, reset and repeated errors against
Python's strict codec in all six configurations under a refusing allocator.

Concurrent transport tests run four Base clients against independent POSIX peers,
over both IPv4 and IPv6. Each client sends and verifies two MiB through differently
sized borrowed read/write buffers and a deadline stream, with small socket buffers,
short peer writes and a final half-close/EOF check. Every byte carries its stream
identity and position. All six configurations execute the same workload.

Concurrent publication tests run four Base writers, each replacing the same path
64 times with varying content and length, while three independent POSIX readers
open and validate snapshots. Base readers also use read_limit during the writes.
Every read must match a complete published generation and its size; selected writes
request synchronization, every success reports publication, and the test directory
must contain no leftover temporary files. This checks live atomicity and ownership;
it does not simulate power loss or establish crash durability for a filesystem.


## Scaling measurements

`tests/programs/stdlib_scaling` records three repetitions at each native optimization
level, with setup and verification outside the operation timer. It varies byte-search
and adversarial normalization inputs from 64 KiB to one MiB, and stream/file copying
from one to 16 MiB. Every result is checked. Allocator counts exclude fixture storage;
file copying must keep the same allocation count and peak across sizes, streaming and
search allocate nothing, and normalization has a linear memory bound. Time ratios
are observations, not noisy pass/fail thresholds. Normalization's stable ordering
uses an O(n log n) algorithm; a nearly linear measurement is not a stronger guarantee.

The gate retains `build/stdlib-scaling.json` and `build/net-transfer.json` on both
hosts. The latter measures the entire verified four-client TCP campaign, including
process startup, two IP versions and both transfer directions. Workers run with an
allocator that refuses allocation. These measurements include loopback, page cache,
validation and scheduling effects; file copying does not request durable sync.

Initial ARM64 macOS measurements at native opt 3: a one-MiB search pair took 17.6 ms,
one-MiB adversarial normalization 692 ms, and a 16-MiB file copy 18.5 ms. Growing the
largest inputs fourfold multiplied these times by 3.93, 4.05 and 4.01 respectively.
Stream copying and searching allocated zero blocks; file copying used two blocks
with a 195-byte peak for this temporary path, independent of payload size.
Normalization used three blocks with a four-MiB peak for a one-MiB input. The verified
TCP campaign moved 32 MiB of bidirectional payload at about 92 MiB/s. These are one
machine's observations while other compiler checks were running, not performance
promises.

The [0.12.0 candidate gate](https://github.com/dymokomi/luce-base/actions/runs/34466037569)
passed on both hosts at commit `ebfbf7f`. Its retained artifacts record these native
opt 3 results; rates are MiB/s, with one-MiB text and 16-MiB copy inputs:

| Operation | x86-64 Linux | ARM64 macOS | Allocator bound observed on both hosts |
| --- | ---: | ---: | --- |
| Forward/reverse search pair | 29.74 | 40.27 | Zero allocations |
| Adversarial normalization | 0.75 | 0.99 | Three allocations; four-MiB peak |
| Stream copy | 5082.26 | 1834.23 | Zero allocations |
| File copy | 768.42 | 452.64 | Two allocations; payload-independent peak |
| Verified TCP campaign | 97.37 | 102.44 | Worker allocation refused |

The largest fourfold input increase multiplied search time by 3.99/3.95 and
normalization time by 4.02/4.12 on Linux/macOS. Copy timings varied with caching and
scheduling; they do not establish a universal throughput or timing ratio. File-copy
allocator peaks were 107/195 bytes because temporary path lengths differed.
