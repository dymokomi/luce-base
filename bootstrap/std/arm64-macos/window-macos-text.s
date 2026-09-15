    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_10macos_text_0init
_lb_window_10macos_text_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_23mac_register_text_input
    .no_dead_strip _lb_window_23mac_register_text_input
_lb_window_23mac_register_text_input:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #480
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #448]
    str x20, [sp, #440]
    sub x16, x29, #88
    str x0, [x16]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    mov x0, x14
    bl _objc_getProtocol
    mov x14, x0
    cbnz x14, L1_1
    b L1_2
L1_1:
    b L1_3
L1_2:
    sub x19, x29, #72
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #104
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
L1_3:
    sub x15, x29, #88
    ldr x19, [x15]
    mov x0, x19
    mov x1, x14
    bl _class_addProtocol
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L1_6
L1_5:
    sub x19, x29, #72
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #120
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    b L1_7
L1_6:
L1_7:
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    adrp x15, _lb_window_15mac_insert_text@GOTPAGE
    ldr x15, [x15, _lb_window_15mac_insert_text@GOTPAGEOFF]
    adrp x20, l_text_7@PAGE
    add x20, x20, l_text_7@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #152
    bl _lb_window_10add_method
    sub x15, x29, #152
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_10
    b L1_9
L1_10:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_11:
L1_9:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    adrp x15, _lb_window_14mac_set_marked@GOTPAGE
    ldr x15, [x15, _lb_window_14mac_set_marked@GOTPAGEOFF]
    adrp x20, l_text_9@PAGE
    add x20, x20, l_text_9@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #184
    bl _lb_window_10add_method
    sub x15, x29, #184
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_13
    b L1_12
L1_13:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
L1_12:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    adrp x15, _lb_window_10mac_unmark@GOTPAGE
    ldr x15, [x15, _lb_window_10mac_unmark@GOTPAGEOFF]
    adrp x20, l_text_11@PAGE
    add x20, x20, l_text_11@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #216
    bl _lb_window_10add_method
    sub x15, x29, #216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_16
    b L1_15
L1_16:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
L1_15:
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    adrp x15, _lb_window_14mac_has_marked@GOTPAGE
    ldr x15, [x15, _lb_window_14mac_has_marked@GOTPAGEOFF]
    adrp x20, l_text_13@PAGE
    add x20, x20, l_text_13@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #248
    bl _lb_window_10add_method
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_19
    b L1_18
L1_19:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
L1_18:
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    adrp x15, _lb_window_16mac_marked_range@GOTPAGE
    ldr x15, [x15, _lb_window_16mac_marked_range@GOTPAGEOFF]
    adrp x20, l_text_15@PAGE
    add x20, x20, l_text_15@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #280
    bl _lb_window_10add_method
    sub x15, x29, #280
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_22
    b L1_21
L1_22:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_23:
L1_21:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    adrp x15, _lb_window_18mac_selected_range@GOTPAGE
    ldr x15, [x15, _lb_window_18mac_selected_range@GOTPAGEOFF]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #312
    bl _lb_window_10add_method
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_25
    b L1_24
L1_25:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_26:
L1_24:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    adrp x15, _lb_window_21mac_marked_attributes@GOTPAGE
    ldr x15, [x15, _lb_window_21mac_marked_attributes@GOTPAGEOFF]
    adrp x20, l_text_18@PAGE
    add x20, x20, l_text_18@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #344
    bl _lb_window_10add_method
    sub x15, x29, #344
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_28
    b L1_27
L1_28:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
L1_27:
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    adrp x15, _lb_window_18mac_text_substring@GOTPAGE
    ldr x15, [x15, _lb_window_18mac_text_substring@GOTPAGEOFF]
    adrp x20, l_text_20@PAGE
    add x20, x20, l_text_20@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #376
    bl _lb_window_10add_method
    sub x15, x29, #376
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_31
    b L1_30
L1_31:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_32:
L1_30:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    adrp x15, _lb_window_14mac_text_index@GOTPAGE
    ldr x15, [x15, _lb_window_14mac_text_index@GOTPAGEOFF]
    adrp x20, l_text_22@PAGE
    add x20, x20, l_text_22@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #408
    bl _lb_window_10add_method
    sub x15, x29, #408
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_34
    b L1_33
L1_34:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_35:
L1_33:
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    adrp x15, _lb_window_13mac_text_rect@GOTPAGE
    ldr x15, [x15, _lb_window_13mac_text_rect@GOTPAGEOFF]
    adrp x20, l_text_24@PAGE
    add x20, x20, l_text_24@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #440
    bl _lb_window_10add_method
    sub x15, x29, #440
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_37
    b L1_36
L1_37:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_38:
L1_36:
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    adrp x15, _lb_window_16mac_text_command@GOTPAGE
    ldr x15, [x15, _lb_window_16mac_text_command@GOTPAGEOFF]
    adrp x20, l_text_26@PAGE
    add x20, x20, l_text_26@PAGEOFF
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    sub x8, x29, #472
    bl _lb_window_10add_method
    sub x15, x29, #472
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_40
    b L1_39
L1_40:
    sub x19, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_41:
L1_39:
    sub x14, x29, #72
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_plain_text
_lb_window_14mac_plain_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str x0, [x16]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L2_1
    b L2_2
L2_1:
    b L2_3
L2_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
L2_3:
    sub x14, x29, #48
    ldr x20, [x14]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    mov x2, x19
    bl _objc_msgSend
    mov w14, w0
    cbnz w14, L2_5
    b L2_6
L2_5:
    mov x9, x20
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
    b L2_7
L2_6:
L2_7:
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_16mac_clear_marked
    .no_dead_strip _lb_window_16mac_clear_marked
_lb_window_16mac_clear_marked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    movz x10, #14408
    add x20, x19, x10
    ldr x21, [x20]
    cbnz x21, L3_4
    b L3_2
L3_4:
L3_1:
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L3_3
L3_2:
L3_3:
    mov x9, #0
    str x9, [x20]
    movz x10, #14416
    add x14, x19, x10
    mov x9, #0
    str x9, [x14]
    movz x10, #14424
    add x14, x19, x10
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_15mac_insert_text
_lb_window_15mac_insert_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x16, x29, #104
    str x2, [x16]
    sub x16, x29, #120
    str x3, [x16]
    str x4, [x16, #8]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L4_1
    b L4_2
L4_1:
    b L4_3
L4_2:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
L4_3:
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    movz x10, #14380
    add x14, x19, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L4_6
L4_5:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_8:
    b L4_7
L4_6:
L4_7:
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_14mac_plain_text
    mov x20, x0
    cbnz x20, L4_9
    b L4_10
L4_9:
    b L4_11
L4_10:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_12:
L4_11:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    movz x10, #14368
    add x14, x19, x10
    ldr x14, [x14]
    movz x9, #256
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x21, x14
    b.ls L4_14
L4_13:
    movz x10, #14376
    add x14, x19, x10
    movz x9, #1
    strb w9, [x14]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_16:
    b L4_15
L4_14:
L4_15:
    adrp x22, l_text_34@PAGE
    add x22, x22, l_text_34@PAGEOFF
    mov x9, #0
    mov x23, x9
L4_17:
    cmp x23, x21
    b.hs L4_20
L4_18:
    mov x0, x22
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    mov w14, w0
    mov x0, x19
    mov x1, x14
    bl _lb_window_10push_utf16
L4_19:
    add x14, x23, #1
    mov x23, x14
    b L4_17
L4_20:
    movz x10, #14382
    add x14, x19, x10
    ldrh w15, [x14]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L4_22
L4_21:
    mov x9, #0
    strh w9, [x14]
    mov x0, x19
    movz x1, #65533
    bl _lb_window_11push_scalar
    b L4_23
L4_22:
L4_23:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_set_marked
_lb_window_14mac_set_marked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str x2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #120
    str x5, [x16]
    str x6, [x16, #8]
    sub x14, x29, #56
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L5_1
    b L5_2
L5_1:
    b L5_3
L5_2:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
L5_3:
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    movz x10, #14380
    add x14, x19, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L5_6
L5_5:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
    b L5_7
L5_6:
L5_7:
    sub x14, x29, #88
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_14mac_plain_text
    mov x20, x0
    cbnz x20, L5_9
    b L5_10
L5_9:
    b L5_11
L5_10:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_12:
L5_11:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.ls L5_14
L5_13:
    movz x10, #14408
    add x21, x19, x10
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    str x14, [x21]
    movz x10, #14416
    add x14, x19, x10
    sub x15, x29, #104
    ldr x21, [x15]
    str x21, [x14]
    movz x10, #14424
    add x14, x19, x10
    add x15, x15, #8
    ldr x15, [x15]
    str x15, [x14]
    b L5_15
L5_14:
L5_15:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10mac_unmark
_lb_window_10mac_unmark:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L6_4
    b L6_2
L6_4:
L6_1:
    mov x0, x14
    bl _lb_window_16mac_clear_marked
    b L6_3
L6_2:
L6_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_has_marked
_lb_window_14mac_has_marked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L7_1
    b L7_2
L7_1:
    b L7_3
L7_2:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
L7_3:
    movz x10, #14408
    add x15, x14, x10
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_5:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_16mac_marked_range
_lb_window_16mac_marked_range:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L8_1
    b L8_2
L8_1:
    b L8_3
L8_2:
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
L8_11:
L8_13:
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    str x9, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
    movz x10, #14408
    add x15, x14, x10
    ldr x19, [x15]
    cbnz x19, L8_5
    b L8_6
L8_5:
    b L8_7
L8_6:
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
L8_15:
L8_17:
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    str x9, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    sub x20, x29, #136
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x20]
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    add x15, x20, #8
    str x14, [x15]
    sub x21, x29, #56
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_18mac_selected_range
_lb_window_18mac_selected_range:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L9_1
    b L9_2
L9_1:
    b L9_3
L9_2:
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
L9_3:
    sub x20, x29, #120
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    movz x10, #14416
    add x14, x19, x10
    ldr x14, [x14]
    str x14, [x20]
    movz x10, #14424
    add x14, x19, x10
    ldr x14, [x14]
    add x15, x20, #8
    str x14, [x15]
    sub x21, x29, #56
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_5:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_21mac_marked_attributes
_lb_window_21mac_marked_attributes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    adrp x14, l_text_39@PAGE
    add x14, x14, l_text_39@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L10_1
    b L10_2
L10_1:
    b L10_3
L10_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
L10_3:
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_5:
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_18mac_text_substring
_lb_window_18mac_text_substring:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #96
    str x4, [x16]
    sub x14, x29, #96
    ldr x19, [x14]
    cbnz x19, L11_4
    b L11_2
L11_4:
L11_1:
    sub x20, x29, #112
    mov x11, x20
    stp xzr, xzr, [x11, #0]
L11_7:
L11_9:
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    str x9, [x20]
    add x14, x20, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L11_3
L11_2:
L11_3:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_text_index
_lb_window_14mac_text_index:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str d0, [x16, #0]
    sub x16, x29, #64
    str d1, [x16, #8]
L12_3:
L12_5:
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_13mac_text_rect
_lb_window_13mac_text_rect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #264]
    str x20, [sp, #256]
    str x21, [sp, #248]
    str x22, [sp, #240]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #144
    str x4, [x16]
    sub x14, x29, #144
    ldr x14, [x14]
    cbnz x14, L13_4
    b L13_2
L13_4:
L13_1:
    sub x15, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L13_3
L13_2:
L13_3:
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L13_5
    b L13_6
L13_5:
    b L13_7
L13_6:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
L13_7:
    ldr x19, [x14]
    cbnz x19, L13_9
    b L13_10
L13_9:
    b L13_11
L13_10:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_12:
L13_11:
    adrp x14, l_text_44@PAGE
    add x14, x14, l_text_44@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x20, x0
    sub x21, x29, #240
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x22, x29, #256
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    movz x9, #16368, lsl #48
    fmov d24, x9
    str d24, [x22]
    movz x9, #16434, lsl #48
    fmov d24, x9
    add x14, x22, #8
    str d24, [x14]
    add x14, x21, #16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x19
    mov x1, x20
    bl _objc_msgSend
    sub x16, x29, #288
    str d0, [x16, #0]
    sub x16, x29, #288
    str d1, [x16, #8]
    sub x16, x29, #288
    str d2, [x16, #16]
    sub x16, x29, #288
    str d3, [x16, #24]
    sub x14, x29, #288
    sub x20, x29, #80
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_13:
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_16mac_text_command
_lb_window_16mac_text_command:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #64
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_21mac_cancel_text_input
    .no_dead_strip _lb_window_21mac_cancel_text_input
_lb_window_21mac_cancel_text_input:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    add x14, x19, #8
    ldr x19, [x14]
    cbnz x19, L15_4
    b L15_2
L15_4:
L15_1:
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x20, x0
    cbnz x20, L15_8
    b L15_6
L15_8:
L15_5:
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    mov x0, x14
    bl _lb_window_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L15_7
L15_6:
L15_7:
    b L15_3
L15_2:
L15_3:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_10macos_text_0init

    .section __TEXT,__const
l_text_0:
    .asciz "shift count out of range"
l_text_1:
    .asciz "src/std/window/macos/text.lucb:5:5"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "NSTextInputClient"
l_text_4:
    .asciz "AppKit text input is unavailable"
l_text_5:
    .asciz "could not register the native text input client"
l_text_6:
    .asciz "insertText:replacementRange:"
l_text_7:
    .asciz "v@:@{_NSRange=QQ}"
l_text_8:
    .asciz "setMarkedText:selectedRange:replacementRange:"
l_text_9:
    .asciz "v@:@{_NSRange=QQ}{_NSRange=QQ}"
l_text_10:
    .asciz "unmarkText"
l_text_11:
    .asciz "v@:"
l_text_12:
    .asciz "hasMarkedText"
l_text_13:
    .asciz "B@:"
l_text_14:
    .asciz "markedRange"
l_text_15:
    .asciz "{_NSRange=QQ}@:"
l_text_16:
    .asciz "selectedRange"
l_text_17:
    .asciz "validAttributesForMarkedText"
l_text_18:
    .asciz "@@:"
l_text_19:
    .asciz "attributedSubstringForProposedRange:actualRange:"
l_text_20:
    .asciz "@@:{_NSRange=QQ}^{_NSRange=QQ}"
l_text_21:
    .asciz "characterIndexForPoint:"
l_text_22:
    .asciz "Q@:{CGPoint=dd}"
l_text_23:
    .asciz "firstRectForCharacterRange:actualRange:"
l_text_24:
    .asciz "{CGRect={CGPoint=dd}{CGSize=dd}}@:{_NSRange=QQ}^{_NSRange=QQ}"
l_text_25:
    .asciz "doCommandBySelector:"
l_text_26:
    .asciz "v@::"
l_text_27:
    .asciz "NSString"
l_text_28:
    .asciz "isKindOfClass:"
l_text_29:
    .asciz "string"
l_text_30:
    .asciz "src/std/window/macos/text.lucb:27:5"
l_text_31:
    .asciz "release"
l_text_32:
    .asciz "length"
l_text_33:
    .asciz "src/std/window/macos/text.lucb:44:5"
l_text_34:
    .asciz "characterAtIndex:"
l_text_35:
    .asciz "copy"
l_text_36:
    .asciz "src/std/window/macos/text.lucb:70:5"
l_text_37:
    .asciz "src/std/window/macos/text.lucb:75:5"
l_text_38:
    .asciz "src/std/window/macos/text.lucb:79:5"
l_text_39:
    .asciz "NSArray"
l_text_40:
    .asciz "array"
l_text_41:
    .asciz "src/std/window/macos/text.lucb:83:5"
l_text_42:
    .asciz "src/std/window/macos/text.lucb:88:5"
l_text_43:
    .asciz "src/std/window/macos/text.lucb:91:5"
l_text_44:
    .asciz "convertRectToScreen:"
l_text_45:
    .asciz "src/std/window/macos/text.lucb:98:5"
l_text_46:
    .asciz "inputContext"
l_text_47:
    .asciz "discardMarkedText"
l_text_48:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
