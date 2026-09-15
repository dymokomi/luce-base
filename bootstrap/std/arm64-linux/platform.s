    .text

    .p2align 2
    .globl lb_platform_0init
    .type lb_platform_0init, %function
lb_platform_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #11
    str x9, [x14]
    adrp x14, lb_platform_name
    add x14, x14, :lo12:lb_platform_name
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_platform_linux
    add x14, x14, :lo12:lb_platform_linux
    movz x9, #1
    strb w9, [x14]
    adrp x14, lb_platform_windows
    add x14, x14, :lo12:lb_platform_windows
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_platform_posix
    add x14, x14, :lo12:lb_platform_posix
    movz x9, #1
    strb w9, [x14]
    adrp x14, lb_platform_arm64
    add x14, x14, :lo12:lb_platform_arm64
    movz x9, #1
    strb w9, [x14]
    adrp x14, lb_platform_6x86_64
    add x14, x14, :lo12:lb_platform_6x86_64
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_platform_wasm32
    add x14, x14, :lo12:lb_platform_wasm32
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_platform_12pointer_bits
    add x14, x14, :lo12:lb_platform_12pointer_bits
    movz x9, #64
    str w9, [x14]
    adrp x14, lb_platform_9cpu_level
    add x14, x14, :lo12:lb_platform_9cpu_level
    movz x9, #1
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_platform_0init, .-lb_platform_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_platform_0init

    .section .rodata
.Ltext_0:
    .asciz "arm64-linux"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_platform_name
    .type lb_platform_name, %object
    .p2align 3
lb_platform_name:
    .zero 16

    .bss
    .globl lb_platform_macos
    .type lb_platform_macos, %object
    .p2align 0
lb_platform_macos:
    .zero 1

    .bss
    .globl lb_platform_linux
    .type lb_platform_linux, %object
    .p2align 0
lb_platform_linux:
    .zero 1

    .bss
    .globl lb_platform_windows
    .type lb_platform_windows, %object
    .p2align 0
lb_platform_windows:
    .zero 1

    .bss
    .globl lb_platform_posix
    .type lb_platform_posix, %object
    .p2align 0
lb_platform_posix:
    .zero 1

    .bss
    .globl lb_platform_arm64
    .type lb_platform_arm64, %object
    .p2align 0
lb_platform_arm64:
    .zero 1

    .bss
    .globl lb_platform_6x86_64
    .type lb_platform_6x86_64, %object
    .p2align 0
lb_platform_6x86_64:
    .zero 1

    .bss
    .globl lb_platform_wasm32
    .type lb_platform_wasm32, %object
    .p2align 0
lb_platform_wasm32:
    .zero 1

    .bss
    .globl lb_platform_12pointer_bits
    .type lb_platform_12pointer_bits, %object
    .p2align 2
lb_platform_12pointer_bits:
    .zero 4

    .bss
    .globl lb_platform_9cpu_level
    .type lb_platform_9cpu_level, %object
    .p2align 2
lb_platform_9cpu_level:
    .zero 4


    .section .note.GNU-stack,"",%progbits
