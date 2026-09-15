    .text

    .p2align 2
    .globl lb_11windows_abi_0init
    .type lb_11windows_abi_0init, %function
lb_11windows_abi_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_11windows_abi_9utf8_page
    add x14, x14, :lo12:lb_11windows_abi_9utf8_page
    movz x9, #65001
    str w9, [x14]
    adrp x14, lb_11windows_abi_19reject_invalid_utf8
    add x14, x14, :lo12:lb_11windows_abi_19reject_invalid_utf8
    movz x9, #8
    str w9, [x14]
    adrp x14, lb_11windows_abi_20reject_invalid_utf16
    add x14, x14, :lo12:lb_11windows_abi_20reject_invalid_utf16
    movz x9, #128
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_11windows_abi_0init, .-lb_11windows_abi_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_11windows_abi_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_11windows_abi_9utf8_page
    .type lb_11windows_abi_9utf8_page, %object
    .p2align 2
lb_11windows_abi_9utf8_page:
    .zero 4

    .bss
    .globl lb_11windows_abi_19reject_invalid_utf8
    .type lb_11windows_abi_19reject_invalid_utf8, %object
    .p2align 2
lb_11windows_abi_19reject_invalid_utf8:
    .zero 4

    .bss
    .globl lb_11windows_abi_20reject_invalid_utf16
    .type lb_11windows_abi_20reject_invalid_utf16, %object
    .p2align 2
lb_11windows_abi_20reject_invalid_utf16:
    .zero 4


    .section .note.GNU-stack,"",%progbits
