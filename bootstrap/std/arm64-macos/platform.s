    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_platform_0init
_lb_platform_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #11
    str x9, [x14]
    adrp x14, _lb_platform_name@PAGE
    add x14, x14, _lb_platform_name@PAGEOFF
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_platform_linux@PAGE
    add x14, x14, _lb_platform_linux@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_platform_posix@PAGE
    add x14, x14, _lb_platform_posix@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_platform_6x86_64@PAGE
    add x14, x14, _lb_platform_6x86_64@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_platform_12pointer_bits@PAGE
    add x14, x14, _lb_platform_12pointer_bits@PAGEOFF
    movz x9, #64
    str w9, [x14]
    adrp x14, _lb_platform_9cpu_level@PAGE
    add x14, x14, _lb_platform_9cpu_level@PAGEOFF
    movz x9, #1
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_platform_0init

    .section __TEXT,__const
l_text_0:
    .asciz "arm64-macos"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 3
    .globl _lb_platform_name
    .weak_definition _lb_platform_name
    .no_dead_strip _lb_platform_name
_lb_platform_name:
    .zero 16
    .section __DATA,__data
    .p2align 0
    .globl _lb_platform_macos
    .weak_definition _lb_platform_macos
    .no_dead_strip _lb_platform_macos
_lb_platform_macos:
    .zero 1
    .section __DATA,__data
    .p2align 0
    .globl _lb_platform_linux
    .weak_definition _lb_platform_linux
    .no_dead_strip _lb_platform_linux
_lb_platform_linux:
    .zero 1
    .section __DATA,__data
    .p2align 0
    .globl _lb_platform_windows
    .weak_definition _lb_platform_windows
    .no_dead_strip _lb_platform_windows
_lb_platform_windows:
    .zero 1
    .section __DATA,__data
    .p2align 0
    .globl _lb_platform_posix
    .weak_definition _lb_platform_posix
    .no_dead_strip _lb_platform_posix
_lb_platform_posix:
    .zero 1
    .section __DATA,__data
    .p2align 0
    .globl _lb_platform_arm64
    .weak_definition _lb_platform_arm64
    .no_dead_strip _lb_platform_arm64
_lb_platform_arm64:
    .zero 1
    .section __DATA,__data
    .p2align 0
    .globl _lb_platform_6x86_64
    .weak_definition _lb_platform_6x86_64
    .no_dead_strip _lb_platform_6x86_64
_lb_platform_6x86_64:
    .zero 1
    .section __DATA,__data
    .p2align 2
    .globl _lb_platform_12pointer_bits
    .weak_definition _lb_platform_12pointer_bits
    .no_dead_strip _lb_platform_12pointer_bits
_lb_platform_12pointer_bits:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_platform_9cpu_level
    .weak_definition _lb_platform_9cpu_level
    .no_dead_strip _lb_platform_9cpu_level
_lb_platform_9cpu_level:
    .zero 4

.subsections_via_symbols
