    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_clipboard_12macos_native_0init
_lb_clipboard_12macos_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
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
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L1_1
    b L1_2
L1_1:
    b L1_3
L1_2:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x12, x29, #88
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
L1_3:
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L1_5
    b L1_6
L1_6:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L1_5:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L1_7
    b L1_8
L1_7:
    b L1_9
L1_8:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x12, x29, #104
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
L1_9:
    sub x14, x29, #72
    str x15, [x14]
    add x12, x14, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_11:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_clipboard_8mac_read
    .no_dead_strip _lb_clipboard_8mac_read
_lb_clipboard_8mac_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L2_1
    b L2_2
L2_2:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L2_1:
    sub x8, x29, #144
    bl _lb_clipboard_9mac_board
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_4
    b L2_3
L2_4:
    add x14, x15, #8
    sub x20, x29, #104
    add x12, x20, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_5:
L2_3:
    ldr x20, [x15]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_6
    b L2_7
L2_7:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L2_6:
    adrp x15, _NSPasteboardTypeString@GOTPAGE
    ldr x15, [x15, _NSPasteboardTypeString@GOTPAGEOFF]
    ldr x15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L2_8
    b L2_9
L2_8:
    b L2_10
L2_9:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #216
    bl _lb_interop_9copy_text
    sub x15, x29, #216
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L2_12
    b L2_11
L2_12:
    add x14, x15, #24
    sub x20, x29, #104
    add x12, x20, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_13:
L2_11:
    sub x20, x29, #104
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_14:
L2_10:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_15
    b L2_16
L2_16:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L2_15:
    mov x0, x21
    mov x1, x14
    movz x2, #4
    bl _objc_msgSend
    mov x20, x0
    adrp x15, _lb_clipboard_10text_limit@PAGE
    add x15, x15, _lb_clipboard_10text_limit@PAGEOFF
    ldr x15, [x15]
    cmp x20, x15
    b.ls L2_18
L2_17:
    sub x20, x29, #104
    add x14, x20, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x12, x29, #232
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
    b L2_19
L2_18:
L2_19:
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_21
    b L2_22
L2_22:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L2_21:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L2_23
    b L2_24
L2_23:
    b L2_25
L2_24:
    sub x20, x29, #104
    add x14, x20, #24
    adrp x15, _lb_clipboard_failed@PAGE
    add x15, x15, _lb_clipboard_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    sub x12, x29, #248
    str x15, [x12]
    add x15, x12, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_26:
L2_25:
    sub x14, x29, #264
    str x15, [x14]
    add x14, x14, #8
    str x20, [x14]
    sub x14, x29, #280
    str x15, [x14]
    add x12, x14, #8
    str x20, [x12]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #336
    bl _lb_interop_9copy_text
    sub x12, x29, #336
    add x14, x12, #48
    ldrb w14, [x14]
    cbnz w14, L2_28
    b L2_27
L2_28:
    add x14, x12, #24
    sub x20, x29, #104
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_29:
L2_27:
    sub x20, x29, #104
    mov x10, x12
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_30:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_clipboard_9mac_write
    .no_dead_strip _lb_clipboard_9mac_write
_lb_clipboard_9mac_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L3_1
    b L3_2
L3_2:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_1:
    sub x8, x29, #144
    bl _lb_clipboard_9mac_board
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_4
    b L3_3
L3_4:
    add x14, x15, #8
    sub x20, x29, #88
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_5:
L3_3:
    ldr x20, [x15]
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x21, x0
    cbnz x21, L3_6
    b L3_7
L3_6:
    b L3_8
L3_7:
    sub x20, x29, #88
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_8:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L3_10
    b L3_11
L3_11:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_10:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_12
    b L3_13
L3_12:
    b L3_14
L3_13:
    sub x20, x29, #88
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_15:
L3_14:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L3_16
    b L3_17
L3_17:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_16:
    sub x15, x29, #104
    ldr x12, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    mov x0, x22
    mov x1, x14
    mov x2, x12
    mov x3, x15
    movz x4, #4
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L3_18
    b L3_19
L3_18:
    b L3_20
L3_19:
    sub x20, x29, #88
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x15, x29, #192
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_21:
L3_20:
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L3_22
    b L3_23
L3_23:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_22:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    adrp x15, l_text_29@PAGE
    add x15, x15, l_text_29@PAGEOFF
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L3_27
    b L3_28
L3_28:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_27:
    adrp x14, _NSPasteboardTypeString@GOTPAGE
    ldr x14, [x14, _NSPasteboardTypeString@GOTPAGEOFF]
    ldr x14, [x14]
    mov x0, x20
    mov x1, x15
    mov x2, x21
    mov x3, x14
    bl _objc_msgSend
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_25
L3_24:
    sub x20, x29, #88
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L3_29
    b L3_30
L3_30:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_29:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_31:
    b L3_26
L3_25:
L3_26:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L3_32
    b L3_33
L3_33:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_32:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _objc_autoreleasePoolPop
    sub x15, x29, #88
    add x12, x15, #24
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_clipboard_12macos_native_0init

    .section __TEXT,__const
l_text_0:
    .asciz "NSPasteboard"
l_text_1:
    .asciz "AppKit pasteboard is unavailable"
l_text_2:
    .asciz "generalPasteboard"
l_text_3:
    .asciz "null_foreign"
l_text_4:
    .asciz "src/std/clipboard/macos/native.lucb:18:5"
l_text_5:
    .asciz "the clipboard is unavailable"
l_text_6:
    .asciz "unreachable"
l_text_7:
    .asciz "src/std/clipboard/macos/native.lucb:21:5"
l_text_8:
    .asciz "stringForType:"
l_text_9:
    .asciz "src/std/clipboard/macos/native.lucb:24:5"
l_text_10:
    .asciz ""
l_text_11:
    .asciz "lengthOfBytesUsingEncoding:"
l_text_12:
    .asciz "src/std/clipboard/macos/native.lucb:25:5"
l_text_13:
    .asciz "clipboard text exceeds 1 MiB"
l_text_14:
    .asciz "UTF8String"
l_text_15:
    .asciz "src/std/clipboard/macos/native.lucb:28:5"
l_text_16:
    .asciz "clipboard text is not UTF-8"
l_text_17:
    .asciz "src/std/clipboard/macos/native.lucb:29:5"
l_text_18:
    .asciz "src/std/clipboard/macos/native.lucb:32:5"
l_text_19:
    .asciz "NSString"
l_text_20:
    .asciz "Foundation strings are unavailable"
l_text_21:
    .asciz "alloc"
l_text_22:
    .asciz "src/std/clipboard/macos/native.lucb:36:5"
l_text_23:
    .asciz "could not allocate clipboard text"
l_text_24:
    .asciz "initWithBytes:length:encoding:"
l_text_25:
    .asciz "src/std/clipboard/macos/native.lucb:37:5"
l_text_26:
    .asciz "could not create clipboard text"
l_text_27:
    .asciz "clearContents"
l_text_28:
    .asciz "src/std/clipboard/macos/native.lucb:39:5"
l_text_29:
    .asciz "setString:forType:"
l_text_30:
    .asciz "src/std/clipboard/macos/native.lucb:40:5"
l_text_31:
    .asciz "could not publish clipboard text"
l_text_32:
    .asciz "release"
l_text_33:
    .asciz "src/std/clipboard/macos/native.lucb:41:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
