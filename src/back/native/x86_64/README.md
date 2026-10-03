# x86-64 backend boundaries

The generator selects instructions and materializes values using the shared frame
planner; its construction receives the target OS and symbol prefix once. It is the
module `back.native.x86_64`, the fragments `ORDER` lists (generator, registers,
functions, transfers, instructions, vectors, inline_asm, atomics, calls, unit,
helpers, parallel). The other files here are modules of their own:

- `abi.lucb` classifies scalar and aggregate arguments/results and assigns System V
  argument locations. Microsoft x64 uses ordinal register slots, indirect aggregate
  copies, shadow space and its additional nonvolatile registers when the generator
  materializes those locations.
- `object.lucb` owns ELF/COFF sections, symbol linkage, initializer registration,
  external-address relocations and thread-local address sequences.
- `unwind.lucb` records frame operations as DWARF CFI or Windows SEH. The generator
  reports pushes, stack allocation, register saves and epilogues at their actual
  instruction boundaries.

The DWARF writer remains shared by CPU backends. It receives the target OS explicitly,
uses the corresponding debug-section relocations, and describes Windows' frame
pointer through the logical frame top. Host filesystem operations use standard
`files` primitives.

`tools/test_platform_boundaries.py` prevents section/unwind literals and native host
calls from returning to the common layers. ABI tests exercise independent layout
policy. Cross-assembly checks and the C ABI/unwind oracles validate emitted code;
Windows GDB tests check source breakpoints, typed locals and stack traces.
