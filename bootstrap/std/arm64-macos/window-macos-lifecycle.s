    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_15macos_lifecycle_0init
_lb_window_15macos_lifecycle_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10make_class
_lb_window_10make_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #152
    bl _lb_window_12native_class
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldr x14, [x15]
    sub x12, x29, #112
    ldr x12, [x12]
    mov x0, x14
    mov x1, x12
    mov x2, #0
    bl _objc_allocateClassPair
    mov x19, x0
    cbnz x19, L1_4
    b L1_5
L1_4:
    b L1_6
L1_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x12, x29, #168
    str x15, [x12]
    add x15, x12, #8
    movz x9, #40
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
L1_6:
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #8
    movz x3, #3
    mov x4, x15
    bl _class_addIvar
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_9
L1_8:
    sub x20, x29, #80
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_disposeClassPair
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_11:
    b L1_10
L1_9:
L1_10:
    sub x14, x29, #80
    str x19, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_13setup_classes
_lb_window_13setup_classes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #848
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #816]
    str x20, [sp, #808]
    str x21, [sp, #800]
    str x22, [sp, #792]
    str x23, [sp, #784]
    str x24, [sp, #776]
    str x25, [sp, #768]
    str x26, [sp, #760]
    adrp x19, _lb_window_14delegate_class@PAGE
    add x19, x19, _lb_window_14delegate_class@PAGEOFF
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L2_2
L2_1:
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x8, x29, #160
    bl _lb_window_10make_class
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x15, #8
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    ldr x20, [x15]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    adrp x12, _lb_window_14close_callback@GOTPAGE
    ldr x12, [x12, _lb_window_14close_callback@GOTPAGEOFF]
    adrp x13, l_text_9@PAGE
    add x13, x13, l_text_9@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x12
    mov x3, x13
    sub x8, x29, #192
    bl _lb_window_10add_method
    sub x12, x29, #192
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L2_8
    b L2_7
L2_8:
    sub x19, x29, #120
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
L2_7:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    adrp x21, _lb_window_15resize_callback@GOTPAGE
    ldr x21, [x21, _lb_window_15resize_callback@GOTPAGEOFF]
    adrp x22, l_text_11@PAGE
    add x22, x22, l_text_11@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #224
    bl _lb_window_10add_method
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_11
    b L2_10
L2_11:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
L2_10:
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #256
    bl _lb_window_10add_method
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_14
    b L2_13
L2_14:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
L2_13:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    adrp x21, _lb_window_14focus_callback@GOTPAGE
    ldr x21, [x21, _lb_window_14focus_callback@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #288
    bl _lb_window_10add_method
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_17
    b L2_16
L2_17:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_18:
L2_16:
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #320
    bl _lb_window_10add_method
    sub x15, x29, #320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_20
    b L2_19
L2_20:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
L2_19:
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    adrp x15, _lb_window_15launch_callback@GOTPAGE
    ldr x15, [x15, _lb_window_15launch_callback@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #352
    bl _lb_window_10add_method
    sub x15, x29, #352
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_23
    b L2_22
L2_23:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_24:
L2_22:
    mov x0, x20
    bl _objc_registerClassPair
    str x20, [x19]
    b L2_3
L2_2:
L2_3:
    adrp x19, _lb_window_10view_class@PAGE
    add x19, x19, _lb_window_10view_class@PAGEOFF
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L2_26
L2_25:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x8, x29, #392
    bl _lb_window_10make_class
    sub x15, x29, #392
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_29
    b L2_28
L2_29:
    add x14, x15, #8
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_30:
L2_28:
    ldr x20, [x15]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    adrp x21, _lb_window_12view_accepts@GOTPAGE
    ldr x21, [x21, _lb_window_12view_accepts@GOTPAGEOFF]
    adrp x22, l_text_19@PAGE
    add x22, x22, l_text_19@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #424
    bl _lb_window_10add_method
    sub x12, x29, #424
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L2_32
    b L2_31
L2_32:
    sub x19, x29, #120
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_33:
L2_31:
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #456
    bl _lb_window_10add_method
    sub x15, x29, #456
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_35
    b L2_34
L2_35:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_36:
L2_34:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    adrp x15, _lb_window_15cursor_callback@GOTPAGE
    ldr x15, [x15, _lb_window_15cursor_callback@GOTPAGEOFF]
    adrp x21, l_text_11@PAGE
    add x21, x21, l_text_11@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x21
    sub x8, x29, #488
    bl _lb_window_10add_method
    sub x15, x29, #488
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_38
    b L2_37
L2_38:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_39:
L2_37:
    mov x0, x20
    sub x8, x29, #520
    bl _lb_window_23mac_register_text_input
    sub x15, x29, #520
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_41
    b L2_40
L2_41:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_42:
L2_40:
    sub x22, x29, #544
    sub x14, x29, #568
    adrp x15, l_text_22@PAGE
    add x15, x15, l_text_22@PAGEOFF
    str x15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    add x12, x14, #16
    str x15, [x12]
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    adrp x23, _lb_window_12key_callback@GOTPAGE
    ldr x23, [x23, _lb_window_12key_callback@GOTPAGEOFF]
    sub x26, x29, #600
    add x24, x26, #24
    mov x9, #0
    mov x25, x9
L2_43:
    movz x10, #3
    cmp x25, x10
    b.hs L2_46
L2_44:
    lsl x14, x25, #3
    add x14, x22, x14
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    mov x2, x23
    mov x3, x21
    sub x8, x29, #600
    bl _lb_window_10add_method
    ldrb w14, [x24]
    cbnz w14, L2_48
    b L2_47
L2_48:
    sub x19, x29, #120
    mov x10, x26
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_49:
L2_47:
L2_45:
    add x14, x25, #1
    mov x25, x14
    b L2_43
L2_46:
    sub x22, x29, #704
    sub x14, x29, #808
    adrp x15, l_text_25@PAGE
    add x15, x15, l_text_25@PAGEOFF
    str x15, [x14]
    adrp x15, l_text_26@PAGE
    add x15, x15, l_text_26@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    adrp x15, l_text_27@PAGE
    add x15, x15, l_text_27@PAGEOFF
    add x12, x14, #16
    str x15, [x12]
    adrp x15, l_text_28@PAGE
    add x15, x15, l_text_28@PAGEOFF
    add x12, x14, #24
    str x15, [x12]
    adrp x15, l_text_29@PAGE
    add x15, x15, l_text_29@PAGEOFF
    add x12, x14, #32
    str x15, [x12]
    adrp x15, l_text_30@PAGE
    add x15, x15, l_text_30@PAGEOFF
    add x12, x14, #40
    str x15, [x12]
    adrp x15, l_text_31@PAGE
    add x15, x15, l_text_31@PAGEOFF
    add x12, x14, #48
    str x15, [x12]
    adrp x15, l_text_32@PAGE
    add x15, x15, l_text_32@PAGEOFF
    add x12, x14, #56
    str x15, [x12]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x12, x14, #64
    str x15, [x12]
    adrp x15, l_text_34@PAGE
    add x15, x15, l_text_34@PAGEOFF
    add x12, x14, #72
    str x15, [x12]
    adrp x15, l_text_35@PAGE
    add x15, x15, l_text_35@PAGEOFF
    add x12, x14, #80
    str x15, [x12]
    adrp x15, l_text_36@PAGE
    add x15, x15, l_text_36@PAGEOFF
    add x12, x14, #88
    str x15, [x12]
    adrp x15, l_text_37@PAGE
    add x15, x15, l_text_37@PAGEOFF
    add x12, x14, #96
    str x15, [x12]
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    ldr x16, [x10, #96]
    str x16, [x11, #96]
    adrp x23, _lb_window_16pointer_callback@GOTPAGE
    ldr x23, [x23, _lb_window_16pointer_callback@GOTPAGEOFF]
    sub x26, x29, #840
    add x24, x26, #24
    mov x9, #0
    mov x25, x9
L2_50:
    movz x10, #13
    cmp x25, x10
    b.hs L2_53
L2_51:
    lsl x14, x25, #3
    add x14, x22, x14
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    mov x2, x23
    mov x3, x21
    sub x8, x29, #840
    bl _lb_window_10add_method
    ldrb w14, [x24]
    cbnz w14, L2_55
    b L2_54
L2_55:
    sub x19, x29, #120
    mov x10, x26
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_56:
L2_54:
L2_52:
    add x14, x25, #1
    mov x25, x14
    b L2_50
L2_53:
    mov x0, x20
    bl _objc_registerClassPair
    str x20, [x19]
    b L2_27
L2_26:
L2_27:
    sub x14, x29, #120
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_open
    .no_dead_strip _lb_window_8mac_open
_lb_window_8mac_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #15344
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #15312]
    str x20, [sp, #15304]
    str x21, [sp, #15296]
    str x22, [sp, #15288]
    str x23, [sp, #15280]
    str x24, [sp, #15272]
    str x25, [sp, #15264]
    str x26, [sp, #15256]
    str x27, [sp, #15248]
    sub x16, x29, #168
    str x0, [x16]
    sub x0, x29, #168
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L3_1
    b L3_2
L3_2:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L3_1:
    sub x8, x29, #200
    bl _lb_window_13setup_classes
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_4
    b L3_3
L3_4:
    sub x20, x29, #136
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_5:
L3_3:
    adrp x20, _lb_window_application@PAGE
    add x20, x20, _lb_window_application@PAGEOFF
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L3_7
L3_6:
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    mov x0, x14
    sub x8, x29, #240
    bl _lb_window_12native_class
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_10
    b L3_9
L3_10:
    add x14, x15, #8
    sub x20, x29, #136
    add x12, x20, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_11:
L3_9:
    ldr x21, [x15]
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L3_12
    b L3_13
L3_12:
    b L3_14
L3_13:
    sub x20, x29, #136
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_42@PAGE
    add x15, x15, l_text_42@PAGEOFF
    sub x12, x29, #256
    str x15, [x12]
    add x15, x12, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_15:
L3_14:
    movz x16, #15248
    sub x10, x29, x16
    str x21, [x10]
    adrp x14, l_text_76@PAGE
    add x14, x14, l_text_76@PAGEOFF
    mov x0, x14
    movz x16, #15288
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #15288
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_84
    b L3_83
L3_84:
    add x14, x15, #8
    movz x16, #15232
    sub x22, x29, x16
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L3_97
L3_85:
L3_83:
    ldr x22, [x15]
    adrp x14, l_text_77@PAGE
    add x14, x14, l_text_77@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_window_required
    mov x22, x0
    adrp x14, l_text_78@PAGE
    add x14, x14, l_text_78@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov w14, w0
    cbnz w14, L3_86
    b L3_87
L3_86:
    movz x16, #15232
    sub x14, x29, x16
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L3_97
L3_89:
    b L3_88
L3_87:
L3_88:
    adrp x14, _lb_window_14delegate_class@PAGE
    add x14, x14, _lb_window_14delegate_class@PAGEOFF
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x22, x0
    adrp x14, l_text_64@PAGE
    add x14, x14, l_text_64@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_90
    b L3_91
L3_90:
    b L3_92
L3_91:
    movz x16, #15232
    sub x22, x29, x16
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    adrp x14, l_text_79@PAGE
    add x14, x14, l_text_79@PAGEOFF
    movz x16, #15304
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L3_97
L3_93:
L3_92:
    adrp x14, l_text_80@PAGE
    add x14, x14, l_text_80@PAGEOFF
    mov x0, x14
    movz x16, #15344
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #15344
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_95
    b L3_94
L3_95:
    add x14, x15, #8
    movz x16, #15232
    sub x23, x29, x16
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x23, #24
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x10, x23
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L3_97
L3_96:
L3_94:
    ldr x23, [x15]
    adrp x14, l_text_81@PAGE
    add x14, x14, l_text_81@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_window_required
    mov x23, x0
    adrp x14, l_text_82@PAGE
    add x14, x14, l_text_82@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x24, x0
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    adrp x12, _NSApplicationDidFinishLaunchingNotification@GOTPAGE
    ldr x12, [x12, _NSApplicationDidFinishLaunchingNotification@GOTPAGEOFF]
    ldr x12, [x12]
    mov x0, x23
    mov x1, x24
    mov x2, x22
    mov x3, x14
    mov x4, x12
    mov x5, x21
    bl _objc_msgSend
    adrp x14, l_text_83@PAGE
    add x14, x14, l_text_83@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    adrp x14, l_text_84@PAGE
    add x14, x14, l_text_84@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    mov x2, x22
    bl _objc_msgSend
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    movz x16, #15232
    sub x14, x29, x16
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
    mov x10, x14
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
L3_97:
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_17
    b L3_16
L3_17:
    sub x20, x29, #136
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_18:
L3_16:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_20
L3_19:
    sub x20, x29, #136
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_44@PAGE
    add x15, x15, l_text_44@PAGEOFF
    sub x12, x29, #304
    str x15, [x12]
    add x15, x12, #8
    movz x9, #57
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_22:
    b L3_21
L3_20:
L3_21:
    str x21, [x20]
    b L3_8
L3_7:
L3_8:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x20, x29, #320
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #360
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L3_23
    b L3_24
L3_24:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_45@PAGE
    add x1, x1, l_text_45@PAGEOFF
    bl _lb_core_7trap_at
L3_23:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #14432
    movz x2, #8
    sub x8, x29, #384
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #384
    add x12, x13, #16
    ldrb w12, [x12]
    cbnz w12, L3_25
    b L3_26
L3_26:
    add x14, x21, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_47@PAGE
    add x15, x15, l_text_47@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b L3_27
L3_25:
    ldr x20, [x13]
    movz x16, #14816
    sub x22, x29, x16
    mov x0, x22
    mov x1, #0
    movz x2, #14432
    bl _memset
    mov x0, x20
    mov x1, x22
    movz x2, #14432
    bl _memcpy
    str x20, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
L3_27:
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L3_29
    b L3_28
L3_29:
    add x14, x21, #8
    sub x20, x29, #136
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_30:
L3_28:
    ldr x20, [x21]
    movz x10, #14392
    add x22, x20, x10
    mov x0, #0
    movz x16, #14856
    sub x8, x29, x16
    bl _lb_window_10mac_cursor
    movz x16, #14856
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_32
    b L3_31
L3_32:
    add x14, x15, #8
    sub x21, x29, #136
    add x12, x21, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_33:
L3_31:
    ldr x14, [x15]
    str x14, [x22]
    movz x16, #14888
    sub x21, x29, x16
    movz x16, #14920
    sub x23, x29, x16
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    movz x16, #14936
    sub x24, x29, x16
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    sub x25, x29, #168
    add x14, x25, #16
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    str d24, [x24]
    add x14, x25, #20
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    add x14, x24, #8
    str d24, [x14]
    add x14, x23, #16
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    mov x0, x14
    movz x16, #14976
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #14976
    sub x12, x29, x16
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L3_35
    b L3_34
L3_35:
    add x14, x12, #8
    sub x21, x29, #136
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_36:
L3_34:
    ldr x22, [x12]
    adrp x23, l_text_49@PAGE
    add x23, x23, l_text_49@PAGEOFF
    mov x0, x23
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_37
    b L3_38
L3_37:
    b L3_39
L3_38:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_50@PAGE
    add x15, x15, l_text_50@PAGEOFF
    movz x16, #14992
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_40:
L3_39:
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    add x15, x25, #24
    ldrb w15, [x15]
    cbnz w15, L3_41
    b L3_42
L3_41:
    movz x9, #15
    mov x15, x9
    b L3_43
L3_42:
    movz x9, #7
    mov x15, x9
L3_43:
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x22
    mov x1, x14
    mov x2, x15
    movz x3, #2
    mov x4, #0
    bl _objc_msgSend
    mov x24, x0
    cbnz x24, L3_44
    b L3_45
L3_44:
    b L3_46
L3_45:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_52@PAGE
    add x15, x15, l_text_52@PAGEOFF
    movz x16, #15008
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_47:
L3_46:
    str x24, [x20]
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x14, _lb_window_10view_class@PAGE
    add x14, x14, _lb_window_10view_class@PAGEOFF
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x22, x0
    mov x0, x23
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_48
    b L3_49
L3_48:
    b L3_50
L3_49:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_54@PAGE
    add x15, x15, l_text_54@PAGEOFF
    movz x16, #15024
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_51:
L3_50:
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x26, x0
    cbnz x26, L3_52
    b L3_53
L3_52:
    b L3_54
L3_53:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_56@PAGE
    add x15, x15, l_text_56@PAGEOFF
    movz x16, #15040
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_55:
L3_54:
    add x14, x20, #8
    str x26, [x14]
    mov x0, x26
    mov x1, x20
    bl _lb_window_9set_state
    adrp x14, l_text_57@PAGE
    add x14, x14, l_text_57@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x26
    bl _objc_msgSend
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x14
    movz x16, #15080
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #15080
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_57
    b L3_56
L3_57:
    add x14, x15, #8
    sub x21, x29, #136
    add x12, x21, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_58:
L3_56:
    ldr x22, [x15]
    mov x0, x23
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_59
    b L3_60
L3_59:
    b L3_61
L3_60:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_59@PAGE
    add x15, x15, l_text_59@PAGEOFF
    movz x16, #15096
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_62:
L3_61:
    adrp x14, l_text_60@PAGE
    add x14, x14, l_text_60@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x22
    mov x1, x14
    movz x2, #1573
    mov x3, x26
    mov x4, #0
    bl _objc_msgSend
    mov x27, x0
    cbnz x27, L3_63
    b L3_64
L3_63:
    b L3_65
L3_64:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    movz x16, #15112
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_66:
L3_65:
    adrp x14, l_text_62@PAGE
    add x14, x14, l_text_62@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x26
    mov x1, x14
    mov x2, x27
    bl _objc_msgSend
    adrp x21, l_text_63@PAGE
    add x21, x21, l_text_63@PAGEOFF
    mov x0, x21
    bl _lb_window_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    bl _objc_msgSend
    adrp x14, _lb_window_14delegate_class@PAGE
    add x14, x14, _lb_window_14delegate_class@PAGEOFF
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x22, x0
    adrp x14, l_text_64@PAGE
    add x14, x14, l_text_64@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_67
    b L3_68
L3_67:
    b L3_69
L3_68:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_65@PAGE
    add x15, x15, l_text_65@PAGEOFF
    movz x16, #15128
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_70:
L3_69:
    add x14, x20, #16
    str x22, [x14]
    mov x0, x22
    mov x1, x20
    bl _lb_window_9set_state
    adrp x14, l_text_66@PAGE
    add x14, x14, l_text_66@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x22
    bl _objc_msgSend
    adrp x14, l_text_67@PAGE
    add x14, x14, l_text_67@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x26
    bl _objc_msgSend
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x14
    movz x16, #15168
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #15168
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_72
    b L3_71
L3_72:
    add x14, x15, #8
    sub x21, x29, #136
    add x12, x21, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_73:
L3_71:
    ldr x22, [x15]
    mov x0, x23
    bl _lb_window_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_74
    b L3_75
L3_74:
    b L3_76
L3_75:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_70@PAGE
    add x15, x15, l_text_70@PAGEOFF
    movz x16, #15184
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #26
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_77:
L3_76:
    adrp x14, l_text_71@PAGE
    add x14, x14, l_text_71@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    ldr x15, [x25]
    add x12, x25, #8
    ldr x12, [x12]
    mov x0, x22
    mov x1, x14
    mov x2, x15
    mov x3, x12
    movz x4, #4
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L3_78
    b L3_79
L3_78:
    b L3_80
L3_79:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_72@PAGE
    add x15, x15, l_text_72@PAGEOFF
    movz x16, #15200
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #30
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_81:
L3_80:
    adrp x14, l_text_73@PAGE
    add x14, x14, l_text_73@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x14, l_text_74@PAGE
    add x14, x14, l_text_74@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    sub x22, x29, #136
    str x20, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl _lb_window_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15312]
    ldr x20, [sp, #15304]
    ldr x21, [sp, #15296]
    ldr x22, [sp, #15288]
    ldr x23, [sp, #15280]
    ldr x24, [sp, #15272]
    ldr x25, [sp, #15264]
    ldr x26, [sp, #15256]
    ldr x27, [sp, #15248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_82:
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x14, x20
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_15launch_callback
_lb_window_15launch_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #64
    sub x14, x29, #80
    sub x14, x29, #96
    ldr x19, [x14]
    adrp x14, l_text_85@PAGE
    add x14, x14, l_text_85@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_window_required
    mov x19, x0
    adrp x14, l_text_86@PAGE
    add x14, x14, l_text_86@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x20, x0
    cbnz x20, L4_1
    b L4_2
L4_1:
    b L4_3
L4_2:
    adrp x14, l_text_87@PAGE
    add x14, x14, l_text_87@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #27
    str x9, [x14]
    adrp x14, l_text_88@PAGE
    add x14, x14, l_text_88@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_88@PAGE
    add x0, x0, l_text_88@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L4_3:
    adrp x14, l_text_89@PAGE
    add x14, x14, l_text_89@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x21, x0
    sub x22, x29, #128
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    fmov d24, x9
    movz x16, #16
    sub sp, sp, x16
    mov x9, #0
    str x9, [sp, #0]
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    fmov d16, d24
    fmov d2, d16
    mov x0, x20
    mov x1, x21
    movz x2, #15
    mov x3, #0
    mov x4, #0
    mov x5, #0
    mov x6, #0
    mov x7, #0
    bl _objc_msgSend
    movz x16, #16
    add sp, sp, x16
    mov x14, x0
    mov x0, x14
    bl _lb_window_required
    mov x21, x0
    adrp x14, l_text_90@PAGE
    add x14, x14, l_text_90@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    mov x2, x21
    movz x3, #1
    bl _objc_msgSend
    adrp x14, l_text_91@PAGE
    add x14, x14, l_text_91@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_show
    .no_dead_strip _lb_window_8mac_show
_lb_window_8mac_show:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L5_1
    b L5_2
L5_2:
    adrp x0, l_text_92@PAGE
    add x0, x0, l_text_92@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L5_1:
    adrp x14, _lb_window_application@PAGE
    add x14, x14, _lb_window_application@PAGEOFF
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x20, x0
    adrp x14, l_text_93@PAGE
    add x14, x14, l_text_93@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    sub x14, x29, #48
    ldr x14, [x14]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x20, x0
    adrp x14, l_text_94@PAGE
    add x14, x14, l_text_94@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_size
    .no_dead_strip _lb_window_8mac_size
_lb_window_8mac_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    sub x16, x29, #120
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L6_1
    b L6_2
L6_2:
    adrp x0, l_text_95@PAGE
    add x0, x0, l_text_95@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L6_1:
    sub x14, x29, #120
    ldr x20, [x14]
    add x14, x20, #8
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x21, x0
    sub x22, x29, #152
    adrp x14, l_text_96@PAGE
    add x14, x14, l_text_96@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x16, x29, #184
    str d0, [x16, #0]
    sub x16, x29, #184
    str d1, [x16, #8]
    sub x16, x29, #184
    str d2, [x16, #16]
    sub x16, x29, #184
    str d3, [x16, #24]
    sub x14, x29, #184
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x23, x29, #216
    adrp x14, l_text_97@PAGE
    add x14, x14, l_text_97@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x16, x29, #248
    str d0, [x16, #0]
    sub x16, x29, #248
    str d1, [x16, #8]
    sub x16, x29, #248
    str d2, [x16, #16]
    sub x16, x29, #248
    str d3, [x16, #24]
    sub x14, x29, #248
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x21, x29, #288
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    add x14, x22, #16
    ldr d24, [x14]
    str d24, [x21]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x21, #8
    str d24, [x14]
    add x14, x23, #16
    ldr d24, [x14]
    add x15, x21, #16
    str d24, [x15]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x21, #24
    str d24, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl _lb_window_required
    mov x20, x0
    adrp x14, l_text_98@PAGE
    add x14, x14, l_text_98@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    fmov d24, d0
    add x14, x21, #32
    str d24, [x14]
    sub x20, x29, #104
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_99@PAGE
    add x0, x0, l_text_99@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_10mac_resize
    .no_dead_strip _lb_window_10mac_resize
_lb_window_10mac_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str w1, [x16]
    sub x16, x29, #96
    str w2, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L7_1
    b L7_2
L7_2:
    adrp x0, l_text_100@PAGE
    add x0, x0, l_text_100@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L7_1:
    sub x14, x29, #64
    ldr x14, [x14]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_required
    mov x20, x0
    adrp x14, l_text_101@PAGE
    add x14, x14, l_text_101@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x21, x0
    sub x22, x29, #112
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #80
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    str d24, [x22]
    sub x14, x29, #96
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    add x14, x22, #8
    str d24, [x14]
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x20
    mov x1, x21
    bl _objc_msgSend
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_pump
    .no_dead_strip _lb_window_8mac_pump
_lb_window_8mac_pump:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    str x25, [sp, #56]
    str x26, [sp, #48]
    str x27, [sp, #40]
    sub x16, x29, #104
    str x0, [x16]
    adrp x14, _lb_window_application@PAGE
    add x14, x14, _lb_window_application@PAGEOFF
    ldr x19, [x14]
    cbnz x19, L8_1
    b L8_2
L8_1:
    b L8_3
L8_2:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    ldr x26, [sp, #48]
    ldr x27, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_4:
L8_3:
    bl _objc_autoreleasePoolPush
    mov x20, x0
    cbnz x20, L8_5
    b L8_6
L8_6:
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L8_5:
    adrp x14, l_text_103@PAGE
    add x14, x14, l_text_103@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x21, x0
    cbnz x21, L8_7
    b L8_8
L8_7:
    b L8_9
L8_8:
    adrp x14, l_text_104@PAGE
    add x14, x14, l_text_104@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    adrp x14, l_text_105@PAGE
    add x14, x14, l_text_105@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_105@PAGE
    add x0, x0, l_text_105@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L8_9:
    adrp x14, l_text_106@PAGE
    add x14, x14, l_text_106@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_window_required
    mov x22, x0
    adrp x23, l_text_107@PAGE
    add x23, x23, l_text_107@PAGEOFF
    adrp x24, _NSDefaultRunLoopMode@GOTPAGE
    ldr x24, [x24, _NSDefaultRunLoopMode@GOTPAGEOFF]
    adrp x25, l_text_108@PAGE
    add x25, x25, l_text_108@PAGEOFF
    sub x26, x29, #104
    mov x9, #0
    mov x27, x9
L8_10:
    movz x10, #256
    cmp x27, x10
    b.hs L8_12
L8_11:
    mov x0, x23
    bl _lb_window_sel
    mov x14, x0
    ldr x15, [x24]
    mov x0, x19
    mov x1, x14
    movn x2, #0
    mov x3, x22
    mov x4, x15
    movz x5, #1
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L8_13
    b L8_14
L8_13:
    b L8_15
L8_14:
    b L8_12
L8_16:
L8_15:
    mov x0, x25
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    add x14, x27, #1
    ldr x15, [x26]
    movz x10, #14368
    add x12, x15, x10
    ldr x12, [x12]
    mov x10, #0
    cmp x12, x10
    cset w12, hi
    cbnz w12, L8_25
    b L8_20
L8_25:
    mov w13, w12
    b L8_21
L8_20:
    movz x10, #14377
    add x12, x15, x10
    ldrb w13, [x12]
L8_21:
    and w12, w13, #255
    cbnz w12, L8_26
    b L8_22
L8_26:
    mov w15, w12
    b L8_23
L8_22:
    movz x10, #14376
    add x12, x15, x10
    ldrb w12, [x12]
    mov w15, w12
L8_23:
    and w12, w15, #255
    cbnz w12, L8_17
    b L8_18
L8_17:
    b L8_12
L8_24:
    b L8_19
L8_18:
L8_19:
    mov x27, x14
    b L8_10
L8_12:
    adrp x14, l_text_110@PAGE
    add x14, x14, l_text_110@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x0, x20
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    ldr x26, [sp, #48]
    ldr x27, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_11mac_destroy
    .no_dead_strip _lb_window_11mac_destroy
_lb_window_11mac_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #56
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L9_1
    b L9_2
L9_2:
    adrp x0, l_text_111@PAGE
    add x0, x0, l_text_111@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L9_1:
    sub x14, x29, #56
    ldr x20, [x14]
    movz x10, #14379
    add x14, x20, x10
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_16mac_clear_marked
    add x14, x20, #8
    ldr x14, [x14]
    cbnz x14, L9_6
    b L9_4
L9_6:
L9_3:
    mov x0, x14
    mov x1, #0
    bl _lb_window_9set_state
    b L9_5
L9_4:
L9_5:
    add x14, x20, #16
    ldr x14, [x14]
    cbnz x14, L9_10
    b L9_8
L9_10:
L9_7:
    mov x0, x14
    mov x1, #0
    bl _lb_window_9set_state
    b L9_9
L9_8:
L9_9:
    ldr x21, [x20]
    cbnz x21, L9_14
    b L9_12
L9_14:
L9_11:
    adrp x14, l_text_66@PAGE
    add x14, x14, l_text_66@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x14, l_text_112@PAGE
    add x14, x14, l_text_112@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x14, l_text_113@PAGE
    add x14, x14, l_text_113@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L9_13
L9_12:
L9_13:
    movz x10, #14378
    add x14, x20, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L9_16
L9_15:
    mov x0, x20
    bl _lb_window_8mac_free
    b L9_17
L9_16:
L9_17:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_free
    .no_dead_strip _lb_window_8mac_free
_lb_window_8mac_free:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L10_1
    b L10_2
L10_2:
    adrp x0, l_text_114@PAGE
    add x0, x0, l_text_114@PAGEOFF
    adrp x1, l_text_38@PAGE
    add x1, x1, l_text_38@PAGEOFF
    bl _lb_core_7trap_at
L10_1:
    sub x14, x29, #56
    ldr x20, [x14]
    ldr x21, [x20]
    cbnz x21, L10_6
    b L10_4
L10_6:
L10_3:
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L10_5
L10_4:
L10_5:
    add x14, x20, #8
    ldr x21, [x14]
    cbnz x21, L10_10
    b L10_8
L10_10:
L10_7:
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L10_9
L10_8:
L10_9:
    add x14, x20, #16
    ldr x21, [x14]
    cbnz x21, L10_14
    b L10_12
L10_14:
L10_11:
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L10_13
L10_12:
L10_13:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #72
    str x20, [x15]
    add x12, x15, #8
    movz x9, #14432
    str x9, [x12]
    ldr x12, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L10_16
    b L10_15
L10_16:
    add x13, x14, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_15:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_15macos_lifecycle_0init

    .section __TEXT,__const
l_text_0:
    .asciz "could not allocate a native window class"
l_text_1:
    .asciz "luceState"
l_text_2:
    .asciz "^v"
l_text_3:
    .asciz "could not register native window state"
l_text_4:
    .asciz "unreachable"
l_text_5:
    .asciz "src/std/window/macos/lifecycle.lucb:14:5"
l_text_6:
    .asciz "NSObject"
l_text_7:
    .asciz "LuceBaseWindowDelegateV1"
l_text_8:
    .asciz "windowShouldClose:"
l_text_9:
    .asciz "B@:@"
l_text_10:
    .asciz "windowDidResize:"
l_text_11:
    .asciz "v@:@"
l_text_12:
    .asciz "windowDidChangeBackingProperties:"
l_text_13:
    .asciz "windowDidBecomeKey:"
l_text_14:
    .asciz "windowDidResignKey:"
l_text_15:
    .asciz "luceDidFinishLaunching:"
l_text_16:
    .asciz "NSView"
l_text_17:
    .asciz "LuceBaseWindowViewV1"
l_text_18:
    .asciz "acceptsFirstResponder"
l_text_19:
    .asciz "B@:"
l_text_20:
    .asciz "isFlipped"
l_text_21:
    .asciz "cursorUpdate:"
l_text_22:
    .asciz "keyDown:"
l_text_23:
    .asciz "keyUp:"
l_text_24:
    .asciz "flagsChanged:"
l_text_25:
    .asciz "mouseDown:"
l_text_26:
    .asciz "mouseUp:"
l_text_27:
    .asciz "rightMouseDown:"
l_text_28:
    .asciz "rightMouseUp:"
l_text_29:
    .asciz "otherMouseDown:"
l_text_30:
    .asciz "otherMouseUp:"
l_text_31:
    .asciz "mouseMoved:"
l_text_32:
    .asciz "mouseDragged:"
l_text_33:
    .asciz "rightMouseDragged:"
l_text_34:
    .asciz "otherMouseDragged:"
l_text_35:
    .asciz "scrollWheel:"
l_text_36:
    .asciz "mouseEntered:"
l_text_37:
    .asciz "mouseExited:"
l_text_38:
    .asciz "null_foreign"
l_text_39:
    .asciz "src/std/window/macos/lifecycle.lucb:45:5"
l_text_40:
    .asciz "NSApplication"
l_text_41:
    .asciz "sharedApplication"
l_text_42:
    .asciz "AppKit could not initialize an application"
l_text_43:
    .asciz "setActivationPolicy:"
l_text_44:
    .asciz "AppKit refused the application's window activation policy"
l_text_45:
    .asciz "memory.unset"
l_text_46:
    .asciz "src/std/window/macos/lifecycle.lucb:54:5"
l_text_47:
    .asciz "memory.exhausted"
l_text_48:
    .asciz "NSWindow"
l_text_49:
    .asciz "alloc"
l_text_50:
    .asciz "could not allocate a native window"
l_text_51:
    .asciz "initWithContentRect:styleMask:backing:defer:"
l_text_52:
    .asciz "could not initialize a native window"
l_text_53:
    .asciz "setReleasedWhenClosed:"
l_text_54:
    .asciz "could not allocate a native view"
l_text_55:
    .asciz "initWithFrame:"
l_text_56:
    .asciz "could not initialize a native view"
l_text_57:
    .asciz "setContentView:"
l_text_58:
    .asciz "NSTrackingArea"
l_text_59:
    .asciz "could not allocate pointer tracking"
l_text_60:
    .asciz "initWithRect:options:owner:userInfo:"
l_text_61:
    .asciz "could not initialize pointer tracking"
l_text_62:
    .asciz "addTrackingArea:"
l_text_63:
    .asciz "release"
l_text_64:
    .asciz "new"
l_text_65:
    .asciz "could not allocate a window delegate"
l_text_66:
    .asciz "setDelegate:"
l_text_67:
    .asciz "setAcceptsMouseMovedEvents:"
l_text_68:
    .asciz "makeFirstResponder:"
l_text_69:
    .asciz "NSString"
l_text_70:
    .asciz "could not allocate a title"
l_text_71:
    .asciz "initWithBytes:length:encoding:"
l_text_72:
    .asciz "could not initialize the title"
l_text_73:
    .asciz "setTitle:"
l_text_74:
    .asciz "center"
l_text_75:
    .asciz "src/std/window/macos/lifecycle.lucb:85:5"
l_text_76:
    .asciz "NSRunningApplication"
l_text_77:
    .asciz "currentApplication"
l_text_78:
    .asciz "isFinishedLaunching"
l_text_79:
    .asciz "could not allocate a launch observer"
l_text_80:
    .asciz "NSNotificationCenter"
l_text_81:
    .asciz "defaultCenter"
l_text_82:
    .asciz "addObserver:selector:name:object:"
l_text_83:
    .asciz "run"
l_text_84:
    .asciz "removeObserver:"
l_text_85:
    .asciz "object"
l_text_86:
    .asciz "NSEvent"
l_text_87:
    .asciz "AppKit has no NSEvent class"
l_text_88:
    .asciz "src/std/window/macos/lifecycle.lucb:106:5"
l_text_89:
    .asciz "otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"
l_text_90:
    .asciz "postEvent:atStart:"
l_text_91:
    .asciz "stop:"
l_text_92:
    .asciz "src/std/window/macos/lifecycle.lucb:112:5"
l_text_93:
    .asciz "activateIgnoringOtherApps:"
l_text_94:
    .asciz "makeKeyAndOrderFront:"
l_text_95:
    .asciz "src/std/window/macos/lifecycle.lucb:118:5"
l_text_96:
    .asciz "bounds"
l_text_97:
    .asciz "convertRectToBacking:"
l_text_98:
    .asciz "backingScaleFactor"
l_text_99:
    .asciz "src/std/window/macos/lifecycle.lucb:123:5"
l_text_100:
    .asciz "src/std/window/macos/lifecycle.lucb:126:5"
l_text_101:
    .asciz "setContentSize:"
l_text_102:
    .asciz "src/std/window/macos/lifecycle.lucb:132:5"
l_text_103:
    .asciz "NSDate"
l_text_104:
    .asciz "AppKit has no NSDate class"
l_text_105:
    .asciz "src/std/window/macos/lifecycle.lucb:134:5"
l_text_106:
    .asciz "distantPast"
l_text_107:
    .asciz "nextEventMatchingMask:untilDate:inMode:dequeue:"
l_text_108:
    .asciz "sendEvent:"
l_text_109:
    .asciz "src/std/window/macos/lifecycle.lucb:140:9"
l_text_110:
    .asciz "updateWindows"
l_text_111:
    .asciz "src/std/window/macos/lifecycle.lucb:147:5"
l_text_112:
    .asciz "orderOut:"
l_text_113:
    .asciz "close"
l_text_114:
    .asciz "src/std/window/macos/lifecycle.lucb:165:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_window_10view_class
    .zerofill __DATA,__bss,_lb_window_10view_class,8,3
    .globl _lb_window_14delegate_class
    .zerofill __DATA,__bss,_lb_window_14delegate_class,8,3
    .globl _lb_window_application
    .zerofill __DATA,__bss,_lb_window_application,8,3

.subsections_via_symbols
