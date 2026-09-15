    .text

    .p2align 2
    .globl lb_luce_0init
    .type lb_luce_0init, %function
lb_luce_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    adrp x19, .Ltext_0
    add x19, x19, :lo12:.Ltext_0
    sub x14, x29, #48
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    adrp x15, lb_luce_file
    add x15, x15, :lo12:lb_luce_file
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, lb_luce_line
    add x14, x14, :lo12:lb_luce_line
    mov x9, #0
    str w9, [x14]
    sub x14, x29, #64
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    adrp x15, lb_luce_function
    add x15, x15, :lo12:lb_luce_function
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #104
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x14, x29, #120
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    mov x9, #0
    str w9, [x14]
    sub x14, x29, #136
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, lb_luce_location
    add x14, x14, :lo12:lb_luce_location
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_luce_0init, .-lb_luce_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_luce_0init

    .section .rodata
.Ltext_0:
    .asciz ""

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_luce_file
    .type lb_luce_file, %object
    .p2align 3
lb_luce_file:
    .zero 16

    .bss
    .globl lb_luce_line
    .type lb_luce_line, %object
    .p2align 2
lb_luce_line:
    .zero 4

    .bss
    .globl lb_luce_function
    .type lb_luce_function, %object
    .p2align 3
lb_luce_function:
    .zero 16

    .bss
    .globl lb_luce_location
    .type lb_luce_location, %object
    .p2align 3
lb_luce_location:
    .zero 40


    .section .note.GNU-stack,"",%progbits
