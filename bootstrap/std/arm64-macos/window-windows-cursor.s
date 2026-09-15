    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_14windows_cursor_0init
_lb_window_14windows_cursor_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10win_cursor
    .no_dead_strip _lb_window_10win_cursor
_lb_window_10win_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #96
    str w0, [x16]
    sub x14, x29, #96
    ldrb w14, [x14]
    sub x15, x29, #97
    strb w14, [x15]
    sub x19, x29, #98
    mov x10, x15
    mov x11, x19
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldrb w14, [x19]
    movz x10, #1
    cmp w14, w10
    b.eq L1_2
L1_4:
    b L1_3
L1_2:
    movz x9, #32513
    mov x14, x9
    b L1_1
L1_3:
    movz x10, #2
    cmp w14, w10
    b.eq L1_5
L1_7:
    b L1_6
L1_5:
    movz x9, #32649
    mov x14, x9
    b L1_1
L1_6:
    movz x10, #3
    cmp w14, w10
    b.eq L1_8
L1_10:
    b L1_9
L1_8:
    movz x9, #32644
    mov x14, x9
    b L1_1
L1_9:
    movz x10, #4
    cmp w14, w10
    b.eq L1_11
L1_13:
    b L1_12
L1_11:
    movz x9, #32645
    mov x14, x9
    b L1_1
L1_12:
    movz x10, #5
    cmp w14, w10
    b.eq L1_14
L1_16:
    b L1_15
L1_14:
    movz x9, #32646
    mov x14, x9
    b L1_1
L1_15:
    movz x10, #6
    cmp w14, w10
    b.eq L1_17
L1_19:
    b L1_18
L1_17:
    movz x9, #32646
    mov x14, x9
    b L1_1
L1_18:
    movz x10, #7
    cmp w14, w10
    b.eq L1_20
L1_22:
    b L1_21
L1_20:
    movz x9, #32648
    mov x14, x9
    b L1_1
L1_21:
    b L1_23
L1_25:
    b L1_24
L1_23:
    movz x9, #32512
    mov x14, x9
    b L1_1
L1_24:
L1_1:
    mov x0, #0
    mov x1, x14
    bl _LoadCursorW
    mov x15, x0
    cbnz x15, L1_26
    b L1_27
L1_26:
    b L1_28
L1_27:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #120
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
L1_28:
    sub x14, x29, #80
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_30:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_14windows_cursor_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Windows could not load a system cursor"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/window/windows/cursor.lucb:19:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
