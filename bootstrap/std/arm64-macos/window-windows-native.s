    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_14windows_native_0init
_lb_window_14windows_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x14, x29, #38
    movz x9, #76
    strh w9, [x14]
    add x15, x14, #2
    movz x9, #117
    strh w9, [x15]
    add x15, x14, #4
    movz x9, #99
    strh w9, [x15]
    add x15, x14, #6
    movz x9, #101
    strh w9, [x15]
    add x15, x14, #8
    movz x9, #87
    strh w9, [x15]
    add x15, x14, #10
    movz x9, #105
    strh w9, [x15]
    add x15, x14, #12
    movz x9, #110
    strh w9, [x15]
    add x15, x14, #14
    movz x9, #100
    strh w9, [x15]
    add x15, x14, #16
    movz x9, #111
    strh w9, [x15]
    add x15, x14, #18
    movz x9, #119
    strh w9, [x15]
    add x15, x14, #20
    mov x9, #0
    strh w9, [x15]
    adrp x15, _lb_window_14win_class_name@PAGE
    add x15, x15, _lb_window_14win_class_name@PAGEOFF
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr w16, [x10, #16]
    str w16, [x11, #16]
    ldrh w16, [x10, #20]
    strh w16, [x11, #20]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_14windows_native_0init

    .section __TEXT,__const
l_text_0:
    .asciz "null_foreign"
l_text_1:
    .asciz "src/std/window/windows/native.lucb:64:5"
l_text_2:
    .asciz "the native window class could not be registered"
l_text_3:
    .asciz "memory.unset"
l_text_4:
    .asciz "src/std/window/windows/native.lucb:73:5"
l_text_5:
    .asciz "memory.exhausted"
l_text_6:
    .asciz "src/std/window/windows/native.lucb:76:5"
l_text_7:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_8:
    .asciz "src/std/window/windows/native.lucb:80:9"
l_text_9:
    .asciz "the window title could not be converted to UTF-16"
l_text_10:
    .asciz "src/std/window/windows/native.lucb:82:13"
l_text_11:
    .asciz "src/std/window/windows/native.lucb:83:5"
l_text_12:
    .asciz "src/std/window/windows/native.lucb:86:5"
l_text_13:
    .asciz "division by zero"
l_text_14:
    .asciz "the native window dimensions could not be calculated"
l_text_15:
    .asciz "src/std/window/windows/native.lucb:88:9"
l_text_16:
    .asciz "src/std/window/windows/native.lucb:89:5"
l_text_17:
    .asciz "the native window could not be created"
l_text_18:
    .asciz "src/std/window/windows/native.lucb:92:5"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/window/windows/native.lucb:100:5"
l_text_21:
    .asciz "src/std/window/windows/native.lucb:101:5"
l_text_22:
    .asciz "src/std/window/windows/native.lucb:102:5"
l_text_23:
    .asciz "src/std/window/windows/native.lucb:108:5"
l_text_24:
    .asciz "src/std/window/windows/native.lucb:109:5"
l_text_25:
    .asciz "the native window could not be resized"
l_text_26:
    .asciz "src/std/window/windows/native.lucb:118:9"

    .section __DATA,__const
    .p2align 3
    .globl _lb_window_14win_class_name
    .zerofill __DATA,__bss,_lb_window_14win_class_name,22,1

.subsections_via_symbols
