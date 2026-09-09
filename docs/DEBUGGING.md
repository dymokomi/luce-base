# Native source debugging

Build with `luce-base build main.lucb --native --debug -o program`. `--debug`
requires the native backend; passing it to a C build reports an error.

Development builds retain named locals (including unused bindings), keep their
frame slots, and preserve source statement boundaries. They emit DWARF 4 and
unwind information alongside the existing `luce-base-d` frame descriptors.
The native optimizer continues to optimize standard-library functions; user
functions under `--debug` keep their development layout. Optimized user-variable
locations and Luce ARC pretty-printers are separate future work.

On macOS, the compiler runs `dsymutil` before deleting its temporary object files.
Keep `program` and `program.dSYM` together. On Linux, it runs `objcopy` to create
`program.debug` and adds a GNU debug link to `program`. Keep that sidecar beside
the executable (or in the debugger's configured debug-file directory).

```
lldb program
(lldb) breakpoint set --file main.lucb --line 20
(lldb) run
(lldb) bt
(lldb) frame variable
(lldb) expression count
```

```
gdb program
(gdb) break main.lucb:20
(gdb) run
(gdb) bt
(gdb) print count
```

Parameters, method receivers, lexical scopes, scalar types, pointers, arrays,
spans, strings, tuples, generic records, packed fields, unions, optional and
fallible representations are described using the compiler's target layouts.
Integer-backed enum cases have names; payload enums currently expose their tag
and raw storage. An optional's `present` flag and a fallible value's `failed` flag
must be checked before interpreting its payload. Debugger expressions use the
C-compatible representation, so a span's elements are under `data[index]`.

Source paths and the compilation directory are recorded. If source moves, use
LLDB's `settings set target.source-map OLD NEW` or GDB's
`set substitute-path OLD NEW`. The executable and its debug artifact remain
usable after the compiler's scratch directory is deleted.

`--lib --native --debug` stores DWARF inside the static archive. A C consumer
links that archive normally. On macOS, run `dsymutil` on the linked consumer
while its own C object files and the archive still exist; the resulting dSYM
then survives removal of the original objects. The Base driver does this
packaging automatically for its own executable builds. C sources named by a
manifest are compiled with source debugging and frame pointers in debug builds,
so mixed C/Base backtraces include both source languages.

`tests/programs/dwarf/check.sh` launches LLDB on macOS and GDB on Linux. It checks
source breakpoints, mixed backtraces, typed values, lexical scope exit, moved
source/artifact paths containing spaces, and a C consumer of a Base static
library. Commands, output and replay records are kept under `build/dwarf/`.
Both hosts run LLVM `dwarfdump --verify` on packaged debug information.
The Linux test gate requires GDB, binutils and `llvm-dwarfdump` (the `llvm` package).

The format follows [DWARF 4](https://dwarfstd.org/doc/DWARF4.pdf), the host
assembler's [CFI directives](https://sourceware.org/binutils/docs/as/CFI-directives.html),
and LLVM's [dSYM packaging](https://llvm.org/docs/CommandGuide/dsymutil.html).
