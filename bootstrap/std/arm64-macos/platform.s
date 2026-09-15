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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    adrp x14, _lb_platform_wasm32@PAGE
    add x14, x14, _lb_platform_wasm32@PAGEOFF
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
    .globl _lb_platform_name
    .no_dead_strip _lb_platform_name
    .zerofill __DATA,__bss,_lb_platform_name,16,3
    .globl _lb_platform_macos
    .no_dead_strip _lb_platform_macos
    .zerofill __DATA,__bss,_lb_platform_macos,1,0
    .globl _lb_platform_linux
    .no_dead_strip _lb_platform_linux
    .zerofill __DATA,__bss,_lb_platform_linux,1,0
    .globl _lb_platform_windows
    .no_dead_strip _lb_platform_windows
    .zerofill __DATA,__bss,_lb_platform_windows,1,0
    .globl _lb_platform_posix
    .no_dead_strip _lb_platform_posix
    .zerofill __DATA,__bss,_lb_platform_posix,1,0
    .globl _lb_platform_arm64
    .no_dead_strip _lb_platform_arm64
    .zerofill __DATA,__bss,_lb_platform_arm64,1,0
    .globl _lb_platform_6x86_64
    .no_dead_strip _lb_platform_6x86_64
    .zerofill __DATA,__bss,_lb_platform_6x86_64,1,0
    .globl _lb_platform_wasm32
    .no_dead_strip _lb_platform_wasm32
    .zerofill __DATA,__bss,_lb_platform_wasm32,1,0
    .globl _lb_platform_12pointer_bits
    .no_dead_strip _lb_platform_12pointer_bits
    .zerofill __DATA,__bss,_lb_platform_12pointer_bits,4,2
    .globl _lb_platform_9cpu_level
    .no_dead_strip _lb_platform_9cpu_level
    .zerofill __DATA,__bss,_lb_platform_9cpu_level,4,2

.subsections_via_symbols
