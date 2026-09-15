    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_module_0init
_lb_interop_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_interop_invalid@PAGE
    add x14, x14, _lb_interop_invalid@PAGEOFF
    movz x9, #101
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    movz x9, #102
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_interop_expired@PAGE
    add x14, x14, _lb_interop_expired@PAGEOFF
    movz x9, #103
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_module_0init

    .section __TEXT,__const

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_interop_invalid
    .weak_definition _lb_interop_invalid
    .no_dead_strip _lb_interop_invalid
_lb_interop_invalid:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_interop_12wrong_thread
    .weak_definition _lb_interop_12wrong_thread
    .no_dead_strip _lb_interop_12wrong_thread
_lb_interop_12wrong_thread:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_interop_expired
    .weak_definition _lb_interop_expired
    .no_dead_strip _lb_interop_expired
_lb_interop_expired:
    .zero 4

.subsections_via_symbols
