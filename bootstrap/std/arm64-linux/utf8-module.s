    .text

    .p2align 2
    .globl lb_utf8_module_0init
    .type lb_utf8_module_0init, %function
lb_utf8_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_utf8_16invalid_sequence
    add x14, x14, :lo12:lb_utf8_16invalid_sequence
    movz x9, #54
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_utf8_19incomplete_sequence
    add x14, x14, :lo12:lb_utf8_19incomplete_sequence
    movz x9, #55
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_module_0init, .-lb_utf8_module_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_utf8_module_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_utf8_16invalid_sequence
    .type lb_utf8_16invalid_sequence, %object
    .p2align 2
lb_utf8_16invalid_sequence:
    .zero 4

    .bss
    .globl lb_utf8_19incomplete_sequence
    .type lb_utf8_19incomplete_sequence, %object
    .p2align 2
lb_utf8_19incomplete_sequence:
    .zero 4


    .section .note.GNU-stack,"",%progbits
