    .text

    .p2align 2
    .globl lb_window_14windows_native_0init
    .type lb_window_14windows_native_0init, %function
lb_window_14windows_native_0init:
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
    adrp x15, lb_window_14win_class_name
    add x15, x15, :lo12:lb_window_14win_class_name
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr w12, [x10, #16]
    str w12, [x11, #16]
    ldrh w12, [x10, #20]
    strh w12, [x11, #20]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_14windows_native_0init, .-lb_window_14windows_native_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_14windows_native_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/window/windows/native.lucb:64:5"
.Ltext_2:
    .asciz "the native window class could not be registered"
.Ltext_3:
    .asciz "memory.unset"
.Ltext_4:
    .asciz "src/std/window/windows/native.lucb:73:5"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "src/std/window/windows/native.lucb:76:5"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "src/std/window/windows/native.lucb:80:9"
.Ltext_9:
    .asciz "the window title could not be converted to UTF-16"
.Ltext_10:
    .asciz "src/std/window/windows/native.lucb:82:13"
.Ltext_11:
    .asciz "src/std/window/windows/native.lucb:83:5"
.Ltext_12:
    .asciz "src/std/window/windows/native.lucb:86:5"
.Ltext_13:
    .asciz "division by zero"
.Ltext_14:
    .asciz "the native window dimensions could not be calculated"
.Ltext_15:
    .asciz "src/std/window/windows/native.lucb:88:9"
.Ltext_16:
    .asciz "src/std/window/windows/native.lucb:89:5"
.Ltext_17:
    .asciz "the native window could not be created"
.Ltext_18:
    .asciz "src/std/window/windows/native.lucb:92:5"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/window/windows/native.lucb:100:5"
.Ltext_21:
    .asciz "src/std/window/windows/native.lucb:101:5"
.Ltext_22:
    .asciz "src/std/window/windows/native.lucb:102:5"
.Ltext_23:
    .asciz "src/std/window/windows/native.lucb:108:5"
.Ltext_24:
    .asciz "src/std/window/windows/native.lucb:109:5"
.Ltext_25:
    .asciz "the native window could not be resized"
.Ltext_26:
    .asciz "src/std/window/windows/native.lucb:118:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_window_14win_class_name
    .type lb_window_14win_class_name, %object
    .p2align 1
lb_window_14win_class_name:
    .zero 22


    .section .note.GNU-stack,"",%progbits
