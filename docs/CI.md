# Continuous correctness checks

The `Correctness` workflow runs on every push, pull request, manual dispatch and weekly
schedule, on macOS ARM64 and Linux x86-64. The job asserts its actual architecture and
retains toolchain versions, source revisions, complete gate logs and
failure replay records. Matrix jobs finish independently so a failing host cannot hide
another host's result.

Use `./test.sh` locally. Hosted jobs have a 90-minute deadline. Base and Luce conformance
commands each have a 60-second deadline, kill their subprocess groups on timeout, and
require exact success, rejection or trap statuses. A matching message does not excuse a
signal or timeout. Replay records under `build/failures/` name the command, working
directory, source revision and outputs.

Base's ordinary conformance gate runs C default, C release, native levels 0–3 and the
seed oracle (luce-seed's main) where applicable. Both optimized and unoptimized trap programs run.
The seed oracle is required for the full gate; it must not silently disappear.

Hosted Macs may have no Metal device. CI explicitly sets `LUCE_TEST_GPU=optional`: the
Metal program still compiles, and absence of a device is recorded as missing hardware
evidence. All other failures remain failures. The default local gate still requires a
Metal device on macOS. Release evidence must include both hosted jobs and the full
hardware gate on a capable Mac; a hosted green check alone does not establish GPU support.

The gate on both hosts also needs GNU GCC and MinGW-w64 GCC (`tools/cross_c.sh` compiles
the emitted C with the compilers a release meets) and a WASI toolchain and wasmtime for the wasm32 target
(§19.5): `tools/ci_dependencies.sh` installs Homebrew's llvm, lld, wasi-libc, wasi-runtimes
and wasmtime on macOS, and wasi-sdk with wasmtime on Linux, naming the SDK in `WASI_SDK`.

Every dependency is checked out at main: there are no commit pins.
`tools/checkout_main.py REPOSITORY [TOOL...]` clones, beside REPOSITORY, every package its
package.prisma files name by `path` (and theirs, and this compiler's own luce-std), each
from main; a sibling already present is used as it is. A TOOL is named by its repository
(`luce`, or `../luce` from inside REPOSITORY) and is always REPOSITORY's sibling, whatever
directory the script runs from. Every dymokomi repository's CI starts
the same way: clone luce-base's main, run this script, build the compilers it needs from
those checkouts. Versions are fixed only when a batch of releases is cut.

The compile budget (`tools/compile_budget.py`, on Linux x86-64 and Windows) builds real
programs for every target within a time and a memory. `tools/budget_packages.py` names the
programs and checks each out at main with every package it depends on.

Runner labels follow [GitHub's runner documentation](https://docs.github.com/en/actions/reference/runners/github-hosted-runners).

The `Release` workflow runs on a tag `luce-base-VERSION` (the tag must name `VERSION`):
macOS ARM64, Linux x86-64 and Linux ARM64 on the oldest supported runners so the
compiler runs on that glibc and newer, and Windows x64 under MSYS2 each build from the
bootstrap snapshot, package with `tools/package.sh`, prove the archive with
`tools/install_smoke.sh`, and the four archives become the GitHub release the installers
at luce-base.luciaos.com download.
