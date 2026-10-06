# The gate and the release

GitHub holds the repositories and their history; it runs nothing. Every dymokomi
repository is tested by one local gate on the three platforms Luce ships for,
arm64-macos, x86_64-linux and x86_64-windows, and released by one script that publishes
only what the gate passed.

## The gate

From a workspace of checkouts side by side:

```sh
python3 ../luce-base/tools/gate.py                # the current directory's HEAD
python3 ../luce-base/tools/gate.py ../luce-ui     # another checkout
python3 tools/gate.py --only windows              # one platform again
```

`tools/gate.py` tests one commit on all three platforms at once: macOS on this Mac, Linux
and Windows over SSH (`luce-linux` and `luce-windows` in `~/.ssh/config`). Each machine
has a workspace, `~/luce-gate`, of its own checkouts, and a gate holds a machine's
workspace alone (a second gate waits). On each machine:

1. **Sources.** The commit comes from GitHub when it has been pushed, else as a git bundle
   sent over SSH (macOS fetches it from the checkout), so a commit can be gated before it
   is pushed. Every other checkout in the workspace is moved to GitHub's main, and
   `tools/checkout_main.py` clones whatever the repository's manifests (and the tools its
   gate.toml names) depend on: every dependency is at main, and there are no commit pins.
2. **Toolchain.** luce-base, luce-std and luce at GitHub's main (or at the commit under test,
   for one of them) are built once per triple of commits and kept under
   `~/luce-gate/toolchains/`; a later gate with the same triple copies them back. A
   step finds them as `LUCE_BASE` (also `LUCE_BASE_COMPILER`) and `LUCE`, on `PATH`, and at
   `../luce-base/build/luce-base` and `../luce/build/luce` beside the checkout.
3. **Steps.** The repository's `gate.toml` lists, per platform, bash commands run in the
   checkout in order (Git's bash on Windows); the first to fail fails the platform. A step
   that runs two hours has hung and its process tree is killed.
4. **Release archives.** A `[release]` section's steps run after a pass, and the files it
   names are kept for `tools/release.py` (under `~/luce-gate/artifacts/`, fetched to this
   Mac).

The three platforms run in parallel; their output is streamed here with a `[platform]`
prefix and kept in `~/luce-gate/logs/`. The gate exits non-zero if any platform failed.

### gate.toml

```toml
tools = ["luce"]                  # checked out beside this one besides its dependencies

[macos]
steps = ["./test.sh", "python3 tests/gpu.py"]

[linux]
steps = ["./test.sh"]
extended = ["python3 tools/fuzz.py --minutes 15"]   # with --extended only

[windows]
steps = ["python tests/run.py"]   # an empty list: the platform does not apply

[release]                         # luce-base and luce: the installers' archives
steps = ["tools/package.sh build/release"]
files = ["build/release/luce-*"]
```

`[windows] autocrlf = false` checks the repository out without CRLF conversion (Git for
Windows converts by default). `--extended` adds each platform's `extended` steps: the long
differential fuzzing runs, which a release batch or a compiler change warrants.

### The record

A gate writes a git note on the commit, `refs/notes/gate`, and pushes it to origin: one line
per platform with `PASS`, `FAIL` or `NONE` (no steps there), the time, the duration and the
toolchain commits. `--only` replaces its platforms' lines and keeps the others. Read it
with `git fetch origin refs/notes/gate:refs/notes/gate && git notes --ref=gate show`.

### The machines

Each machine's `~/luce-gate/machine.sh`, when present, is sourced before every step: what
that machine needs on `PATH`, and its display. Every machine has the owner's desktop session
logged in, so window and GPU tests always run (`LUCE_TEST_WINDOW=required`,
`LUCE_TEST_GPU=required`), and a missing session fails the gate.

- **macOS** (this Mac, Apple silicon): Xcode's tools, Homebrew's `sdl3 pkg-config llvm lld
  wasi-libc wasi-runtimes wasmtime gcc mingw-w64 cmake`, and a Metal device.
- **luce-linux** (Ubuntu, x86-64): clang and gcc, cmake, ninja, pkg-config, valgrind, gdb,
  MinGW-w64 GCC, SDL3, cairo and the X11 libraries, a wasi-sdk named by `WASI_SDK` and
  wasmtime. Its machine.sh supplies the ones not installed system-wide and exports
  `DISPLAY=:0`, `XDG_RUNTIME_DIR=/run/user/1000`.
- **luce-windows** (Windows 10, x64): Python, Git for Windows, a MinGW-w64 GCC (gcc, gdb,
  make), cmake and ninja on PATH; machine.sh puts a working GDB first. SSH sessions have no
  desktop, so each step runs in the owner's logged-in session through a scheduled task
  (`luce-gate-step`, deleted after the step), its output streamed from a file.

### What the checks hold to

Base and Luce conformance commands each have a 60-second deadline, kill their subprocess
groups on timeout, and require exact success, rejection or trap statuses. A matching
message does not excuse a signal or a timeout. Replay records under `build/failures/` name
the command, working directory, source revision and outputs.

Base's conformance gate runs C default, C release, native levels 0–3 and the seed oracle
(luce-seed's main, which the gate builds beside this tree). The C emitted for every
target is compiled by the other compilers a release meets (`tools/cross_c.sh`: GNU GCC and
MinGW-w64 GCC), wasm32 programs run under wasmtime, valgrind and ThreadSanitizer run on
Linux, and the compile budget (`tools/compile_budget.py`, Linux and Windows) builds real
programs for every target within a time and a memory; `tools/budget_packages.py` names
them.

## The release

```sh
python3 ../luce-base/tools/release.py --dry-run   # the plan
python3 ../luce-base/tools/release.py --gate      # gate what is missing, then release
```

Releases are cut in batches, from the mains of the moment, by `tools/release.py` in a
workspace of clean checkouts at origin/main:

1. Every registry package with a checkout is compared with its newest release on
   pkg.luciaos.com; one whose sources changed since that release's commit is released.
2. Its commit must carry a gate note with every platform passing (`--gate` runs the gate
   where the note is missing).
3. Its version is bumped (patch, unless package.prisma already moved past the registry's),
   committed with the gate note carried over, pushed, and published with `luc publish`,
   dependencies first and independent packages in parallel. Dependencies name no version,
   so they take the newest release and nothing else moves.
4. When luce-base, luce or luc changed since the last `luce-VERSION` tag, luce-base and
   luce get new versions (luce's installers `tools/install.sh` and `install.ps1` too), each
   commit is gated, and the archives the gate built become the GitHub releases
   `luce-base-VERSION` and `luce-VERSION`, tagged on the gated commits. The installers are
   copied to luce.luciaos.com (`install.sh`, `install.ps1`, `install/VERSION/`), and both
   documentation sites are rebuilt with `tools/site.py` and deployed, replacing only each
   site's own entries.
5. Every application on the registry is resolved again: `luc lock` in a clone of its
   registry repository, with a scratch HOME, so nothing is installed.
