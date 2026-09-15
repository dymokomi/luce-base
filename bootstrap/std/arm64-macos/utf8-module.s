    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_utf8_module_0init
_lb_utf8_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_utf8_16invalid_sequence@PAGE
    add x14, x14, _lb_utf8_16invalid_sequence@PAGEOFF
    movz x9, #54
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_utf8_19incomplete_sequence@PAGE
    add x14, x14, _lb_utf8_19incomplete_sequence@PAGEOFF
    movz x9, #55
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_utf8_module_0init

    .section __TEXT,__const

    .section __DATA,__const
    .p2align 3
    .globl _lb_utf8_16invalid_sequence
    .no_dead_strip _lb_utf8_16invalid_sequence
    .zerofill __DATA,__bss,_lb_utf8_16invalid_sequence,4,2
    .globl _lb_utf8_19incomplete_sequence
    .no_dead_strip _lb_utf8_19incomplete_sequence
    .zerofill __DATA,__bss,_lb_utf8_19incomplete_sequence,4,2

.subsections_via_symbols
