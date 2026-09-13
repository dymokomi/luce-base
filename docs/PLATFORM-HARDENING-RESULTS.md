# Platform hardening results — 2026-09-13

This closes the Windows integration audit of 2026-09-13. The implementation keeps
native compilation as the primary path and preserves the application → package →
standard API → platform adapter dependency direction. See
[Platform boundaries](PLATFORM-ARCHITECTURE.md) for the resulting ownership and
module layout.

## Changes

| Audit item | Result |
| --- | --- |
| W01: fixed compiler memory ceiling | Compiler-owned growing arenas keep stable addresses and release command storage on all hosts. Bootstrap snapshots and fresh Seed/native comparisons are refreshed. |
| W02: Windows console-close shutdown | Standard termination subscriptions wait for bounded cleanup acknowledgement. The server drains requests and joins workers before releasing its subscription. Tests deliver actual console close separately from Ctrl-Break. |
| W03: Windows test ownership and Unicode paths | Test jobs own child processes and preserve case identity and partial reports. Compiler workspaces use standard filesystem ownership and private child cwd/environment settings. Native, debug, C and static-library Unicode builds no longer require short filenames. |
| W04: native operations in common code | Shared Windows ABI/text helpers and standard filesystem/process primitives replace duplicated compiler and server native calls. Compiler host-tool policy has its own adapter. |
| W05: Vulkan presentation coupling | Shared Vulkan rendering uses a native presentation adapter and named registry constants. An independent Vulkan SDK oracle validates ABI layouts and constants. |
| W06: tooling and x86 organization | Generators write deterministic UTF-8/LF bytes with a documented Python prerequisite; Seed encoding is repaired. x86 ABI, object format and unwind policy have separate modules. |

Full gates also exposed and corrected:

- Seed's qualified and infallible constructor handling during fresh bootstrap.
- Imported external-variable mutability/address checking and unused C external
  declarations.
- Releases of optional process buffers that had never been allocated.
- Windows DWARF sections, relocations, frame descriptions and debug-file handling.
- Early returns from Windows thread sleeps. A monotonic deadline now enforces the
  requested minimum, with finite chunks for long waits. Independent Windows
  performance counters check repeated 1, 2, 3 and 17 millisecond waits in seven modes.
  This accounts for the documented [Windows timer rounding](https://learn.microsoft.com/en-us/windows/win32/api/synchapi/nf-synchapi-sleep).
- Unused Windows environment storage retained in POSIX programs. In the Linux
  thread failure fixture, assembled thread-local storage fell from 263,328 bytes
  to 128 bytes.
  Storage pruning preserves initializers, referenced addresses, assembly,
  retention attributes and application linkage.
- Test-fixture executable naming, child-path resolution, executable permissions,
  a Base-only path test incorrectly sent to Seed's interpreter, and a folded YAML
  command that omitted a Windows boundary check.

## Tested revisions and CI

The revisions below are implementation/dependency commits. Documentation-only
follow-up commits do not change the tested compiler or package sources. Correctness
workflows contain separate macOS ARM64 and Linux x86-64 jobs; Windows workflows
run on Windows x86-64.

| Repository | Revision | macOS + Linux | Windows |
| --- | --- | --- | --- |
| luce-seed | `65a26f0` | [Passed](https://github.com/dymokomi/luce-seed/actions/runs/34739956960) | [Passed](https://github.com/dymokomi/luce-seed/actions/runs/34739956959) |
| luce-base | `47ab684` | [Passed](https://github.com/dymokomi/luce-base/actions/runs/34748814121) | [Passed](https://github.com/dymokomi/luce-base/actions/runs/34748814114) |
| luce | `5c3fc3f` | [Passed](https://github.com/dymokomi/luce/actions/runs/34749283494) | [Passed](https://github.com/dymokomi/luce/actions/runs/34749286097) |
| luce-server | `2091231` | [Passed](https://github.com/dymokomi/luce-server/actions/runs/34748815780) | [Passed](https://github.com/dymokomi/luce-server/actions/runs/34748815833) |
| luce-ui | `66b6c8a` | [Passed](https://github.com/dymokomi/luce-ui/actions/runs/34749288605) | [Passed](https://github.com/dymokomi/luce-ui/actions/runs/34748816150) |
| luce-3d | `91b668e` | [Passed](https://github.com/dymokomi/luce-3d/actions/runs/34748816737) | [Passed](https://github.com/dymokomi/luce-3d/actions/runs/34748816847) |
| luce-http-server | `a8e3598` | [Passed](https://github.com/dymokomi/luce-http-server/actions/runs/34748817156) | [Passed](https://github.com/dymokomi/luce-http-server/actions/runs/34748817164) |
| luce-demos | `e96ab64` | [Passed](https://github.com/dymokomi/luce-demos/actions/runs/34748817562) | [Passed](https://github.com/dymokomi/luce-demos/actions/runs/34748817627) |

The website repository, `luciaos`, remains unchanged on `luce-base-site` at
`e9bc106`.

## Local and independent evidence

- Fresh Seed and two native Base generations emit identical C and assembly for
  the final source. Full hosted gates compare all three bootstrap snapshots and
  native fixed points.
- The final Windows Base artifact records 1,655 passing conformance cases,
  96 passing sample cases and 28 passing OS-contract runs. The latter
  include the independent sleep regression in all seven execution modes. Its
  retained native generations have identical C and assembly outputs.
- Luce's full local gate passes: interop/ownership/package tests, 72 conformance
  programs, 146 rejections, 88 parsed/formatting cases and the gate's fuzz corpus.
- The complete local Base gate passes standard APIs, ABI tests, failure-injection
  sweeps, Metal rendering, 196 conformance programs, 479 rejections, 11 host platform
  programs, five-target emission, the 66-program native Seed corpus and fuzzing
  with zero findings.
  After the final Windows-only sleep correction, the library and clock fixtures
  were checked again in all six modes, followed by fresh bootstrap comparisons.
- Final demos pass real Metal UI/sphere rendering, interactions and clean output
  at native optimization levels 0–3 with Metal API/shader validation enabled.
- x86 cross-assembly comparisons preserve ordinary Linux/Windows code generation.
  Independent COFF DWARF validation and Windows GDB exercise source breakpoints,
  typed locals and stack traces.
- Server network checks pass at every native optimization level; three local
  heap checks report zero leaks. The test harness owns its complete POSIX process
  group and removes diagnostic helpers even after their parent exits. An
  independent file-lock regression checks that lifetime boundary, and the hosted
  macOS workflow completes both testing and cleanup.

## Scope of platform coverage

Compiler, standard CPU/OS APIs, server, package and interop contracts are tested on
all three hosts. Actual graphics rendering was exercised on local Metal hardware.
Hosted Windows validates Vulkan SDK ABI and CPU behavior; this audit does not
claim a Windows Vulkan hardware run. Linux window presentation and Vulkan rendering
remain future adapters, as described in the architecture document.
