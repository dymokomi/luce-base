    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_11windows_abi_0init
_lb_11windows_abi_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_11windows_abi_9utf8_page@PAGE
    add x14, x14, _lb_11windows_abi_9utf8_page@PAGEOFF
    movz x9, #65001
    str w9, [x14]
    adrp x14, _lb_11windows_abi_19reject_invalid_utf8@PAGE
    add x14, x14, _lb_11windows_abi_19reject_invalid_utf8@PAGEOFF
    movz x9, #8
    str w9, [x14]
    adrp x14, _lb_11windows_abi_20reject_invalid_utf16@PAGE
    add x14, x14, _lb_11windows_abi_20reject_invalid_utf16@PAGEOFF
    movz x9, #128
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_11windows_abi_0init

    .section __TEXT,__const

    .section __DATA,__const
    .p2align 3
    .globl _lb_11windows_abi_9utf8_page
    .no_dead_strip _lb_11windows_abi_9utf8_page
    .zerofill __DATA,__bss,_lb_11windows_abi_9utf8_page,4,2
    .globl _lb_11windows_abi_19reject_invalid_utf8
    .no_dead_strip _lb_11windows_abi_19reject_invalid_utf8
    .zerofill __DATA,__bss,_lb_11windows_abi_19reject_invalid_utf8,4,2
    .globl _lb_11windows_abi_20reject_invalid_utf16
    .no_dead_strip _lb_11windows_abi_20reject_invalid_utf16
    .zerofill __DATA,__bss,_lb_11windows_abi_20reject_invalid_utf16,4,2

.subsections_via_symbols
