# Building and debugging

[Reference: Compilation and runtime](../../language/base.md#19-compilation-and-runtime).

## The compiler's commands

| Command | Does |
| --- | --- |
| `luce-base build file.lucb -o out` | compile to a native executable |
| `luce-base check file.lucb` | type-check without building |
| `luce-base test file.lucb [--package]` | build and run the tests of the file and the modules it imports; with `--package`, of every module of its package |
| `luce-base fmt file.lucb [--write \| --check]` | print the file formatted, rewrite it, or check it |
| `luce-base bind header.h -o module.lucb` | write declarations for a C header ([C](13-c.md)) |
| `luce-base describe file.lucb` | describe a module's public declarations |

In a project, `luc build`, `luc check`, `luc test` and `luc fmt` run these on the project
([Modules and packages](10-modules-and-packages.md)). `luc build --diagnostic`, `luc run
--diagnostic` and `luc test --diagnostic` add `--profile diagnostic`; the build goes to
`build/<name>-diagnostic`, beside the normal one.

### Build options

| Option | Effect |
| --- | --- |
| `--release` | optimise; the same checks and traps remain |
| `--opt 0` to `--opt 3` | choose the optimisation level directly |
| `--debug` | include debugging information (DWARF; a `.dSYM` on macOS) |
| `--release --debug` | optimised, with debugging information |
| `--profile diagnostic` | unwritten storage filled with `0xAA`, and allocators that catch double frees and writes after free ([Memory](09-memory.md#finding-memory-bugs)); `test` takes it too |
| `--target NAME` | compile for another target (below) |
| `--cpu LEVEL` | the instruction-set level to compile for |
| `--lib` | build a static library and a C header ([C](13-c.md#c-calling-base)) |
| `--freestanding` | no C library or startup code ([Low-level tools](15-low-level.md)) |
| `-lNAME`, `-LDIR`, `-framework NAME` | link a library, search a directory, link a macOS framework |
| `--backend=c` | compile through C instead of the native code generator |
| `--emit=c`, `--emit=asm`, `--emit=ir` | print the generated C, assembly or intermediate code |
| `-W` | print warnings (below) |
| `--cache-dir DIR`, `--cache-report` | where the build cache is, and whether it was used |

The compiler generates machine code itself and uses the C toolchain on your machine (`cc`, or
the one `CC` names) to assemble and link. `--backend=c` translates the program to C and
compiles that instead; it exists for comparison and for platforms without a native code
generator.

## Messages

Every error is printed as `file:line:column: message`, after `luce-base:`, and the exit
status is 1. When a message refers to a second place, such as the earlier declaration a name
would shadow, a `note:` line follows with that place. The compiler reports every declaration
that fails to check, not just the first.

### Warnings

`-W` (on `check`, `build` and `test`) prints warnings for code that has no effect:

```text
luce-base: w.lucb:8:14: warning: this branch never runs: the condition is `false`
luce-base: w.lucb:7:5: warning: unused local `unused`
luce-base: w.lucb:3:1: warning: unused function `helper`
luce-base: w.lucb:1:1: warning: unused import `memory`
```

A local whose name starts with `_` is not reported. `check -W` exits with status 1 when it
printed a warning, so it can guard a build. A condition on the target that is constant, such
as `if os.linux:`, is decided at compile time without a warning; the other branch is left out
of the program.

## Targets

| `--target` | Notes |
| --- | --- |
| `arm64-macos` | Apple Silicon |
| `x86_64-linux` | |
| `x86_64-windows` | with a MinGW-w64 GCC |

`luce-base build file.lucb --target` with no name lists the targets and marks the one this
compiler runs on. The compiler can write another target's code anywhere (`--emit=asm
--target x86_64-linux`); linking it needs that target's toolchain.

Code can depend on the target through the `os` module's constants, decided when the program
compiles:

```luce
import os

pub func main(arguments: str[]) -> i32:
    if os.windows:
        print("Windows")
    elif os.macos:
        print(f"macOS on {os.name}")
    else:
        print("Linux or another Unix")
    print(f"{os.pointer_bits}-bit pointers")
    return 0
```

The branch for other targets is removed, so it may call functions that only exist on them.

### Instruction-set levels

On x86-64 the levels are `v1` (the baseline, SSE2), `v2`, `v3` (AVX2 and FMA) and `v4`
(AVX-512); on arm64, `neon` and `sve`. A build for the machine it runs on uses that machine's
level; a build for another target uses the baseline. `--cpu v1` makes a program that runs on
any x86-64 processor. `os.cpu_level` is the level a program was compiled for, and
`os.cpu_level_running()` the level of the processor running it.

## The build cache

Builds are cached. The key covers every source the build read, the target, the flags
(the profile among them) and the compiler itself, so a build that changed nothing reuses the previous result, and any change
rebuilds. The cache is in `build/.cache` beside the output, or where `--cache-dir` or the
`LUCE_CACHE` environment variable says (`none` turns it off). `--cache-report` prints whether
the cache was used. Deleting the cache directory is always safe.

## When a program stops

A trap prints one line and exits with status 1:

```text
trap: main.lucb:4:9: integer overflow
```

The position is the statement that was running. An error that reaches the end of `main`
prints `error: file:line:column: message (code n)`, the position being where the error was
raised, then `  called at file:line:column` when it came out of a call into another package
(its `called_at`), and also exits with status 1.

### Debuggers

Build with `--debug` to step through a program in `lldb` or `gdb`:

```sh
luce-base build program.lucb --debug -o program
lldb ./program
```

Breakpoints by file and line, stepping and backtraces work as for C. Function names in the
debugger are the compiler's internal names, which include the module, for example
`lb_main_7add_asm` for `add_asm` in `main`.

### Crash reports

A program that is not run from a terminal, such as a desktop application, has nowhere to print
a trap. The `crash` module of `luce-std` turns on crash reports: each crash writes a file to
`~/.luce/crashes` with the program, its version, the trap or signal, and a stack trace. The
program is named after its package and version in `package.prisma` (the compiler puts them in
`platform.program` and `platform.program_version`), or after its executable when it is built
outside a package; `enable` can be given others.

<!-- fragment -->
```luce
from luce_std import crash

pub func main(arguments: str[]) -> i32!:
    try crash.enable()
    ...
```

The next run can read the newest report back with `crash.take_report(name)`. A program can
also ask for two things to follow a crash, much as macOS's crash reporter does for apps:

- `crash.on_crash(hook)` runs `hook`, an `interop.Callback[unit, unit]`, after a trap and
  before the process ends, on the thread that trapped. It is the place to save what can be
  saved: write it under `crash.recovery_directory()` (`~/.luce/recovery/<program>`), never over
  the user's own file, and call `crash.note_recovery(path)` so the report says where it is.
  It answers the hook's handle, an `interop.Reference[crash.Hook]`: the hook runs while the
  handle is held, and releasing it, or `remove()`, takes the hook away along with what its
  callback holds, as releasing a signal's `Connection` disconnects it. The hooks get five
  seconds in all; a trap inside one is added to the report and the hooks
  after it are skipped. A fatal signal (a segmentation fault, say) runs no hooks, since almost
  nothing is safe inside a signal handler: a program that must not lose work saves it as it
  goes and looks in the recovery directory when it starts.
- `crash.relaunch_on_crash()` starts the program again once the report is written, with no
  arguments and `LUCE_CRASH_REPORT` naming the report; `crash.report_to_show()` answers that
  path in the new process. The crashed process draws nothing; the new one shows the report.
  luce-ui does this for every UI application, so a Base or Luce program with a window gets a
  crash window without writing any of it.

Nothing is sent anywhere: the reports stay in `~/.luce/crashes`. Both backends write them:
a trap in a `--backend=c` build goes through the same `core` code as a native one.

### Looking at the generated code

`--emit=c` prints the program as C, and `--emit=asm` as assembly. They are a direct way to see
what a piece of Base compiles to.

## Environment variables

| Variable | Meaning |
| --- | --- |
| `CC` | the C compiler used to assemble and link (default `cc`) |
| `LUCE_CFLAGS` | extra flags for every C compile and link, for example sanitizers |
| `LUCE_CACHE` | the build cache directory, or `none` |
| `LUCE_STD` | where the standard modules are, if not beside the compiler |
