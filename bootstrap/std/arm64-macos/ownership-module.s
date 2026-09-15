    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_module_0init
_lb_ownership_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_ownership_black@PAGE
    add x14, x14, _lb_ownership_black@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_ownership_gray@PAGE
    add x14, x14, _lb_ownership_gray@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_ownership_white@PAGE
    add x14, x14, _lb_ownership_white@PAGEOFF
    movz x9, #2
    strb w9, [x14]
    adrp x14, _lb_ownership_purple@PAGE
    add x14, x14, _lb_ownership_purple@PAGEOFF
    movz x9, #3
    strb w9, [x14]
    adrp x14, _lb_ownership_10color_mask@PAGE
    add x14, x14, _lb_ownership_10color_mask@PAGEOFF
    movz x9, #3
    strb w9, [x14]
    adrp x14, _lb_ownership_buffered@PAGE
    add x14, x14, _lb_ownership_buffered@PAGEOFF
    movz x9, #4
    strb w9, [x14]
    adrp x14, _lb_ownership_dead@PAGE
    add x14, x14, _lb_ownership_dead@PAGEOFF
    movz x9, #8
    strb w9, [x14]
    adrp x14, _lb_ownership_collecting@PAGE
    add x14, x14, _lb_ownership_collecting@PAGEOFF
    movz x9, #16
    strb w9, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    movz x9, #32
    strb w9, [x14]
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_ownership_12next_context@PAGE
    add x14, x14, _lb_ownership_12next_context@PAGEOFF
    movz x9, #1
    str x9, [x14]
    adrp x14, _lb_ownership_15next_generation@PAGE
    add x14, x14, _lb_ownership_15next_generation@PAGEOFF
    movz x9, #1
    str x9, [x14]
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10live_count
    .no_dead_strip _lb_ownership_10live_count
_lb_ownership_10live_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_12restore_site
    .no_dead_strip _lb_ownership_12restore_site
