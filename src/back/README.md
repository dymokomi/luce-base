# Backends

`backend.lucb` connects the checked program to the selected backend. Native is the default.

| Location | Responsibility |
| --- | --- |
| `ir/` | Native intermediate representation, textual dumps, control-flow graph and lowering from the checked tree |
| `opt/` | Inlining, local optimization, SSA construction, value numbering, load elimination and de-SSA |
| `native/` | ARM64 and x86-64 assembly, register allocation, frame layout and DWARF emission |
| `c/` | Explicit C comparison/snapshot emission and C library headers |
| `names.lucb` | Symbol naming shared by both backends |
| `target.lucb` | Target platform and toolchain definitions |
| `isa.lucb` | Instruction-set capabilities and inline-assembly register definitions |

C headers in `c/header.lucb` also describe native library exports; generating a header does not select C code generation.

The native pipeline is checked tree → `ir/lower` → `opt/` → `native/` → assembly.
Imports retain the module's leaf name, for example `import back.ir.ir` uses `ir.Unit`.
