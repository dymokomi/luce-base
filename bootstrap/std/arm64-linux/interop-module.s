    .text

    .p2align 2
    .globl lb_interop_module_0init
    .type lb_interop_module_0init, %function
lb_interop_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_interop_invalid
    add x14, x14, :lo12:lb_interop_invalid
    movz x9, #101
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_interop_12wrong_thread
    add x14, x14, :lo12:lb_interop_12wrong_thread
    movz x9, #102
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_interop_expired
    add x14, x14, :lo12:lb_interop_expired
    movz x9, #103
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_module_0init, .-lb_interop_module_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_module_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_invalid
    .type lb_interop_invalid, %object
    .p2align 2
lb_interop_invalid:
    .zero 4

    .bss
    .globl lb_interop_12wrong_thread
    .type lb_interop_12wrong_thread, %object
    .p2align 2
lb_interop_12wrong_thread:
    .zero 4

    .bss
    .globl lb_interop_expired
    .type lb_interop_expired, %object
    .p2align 2
lb_interop_expired:
    .zero 4


    .section .note.GNU-stack,"",%progbits