_lb_ownership_12restore_site:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    adrp x0, _lb_ownership_site@TLVPPAGE
    ldr x0, [x0, _lb_ownership_site@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_stop
    .no_dead_strip _lb_ownership_stop
_lb_ownership_stop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    str x19, [sp, #488]
    str x20, [sp, #480]
    str x21, [sp, #472]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #72
    bl _lb_io_stderr
    sub x16, x29, #88
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #104
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x19]
    add x14, x19, #8
    ldr x19, [x14]
    ldr x14, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #184
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_4
    b L3_3
L3_4:
    add x14, x15, #8
    sub x20, x29, #144
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_1
L3_3:
    b L3_2
L3_1:
    b L3_2
L3_5:
L3_2:
    ldr x14, [x19]
    adrp x0, _lb_ownership_site@TLVPPAGE
    ldr x0, [x0, _lb_ownership_site@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #248
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_9
    b L3_8
L3_9:
    add x14, x15, #8
    sub x20, x29, #208
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_6
L3_8:
    b L3_7
L3_6:
    b L3_7
L3_10:
L3_7:
    sub x20, x29, #264
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #344
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #344
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_14
    b L3_13
L3_14:
    add x14, x15, #8
    sub x20, x29, #304
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_11
L3_13:
    b L3_12
L3_11:
    b L3_12
L3_15:
L3_12:
    ldr x14, [x19]
    sub x15, x29, #56
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #408
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #408
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_19
    b L3_18
L3_19:
    add x14, x15, #8
    sub x20, x29, #368
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_16
L3_18:
    b L3_17
L3_16:
    b L3_17
L3_20:
L3_17:
    sub x20, x29, #424
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #440
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #504
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #504
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_24
    b L3_23
L3_24:
    add x14, x15, #8
    sub x19, x29, #464
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_21
L3_23:
    b L3_22
L3_21:
    b L3_22
L3_25:
L3_22:
    movz x0, #1
    bl _lb_core_exit
    ldr x19, [sp, #488]
    ldr x20, [sp, #480]
    ldr x21, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_8color_of
    .no_dead_strip _lb_ownership_8color_of
_lb_ownership_8color_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #8
    ldrb w14, [x14]
    adrp x15, _lb_ownership_10color_mask@PAGE
    add x15, x15, _lb_ownership_10color_mask@PAGEOFF
    ldrb w15, [x15]
    and w14, w14, w15
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_9set_color
    .no_dead_strip _lb_ownership_9set_color
_lb_ownership_9set_color:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str w1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    add x14, x14, #8
    ldrb w15, [x14]
    adrp x19, _lb_ownership_10color_mask@PAGE
    add x19, x19, _lb_ownership_10color_mask@PAGEOFF
    ldrb w19, [x19]
    movn x10, #0
    eor w19, w19, w10
    and w19, w19, #255
    and w15, w15, w19
    sub x19, x29, #56
    ldrb w19, [x19]
    orr w15, w15, w19
    strb w15, [x14]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_has
    .no_dead_strip _lb_ownership_has
_lb_ownership_has:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #8
    ldrb w14, [x14]
    sub x15, x29, #48
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_1:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_10context_id
    .no_dead_strip _lb_ownership_10context_id
_lb_ownership_10context_id:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L7_2
L7_1:
    adrp x14, _lb_ownership_12next_context@PAGE
    add x14, x14, _lb_ownership_12next_context@PAGEOFF
    movz x10, #1
    mov x12, x14
1:
    ldxr x9, [x12]
    add x11, x9, x10
    stxr w13, x11, [x12]
    cbnz w13, 1b
    mov x14, x9
    str x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L7_5
L7_4:
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #40
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L7_6
L7_5:
L7_6:
    b L7_3
L7_2:
L7_3:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_7:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_enter
    .no_dead_strip _lb_ownership_enter
_lb_ownership_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl _lb_ownership_10context_id
    mov x14, x0
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15require_context
    .no_dead_strip _lb_ownership_15require_context
_lb_ownership_15require_context:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L9_2
L9_1:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #55
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L9_3
L9_2:
L9_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_12check_thread
    .no_dead_strip _lb_ownership_12check_thread
_lb_ownership_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_immortal@PAGE
    add x15, x15, _lb_ownership_immortal@PAGEOFF
    ldrb w15, [x15]
    sub x10, x29, #72
    str x14, [x10]
    sub x10, x29, #88
    str w15, [x10]
    add x15, x14, #8
    ldrb w15, [x15]
    sub x19, x29, #88
    ldrb w19, [x19]
    and w15, w15, w19
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #96
    str w15, [x10]
    b L10_7
L10_6:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_7:
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    cbnz w19, L10_4
    b L10_8
L10_8:
    mov w14, w19
    b L10_5
L10_4:
    add x15, x14, #32
    ldr x19, [x15]
    bl _lb_ownership_10context_id
    mov x15, x0
    cmp x19, x15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L10_5:
    and w15, w14, #255
    cbnz w15, L10_1
    b L10_2
L10_1:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    sub x15, x29, #56
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L10_3
L10_2:
L10_3:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_11check_alive
    .no_dead_strip _lb_ownership_11check_alive
_lb_ownership_11check_alive:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_dead@PAGE
    add x14, x14, _lb_ownership_dead@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #88
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #96
    str w14, [x10]
    b L11_7
L11_6:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L11_7:
    cbnz w14, L11_8
    b L11_4
L11_8:
    mov w15, w14
    b L11_5
L11_4:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_5:
    and w14, w15, #255
    cbnz w14, L11_1
    b L11_2
L11_1:
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    sub x15, x29, #56
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L11_3
L11_2:
L11_3:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_reserve
    .no_dead_strip _lb_ownership_reserve
_lb_ownership_reserve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    str x25, [sp, #240]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    sub x16, x29, #168
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #152
    ldr x19, [x14]
    movz x10, #64
    cmp x19, x10
    b.hs L12_2
L12_1:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L12_3
L12_2:
L12_3:
    sub x20, x29, #200
    sub x15, x29, #168
    ldr x14, [x15]
    cbnz x14, L12_4
    b L12_5
L12_4:
    sub x14, x29, #216
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L12_6
L12_5:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #216
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L12_6:
    sub x14, x29, #216
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #232
    sub x22, x29, #280
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L12_7
    b L12_8
L12_8:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L12_7:
    ldr x23, [x15]
    mov x17, x23
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #16
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #304
    add x23, x25, #16
    ldrb w23, [x23]
    mov x10, #0
    cmp x19, x10
    cset w24, ne
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    and w23, w24, w23
    cbnz w23, L12_9
    b L12_10
L12_9:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L12_11
L12_10:
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L12_11:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L12_13
    b L12_12
L12_13:
    add x14, x22, #16
    sub x19, x29, #120
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_14:
L12_12:
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    bl _lb_memory_set
    ldr x19, [x21]
    movz x9, #1
    str w9, [x19]
    add x14, x19, #16
    sub x15, x29, #136
    ldr x15, [x15]
    str x15, [x14]
    add x23, x19, #32
    bl _lb_ownership_10context_id
    mov x14, x0
    str x14, [x23]
    add x14, x19, #24
    adrp x15, _lb_ownership_15next_generation@PAGE
    add x15, x15, _lb_ownership_15next_generation@PAGEOFF
    movz x10, #1
    mov x12, x15
1:
    ldxr x9, [x12]
    add x11, x9, x10
    stxr w13, x11, [x12]
    cbnz w13, 1b
    mov x15, x9
    str x15, [x14]
    mov x10, #0
    cmp x15, x10
    b.ne L12_16
L12_15:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L12_17
L12_16:
L12_17:
    add x14, x19, #40
    add x15, x21, #8
    ldr x15, [x15]
    str x15, [x14]
    add x14, x19, #48
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    sub x14, x29, #120
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_18:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_allocate
    .no_dead_strip _lb_ownership_allocate
_lb_ownership_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x15, x14, #16
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _lb_ownership_14allocate_sized
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_1:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_14allocate_sized
    .no_dead_strip _lb_ownership_14allocate_sized
_lb_ownership_14allocate_sized:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x14, x29, #72
    ldr x20, [x14]
    sub x21, x29, #112
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x1, x20
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #152
    bl _lb_ownership_reserve
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_4
    b L14_3
L14_4:
    add x14, x15, #8
    sub x19, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L14_1
L14_3:
    ldr x14, [x15]
    b L14_2
L14_1:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    mov x9, #0
    mov x14, x9
L14_2:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_5:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_retain
    .no_dead_strip _lb_ownership_retain
_lb_ownership_retain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #64
    str x19, [x10]
    sub x10, x29, #80
    str w14, [x10]
    add x14, x19, #8
    ldrb w15, [x14]
    sub x20, x29, #80
    ldrb w20, [x20]
    and w15, w15, w20
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #88
    str w15, [x10]
    b L15_7
L15_6:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L15_7:
    cbnz w15, L15_1
    b L15_2
L15_1:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_4:
    b L15_3
L15_2:
L15_3:
    ldr w15, [x19]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x19]
    adrp x15, _lb_ownership_black@PAGE
    add x15, x15, _lb_ownership_black@PAGEOFF
    ldrb w15, [x15]
    sub x10, x29, #104
    str x19, [x10]
    sub x10, x29, #120
    str w15, [x10]
    ldrb w15, [x14]
    adrp x20, _lb_ownership_10color_mask@PAGE
    add x20, x20, _lb_ownership_10color_mask@PAGEOFF
    ldrb w20, [x20]
    movn x10, #0
    eor w20, w20, w10
    and w20, w20, #255
    and w15, w15, w20
    sub x20, x29, #120
    ldrb w20, [x20]
    orr w15, w15, w20
    strb w15, [x14]
L15_8:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_5:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_release
    .no_dead_strip _lb_ownership_release
_lb_ownership_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    add x20, x19, #8
    ldrb w14, [x20]
    sub x15, x29, #88
    ldrb w21, [x15]
    and w14, w14, w21
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #96
    str w14, [x10]
    b L16_16
L16_15:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L16_16:
    cbnz w14, L16_1
    b L16_2
L16_1:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_4:
    b L16_3
L16_2:
L16_3:
    adrp x14, _lb_ownership_collecting@PAGE
    add x14, x14, _lb_ownership_collecting@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    ldrb w14, [x20]
    ldrb w21, [x15]
    and w14, w14, w21
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #104
    str w14, [x10]
    b L16_18
L16_17:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L16_18:
    cbnz w14, L16_5
    b L16_6
L16_5:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ls L16_9
L16_8:
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    b L16_10
L16_9:
L16_10:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_11:
    b L16_7
L16_6:
L16_7:
    mov x0, x19
    bl _lb_ownership_11check_alive
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne L16_13
L16_12:
    sub x10, x29, #120
    str x19, [x10]
    adrp x14, _lb_ownership_black@PAGE
    add x14, x14, _lb_ownership_black@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #152
    str x19, [x10]
    sub x10, x29, #168
    str w14, [x10]
    ldrb w14, [x20]
    adrp x15, _lb_ownership_10color_mask@PAGE
    add x15, x15, _lb_ownership_10color_mask@PAGEOFF
    ldrb w15, [x15]
    movn x10, #0
    eor w15, w15, w10
    and w15, w15, #255
    and w14, w14, w15
    sub x15, x29, #168
    ldrb w15, [x15]
    orr w14, w14, w15
    strb w14, [x20]
L16_29:
    add x21, x19, #16
    ldr x14, [x21]
    add x14, x14, #24
    ldr x14, [x14]
    cbnz x14, L16_22
    b L16_20
L16_22:
L16_19:
    movz x9, #1
    str w9, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    ldr w15, [x19]
    movz x10, #1
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L16_24
L16_23:
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L16_25
L16_24:
L16_25:
    mov x9, #0
    str w9, [x19]
    b L16_21
L16_20:
L16_21:
    ldr x14, [x21]
    add x14, x14, #32
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldrb w14, [x20]
    adrp x15, _lb_ownership_dead@PAGE
    add x15, x15, _lb_ownership_dead@PAGEOFF
    ldrb w15, [x15]
    orr w14, w14, w15
    strb w14, [x20]
    adrp x14, _lb_ownership_buffered@PAGE
    add x14, x14, _lb_ownership_buffered@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #184
    str x19, [x10]
    sub x10, x29, #200
    str w14, [x10]
    ldrb w14, [x20]
    sub x15, x29, #200
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #208
    str w14, [x10]
    b L16_31
L16_30:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L16_31:
    mov x10, #0
    cmp w14, w10
    b.ne L16_27
L16_26:
    mov x0, x19
    bl _lb_ownership_13release_shell
    b L16_28
L16_27:
L16_28:
L16_32:
    b L16_14
L16_13:
    mov x0, x19
    bl _lb_ownership_13possible_root
L16_14:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13release_shell
    .no_dead_strip _lb_ownership_13release_shell
_lb_ownership_13release_shell:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    str x23, [sp, #168]
    str x24, [sp, #160]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    add x14, x19, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L17_4
    b L17_17
L17_17:
    mov w15, w14
    b L17_5
L17_4:
    adrp x14, _lb_ownership_dead@PAGE
    add x14, x14, _lb_ownership_dead@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #192
    str x19, [x10]
    sub x10, x29, #208
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #208
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w15, w14, #255
    sub x10, x29, #216
    str w15, [x10]
    b L17_14
L17_13:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_14:
L17_5:
    and w14, w15, #255
    cbnz w14, L17_6
    b L17_18
L17_18:
    mov w15, w14
    b L17_7
L17_6:
    adrp x14, _lb_ownership_buffered@PAGE
    add x14, x14, _lb_ownership_buffered@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #192
    str x19, [x10]
    sub x10, x29, #208
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #208
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #224
    str w14, [x10]
    b L17_16
L17_15:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_16:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L17_7:
    and w14, w15, #255
    cbnz w14, L17_1
    b L17_2
L17_1:
    sub x21, x29, #96
    add x14, x19, #48
    ldr x20, [x14]
    cbnz x20, L17_8
    b L17_9
L17_8:
    sub x22, x29, #112
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L17_10
L17_9:
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_10:
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #144
    add x15, x19, #40
    ldr x23, [x15]
    sub x15, x29, #160
    str x19, [x15]
    add x24, x15, #8
    str x23, [x24]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #176
    str x19, [x14]
    add x15, x14, #8
    str x23, [x15]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, L17_12
    b L17_11
L17_12:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L17_11:
    b L17_3
L17_2:
L17_3:
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    ldr x24, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_19discard_unpublished
    .no_dead_strip _lb_ownership_19discard_unpublished
_lb_ownership_19discard_unpublished:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    ldr w14, [x19]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L18_10
    b L18_4
L18_10:
    mov w15, w14
    b L18_5
L18_4:
    add x14, x19, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L18_5:
    and w14, w15, #255
    cbnz w14, L18_11
    b L18_6
L18_11:
    mov w15, w14
    b L18_7
L18_6:
    adrp x14, _lb_ownership_buffered@PAGE
    add x14, x14, _lb_ownership_buffered@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #80
    str x19, [x10]
    sub x10, x29, #96
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #96
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w15, w14, #255
    sub x10, x29, #104
    str w15, [x10]
    b L18_9
L18_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L18_9:
L18_7:
    and w14, w15, #255
    cbnz w14, L18_1
    b L18_2
L18_1:
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_ownership_stop
    b L18_3
L18_2:
L18_3:
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    mov x9, #0
    str w9, [x19]
    add x14, x19, #8
    ldrb w15, [x14]
    adrp x20, _lb_ownership_dead@PAGE
    add x20, x20, _lb_ownership_dead@PAGEOFF
    ldrb w20, [x20]
    orr w15, w15, w20
    strb w15, [x14]
    mov x0, x19
    bl _lb_ownership_13release_shell
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_abandon
    .no_dead_strip _lb_ownership_abandon
_lb_ownership_abandon:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #32
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    mov x9, #0
    str w9, [x19]
    add x14, x19, #8
    ldrb w15, [x14]
    adrp x20, _lb_ownership_dead@PAGE
    add x20, x20, _lb_ownership_dead@PAGEOFF
    ldrb w20, [x20]
    orr w15, w15, w20
    strb w15, [x14]
    adrp x15, _lb_ownership_buffered@PAGE
    add x15, x15, _lb_ownership_buffered@PAGEOFF
    ldrb w15, [x15]
    sub x10, x29, #64
    str x19, [x10]
    sub x10, x29, #80
    str w15, [x10]
    ldrb w14, [x14]
    sub x15, x29, #80
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #88
    str w14, [x10]
    b L19_5
L19_4:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L19_5:
    mov x10, #0
    cmp w14, w10
    b.ne L19_2
L19_1:
    mov x0, x19
    bl _lb_ownership_13release_shell
    b L19_3
L19_2:
L19_3:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_identity
    .no_dead_strip _lb_ownership_identity
_lb_ownership_identity:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #48
    ldr x14, [x14]
    cbnz x14, L20_4
    b L20_2
L20_4:
L20_1:
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_5:
    b L20_3
L20_2:
L20_3:
    add x14, x19, #24
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_6:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/ownership/module.lucb:53:5"
l_text_2:
    .asciz "trap: "
l_text_3:
    .asciz ": "
l_text_4:
    .asciz "\n"
l_text_5:
    .asciz "src/std/ownership/module.lucb:78:5"
l_text_6:
    .asciz "src/std/ownership/module.lucb:84:5"
l_text_7:
    .asciz "runtime context identity exhausted"
l_text_8:
    .asciz "src/std/ownership/module.lucb:97:5"
l_text_9:
    .asciz "src/std/ownership/module.lucb:103:5"
l_text_10:
    .asciz "a managed callback needs a runtime entry on this thread"
l_text_11:
    .asciz "an object belongs to another runtime thread"
l_text_12:
    .asciz "an object has already been destroyed"
l_text_13:
    .asciz "an object allocation is smaller than its header"
l_text_14:
    .asciz "memory.unset"
l_text_15:
    .asciz "src/std/ownership/module.lucb:124:5"
l_text_16:
    .asciz "memory.exhausted"
l_text_17:
    .asciz "object allocation identity exhausted"
l_text_18:
    .asciz "src/std/ownership/module.lucb:135:5"
l_text_19:
    .asciz "src/std/ownership/module.lucb:136:5"
l_text_20:
    .asciz "src/std/ownership/module.lucb:139:5"
l_text_21:
    .asciz "out of memory"
l_text_22:
    .asciz "src/std/ownership/module.lucb:144:9"
l_text_23:
    .asciz "src/std/ownership/module.lucb:150:5"
l_text_24:
    .asciz "src/std/ownership/module.lucb:152:5"
l_text_25:
    .asciz "src/std/ownership/module.lucb:162:13"
l_text_26:
    .asciz "src/std/ownership/module.lucb:165:5"
l_text_27:
    .asciz "`deinit` published `self`"
l_text_28:
    .asciz "src/std/ownership/module.lucb:178:13"
l_text_29:
    .asciz "src/std/ownership/module.lucb:181:5"
l_text_30:
    .asciz "an object has no allocation owner"
l_text_31:
    .asciz "src/std/ownership/module.lucb:189:9"
l_text_32:
    .asciz "src/std/ownership/module.lucb:191:9"
l_text_33:
    .asciz "an incomplete object was published"
l_text_34:
    .asciz "src/std/ownership/module.lucb:199:5"
l_text_35:
    .asciz "src/std/ownership/module.lucb:208:5"
l_text_36:
    .asciz "src/std/ownership/module.lucb:220:5"
l_text_37:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_ownership_black
    .no_dead_strip _lb_ownership_black
    .zerofill __DATA,__bss,_lb_ownership_black,1,0
    .globl _lb_ownership_gray
    .no_dead_strip _lb_ownership_gray
    .zerofill __DATA,__bss,_lb_ownership_gray,1,0
    .globl _lb_ownership_white
    .no_dead_strip _lb_ownership_white
    .zerofill __DATA,__bss,_lb_ownership_white,1,0
    .globl _lb_ownership_purple
    .no_dead_strip _lb_ownership_purple
    .zerofill __DATA,__bss,_lb_ownership_purple,1,0
    .globl _lb_ownership_10color_mask
    .zerofill __DATA,__bss,_lb_ownership_10color_mask,1,0
    .globl _lb_ownership_buffered
    .no_dead_strip _lb_ownership_buffered
    .zerofill __DATA,__bss,_lb_ownership_buffered,1,0
    .globl _lb_ownership_dead
    .no_dead_strip _lb_ownership_dead
    .zerofill __DATA,__bss,_lb_ownership_dead,1,0
    .globl _lb_ownership_collecting
    .no_dead_strip _lb_ownership_collecting
    .zerofill __DATA,__bss,_lb_ownership_collecting,1,0
    .globl _lb_ownership_immortal
    .no_dead_strip _lb_ownership_immortal
    .zerofill __DATA,__bss,_lb_ownership_immortal,1,0

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_live$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_live
_lb_ownership_live:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_live$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_site$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_site
_lb_ownership_site:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_site$tlv$init
    .globl _lb_ownership_12next_context
    .zerofill __DATA,__bss,_lb_ownership_12next_context,8,3
    .globl _lb_ownership_15next_generation
    .zerofill __DATA,__bss,_lb_ownership_15next_generation,8,3

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_14thread_context$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_14thread_context
_lb_ownership_14thread_context:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_14thread_context$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_13runtime_depth$tlv$init:
    .space 4
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_13runtime_depth
_lb_ownership_13runtime_depth:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_13runtime_depth$tlv$init

.subsections_via_symbols
