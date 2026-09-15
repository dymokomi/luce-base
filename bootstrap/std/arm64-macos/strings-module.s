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
    .globl _lb_strings_17invalid_separator
    .no_dead_strip _lb_strings_17invalid_separator
    .zerofill __DATA,__bss,_lb_strings_17invalid_separator,4,2
    .globl _lb_strings_16output_too_large
    .no_dead_strip _lb_strings_16output_too_large
    .zerofill __DATA,__bss,_lb_strings_16output_too_large,4,2
    .globl _lb_strings_13invalid_radix
    .no_dead_strip _lb_strings_13invalid_radix
    .zerofill __DATA,__bss,_lb_strings_13invalid_radix,4,2
    .globl _lb_strings_14invalid_number
    .no_dead_strip _lb_strings_14invalid_number
    .zerofill __DATA,__bss,_lb_strings_14invalid_number,4,2
    .globl _lb_strings_19number_out_of_range
    .no_dead_strip _lb_strings_19number_out_of_range
    .zerofill __DATA,__bss,_lb_strings_19number_out_of_range,4,2
    .globl _lb_strings_17conversion_failed
    .no_dead_strip _lb_strings_17conversion_failed
    .zerofill __DATA,__bss,_lb_strings_17conversion_failed,4,2

.subsections_via_symbols
