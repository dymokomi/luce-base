    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_luce_0init
_lb_luce_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    adrp x19, l_text_0@PAGE
    add x19, x19, l_text_0@PAGEOFF
    sub x14, x29, #48
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    adrp x15, _lb_luce_file@PAGE
    add x15, x15, _lb_luce_file@PAGEOFF
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_luce_line@PAGE
    add x14, x14, _lb_luce_line@PAGEOFF
    mov x9, #0
    str w9, [x14]
    sub x14, x29, #64
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    adrp x15, _lb_luce_function@PAGE
    add x15, x15, _lb_luce_function@PAGEOFF
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
    adrp x14, _lb_luce_location@PAGE
    add x14, x14, _lb_luce_location@PAGEOFF
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

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_luce_0init

    .section __TEXT,__const
l_text_0:
    .asciz ""

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 3
    .globl _lb_luce_file
    .weak_definition _lb_luce_file
    .no_dead_strip _lb_luce_file
_lb_luce_file:
    .zero 16
    .section __DATA,__data
    .p2align 2
    .globl _lb_luce_line
    .weak_definition _lb_luce_line
    .no_dead_strip _lb_luce_line
_lb_luce_line:
    .zero 4
    .section __DATA,__data
    .p2align 3
    .globl _lb_luce_function
    .weak_definition _lb_luce_function
    .no_dead_strip _lb_luce_function
_lb_luce_function:
    .zero 16
    .section __DATA,__data
    .p2align 3
    .globl _lb_luce_location
    .weak_definition _lb_luce_location
    .no_dead_strip _lb_luce_location
_lb_luce_location:
    .zero 40

.subsections_via_symbols
