# Low-level tools

For code that talks to hardware, the operating system or the linker directly: inline
assembly, declaration attributes, `volatile`, and programs without a C library.
[Reference: Inline assembly](../../language/base.md#8-9-inline-assembly),
[Declaration attributes](../../language/base.md#9-8-declaration-attributes).

## Inline assembly

```luce
func add_asm(a: u64, b: u64) -> u64:
    var result: u64
    asm arm64 (in(reg) a, in(reg) b, out(reg) result, options(nomem, nostack, pure)):
        add {result}, {a}, {b}
    asm x86_64 (in(reg) a, in(reg) b, out(reg) result, options(nomem, nostack, pure)):
        movq {a}, {result}
        addq {b}, {result}
    return result

func cycles() -> u64:
    var value: u64
    asm arm64 (out("x0") value):
        mrs x0, cntvct_el0
    asm x86_64 (out("rax") value, out("rdx") _):
        rdtsc
        shl $32, %rdx
        or %rdx, %rax
    return value

pub func main(arguments: str[]) -> i32:
    print(f"{add_asm(40, 2)} {cycles() > 0}")
    return 0
```

```output
42 true
```

- **`asm ARCH (operands):`** opens a block of assembly for one architecture, `arm64` or
  `x86_64`. A function can have one block per architecture; the compiler uses the one for the
  target it is building for, and refuses to build for a target with no block. This replaces
  C's `#ifdef __x86_64__`.
- The block's lines are passed to the assembler as written: GNU AT&T syntax on x86-64
  (source before destination; `.intel_syntax noprefix` switches), standard syntax on arm64.
  `#` is not a comment inside the block, since arm64 uses it for immediates.
- **Operands** are `in(place) expression`, `out(place) variable` and `inout(place) variable`.
  The place is a register in quotes, `"rax"`, or `reg` to let the compiler choose; `{name}` in
  the text stands for the register chosen for the operand named `name`. `out("rcx") _` tells
  the compiler a register is overwritten.
- **Options** describe the block, so the compiler can optimise around it: `nostack` (does not
  use the stack), `nomem` (touches no memory other than its operands), `pure` (may be removed
  if its outputs are unused), and `flags` (leaves the condition flags unchanged). Without
  `pure`, a block is never removed, duplicated or reordered with another block.
- Operands are numbers and pointers.

`naked func` declares a function whose whole body is one `asm` block per architecture, with
no prologue or epilogue: for interrupt entries, context switches and `_start`. A top-level
`asm ARCH:` block, without operands, places raw assembly in the file: symbols, sections,
data.

## Attributes

A few words before a declaration tell the compiler or linker something about it:

| Attribute | Means |
| --- | --- |
| `inline func` | expand the function at its call sites |
| `noinline func` | never expand it |
| `cold func` | rarely called: optimise and place it accordingly |
| `naked func` | no prologue or epilogue; the body is one `asm` block per architecture |
| `weak func`, `weak var` | a weak symbol, which another definition may replace at link time |
| `used func`, `used var` | keep the symbol even if nothing refers to it |
| `section("name") func`, `section("name") var` | place the symbol in a named linker section |
| `linked func`, `linked var`, `linked let` | declared here, defined in a library the program links |

They combine: `used section(".isr_vector") var vectors: Handler[64] = ...`. On macOS, a
section name without a comma is placed in `__DATA` (for a variable) or `__TEXT` (for a
function), with its leading dot dropped, so one spelling works on every target.

## `volatile`

A read or write through a `volatile T*` always happens, exactly as written: it is never
removed, merged with another, or reordered with another `volatile` access or `asm` block.
This is for memory-mapped hardware registers. It says nothing about other threads: for
memory shared between threads, use atomics ([Concurrency](12-concurrency.md)).

## `noalias`

A pointer or span parameter marked `noalias` promises that, during the call, no other
parameter or pointer the function can reach refers to the same memory:

```luce
func scale(out: noalias f32[], input: const f32[], factor: f32):
    for i in 0..<out.length:
        out[i] = input[i] * factor
```

The compiler can then keep values in registers across writes. Breaking the promise is
undefined behaviour. Base has no other aliasing rule: unlike C, any pointer may refer to any
object of a compatible size and alignment.

## Programs without a C library

`luce-base build program.lucb --freestanding` builds a program without the startup code that
normally calls `main` through the C library. The program provides its own entry point,
`_start`, as a `naked func` or a top-level `asm` block, and talks to the system itself, for
example through system calls. This is how a kernel, a bootloader or a minimal static binary
is written. In a freestanding program there is no `memory.heap`: set `memory.allocator` to an
allocator of your own before the first `new`. The repository's
`tests/programs/freestanding` is a complete example.
