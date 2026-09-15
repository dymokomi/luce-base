    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_strings_module_0init
_lb_strings_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_strings_17invalid_separator@PAGE
    add x14, x14, _lb_strings_17invalid_separator@PAGEOFF
    movz x9, #48
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_strings_16output_too_large@PAGE
    add x14, x14, _lb_strings_16output_too_large@PAGEOFF
    movz x9, #49
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_strings_13invalid_radix@PAGE
    add x14, x14, _lb_strings_13invalid_radix@PAGEOFF
    movz x9, #50
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_strings_14invalid_number@PAGE
    add x14, x14, _lb_strings_14invalid_number@PAGEOFF
    movz x9, #51
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_strings_19number_out_of_range@PAGE
    add x14, x14, _lb_strings_19number_out_of_range@PAGEOFF
    movz x9, #52
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_strings_17conversion_failed@PAGE
    add x14, x14, _lb_strings_17conversion_failed@PAGEOFF
    movz x9, #53
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_strings_module_0init

    .section __TEXT,__const

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_strings_17invalid_separator
    .weak_definition _lb_strings_17invalid_separator
    .no_dead_strip _lb_strings_17invalid_separator
_lb_strings_17invalid_separator:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_strings_16output_too_large
    .weak_definition _lb_strings_16output_too_large
    .no_dead_strip _lb_strings_16output_too_large
_lb_strings_16output_too_large:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_strings_13invalid_radix
    .weak_definition _lb_strings_13invalid_radix
    .no_dead_strip _lb_strings_13invalid_radix
_lb_strings_13invalid_radix:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_strings_14invalid_number
    .weak_definition _lb_strings_14invalid_number
    .no_dead_strip _lb_strings_14invalid_number
_lb_strings_14invalid_number:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_strings_19number_out_of_range
    .weak_definition _lb_strings_19number_out_of_range
    .no_dead_strip _lb_strings_19number_out_of_range
_lb_strings_19number_out_of_range:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_strings_17conversion_failed
    .weak_definition _lb_strings_17conversion_failed
    .no_dead_strip _lb_strings_17conversion_failed
_lb_strings_17conversion_failed:
    .zero 4

.subsections_via_symbols
