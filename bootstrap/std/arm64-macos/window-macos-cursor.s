    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_12macos_cursor_0init
_lb_window_12macos_cursor_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10mac_cursor
    .no_dead_strip _lb_window_10mac_cursor
_lb_window_10mac_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #96
    str w0, [x16]
    adrp x19, l_text_0@PAGE
    add x19, x19, l_text_0@PAGEOFF
    sub x14, x29, #96
    ldrb w14, [x14]
    sub x15, x29, #97
    strb w14, [x15]
    sub x20, x29, #98
    mov x10, x15
    mov x11, x20
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldrb w14, [x20]
    movz x10, #1
    cmp w14, w10
    b.eq L1_2
L1_4:
    b L1_3
L1_2:
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    mov x19, x14
    b L1_1
L1_3:
    movz x10, #2
    cmp w14, w10
    b.eq L1_5
L1_7:
    b L1_6
L1_5:
    adrp x19, l_text_2@PAGE
    add x19, x19, l_text_2@PAGEOFF
    b L1_1
L1_6:
    movz x10, #3
    cmp w14, w10
    b.eq L1_8
L1_10:
    b L1_9
L1_8:
    adrp x19, l_text_3@PAGE
    add x19, x19, l_text_3@PAGEOFF
    b L1_1
L1_9:
    movz x10, #4
    cmp w14, w10
    b.eq L1_11
L1_13:
    b L1_12
L1_11:
    adrp x19, l_text_4@PAGE
    add x19, x19, l_text_4@PAGEOFF
    b L1_1
L1_12:
    movz x10, #5
    cmp w14, w10
    b.eq L1_14
L1_16:
    b L1_15
L1_14:
    adrp x19, l_text_5@PAGE
    add x19, x19, l_text_5@PAGEOFF
    b L1_1
L1_15:
    movz x10, #6
    cmp w14, w10
    b.eq L1_17
L1_19:
    b L1_18
L1_17:
    adrp x19, l_text_6@PAGE
    add x19, x19, l_text_6@PAGEOFF
    b L1_1
L1_18:
    movz x10, #7
    cmp w14, w10
    b.eq L1_20
L1_22:
    b L1_21
L1_20:
    adrp x19, l_text_7@PAGE
    add x19, x19, l_text_7@PAGEOFF
    b L1_1
L1_21:
    b L1_23
L1_25:
    b L1_24
L1_23:
    b L1_1
L1_24:
L1_1:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x14
    sub x8, x29, #144
    bl _lb_window_12native_class
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_27
    b L1_26
L1_27:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_28:
L1_26:
    ldr x20, [x15]
    mov x0, x19
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L1_29
    b L1_30
L1_29:
    b L1_31
L1_30:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x20, x29, #160
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_32:
L1_31:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_33:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_14mac_set_cursor
    .no_dead_strip _lb_window_14mac_set_cursor
_lb_window_14mac_set_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str w1, [x16]
    sub x14, x29, #104
    ldr x19, [x14]
    movz x10, #14392
    add x20, x19, x10
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L2_4
    b L2_24
L2_24:
    mov w15, w14
    b L2_5
L2_4:
    movz x10, #14385
    add x14, x19, x10
    ldrb w14, [x14]
    sub x15, x29, #120
    ldrb w15, [x15]
    cmp w14, w15
    cset w15, eq
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x14, x29, #88
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
    b L2_3
L2_2:
L2_3:
    bl _objc_autoreleasePoolPush
    mov x21, x0
    cbnz x21, L2_7
    b L2_8
L2_8:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L2_7:
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L2_25
    b L2_12
L2_25:
    mov w15, w14
    b L2_13
L2_12:
    movz x10, #14385
    add x14, x19, x10
    ldrb w14, [x14]
    sub x15, x29, #120
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_13:
    and w14, w15, #255
    cbnz w14, L2_9
    b L2_10
L2_9:
    sub x14, x29, #120
    ldrb w22, [x14]
    mov x0, x22
    sub x8, x29, #160
    bl _lb_window_10mac_cursor
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_15
    b L2_14
L2_15:
    add x14, x15, #8
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _objc_autoreleasePoolPop
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_16:
L2_14:
    ldr x14, [x15]
    str x14, [x20]
    movz x10, #14385
    add x14, x19, x10
    strb w22, [x14]
    b L2_11
L2_10:
L2_11:
    movz x10, #14400
    add x14, x19, x10
    ldrb w14, [x14]
    cbnz w14, L2_26
    b L2_20
L2_26:
    mov w15, w14
    b L2_21
L2_20:
    movz x10, #14401
    add x14, x19, x10
    ldrb w15, [x14]
L2_21:
    and w14, w15, #255
    cbnz w14, L2_22
    b L2_27
L2_27:
    mov w15, w14
    b L2_23
L2_22:
    ldr x14, [x19]
    mov x0, x14
    bl _lb_window_required
    mov x22, x0
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
L2_23:
    and w14, w15, #255
    cbnz w14, L2_17
    b L2_18
L2_17:
    ldr x14, [x20]
    mov x0, x14
    bl _lb_window_required
    mov x19, x0
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    b L2_19
L2_18:
L2_19:
    mov x0, x21
    bl _objc_autoreleasePoolPop
    sub x14, x29, #88
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_15cursor_callback
    .no_dead_strip _lb_window_15cursor_callback
_lb_window_15cursor_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
L3_3:
    movz x10, #14392
    add x15, x14, x10
    ldr x19, [x15]
    cbnz x19, L3_5
    b L3_6
L3_5:
    b L3_7
L3_6:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
L3_7:
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_12macos_cursor_0init

    .section __TEXT,__const
l_text_0:
    .asciz "arrowCursor"
l_text_1:
    .asciz "IBeamCursor"
l_text_2:
    .asciz "pointingHandCursor"
l_text_3:
    .asciz "resizeLeftRightCursor"
l_text_4:
    .asciz "resizeUpDownCursor"
l_text_5:
    .asciz "openHandCursor"
l_text_6:
    .asciz "closedHandCursor"
l_text_7:
    .asciz "operationNotAllowedCursor"
l_text_8:
    .asciz "NSCursor"
l_text_9:
    .asciz "AppKit could not load a system cursor"
l_text_10:
    .asciz "unreachable"
l_text_11:
    .asciz "src/std/window/macos/cursor.lucb:14:5"
l_text_12:
    .asciz "null_foreign"
l_text_13:
    .asciz "src/std/window/macos/cursor.lucb:18:5"
l_text_14:
    .asciz "isKeyWindow"
l_text_15:
    .asciz "set"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
