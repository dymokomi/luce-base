# Windows validation record

Local work on 2026-09-12, on Windows x64 with MinGW-w64 GCC 16.2 and Python 3.14.
All eight repositories were updated with fast-forward-only pulls before changes;
each was already at its upstream main revision with a clean working tree.

The Vulkan SDK 1.4.357.0 was installed. The machine exposes Intel Iris Xe and an
NVIDIA RTX A5500 Laptop GPU. Real Win32 windows and Vulkan presentation were
exercised on the interactive desktop, with Khronos validation and synchronization
validation enabled. Both application screenshots were visually inspected:
`build/windows-ui.png` and `build/windows-sphere.png` in the local Base checkout.

## Coverage

| Area | Windows evidence |
| --- | --- |
| Seed | 585 compiler tests; dedicated runtime and Windows process tests |
| Base bootstrap | C snapshot and fresh C++ seed routes; two native generations compared for identical emitted C and assembly |
| Base compiler | 88 internal unit tests |
| Base language | Existing positive/trap fixtures in native opt 0–3 and C debug/release; 479 positioned rejection cases; additional binary operand-order regression in all six modes |
| Base samples | 78 compiled sample executions across six modes |
| Source/path text | LF/CRLF, UTF-8, Japanese/emoji source and output names, Unicode TEMP, empty/quoted/trailing-backslash/metacharacter arguments, nested subprocess capture |
| Paths/files | Drive-relative and absolute paths, UNC and extended roots, mixed separators, normalization, 64-bit seeks, timestamps, permissions, hardlinks, actual symlinks, no-follow, rename while open, directory-relative operations and temporary publication |
| Networking | IPv4, IPv6, dual stack, TCP/UDP, zero-length/truncated datagrams, nonblocking operations, socket options, DNS, deadlines and cancellation in six modes |
| Protocols | HTTP/WebSocket contracts in six modes, 10,000 malformed inputs, independent handshake vectors and large frames |
| Floating-point text | More than 5,000 exact rational oracle cases, f32/f64 round trips, all four rounding modes, locale preservation and injected failures in six modes |
| Native unwind | Windows SDK context capture and virtual unwinding through recursive, stack-probed Base frames; six modes |
| Window/GPU | Real Win32 input/resize/close and Vulkan frame presentation in six modes; 63 Vulkan record layouts checked field-by-field against the SDK |
| Luce compiler | 38 internal tests through native and C; all 237 conformance/proving-program source files, including interpreter behavior, compiled modes, rejection diagnostics, docs and tooling |
| Luce interop | Fields, descriptions, defaults, values, objects, views, interfaces, retained callbacks, workers, GPU-frame ownership, JSON and worker cleanup in six modes |
| UI/3D | Base and Luce consumer suites through native opt 0–3 and C debug/release |
| Demos | Both applications built and presented at all four native levels; interaction and cleanup checks; final optimized executables in `luce-demos/build/` |
| Servers | Both packages' independent HTTP/static-file/WebSocket/concurrency/shutdown suites at all four native levels |
| Fuzzing | Base: 120 mutations and 12 generated programs; Luce: 60 mutations and six generated programs; no findings after fixes |

The Unix-only FIFO static-file test is explicitly inapplicable on Windows. Hidden
editor files are excluded from fixture discovery, matching the Unix shell gate's
glob behavior; the tracked hidden editor copy beside `invalid_utf8.lucb` is not a
language fixture. The actual invalid UTF-8 rejection remains tested.

## Regressions found and fixed

CRLF had affected bracketed suites in both lexers, Luce multiline-string indentation
and documentation output. Python generators had also depended on the host's text
encoding. Explicit UTF-8 and source-level CRLF handling resolve those differences
without changing existing LF source behavior.

GCC exposed unspecified operand evaluation order in both C emitters. Operands with
observable effects now execute left-to-right before the C operation. A dedicated
fixture and differential fuzzing cover this behavior.

Windows-specific fixes include LLP64 C types, the Win64 call ABI, COFF/TLS/SEH,
Unicode OS APIs, compiler scratch/output publication, subprocess quoting and
temporary files, Winsock handles/options/errors, and CRT numeric-locale calls.
These boundaries stay within the compiler target model and standard-library
modules; libraries and examples use their portable interfaces.

## Scope and reproduction

Commands and platform limitations are in [WINDOWS.md](WINDOWS.md). Test runners
retain JSON and text logs under each repository's ignored `build/` directory;
the seed uses `build-windows/`. These local artifacts are not source dependencies.

Generated Base C was cross-compiled for Linux x86-64 and macOS ARM64 using Zig on
Windows, and generated Luce compiler C was linked for Linux. These checks catch
foreign API leakage and C portability errors. **Mac/Linux binaries were not
executed in this session**; their existing host CI remains the runtime gate.

Windows CI workflows were added to all eight repositories. Hosted CI covers CPU
contracts and compilation; actual Vulkan presentation requires suitable hardware
and an interactive desktop. Remote CI has not been run from this local session.
Dependency pins are updated in local commit order: seed, Base, Luce, UI, 3D,
server, then demos/application. Publish dependencies before commits that pin them.
