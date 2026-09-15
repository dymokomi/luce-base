    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_clipboard_0init
_lb_clipboard_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    movz x9, #117
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_clipboard_10text_limit@PAGE
    add x14, x14, _lb_clipboard_10text_limit@PAGEOFF
    movz x9, #16, lsl #16
    str x9, [x14]
    adrp x14, _lb_clipboard_12unicode_text@PAGE
    add x14, x14, _lb_clipboard_12unicode_text@PAGEOFF
    movz x9, #13
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_clipboard_9read_text
_lb_clipboard_9read_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #480
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #448]
    str x20, [sp, #440]
    str x21, [sp, #432]
    sub x8, x29, #136
    bl _lb_clipboard_12check_access
    sub x15, x29, #136
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #104
    add x14, x19, #24
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L1_8
    b L1_9
L1_9:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L1_8:
    sub x8, x29, #288
    bl _lb_clipboard_9mac_board
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_11
    b L1_10
L1_11:
    add x14, x15, #8
    sub x20, x29, #248
    add x21, x20, #24
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_12:
L1_10:
    ldr x20, [x15]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L1_13
    b L1_14
L1_14:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L1_13:
    adrp x15, _NSPasteboardTypeString@GOTPAGE
    ldr x15, [x15, _NSPasteboardTypeString@GOTPAGEOFF]
    ldr x15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L1_15
    b L1_16
L1_15:
    b L1_17
L1_16:
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #304
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #360
    bl _lb_interop_9copy_text
    sub x15, x29, #360
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L1_19
    b L1_18
L1_19:
    add x14, x15, #24
    sub x20, x29, #248
    add x21, x20, #24
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_20:
L1_18:
    sub x20, x29, #248
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_21:
L1_17:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L1_22
    b L1_23
L1_23:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L1_22:
    mov x0, x21
    mov x1, x14
    movz x2, #4
    bl _objc_msgSend
    mov x20, x0
    adrp x15, _lb_clipboard_10text_limit@PAGE
    add x15, x15, _lb_clipboard_10text_limit@PAGEOFF
    ldr x15, [x15]
    cmp x20, x15
    b.ls L1_25
L1_24:
    sub x20, x29, #248
    add x14, x20, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x21, x29, #376
    str x15, [x21]
    add x15, x21, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_27:
    b L1_26
L1_25:
L1_26:
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L1_28
    b L1_29
L1_29:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L1_28:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L1_30
    b L1_31
L1_30:
    b L1_32
L1_31:
    sub x20, x29, #248
    add x14, x20, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_21@PAGE
    add x15, x15, l_text_21@PAGEOFF
    sub x21, x29, #392
    str x15, [x21]
    add x15, x21, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_33:
L1_32:
    sub x14, x29, #408
    str x15, [x14]
    add x14, x14, #8
    str x20, [x14]
    sub x14, x29, #424
    str x15, [x14]
    add x21, x14, #8
    str x20, [x21]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #480
    bl _lb_interop_9copy_text
    sub x21, x29, #480
    add x14, x21, #48
    ldrb w14, [x14]
    cbnz w14, L1_35
    b L1_34
L1_35:
    add x14, x21, #24
    sub x20, x29, #248
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_36:
L1_34:
    sub x20, x29, #248
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L1_38
L1_37:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_38:
    sub x15, x29, #192
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x15, #24
    sub x19, x29, #104
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_clipboard_10write_text
_lb_clipboard_10write_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    str x24, [sp, #296]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x8, x29, #152
    bl _lb_clipboard_12check_access
    sub x15, x29, #152
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x19, x29, #120
    add x20, x19, #8
    ldr x14, [x20]
    adrp x15, _lb_clipboard_10text_limit@PAGE
    add x15, x15, _lb_clipboard_10text_limit@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
    cset w14, hi
    cbnz w14, L2_56
    b L2_7
L2_56:
    mov w15, w14
    b L2_8
L2_7:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_8:
    and w14, w15, #255
    cbnz w14, L2_4
    b L2_5
L2_4:
    sub x19, x29, #104
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_6
L2_5:
L2_6:
    ldr x21, [x19]
    ldr x22, [x20]
    mov x9, #0
    mov x14, x9
L2_10:
    cmp x14, x22
    b.hs L2_13
L2_11:
    add x15, x21, x14
    ldrb w15, [x15]
    and w15, w15, #255
    mov x10, #0
    cmp w15, w10
    b.ne L2_15
L2_14:
    sub x19, x29, #104
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
    b L2_16
L2_15:
L2_16:
L2_12:
    add x15, x14, #1
    mov x14, x15
    b L2_10
L2_13:
    mov x10, x19
    sub x11, x29, #264
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    bl _objc_autoreleasePoolPush
    mov x20, x0
    cbnz x20, L2_22
    b L2_23
L2_23:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_22:
    sub x8, x29, #304
    bl _lb_clipboard_9mac_board
    sub x15, x29, #304
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_25
    b L2_24
L2_25:
    add x14, x15, #8
    sub x19, x29, #248
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x19
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_55
L2_26:
L2_24:
    ldr x19, [x15]
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x23, x0
    cbnz x23, L2_27
    b L2_28
L2_27:
    b L2_29
L2_28:
    sub x19, x29, #248
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x19
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_55
L2_30:
L2_29:
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_31
    b L2_32
L2_32:
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_31:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x24, x0
    cbnz x24, L2_33
    b L2_34
L2_33:
    b L2_35
L2_34:
    sub x19, x29, #248
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x19
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_55
L2_36:
L2_35:
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_37
    b L2_38
L2_38:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_37:
    sub x15, x29, #264
    mov x0, x24
    mov x1, x14
    mov x2, x21
    mov x3, x22
    movz x4, #4
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L2_39
    b L2_40
L2_39:
    b L2_41
L2_40:
    sub x19, x29, #248
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x19
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_55
L2_42:
L2_41:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_43
    b L2_44
L2_44:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_43:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    adrp x15, l_text_34@PAGE
    add x15, x15, l_text_34@PAGEOFF
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L2_48
    b L2_49
L2_49:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_48:
    adrp x14, _NSPasteboardTypeString@GOTPAGE
    ldr x14, [x14, _NSPasteboardTypeString@GOTPAGEOFF]
    ldr x14, [x14]
    mov x0, x19
    mov x1, x15
    mov x2, x23
    mov x3, x14
    bl _objc_msgSend
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_46
L2_45:
    sub x19, x29, #248
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_50
    b L2_51
L2_51:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_50:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x19
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_55
L2_52:
    b L2_47
L2_46:
L2_47:
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_53
    b L2_54
L2_54:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L2_53:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x20
    bl _objc_autoreleasePoolPop
    sub x15, x29, #248
    add x19, x15, #24
    mov x9, #0
    strb w9, [x19]
    mov x10, x15
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L2_55:
    sub x15, x29, #216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_19
    b L2_18
L2_19:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
L2_18:
    sub x14, x29, #104
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    sub x14, x29, #104
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_clipboard_12check_access
_lb_clipboard_12check_access:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    bl _lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_2
L3_1:
    sub x19, x29, #64
    adrp x14, _lb_window_unsupported@PAGE
    add x14, x14, _lb_window_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_6
L3_5:
    sub x19, x29, #64
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    b L3_7
L3_6:
L3_7:
    sub x14, x29, #64
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_clipboard_9mac_board
_lb_clipboard_9mac_board:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L4_1
    b L4_2
L4_1:
    b L4_3
L4_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x20, x29, #96
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
L4_3:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L4_5
    b L4_6
L4_6:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L4_5:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L4_7
    b L4_8
L4_7:
    b L4_9
L4_8:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
L4_9:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_11:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_clipboard_8win_read
_lb_clipboard_8win_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #512]
    str x20, [sp, #504]
    str x21, [sp, #496]
    str x22, [sp, #488]
    str x23, [sp, #480]
    str x24, [sp, #472]
    str x25, [sp, #464]
    str x26, [sp, #456]
    bl _GetActiveWindow
    mov x14, x0
    mov x0, x14
    bl _OpenClipboard
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L5_2
L5_1:
    sub x19, x29, #144
    add x14, x19, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    sub x20, x29, #160
    str x15, [x20]
    add x15, x20, #8
    movz x9, #21
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_2:
L5_3:
    adrp x19, _lb_clipboard_12unicode_text@PAGE
    add x19, x19, _lb_clipboard_12unicode_text@PAGEOFF
    ldr w14, [x19]
    mov x0, x14
    bl _IsClipboardFormatAvailable
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L5_6
L5_5:
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_9copy_text
    sub x15, x29, #232
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L5_9
    b L5_8
L5_9:
    add x14, x15, #24
    sub x19, x29, #144
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    bl _CloseClipboard
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
    sub x19, x29, #144
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    bl _CloseClipboard
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_7:
    ldr w14, [x19]
    mov x0, x14
    bl _GetClipboardData
    mov x20, x0
    cbnz x20, L5_12
    b L5_13
L5_12:
    b L5_14
L5_13:
    sub x19, x29, #144
    add x14, x19, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_40@PAGE
    add x15, x15, l_text_40@PAGEOFF
    sub x20, x29, #248
    str x15, [x20]
    add x15, x20, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    bl _CloseClipboard
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_14:
    mov x0, x20
    bl _GlobalSize
    mov x14, x0
L5_17:
    movz x10, #2
    udiv x19, x14, x10
    mov x0, x20
    bl _GlobalLock
    mov x21, x0
    cbnz x21, L5_18
    b L5_19
L5_18:
    b L5_20
L5_19:
    sub x19, x29, #144
    add x14, x19, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_43@PAGE
    add x15, x15, l_text_43@PAGEOFF
    sub x20, x29, #264
    str x15, [x20]
    add x15, x20, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    bl _CloseClipboard
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_20:
    adrp x14, _lb_clipboard_10text_limit@PAGE
    add x14, x14, _lb_clipboard_10text_limit@PAGEOFF
    mov x9, #0
    mov x22, x9
L5_22:
    cmp x22, x19
    cset w15, lo
    cbnz w15, L5_25
    b L5_54
L5_54:
    mov w23, w15
    b L5_26
L5_25:
    ldr x15, [x14]
    cmp x22, x15
    cset w23, ls
L5_26:
    and w15, w23, #255
    cbnz w15, L5_27
    b L5_55
L5_55:
    mov w23, w15
    b L5_28
L5_27:
    lsl x15, x22, #1
    add x15, x15, x21
    ldrh w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w23, eq
L5_28:
    and w15, w23, #255
    cbnz w15, L5_23
    b L5_24
L5_23:
    mov x9, x22
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x22, x15
    b L5_22
L5_24:
    cmp x19, x22
    cset w14, eq
    cbnz w14, L5_56
    b L5_32
L5_56:
    mov w15, w14
    b L5_33
L5_32:
    adrp x14, _lb_clipboard_10text_limit@PAGE
    add x14, x14, _lb_clipboard_10text_limit@PAGEOFF
    ldr x14, [x14]
    cmp x22, x14
    cset w15, hi
L5_33:
    and w14, w15, #255
    cbnz w14, L5_29
    b L5_30
L5_29:
    sub x19, x29, #144
    add x14, x19, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_45@PAGE
    add x15, x15, l_text_45@PAGEOFF
    sub x21, x29, #280
    str x15, [x21]
    add x15, x21, #8
    movz x9, #51
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _GlobalUnlock
    mov w14, w0
    bl _CloseClipboard
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_30:
L5_31:
    sub x19, x29, #296
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x23, x0
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x25, x29, #312
    sub x14, x29, #328
    str x21, [x14]
    add x15, x14, #8
    str x22, [x15]
    adrp x24, _lb_clipboard_failed@PAGE
    add x24, x24, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x24]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    sub x8, x29, #376
    bl _lb_12windows_text_narrow
    sub x15, x29, #376
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L5_36
    b L5_35
L5_36:
    add x14, x15, #16
    sub x21, x29, #144
    add x22, x21, #24
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    bl _GlobalUnlock
    mov w14, w0
    bl _CloseClipboard
    mov w14, w0
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_35:
    mov x10, x15
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x21, x25, #8
    ldr x22, [x21]
    adrp x14, _lb_clipboard_10text_limit@PAGE
    add x14, x14, _lb_clipboard_10text_limit@PAGEOFF
    ldr x14, [x14]
    cmp x22, x14
    b.ls L5_39
L5_38:
    sub x21, x29, #144
    add x14, x21, #24
    ldr w15, [x24]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x26, x29, #392
    str x15, [x26]
    add x15, x26, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x25]
    mov x9, x22
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    sub x26, x29, #408
    str x14, [x26]
    add x26, x26, #8
    str x15, [x26]
    sub x26, x29, #424
    str x14, [x26]
    add x14, x26, #8
    str x15, [x14]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cbnz x15, L5_42
    b L5_41
L5_42:
    add x22, x15, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_41:
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    bl _GlobalUnlock
    mov w14, w0
    bl _CloseClipboard
    mov w14, w0
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_39:
L5_40:
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #480
    bl _lb_interop_9copy_text
    sub x15, x29, #480
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L5_45
    b L5_44
L5_45:
    add x14, x15, #24
    sub x22, x29, #144
    add x24, x22, #24
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x25]
    ldr x24, [x21]
    mov x9, x24
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    sub x26, x29, #496
    str x14, [x26]
    add x26, x26, #8
    str x24, [x26]
    sub x26, x29, #512
    str x14, [x26]
    add x14, x26, #8
    str x24, [x14]
    ldr x14, [x23]
    add x24, x23, #8
    ldr x24, [x24]
    cbnz x24, L5_47
    b L5_46
L5_47:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_46:
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    bl _GlobalUnlock
    mov w14, w0
    bl _CloseClipboard
    mov w14, w0
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_44:
    sub x22, x29, #144
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    mov x9, #0
    strb w9, [x14]
    ldr x14, [x25]
    ldr x24, [x21]
    mov x9, x24
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    sub x26, x29, #528
    str x14, [x26]
    add x26, x26, #8
    str x24, [x26]
    sub x26, x29, #544
    str x14, [x26]
    add x14, x26, #8
    str x24, [x14]
    ldr x14, [x23]
    add x24, x23, #8
    ldr x24, [x24]
    cbnz x24, L5_50
    b L5_49
L5_50:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_49:
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    bl _GlobalUnlock
    mov w14, w0
    bl _CloseClipboard
    mov w14, w0
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_clipboard_9win_write
_lb_clipboard_9win_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #640
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #608]
    str x20, [sp, #600]
    str x21, [sp, #592]
    str x22, [sp, #584]
    str x23, [sp, #576]
    str x24, [sp, #568]
    str x25, [sp, #560]
    str x26, [sp, #552]
    str x27, [sp, #544]
    str x28, [sp, #536]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    bl _GetActiveWindow
    mov x19, x0
    cbnz x19, L6_1
    b L6_2
L6_1:
    b L6_3
L6_2:
    sub x19, x29, #136
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #55
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
L6_3:
    sub x9, x29, #184
    str x9, [sp, #8]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    mov x10, x21
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #224
    str x9, [sp, #0]
    sub x22, x29, #152
    add x14, x22, #8
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #296
    bl _lb_strings_Builder_create
    sub x15, x29, #296
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L6_6
    b L6_5
L6_6:
    add x14, x15, #40
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
L6_5:
    mov x10, x15
    ldr x11, [sp, #0]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x0, [sp, #0]
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #328
    bl _lb_strings_Builder_put
    sub x24, x29, #328
    add x14, x24, #24
    ldrb w14, [x14]
    cbnz w14, L6_9
    b L6_8
L6_9:
    sub x19, x29, #136
    mov x10, x24
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_10:
L6_8:
    sub x24, x29, #344
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_view
    sub x16, x29, #360
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #360
    ldr x14, [x14]
    adrp x22, _lb_clipboard_failed@PAGE
    add x22, x22, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x22]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #408
    bl _lb_12windows_text_wide
    sub x15, x29, #408
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L6_12
    b L6_11
L6_12:
    add x14, x15, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_13:
L6_11:
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    movz x0, #2
    mov x1, x25
    bl _GlobalAlloc
    mov x26, x0
    cbnz x26, L6_14
    b L6_15
L6_14:
    b L6_16
L6_15:
    sub x19, x29, #136
    ldr w14, [x22]
    str w14, [x19]
    adrp x14, l_text_50@PAGE
    add x14, x14, l_text_50@PAGEOFF
    sub x15, x29, #424
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #440
    ldr x15, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x15, [x21]
    add x26, x21, #8
    ldr x26, [x26]
    cbnz x26, L6_18
    b L6_17
L6_18:
    add x22, x26, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L6_17:
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_19:
L6_16:
    sub x27, x29, #441
    mov x9, #0
    strb w9, [x27]
    mov x0, x26
    bl _GlobalLock
    mov x14, x0
    cbnz x14, L6_20
    b L6_21
L6_20:
    b L6_22
L6_21:
    sub x19, x29, #136
    ldr w14, [x22]
    str w14, [x19]
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    sub x15, x29, #464
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #608
    str x26, [x10]
    sub x10, x29, #624
    str x27, [x10]
    ldrb w14, [x27]
    mov x10, #0
    cmp w14, w10
    b.ne L6_43
L6_42:
    mov x0, x26
    bl _GlobalFree
    mov x14, x0
    b L6_44
L6_43:
L6_44:
L6_45:
    sub x14, x29, #480
    ldr x15, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x15, [x21]
    add x22, x21, #8
    ldr x22, [x22]
    cbnz x22, L6_24
    b L6_23
L6_24:
    add x24, x22, #16
    ldr x24, [x24]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L6_23:
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_25:
L6_22:
    sub x15, x29, #496
    str x14, [x15]
    add x28, x15, #8
    str x25, [x28]
    ldr x28, [x24]
    sub x20, x29, #512
    str x28, [x20]
    add x23, x20, #8
    str x25, [x23]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x25
    bl _lb_memory_copy_0g1_u8
    mov x0, x26
    bl _GlobalUnlock
    mov w14, w0
    mov x0, x19
    bl _OpenClipboard
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L6_27
L6_26:
    sub x19, x29, #136
    ldr w14, [x22]
    str w14, [x19]
    adrp x14, l_text_39@PAGE
    add x14, x14, l_text_39@PAGEOFF
    sub x15, x29, #528
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #608
    str x26, [x10]
    sub x10, x29, #624
    str x27, [x10]
    ldrb w14, [x27]
    mov x10, #0
    cmp w14, w10
    b.ne L6_47
L6_46:
    mov x0, x26
    bl _GlobalFree
    mov x14, x0
    b L6_48
L6_47:
L6_48:
L6_49:
    sub x14, x29, #544
    str x28, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x15, [x21]
    add x20, x21, #8
    ldr x20, [x20]
    cbnz x20, L6_30
    b L6_29
L6_30:
    add x22, x20, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L6_29:
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_31:
    b L6_28
L6_27:
L6_28:
    bl _EmptyClipboard
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L6_58
    b L6_35
L6_58:
    mov w15, w14
    b L6_36
L6_35:
    adrp x14, _lb_clipboard_12unicode_text@PAGE
    add x14, x14, _lb_clipboard_12unicode_text@PAGEOFF
    ldr w14, [x14]
    mov x0, x14
    mov x1, x26
    bl _SetClipboardData
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L6_36:
    and w14, w15, #255
    cbnz w14, L6_32
    b L6_33
L6_32:
    sub x19, x29, #136
    ldr w14, [x22]
    str w14, [x19]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    sub x15, x29, #560
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    bl _CloseClipboard
    mov w14, w0
    sub x10, x29, #608
    str x26, [x10]
    sub x10, x29, #624
    str x27, [x10]
    ldrb w14, [x27]
    mov x10, #0
    cmp w14, w10
    b.ne L6_51
L6_50:
    mov x0, x26
    bl _GlobalFree
    mov x14, x0
    b L6_52
L6_51:
L6_52:
L6_53:
    sub x14, x29, #576
    str x28, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x15, [x21]
    add x20, x21, #8
    ldr x20, [x20]
    cbnz x20, L6_38
    b L6_37
L6_38:
    add x22, x20, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L6_37:
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_39:
    b L6_34
L6_33:
L6_34:
    movz x9, #1
    strb w9, [x27]
    bl _CloseClipboard
    mov w14, w0
    sub x10, x29, #608
    str x26, [x10]
    sub x10, x29, #624
    str x27, [x10]
    ldrb w14, [x27]
    mov x10, #0
    cmp w14, w10
    b.ne L6_55
L6_54:
    mov x0, x26
    bl _GlobalFree
    mov x14, x0
    b L6_56
L6_55:
L6_56:
L6_57:
    sub x14, x29, #592
    str x28, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x15, [x21]
    add x19, x21, #8
    ldr x19, [x19]
    cbnz x19, L6_41
    b L6_40
L6_41:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L6_40:
    ldr x0, [sp, #0]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #136
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L7_11
    b L7_4
L7_11:
    mov w15, w14
    b L7_5
L7_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L7_5:
    and w14, w15, #255
    cbnz w14, L7_1
    b L7_2
L7_1:
    adrp x14, l_text_57@PAGE
    add x14, x14, l_text_57@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L7_3
L7_2:
L7_3:
    mov x10, #0
    cmp x19, x10
    b.ls L7_7
L7_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_9
    b L7_10
L7_10:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L7_9:
    b L7_8
L7_7:
L7_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_clipboard_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/clipboard/module.lucb:19:9"
l_text_2:
    .asciz "clipboard text must be valid UTF-8 within 1 MiB"
l_text_3:
    .asciz "clipboard text cannot contain NUL"
l_text_4:
    .asciz "the desktop clipboard is unavailable on this target"
l_text_5:
    .asciz "clipboard access requires the UI thread"
l_text_6:
    .asciz "NSPasteboard"
l_text_7:
    .asciz "AppKit pasteboard is unavailable"
l_text_8:
    .asciz "generalPasteboard"
l_text_9:
    .asciz "null_foreign"
l_text_10:
    .asciz "src/std/clipboard/macos/native.lucb:18:5"
l_text_11:
    .asciz "the clipboard is unavailable"
l_text_12:
    .asciz "src/std/clipboard/macos/native.lucb:21:5"
l_text_13:
    .asciz "stringForType:"
l_text_14:
    .asciz "src/std/clipboard/macos/native.lucb:24:5"
l_text_15:
    .asciz ""
l_text_16:
    .asciz "lengthOfBytesUsingEncoding:"
l_text_17:
    .asciz "src/std/clipboard/macos/native.lucb:25:5"
l_text_18:
    .asciz "clipboard text exceeds 1 MiB"
l_text_19:
    .asciz "UTF8String"
l_text_20:
    .asciz "src/std/clipboard/macos/native.lucb:28:5"
l_text_21:
    .asciz "clipboard text is not UTF-8"
l_text_22:
    .asciz "src/std/clipboard/macos/native.lucb:29:5"
l_text_23:
    .asciz "src/std/clipboard/macos/native.lucb:32:5"
l_text_24:
    .asciz "NSString"
l_text_25:
    .asciz "Foundation strings are unavailable"
l_text_26:
    .asciz "alloc"
l_text_27:
    .asciz "src/std/clipboard/macos/native.lucb:36:5"
l_text_28:
    .asciz "could not allocate clipboard text"
l_text_29:
    .asciz "initWithBytes:length:encoding:"
l_text_30:
    .asciz "src/std/clipboard/macos/native.lucb:37:5"
l_text_31:
    .asciz "could not create clipboard text"
l_text_32:
    .asciz "clearContents"
l_text_33:
    .asciz "src/std/clipboard/macos/native.lucb:39:5"
l_text_34:
    .asciz "setString:forType:"
l_text_35:
    .asciz "src/std/clipboard/macos/native.lucb:40:5"
l_text_36:
    .asciz "could not publish clipboard text"
l_text_37:
    .asciz "release"
l_text_38:
    .asciz "src/std/clipboard/macos/native.lucb:41:9"
l_text_39:
    .asciz "the clipboard is busy"
l_text_40:
    .asciz "clipboard text is unavailable"
l_text_41:
    .asciz "division by zero"
l_text_42:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
l_text_43:
    .asciz "clipboard text cannot be read"
l_text_44:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
l_text_45:
    .asciz "clipboard text is unterminated or exceeds the limit"
l_text_46:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
l_text_47:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
l_text_48:
    .asciz "clipboard writing requires an active application window"
l_text_49:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
l_text_50:
    .asciz "could not allocate clipboard storage"
l_text_51:
    .asciz "could not lock clipboard storage"
l_text_52:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
l_text_53:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
l_text_54:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
l_text_55:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
l_text_56:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
l_text_57:
    .asciz "index out of bounds"
l_text_58:
    .asciz "src/std/memory.lucb:326:9"
l_text_59:
    .asciz "src/std/memory.lucb:328:9"
l_text_60:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_clipboard_failed
    .zerofill __DATA,__bss,_lb_clipboard_failed,4,2
    .globl _lb_clipboard_10text_limit
    .zerofill __DATA,__bss,_lb_clipboard_10text_limit,8,3
    .globl _lb_clipboard_12unicode_text
    .zerofill __DATA,__bss,_lb_clipboard_12unicode_text,4,2

