    .text

    .p2align 2
    .globl lb_strings_module_0init
    .type lb_strings_module_0init, %function
lb_strings_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_strings_17invalid_separator
    add x14, x14, :lo12:lb_strings_17invalid_separator
    movz x9, #48
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_strings_16output_too_large
    add x14, x14, :lo12:lb_strings_16output_too_large
    movz x9, #49
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_strings_13invalid_radix
    add x14, x14, :lo12:lb_strings_13invalid_radix
    movz x9, #50
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_strings_14invalid_number
    add x14, x14, :lo12:lb_strings_14invalid_number
    movz x9, #51
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_strings_19number_out_of_range
    add x14, x14, :lo12:lb_strings_19number_out_of_range
    movz x9, #52
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_strings_17conversion_failed
    add x14, x14, :lo12:lb_strings_17conversion_failed
    movz x9, #53
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_module_0init, .-lb_strings_module_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_module_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_strings_17invalid_separator
    .type lb_strings_17invalid_separator, %object
    .p2align 2
lb_strings_17invalid_separator:
    .zero 4

    .bss
    .globl lb_strings_16output_too_large
    .type lb_strings_16output_too_large, %object
    .p2align 2
lb_strings_16output_too_large:
    .zero 4

    .bss
    .globl lb_strings_13invalid_radix
    .type lb_strings_13invalid_radix, %object
    .p2align 2
lb_strings_13invalid_radix:
    .zero 4

    .bss
    .globl lb_strings_14invalid_number
    .type lb_strings_14invalid_number, %object
    .p2align 2
lb_strings_14invalid_number:
    .zero 4

    .bss
    .globl lb_strings_19number_out_of_range
    .type lb_strings_19number_out_of_range, %object
    .p2align 2
lb_strings_19number_out_of_range:
    .zero 4

    .bss
    .globl lb_strings_17conversion_failed
    .type lb_strings_17conversion_failed, %object
    .p2align 2
lb_strings_17conversion_failed:
    .zero 4


    .section .note.GNU-stack,"",%progbits
