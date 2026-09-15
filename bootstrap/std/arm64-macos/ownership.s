    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_0init
_lb_ownership_0init:
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
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_ownership_15candidate_limit@PAGE
    add x14, x14, _lb_ownership_15candidate_limit@PAGEOFF
    movz x9, #1024
    str x9, [x14]
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10live_count
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
    .globl _lb_ownership_10context_id
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
    b.ne L4_2
L4_1:
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
    b.ne L4_5
L4_4:
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
    b L4_6
L4_5:
L4_6:
    b L4_3
L4_2:
L4_3:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_7:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_enter
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
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15require_context
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
    b.ne L6_2
L6_1:
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
    b L6_3
L6_2:
L6_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_12check_thread
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
    b L7_7
L7_6:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L7_7:
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    cbnz w19, L7_4
    b L7_8
L7_8:
    mov w14, w19
    b L7_5
L7_4:
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
L7_5:
    and w15, w14, #255
    cbnz w15, L7_1
    b L7_2
L7_1:
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
    b L7_3
L7_2:
L7_3:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_11check_alive
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
    b L8_7
L8_6:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L8_7:
    cbnz w14, L8_8
    b L8_4
L8_8:
    mov w15, w14
    b L8_5
L8_4:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L8_5:
    and w14, w15, #255
    cbnz w14, L8_1
    b L8_2
L8_1:
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
    b L8_3
L8_2:
L8_3:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_reserve
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
    b.hs L9_2
L9_1:
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
    b L9_3
L9_2:
L9_3:
    sub x20, x29, #200
    sub x15, x29, #168
    ldr x14, [x15]
    cbnz x14, L9_4
    b L9_5
L9_4:
    sub x14, x29, #216
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L9_6
L9_5:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #216
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L9_6:
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
    cbnz x15, L9_7
    b L9_8
L9_8:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L9_7:
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
    cbnz w23, L9_9
    b L9_10
L9_9:
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
    b L9_11
L9_10:
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L9_11:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L9_13
    b L9_12
L9_13:
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
L9_14:
L9_12:
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
    b.ne L9_16
L9_15:
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
    b L9_17
L9_16:
L9_17:
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
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
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
L9_18:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_allocate
_lb_ownership_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    add x14, x19, #16
    ldr x20, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str x20, [x10]
    sub x21, x29, #128
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x1, x20
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #168
    bl _lb_ownership_reserve
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L10_5
    b L10_4
L10_5:
    add x14, x15, #8
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L10_2
L10_4:
    ldr x14, [x15]
    b L10_3
L10_2:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #184
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
L10_3:
    b L10_7
L10_6:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_7:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_1:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_13release_shell
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
    cbnz w14, L11_4
    b L11_17
L11_17:
    mov w15, w14
    b L11_5
L11_4:
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
    b L11_14
L11_13:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L11_14:
L11_5:
    and w14, w15, #255
    cbnz w14, L11_6
    b L11_18
L11_18:
    mov w15, w14
    b L11_7
L11_6:
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
    b L11_16
L11_15:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L11_16:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_7:
    and w14, w15, #255
    cbnz w14, L11_1
    b L11_2
L11_1:
    sub x21, x29, #96
    add x14, x19, #48
    ldr x20, [x14]
    cbnz x20, L11_8
    b L11_9
L11_8:
    sub x22, x29, #112
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L11_10
L11_9:
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
L11_10:
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
    cbnz x15, L11_12
    b L11_11
L11_12:
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
L11_11:
    b L11_3
L11_2:
L11_3:
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
    cbnz w14, L12_10
    b L12_4
L12_10:
    mov w15, w14
    b L12_5
L12_4:
    add x14, x19, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L12_5:
    and w14, w15, #255
    cbnz w14, L12_11
    b L12_6
L12_11:
    mov w15, w14
    b L12_7
L12_6:
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
    b L12_9
L12_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L12_9:
L12_7:
    and w14, w15, #255
    cbnz w14, L12_1
    b L12_2
L12_1:
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
    b L12_3
L12_2:
L12_3:
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
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
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
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
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
    b L13_5
L13_4:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L13_5:
    mov x10, #0
    cmp w14, w10
    b.ne L13_2
L13_1:
    mov x0, x19
    bl _lb_ownership_13release_shell
    b L13_3
L13_2:
L13_3:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_identity
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
    cbnz x14, L14_4
    b L14_2
L14_4:
L14_1:
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
L14_5:
    b L14_3
L14_2:
L14_3:
    add x14, x19, #24
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_6:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_mark
_lb_ownership_mark:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_1:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_11pool_object
_lb_ownership_11pool_object:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str x19, [sp, #328]
    str x20, [sp, #320]
    str x21, [sp, #312]
    str x22, [sp, #304]
    str x23, [sp, #296]
    str x24, [sp, #288]
    str x25, [sp, #280]
    str x26, [sp, #272]
    str x27, [sp, #264]
    str x28, [sp, #256]
    sub x16, x29, #112
    str x0, [x16]
    sub x19, x29, #144
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #112
    ldr x9, [x14]
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    str x9, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    mov x10, x19
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    adrp x0, _lb_ownership_pending@TLVPPAGE
    ldr x0, [x0, _lb_ownership_pending@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    add x22, x21, #8
    ldr x15, [x22]
    cmp x14, x15
    b.ne L16_3
L16_2:
    sub x23, x29, #192
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #0]
    mov x10, #0
    cmp x15, x10
    b.ls L16_8
L16_7:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    b L16_9
L16_8:
    movz x9, #64
    mov x25, x9
L16_9:
    sub x26, x29, #280
    movz x10, #512, lsl #48
    cmp x25, x10
    b.ls L16_11
L16_10:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L16_12
L16_11:
    lsl x27, x25, #5
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L16_13
    b L16_14
L16_14:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L16_13:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #304
    add x28, x24, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w20, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w20, w20, w28
    cbnz w20, L16_15
    b L16_16
L16_15:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L16_12
L16_16:
    ldr x14, [x24]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L16_12:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L16_18
    b L16_17
L16_18:
    add x14, x26, #16
    sub x15, x29, #232
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L16_5
L16_17:
    sub x14, x29, #208
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L16_6
L16_5:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L16_6:
    sub x14, x29, #208
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x20, x23, #8
    mov x9, #0
    mov x24, x9
L16_19:
    ldr x14, [x19]
    cmp x24, x14
    b.hs L16_21
L16_20:
    ldr x14, [x23]
    ldr x15, [x20]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x24, #5
    add x14, x14, x15
    ldr x25, [x21]
    ldr x26, [x22]
    cmp x24, x26
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x15, x25
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #1
    mov x24, x14
    b L16_19
L16_21:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L16_23
L16_22:
    sub x15, x29, #336
    ldr x20, [x21]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x20, [x15]
    add x20, x15, #8
    str x24, [x20]
    ldr x9, [sp, #0]
    ldr x20, [x9]
    ldr x9, [sp, #0]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L16_26
    b L16_25
L16_26:
    add x14, x24, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L16_25:
    b L16_24
L16_23:
L16_24:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L16_4
L16_3:
L16_4:
    ldr x14, [x19]
    ldr x15, [x21]
    ldr x20, [x22]
    cmp x14, x20
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x14, x15, x14
    sub x15, x29, #176
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
L16_27:
    ldr x9, [sp, #8]
    mov x0, x9
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_1:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_drain
_lb_ownership_drain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    str x19, [sp, #488]
    str x20, [sp, #480]
    str x21, [sp, #472]
    str x22, [sp, #464]
    str x23, [sp, #456]
    str x24, [sp, #448]
    str x25, [sp, #440]
    str x26, [sp, #432]
    str x27, [sp, #424]
    str x28, [sp, #416]
    sub x16, x29, #112
    str x0, [x16]
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #160]
    ldr x9, [sp, #160]
    ldr x9, [x9]
    str x9, [sp, #152]
    sub x14, x29, #112
    ldr x21, [x14]
    ldr x9, [sp, #152]
    cmp x9, x21
    b.hi L17_2
L17_1:
    ldr x19, [sp, #488]
    ldr x20, [sp, #480]
    ldr x21, [sp, #472]
    ldr x22, [sp, #464]
    ldr x23, [sp, #456]
    ldr x24, [sp, #448]
    ldr x25, [sp, #440]
    ldr x26, [sp, #432]
    ldr x27, [sp, #424]
    ldr x28, [sp, #416]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_4:
    b L17_3
L17_2:
L17_3:
    sub x9, x29, #144
    str x9, [sp, #144]
    ldr x9, [sp, #144]
    add x9, x9, #8
    str x9, [sp, #136]
    ldr x9, [sp, #144]
    add x9, x9, #16
    str x9, [sp, #128]
    ldr x9, [sp, #144]
    add x9, x9, #24
    str x9, [sp, #120]
    sub x9, x29, #160
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    add x9, x9, #8
    str x9, [sp, #104]
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #96]
    sub x9, x29, #176
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #8
    str x9, [sp, #80]
    ldr x9, [sp, #96]
    add x9, x9, #8
    str x9, [sp, #72]
    adrp x28, _lb_ownership_immortal@PAGE
    add x28, x28, _lb_ownership_immortal@PAGEOFF
    sub x27, x29, #224
    adrp x9, _lb_ownership_collecting@PAGE
    add x9, x9, _lb_ownership_collecting@PAGEOFF
    str x9, [sp, #64]
    adrp x26, _lb_ownership_black@PAGE
    add x26, x26, _lb_ownership_black@PAGEOFF
    adrp x23, _lb_ownership_10color_mask@PAGE
    add x23, x23, _lb_ownership_10color_mask@PAGEOFF
    sub x25, x29, #304
    adrp x9, l_text_27@PAGE
    add x9, x9, l_text_27@PAGEOFF
    str x9, [sp, #56]
    sub x9, x29, #272
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    adrp x9, l_text_28@PAGE
    add x9, x9, l_text_28@PAGEOFF
    str x9, [sp, #32]
    adrp x9, _lb_ownership_dead@PAGE
    add x9, x9, _lb_ownership_dead@PAGEOFF
    str x9, [sp, #24]
    adrp x9, _lb_ownership_buffered@PAGE
    add x9, x9, _lb_ownership_buffered@PAGEOFF
    str x9, [sp, #16]
    sub x9, x29, #336
    str x9, [sp, #8]
    mov x24, x21
L17_5:
    ldr x10, [sp, #152]
    cmp x24, x10
    b.hs L17_7
L17_6:
    adrp x0, _lb_ownership_pending@TLVPPAGE
    ldr x0, [x0, _lb_ownership_pending@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x24, x14
    b.lo 1f
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x24, #5
    add x14, x15, x14
    mov x10, x14
    ldr x11, [sp, #144]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #144]
    ldr x20, [x9]
    cbnz x20, L17_11
    b L17_9
L17_11:
L17_8:
    sub x10, x29, #192
    str x20, [x10]
    mov x0, x20
    bl _lb_ownership_12check_thread
    ldrb w14, [x28]
    sub x10, x29, #208
    str x20, [x10]
    sub x10, x29, #224
    str w14, [x10]
    add x22, x20, #8
    ldrb w14, [x22]
    ldrb w15, [x27]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #232
    str w14, [x10]
    b L17_37
L17_36:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_37:
    cbnz w14, L17_22
    b L17_23
L17_22:
    b L17_54
L17_25:
    b L17_24
L17_23:
L17_24:
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    sub x10, x29, #208
    str x20, [x10]
    sub x10, x29, #224
    str w14, [x10]
    ldrb w14, [x22]
    ldrb w15, [x27]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #240
    str w14, [x10]
    b L17_39
L17_38:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_39:
    cbnz w14, L17_26
    b L17_27
L17_26:
    ldr w14, [x20]
    mov x10, #0
    cmp w14, w10
    b.ls L17_30
L17_29:
    ldr w14, [x20]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x20]
    b L17_31
L17_30:
L17_31:
    b L17_54
L17_32:
    b L17_28
L17_27:
L17_28:
    mov x0, x20
    bl _lb_ownership_11check_alive
    ldr w14, [x20]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x20]
    ldr w14, [x20]
    mov x10, #0
    cmp w14, w10
    b.ne L17_34
L17_33:
    sub x10, x29, #256
    str x20, [x10]
    ldrb w14, [x26]
    sub x10, x29, #288
    str x20, [x10]
    sub x10, x29, #304
    str w14, [x10]
    ldrb w14, [x22]
    ldrb w15, [x23]
    movn x10, #0
    eor w15, w15, w10
    and w15, w15, #255
    and w14, w14, w15
    ldrb w15, [x25]
    orr w14, w14, w15
    strb w14, [x22]
L17_50:
    add x19, x20, #16
    ldr x14, [x19]
    add x14, x14, #24
    ldr x14, [x14]
    cbnz x14, L17_43
    b L17_41
L17_43:
L17_40:
    movz x9, #1
    str w9, [x20]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    ldr x17, [sp], #16
    blr x17
    ldr w15, [x20]
    movz x10, #1
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L17_45
L17_44:
    ldr x9, [sp, #56]
    ldr x10, [sp, #48]
    str x9, [x10]
    movz x9, #25
    ldr x10, [sp, #40]
    str x9, [x10]
    ldr x0, [sp, #32]
    ldr x9, [sp, #48]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L17_46
L17_45:
L17_46:
    mov x9, #0
    str w9, [x20]
    b L17_42
L17_41:
L17_42:
    ldr x14, [x19]
    add x14, x14, #32
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
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
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldrb w14, [x22]
    ldr x9, [sp, #24]
    ldrb w15, [x9]
    orr w14, w14, w15
    strb w14, [x22]
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    sub x10, x29, #320
    str x20, [x10]
    sub x10, x29, #336
    str w14, [x10]
    ldrb w14, [x22]
    ldr x9, [sp, #8]
    ldrb w15, [x9]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #344
    str w14, [x10]
    b L17_52
L17_51:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_52:
    mov x10, #0
    cmp w14, w10
    b.ne L17_48
L17_47:
    mov x0, x20
    bl _lb_ownership_13release_shell
    b L17_49
L17_48:
L17_49:
L17_53:
    b L17_35
L17_34:
    mov x0, x20
    bl _lb_ownership_13possible_root
L17_35:
L17_54:
    b L17_10
L17_9:
    ldr x9, [sp, #136]
    ldr x19, [x9]
    cbnz x19, L17_15
    b L17_13
L17_15:
L17_12:
    ldr x9, [sp, #128]
    ldr x14, [x9]
    cbnz x14, L17_19
    b L17_17
L17_19:
L17_16:
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    b L17_18
L17_17:
L17_18:
    ldr x9, [sp, #120]
    ldr x14, [x9]
    ldr x10, [sp, #112]
    str x19, [x10]
    ldr x10, [sp, #104]
    str x14, [x10]
    ldr x10, [sp, #88]
    str x19, [x10]
    ldr x10, [sp, #80]
    str x14, [x10]
    ldr x9, [sp, #96]
    ldr x14, [x9]
    ldr x9, [sp, #72]
    ldr x15, [x9]
    cbnz x15, L17_21
    b L17_20
L17_21:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #104]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L17_20:
    b L17_14
L17_13:
L17_14:
L17_10:
    add x14, x24, #1
    mov x24, x14
    b L17_5
L17_7:
    ldr x10, [sp, #160]
    str x21, [x10]
    ldr x19, [sp, #488]
    ldr x20, [sp, #480]
    ldr x21, [sp, #472]
    ldr x22, [sp, #464]
    ldr x23, [sp, #456]
    ldr x24, [sp, #448]
    ldr x25, [sp, #440]
    ldr x26, [sp, #432]
    ldr x27, [sp, #424]
    ldr x28, [sp, #416]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13possible_root
_lb_ownership_13possible_root:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    str x19, [sp, #376]
    str x20, [sp, #368]
    str x21, [sp, #360]
    str x22, [sp, #352]
    str x23, [sp, #344]
    str x24, [sp, #336]
    str x25, [sp, #328]
    str x26, [sp, #320]
    str x27, [sp, #312]
    str x28, [sp, #304]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x9, [x14]
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    sub x10, x29, #128
    str x9, [x10]
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrb w15, [x14]
    adrp x20, _lb_ownership_10color_mask@PAGE
    add x20, x20, _lb_ownership_10color_mask@PAGEOFF
    ldrb w20, [x20]
    and w15, w15, w20
    and w15, w15, #255
    sub x10, x29, #136
    str w15, [x10]
    b L18_13
L18_12:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L18_13:
    adrp x21, _lb_ownership_purple@PAGE
    add x21, x21, _lb_ownership_purple@PAGEOFF
    ldrb w21, [x21]
    cmp w21, w15
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    b.ne L18_2
L18_1:
    ldr x9, [sp, #8]
    sub x10, x29, #152
    str x9, [x10]
    sub x10, x29, #168
    str w21, [x10]
    ldrb w15, [x14]
    movn x10, #0
    eor w22, w20, w10
    and w22, w22, #255
    and w15, w15, w22
    sub x22, x29, #168
    ldrb w22, [x22]
    orr w15, w15, w22
    strb w15, [x14]
L18_14:
    adrp x15, _lb_ownership_buffered@PAGE
    add x15, x15, _lb_ownership_buffered@PAGEOFF
    ldrb w15, [x15]
    ldr x9, [sp, #8]
    sub x10, x29, #184
    str x9, [x10]
    sub x10, x29, #200
    str w15, [x10]
    ldrb w20, [x14]
    sub x21, x29, #200
    ldrb w21, [x21]
    and w20, w20, w21
    mov x10, #0
    cmp w20, w10
    cset w20, eq
    mov x10, #0
    cmp w20, w10
    cset w20, eq
    and w20, w20, #255
    sub x10, x29, #208
    str w20, [x10]
    b L18_16
L18_15:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L18_16:
    mov x10, #0
    cmp w20, w10
    b.ne L18_5
L18_4:
    ldrb w20, [x14]
    orr w20, w15, w20
    strb w20, [x14]
    ldr x9, [sp, #8]
    sub x10, x29, #224
    str x9, [x10]
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    ldr x21, [x20]
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    add x23, x22, #8
    ldr x24, [x23]
    cmp x21, x24
    b.ne L18_18
L18_17:
    sub x21, x29, #240
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #0]
    mov x10, #0
    cmp x24, x10
    b.ls L18_23
L18_22:
    mov x9, x24
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x26, x14
    b L18_24
L18_23:
    adrp x14, _lb_ownership_15candidate_limit@PAGE
    add x14, x14, _lb_ownership_15candidate_limit@PAGEOFF
    ldr x26, [x14]
L18_24:
    sub x24, x29, #328
    movz x10, #2048, lsl #48
    cmp x26, x10
    b.ls L18_26
L18_25:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    add x26, x14, #8
    str x15, [x26]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L18_27
L18_26:
    lsl x27, x26, #3
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L18_28
    b L18_29
L18_29:
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L18_28:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #352
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #352
    add x28, x25, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w19, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w19, w19, w28
    cbnz w19, L18_30
    b L18_31
L18_30:
    add x14, x24, #16
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
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L18_27
L18_31:
    ldr x14, [x25]
    str x14, [x24]
    add x14, x24, #8
    str x26, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L18_27:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L18_33
    b L18_32
L18_33:
    add x14, x24, #16
    sub x15, x29, #280
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L18_20
L18_32:
    sub x14, x29, #256
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L18_21
L18_20:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L18_21:
    sub x14, x29, #256
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    mov x9, #0
    mov x19, x9
L18_34:
    ldr x24, [x20]
    cmp x19, x24
    b.hs L18_36
L18_35:
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x19, #3
    add x25, x14, x24
    ldr x26, [x22]
    ldr x27, [x23]
    cmp x19, x27
    b.lo 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x24, x26
    ldr x24, [x24]
    str x24, [x25]
    add x24, x19, #1
    mov x19, x24
    b L18_34
L18_36:
    ldr x14, [x23]
    mov x10, #0
    cmp x14, x10
    b.ls L18_38
L18_37:
    sub x15, x29, #384
    ldr x19, [x22]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x19, [x15]
    add x19, x15, #8
    str x24, [x19]
    ldr x9, [sp, #0]
    ldr x19, [x9]
    ldr x9, [sp, #0]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L18_41
    b L18_40
L18_41:
    add x14, x24, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L18_40:
    b L18_39
L18_38:
L18_39:
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L18_19
L18_18:
L18_19:
    ldr x14, [x20]
    ldr x15, [x22]
    ldr x19, [x23]
    cmp x14, x19
    b.lo 1f
    adrp x0, l_text_55@PAGE
    add x0, x0, l_text_55@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x15, x14
    ldr x9, [sp, #8]
    str x9, [x14]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
L18_42:
    adrp x15, _lb_ownership_15candidate_limit@PAGE
    add x15, x15, _lb_ownership_15candidate_limit@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
    cset w15, hs
    cbnz w15, L18_10
    b L18_43
L18_43:
    mov w14, w15
    b L18_11
L18_10:
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L18_11:
    and w15, w14, #255
    cbnz w15, L18_7
    b L18_8
L18_7:
    bl _lb_ownership_collect
    b L18_9
L18_8:
L18_9:
    b L18_6
L18_5:
L18_6:
    b L18_3
L18_2:
L18_3:
    ldr x19, [sp, #376]
    ldr x20, [sp, #368]
    ldr x21, [sp, #360]
    ldr x22, [sp, #352]
    ldr x23, [sp, #344]
    ldr x24, [sp, #336]
    ldr x25, [sp, #328]
    ldr x26, [sp, #320]
    ldr x27, [sp, #312]
    ldr x28, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15visit_mark_gray
_lb_ownership_15visit_mark_gray:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
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
    b L19_6
L19_5:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L19_6:
    cbnz w14, L19_1
    b L19_2
L19_1:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_4:
    b L19_3
L19_2:
L19_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    mov x0, x19
    bl _lb_ownership_9mark_gray
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_9mark_gray
_lb_ownership_9mark_gray:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    sub x14, x29, #64
    ldr x14, [x14]
    sub x10, x29, #80
    str x14, [x10]
    add x15, x14, #8
    ldrb w19, [x15]
    adrp x20, _lb_ownership_10color_mask@PAGE
    add x20, x20, _lb_ownership_10color_mask@PAGEOFF
    ldrb w20, [x20]
    and w19, w19, w20
    and w19, w19, #255
    sub x10, x29, #88
    str w19, [x10]
    b L20_5
L20_4:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_5:
    adrp x21, _lb_ownership_gray@PAGE
    add x21, x21, _lb_ownership_gray@PAGEOFF
    ldrb w21, [x21]
    cmp w21, w19
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    b.ne L20_2
L20_1:
    sub x10, x29, #104
    str x14, [x10]
    sub x10, x29, #120
    str w21, [x10]
    ldrb w19, [x15]
    movn x10, #0
    eor w22, w20, w10
    and w22, w22, #255
    and w19, w19, w22
    sub x22, x29, #120
    ldrb w22, [x22]
    orr w19, w19, w22
    strb w19, [x15]
L20_6:
    add x15, x14, #16
    ldr x15, [x15]
    add x15, x15, #40
    ldr x15, [x15]
    adrp x19, _lb_ownership_15visit_mark_gray@GOTPAGE
    ldr x19, [x19, _lb_ownership_15visit_mark_gray@GOTPAGEOFF]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    mov x2, x14
    ldr x17, [sp], #16
    blr x17
    b L20_3
L20_2:
L20_3:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10visit_scan
_lb_ownership_10visit_scan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
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
    b L21_6
L21_5:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L21_6:
    cbnz w14, L21_1
    b L21_2
L21_1:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_4:
    b L21_3
L21_2:
L21_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    mov x0, x19
    bl _lb_ownership_scan
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_16visit_scan_black
_lb_ownership_16visit_scan_black:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #80
    str x19, [x10]
    sub x10, x29, #96
    str w14, [x10]
    add x20, x19, #8
    ldrb w14, [x20]
    sub x15, x29, #96
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #104
    str w14, [x10]
    b L22_9
L22_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L22_9:
    cbnz w14, L22_1
    b L22_2
L22_1:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_4:
    b L22_3
L22_2:
L22_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    sub x10, x29, #120
    str x19, [x10]
    ldrb w14, [x20]
    adrp x15, _lb_ownership_10color_mask@PAGE
    add x15, x15, _lb_ownership_10color_mask@PAGEOFF
    ldrb w15, [x15]
    and w14, w14, w15
    and w14, w14, #255
    sub x10, x29, #128
    str w14, [x10]
    b L22_11
L22_10:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L22_11:
    adrp x15, _lb_ownership_black@PAGE
    add x15, x15, _lb_ownership_black@PAGEOFF
    ldrb w15, [x15]
    cmp w15, w14
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L22_6
L22_5:
    mov x0, x19
    bl _lb_ownership_10scan_black
    b L22_7
L22_6:
L22_7:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_scan
_lb_ownership_scan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x10, x29, #72
    str x14, [x10]
    add x15, x14, #8
    ldrb w19, [x15]
    adrp x20, _lb_ownership_10color_mask@PAGE
    add x20, x20, _lb_ownership_10color_mask@PAGEOFF
    ldrb w20, [x20]
    and w19, w19, w20
    and w19, w19, #255
    sub x10, x29, #80
    str w19, [x10]
    b L23_8
L23_7:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L23_8:
    adrp x21, _lb_ownership_gray@PAGE
    add x21, x21, _lb_ownership_gray@PAGEOFF
    ldrb w21, [x21]
    cmp w21, w19
    b.ne L23_2
L23_1:
    ldr w19, [x14]
    mov x10, #0
    cmp w19, w10
    b.ls L23_5
L23_4:
    mov x0, x14
    bl _lb_ownership_10scan_black
    b L23_6
L23_5:
    adrp x19, _lb_ownership_white@PAGE
    add x19, x19, _lb_ownership_white@PAGEOFF
    ldrb w19, [x19]
    sub x10, x29, #96
    str x14, [x10]
    sub x10, x29, #112
    str w19, [x10]
    ldrb w19, [x15]
    movn x10, #0
    eor w21, w20, w10
    and w21, w21, #255
    and w19, w19, w21
    sub x21, x29, #112
    ldrb w21, [x21]
    orr w19, w19, w21
    strb w19, [x15]
L23_9:
    add x15, x14, #16
    ldr x15, [x15]
    add x15, x15, #40
    ldr x15, [x15]
    adrp x19, _lb_ownership_10visit_scan@GOTPAGE
    ldr x19, [x19, _lb_ownership_10visit_scan@GOTPAGEOFF]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    mov x2, x14
    ldr x17, [sp], #16
    blr x17
L23_6:
    b L23_3
L23_2:
L23_3:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10scan_black
_lb_ownership_10scan_black:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    adrp x15, _lb_ownership_black@PAGE
    add x15, x15, _lb_ownership_black@PAGEOFF
    ldrb w15, [x15]
    sub x10, x29, #64
    str x14, [x10]
    sub x10, x29, #80
    str w15, [x10]
    add x15, x14, #8
    ldrb w19, [x15]
    adrp x20, _lb_ownership_10color_mask@PAGE
    add x20, x20, _lb_ownership_10color_mask@PAGEOFF
    ldrb w20, [x20]
    movn x10, #0
    eor w20, w20, w10
    and w20, w20, #255
    and w19, w19, w20
    sub x20, x29, #80
    ldrb w20, [x20]
    orr w19, w19, w20
    strb w19, [x15]
L24_1:
    add x15, x14, #16
    ldr x15, [x15]
    add x15, x15, #40
    ldr x15, [x15]
    adrp x19, _lb_ownership_16visit_scan_black@GOTPAGE
    ldr x19, [x19, _lb_ownership_16visit_scan_black@GOTPAGEOFF]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    mov x2, x14
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_12visit_gather
_lb_ownership_12visit_gather:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
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
    b L25_6
L25_5:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L25_6:
    cbnz w14, L25_1
    b L25_2
L25_1:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_4:
    b L25_3
L25_2:
L25_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    mov x0, x19
    bl _lb_ownership_gather
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_gather
_lb_ownership_gather:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    str x19, [sp, #344]
    str x20, [sp, #336]
    str x21, [sp, #328]
    str x22, [sp, #320]
    str x23, [sp, #312]
    str x24, [sp, #304]
    str x25, [sp, #296]
    str x26, [sp, #288]
    str x27, [sp, #280]
    str x28, [sp, #272]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x9, [x14]
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    sub x10, x29, #128
    str x9, [x10]
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrb w15, [x14]
    adrp x20, _lb_ownership_10color_mask@PAGE
    add x20, x20, _lb_ownership_10color_mask@PAGEOFF
    ldrb w20, [x20]
    and w15, w15, w20
    and w15, w15, #255
    sub x10, x29, #136
    str w15, [x10]
    b L26_7
L26_6:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L26_7:
    adrp x20, _lb_ownership_white@PAGE
    add x20, x20, _lb_ownership_white@PAGEOFF
    ldrb w20, [x20]
    cmp w20, w15
    cset w20, eq
    cbnz w20, L26_4
    b L26_36
L26_36:
    mov w15, w20
    b L26_5
L26_4:
    adrp x15, _lb_ownership_collecting@PAGE
    add x15, x15, _lb_ownership_collecting@PAGEOFF
    ldrb w15, [x15]
    ldr x9, [sp, #8]
    sub x10, x29, #152
    str x9, [x10]
    sub x10, x29, #168
    str w15, [x10]
    ldrb w15, [x14]
    sub x20, x29, #168
    ldrb w20, [x20]
    and w15, w15, w20
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #176
    str w15, [x10]
    b L26_9
L26_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L26_9:
    mov x10, #0
    cmp w15, w10
    cset w20, eq
    mov w15, w20
L26_5:
    and w20, w15, #255
    cbnz w20, L26_1
    b L26_2
L26_1:
    ldrb w15, [x14]
    adrp x20, _lb_ownership_collecting@PAGE
    add x20, x20, _lb_ownership_collecting@PAGEOFF
    ldrb w20, [x20]
    orr w15, w15, w20
    strb w15, [x14]
    ldr x9, [sp, #8]
    sub x10, x29, #192
    str x9, [x10]
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    ldr x15, [x20]
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    add x22, x21, #8
    ldr x23, [x22]
    cmp x15, x23
    b.ne L26_11
L26_10:
    sub x24, x29, #208
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #0]
    mov x10, #0
    cmp x23, x10
    b.ls L26_16
L26_15:
    mov x9, x23
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x26, x14
    b L26_17
L26_16:
    movz x9, #256
    mov x26, x9
L26_17:
    sub x23, x29, #296
    movz x10, #2048, lsl #48
    cmp x26, x10
    b.ls L26_19
L26_18:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    add x26, x14, #8
    str x15, [x26]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L26_20
L26_19:
    lsl x27, x26, #3
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L26_21
    b L26_22
L26_22:
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L26_21:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #320
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #320
    add x28, x25, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w19, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w19, w19, w28
    cbnz w19, L26_23
    b L26_24
L26_23:
    add x14, x23, #16
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
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L26_20
L26_24:
    ldr x14, [x25]
    str x14, [x23]
    add x14, x23, #8
    str x26, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L26_20:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L26_26
    b L26_25
L26_26:
    add x14, x23, #16
    sub x15, x29, #248
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L26_13
L26_25:
    sub x14, x29, #224
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L26_14
L26_13:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L26_14:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    mov x9, #0
    mov x19, x9
L26_27:
    ldr x23, [x20]
    cmp x19, x23
    b.hs L26_29
L26_28:
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x23, x19, #3
    add x25, x14, x23
    ldr x26, [x21]
    ldr x27, [x22]
    cmp x19, x27
    b.lo 1f
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x23, x23, x26
    ldr x23, [x23]
    str x23, [x25]
    add x23, x19, #1
    mov x19, x23
    b L26_27
L26_29:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L26_31
L26_30:
    sub x15, x29, #352
    ldr x19, [x21]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x19, [x15]
    add x19, x15, #8
    str x23, [x19]
    ldr x9, [sp, #0]
    ldr x19, [x9]
    ldr x9, [sp, #0]
    add x23, x9, #8
    ldr x23, [x23]
    cbnz x23, L26_34
    b L26_33
L26_34:
    add x14, x23, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_33:
    b L26_32
L26_31:
L26_32:
    mov x10, x24
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L26_12
L26_11:
L26_12:
    ldr x14, [x20]
    ldr x15, [x21]
    ldr x19, [x22]
    cmp x14, x19
    b.lo 1f
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x15, x14
    ldr x9, [sp, #8]
    str x9, [x14]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
L26_35:
    ldr x9, [sp, #8]
    add x14, x9, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_12visit_gather@GOTPAGE
    ldr x15, [x15, _lb_ownership_12visit_gather@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    ldr x0, [sp, #24]
    mov x1, x15
    ldr x2, [sp, #24]
    ldr x17, [sp], #16
    blr x17
    b L26_3
L26_2:
L26_3:
    ldr x19, [sp, #344]
    ldr x20, [sp, #336]
    ldr x21, [sp, #328]
    ldr x22, [sp, #320]
    ldr x23, [sp, #312]
    ldr x24, [sp, #304]
    ldr x25, [sp, #296]
    ldr x26, [sp, #288]
    ldr x27, [sp, #280]
    ldr x28, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13visit_restore
_lb_ownership_13visit_restore:
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
    sub x14, x29, #56
    ldr x19, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #88
    str x19, [x10]
    sub x10, x29, #104
    str w14, [x10]
    add x20, x19, #8
    ldrb w14, [x20]
    sub x21, x29, #104
    ldrb w15, [x21]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #112
    str w14, [x10]
    b L27_9
L27_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L27_9:
    cbnz w14, L27_1
    b L27_2
L27_1:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_4:
    b L27_3
L27_2:
L27_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_collecting@PAGE
    add x14, x14, _lb_ownership_collecting@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #88
    str x19, [x10]
    sub x10, x29, #104
    str w14, [x10]
    ldrb w14, [x20]
    ldrb w15, [x21]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #120
    str w14, [x10]
    b L27_11
L27_10:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L27_11:
    cbnz w14, L27_5
    b L27_6
L27_5:
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    b L27_7
L27_6:
L27_7:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_collect
_lb_ownership_collect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    str x23, [sp, #136]
    str x24, [sp, #128]
    str x25, [sp, #120]
    str x26, [sp, #112]
    str x27, [sp, #104]
    str x28, [sp, #96]
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #8]
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L28_1
    b L28_2
L28_1:
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_4:
    b L28_3
L28_2:
L28_3:
    movz x9, #1
    ldr x10, [sp, #8]
    strb w9, [x10]
    adrp x23, _lb_ownership_10color_mask@PAGE
    add x23, x23, _lb_ownership_10color_mask@PAGEOFF
    adrp x20, _lb_ownership_purple@PAGE
    add x20, x20, _lb_ownership_purple@PAGEOFF
    adrp x21, _lb_ownership_dead@PAGE
    add x21, x21, _lb_ownership_dead@PAGEOFF
    sub x24, x29, #168
    adrp x9, _lb_ownership_buffered@PAGE
    add x9, x9, _lb_ownership_buffered@PAGEOFF
    str x9, [sp, #0]
    mov x9, #0
    mov x25, x9
    mov x9, #0
    mov x26, x9
L28_5:
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x27, x0
    ldr x14, [x27]
    cmp x26, x14
    b.hs L28_7
L28_6:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x26, x14
    b.lo 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x27, x26, #3
    add x27, x15, x27
    ldr x27, [x27]
    sub x10, x29, #128
    str x27, [x10]
    add x28, x27, #8
    ldrb w19, [x28]
    ldrb w22, [x23]
    and w19, w19, w22
    and w19, w19, #255
    sub x10, x29, #136
    str w19, [x10]
    b L28_47
L28_46:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L28_47:
    ldrb w22, [x20]
    cmp w22, w19
    cset w22, eq
    cbnz w22, L28_11
    b L28_50
L28_50:
    mov w19, w22
    b L28_12
L28_11:
    ldr w19, [x27]
    mov x10, #0
    cmp w19, w10
    cset w19, hi
L28_12:
    and w22, w19, #255
    cbnz w22, L28_13
    b L28_51
L28_51:
    mov w19, w22
    b L28_14
L28_13:
    ldrb w19, [x21]
    sub x10, x29, #152
    str x27, [x10]
    sub x10, x29, #168
    str w19, [x10]
    ldrb w19, [x28]
    ldrb w22, [x24]
    and w19, w19, w22
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    and w19, w19, #255
    sub x10, x29, #176
    str w19, [x10]
    b L28_49
L28_48:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L28_49:
    mov x10, #0
    cmp w19, w10
    cset w22, eq
    mov w19, w22
L28_14:
    and w22, w19, #255
    cbnz w22, L28_8
    b L28_9
L28_8:
    cmp x25, x14
    b.lo 1f
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x19, x25, #3
    add x19, x15, x19
    str x27, [x19]
    add x19, x25, #1
    b L28_10
L28_9:
    ldrb w14, [x28]
    ldr x9, [sp, #0]
    ldrb w15, [x9]
    movn x10, #0
    eor w15, w15, w10
    and w15, w15, #255
    and w14, w14, w15
    strb w14, [x28]
    mov x0, x27
    bl _lb_ownership_13release_shell
    mov x19, x25
L28_10:
    add x14, x26, #1
    mov x25, x19
    mov x26, x14
    b L28_5
L28_7:
    str x25, [x27]
    mov x9, #0
    mov x19, x9
L28_15:
    ldr x14, [x27]
    cmp x19, x14
    b.hs L28_17
L28_16:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x19, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_9mark_gray
    add x14, x19, #1
    mov x19, x14
    b L28_15
L28_17:
    mov x9, #0
    mov x19, x9
L28_18:
    ldr x14, [x27]
    cmp x19, x14
    b.hs L28_20
L28_19:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x19, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_scan
    add x14, x19, #1
    mov x19, x14
    b L28_18
L28_20:
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    mov x9, #0
    str x9, [x19]
    mov x9, #0
    mov x20, x9
L28_21:
    ldr x14, [x27]
    cmp x20, x14
    b.hs L28_23
L28_22:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x20, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_gather
    add x14, x20, #1
    mov x20, x14
    b L28_21
L28_23:
    adrp x14, _lb_ownership_buffered@PAGE
    add x14, x14, _lb_ownership_buffered@PAGEOFF
    mov x9, #0
    mov x15, x9
L28_24:
    ldr x20, [x27]
    cmp x15, x20
    b.hs L28_26
L28_25:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    ldr x21, [x20]
    add x20, x20, #8
    ldr x20, [x20]
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_77@PAGE
    add x0, x0, l_text_77@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x20, x15, #3
    add x20, x21, x20
    ldr x20, [x20]
    add x20, x20, #8
    ldrb w21, [x20]
    ldrb w22, [x14]
    movn x10, #0
    eor w22, w22, w10
    and w22, w22, #255
    and w21, w21, w22
    strb w21, [x20]
    add x20, x15, #1
    mov x15, x20
    b L28_24
L28_26:
    mov x9, #0
    str x9, [x27]
    adrp x20, _lb_ownership_13visit_restore@GOTPAGE
    ldr x20, [x20, _lb_ownership_13visit_restore@GOTPAGEOFF]
    mov x9, #0
    mov x21, x9
L28_27:
    ldr x14, [x19]
    cmp x21, x14
    b.hs L28_29
L28_28:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x21, #3
    add x14, x15, x14
    ldr x15, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x15, x15, #40
    ldr x15, [x15]
    ldr x22, [x14]
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x22
    mov x1, x20
    mov x2, x14
    ldr x17, [sp], #16
    blr x17
    add x14, x21, #1
    mov x21, x14
    b L28_27
L28_29:
    adrp x20, l_text_27@PAGE
    add x20, x20, l_text_27@PAGEOFF
    sub x21, x29, #112
    add x22, x21, #8
    adrp x23, l_text_84@PAGE
    add x23, x23, l_text_84@PAGEOFF
    mov x9, #0
    mov x24, x9
L28_30:
    ldr x14, [x19]
    cmp x24, x14
    b.hs L28_32
L28_31:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x24, x14
    b.lo 1f
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x24, #3
    add x14, x15, x14
    ldr x25, [x14]
    add x14, x25, #16
    ldr x14, [x14]
    add x14, x14, #24
    ldr x14, [x14]
    cbnz x14, L28_36
    b L28_34
L28_36:
L28_33:
    ldr w15, [x25]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_82@PAGE
    add x0, x0, l_text_82@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w26, w9
    str w26, [x25]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x25
    ldr x17, [sp], #16
    blr x17
    ldr w15, [x25]
    cmp w15, w26
    b.ls L28_38
L28_37:
    str x20, [x21]
    movz x9, #25
    str x9, [x22]
    mov x0, x23
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L28_39
L28_38:
L28_39:
    ldr w14, [x25]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_85@PAGE
    add x0, x0, l_text_85@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x25]
    b L28_35
L28_34:
L28_35:
    add x14, x24, #1
    mov x24, x14
    b L28_30
L28_32:
    mov x9, #0
    mov x20, x9
L28_40:
    ldr x14, [x19]
    cmp x20, x14
    b.hs L28_42
L28_41:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_87@PAGE
    add x0, x0, l_text_87@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x20, #3
    add x14, x15, x14
    ldr x15, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x15, x15, #32
    ldr x15, [x15]
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x17, [sp], #16
    blr x17
    add x14, x20, #1
    mov x20, x14
    b L28_40
L28_42:
    adrp x20, _lb_ownership_dead@PAGE
    add x20, x20, _lb_ownership_dead@PAGEOFF
    mov x9, #0
    mov x21, x9
L28_43:
    ldr x14, [x19]
    cmp x21, x14
    b.hs L28_45
L28_44:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_89@PAGE
    add x0, x0, l_text_89@PAGEOFF
    adrp x1, l_text_111@PAGE
    add x1, x1, l_text_111@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x21, #3
    add x14, x15, x14
    ldr x14, [x14]
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    ldr x22, [x15]
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_90@PAGE
    add x0, x0, l_text_90@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x22, [x15]
    mov x9, #0
    str w9, [x14]
    add x15, x14, #8
    ldrb w22, [x20]
    strb w22, [x15]
    mov x0, x14
    bl _lb_ownership_13release_shell
    add x14, x21, #1
    mov x21, x14
    b L28_43
L28_45:
    mov x9, #0
    str x9, [x19]
    mov x9, #0
    ldr x10, [sp, #8]
    strb w9, [x10]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_9weak_make
_lb_ownership_9weak_make:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #64
    str x0, [x16]
    sub x14, x29, #64
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #88
    str x19, [x10]
    sub x10, x29, #104
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #104
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #112
    str w14, [x10]
    b L29_6
L29_5:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L29_6:
    mov x10, #0
    cmp w14, w10
    b.ne L29_2
L29_1:
    add x14, x19, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_92@PAGE
    add x0, x0, l_text_92@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    b L29_3
L29_2:
L29_3:
    sub x20, x29, #72
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #48
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_4:
    adrp x0, l_text_93@PAGE
    add x0, x0, l_text_93@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_9weak_copy
_lb_ownership_9weak_copy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x19, x29, #56
    ldr x20, [x19]
    cbnz x20, L30_4
    b L30_2
L30_4:
L30_1:
    mov x0, x20
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #72
    str x20, [x10]
    sub x10, x29, #88
    str w14, [x10]
    add x14, x20, #8
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
    b L30_10
L30_9:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L30_10:
    mov x10, #0
    cmp w14, w10
    b.ne L30_6
L30_5:
    add x14, x20, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_94@PAGE
    add x0, x0, l_text_94@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    b L30_7
L30_6:
L30_7:
    b L30_3
L30_2:
L30_3:
    sub x20, x29, #40
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_8:
    adrp x0, l_text_95@PAGE
    add x0, x0, l_text_95@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_9weak_drop
_lb_ownership_9weak_drop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    cbnz x19, L31_4
    b L31_2
L31_4:
L31_1:
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #56
    str x19, [x10]
    sub x10, x29, #72
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #72
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #80
    str w14, [x10]
    b L31_9
L31_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L31_9:
    mov x10, #0
    cmp w14, w10
    b.ne L31_6
L31_5:
    add x14, x19, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_96@PAGE
    add x0, x0, l_text_96@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    mov x0, x19
    bl _lb_ownership_13release_shell
    b L31_7
L31_6:
L31_7:
    b L31_3
L31_2:
L31_3:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_8weak_get
_lb_ownership_8weak_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    cbnz x19, L32_4
    b L32_2
L32_4:
L32_1:
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_dead@PAGE
    add x14, x14, _lb_ownership_dead@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #64
    str x19, [x10]
    sub x10, x29, #80
    str w14, [x10]
    add x20, x19, #8
    ldrb w14, [x20]
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
    b L32_11
L32_10:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L32_11:
    mov x10, #0
    cmp w14, w10
    b.ne L32_6
L32_5:
    sub x10, x29, #104
    str x19, [x10]
    mov x0, x19
    bl _lb_ownership_11check_alive
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #120
    str x19, [x10]
    sub x10, x29, #136
    str w14, [x10]
    ldrb w14, [x20]
    sub x15, x29, #136
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #144
    str w14, [x10]
    b L32_18
L32_17:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L32_18:
    cbnz w14, L32_12
    b L32_13
L32_12:
    b L32_20
L32_15:
    b L32_14
L32_13:
L32_14:
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    adrp x14, _lb_ownership_black@PAGE
    add x14, x14, _lb_ownership_black@PAGEOFF
    ldrb w14, [x14]
    sub x10, x29, #160
    str x19, [x10]
    sub x10, x29, #176
    str w14, [x10]
    ldrb w14, [x20]
    adrp x15, _lb_ownership_10color_mask@PAGE
    add x15, x15, _lb_ownership_10color_mask@PAGEOFF
    ldrb w15, [x15]
    movn x10, #0
    eor w15, w15, w10
    and w15, w15, #255
    and w14, w14, w15
    sub x15, x29, #176
    ldrb w15, [x15]
    orr w14, w14, w15
    strb w14, [x20]
L32_19:
    b L32_20
L32_16:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L32_20:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_8:
    b L32_7
L32_6:
L32_7:
    b L32_3
L32_2:
L32_3:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_9:
    adrp x0, l_text_97@PAGE
    add x0, x0, l_text_97@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_10finish_run
_lb_ownership_10finish_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    str x19, [sp, #424]
    str x20, [sp, #416]
    str x21, [sp, #408]
    str x22, [sp, #400]
    str x23, [sp, #392]
    str x24, [sp, #384]
    sub x16, x29, #80
    str w0, [x16]
    mov x0, #0
    bl _lb_ownership_drain
    bl _lb_ownership_collect
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L33_2
L33_1:
    sub x20, x29, #176
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    sub x23, x29, #192
    sub x14, x29, #248
    str x20, [x14]
    add x14, x14, #8
    movz x9, #96
    str x9, [x14]
    sub x21, x29, #272
    str x20, [x21]
    add x20, x21, #8
    movz x9, #96
    str x9, [x20]
    add x22, x21, #16
    mov x9, #0
    str x9, [x22]
    adrp x14, l_text_98@PAGE
    add x14, x14, l_text_98@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #9
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x19]
    mov x0, x21
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_99@PAGE
    add x14, x14, l_text_99@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #23
    bl _lb_core_10format_put
    mov w14, w0
    sub x24, x29, #320
    ldr x14, [x22]
    ldr x15, [x20]
    cmp x14, x15
    b.ls L33_7
L33_6:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_100@PAGE
    add x15, x15, l_text_100@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L33_8
L33_7:
    mov x0, x21
    bl _lb_core_13format_finish
    sub x16, x29, #336
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #336
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L33_8:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L33_10
    b L33_9
L33_10:
    add x14, x24, #16
    sub x15, x29, #232
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L33_4
L33_9:
    sub x14, x29, #208
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L33_5
L33_4:
    adrp x14, l_text_101@PAGE
    add x14, x14, l_text_101@PAGEOFF
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    sub x14, x29, #208
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L33_5
L33_11:
L33_5:
    sub x14, x29, #208
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #368
    bl _lb_io_stderr
    sub x16, x29, #384
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #384
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #448
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #448
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L33_15
    b L33_14
L33_15:
    add x14, x15, #8
    sub x19, x29, #408
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L33_12
L33_14:
    b L33_13
L33_12:
    b L33_13
L33_16:
L33_13:
    movz x9, #3
    mov x0, x9
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_17:
    b L33_3
L33_2:
L33_3:
    bl _lb_ownership_15release_buffers
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #80
    ldrsw x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_18:
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_11finish_task
_lb_ownership_11finish_task:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    str x19, [sp, #408]
    str x20, [sp, #400]
    str x21, [sp, #392]
    str x22, [sp, #384]
    str x23, [sp, #376]
    str x24, [sp, #368]
    mov x0, #0
    bl _lb_ownership_drain
    bl _lb_ownership_collect
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L34_2
L34_1:
    sub x20, x29, #160
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    sub x23, x29, #176
    sub x14, x29, #232
    str x20, [x14]
    add x14, x14, #8
    movz x9, #96
    str x9, [x14]
    sub x21, x29, #256
    str x20, [x21]
    add x20, x21, #8
    movz x9, #96
    str x9, [x20]
    add x22, x21, #16
    mov x9, #0
    str x9, [x22]
    adrp x14, l_text_98@PAGE
    add x14, x14, l_text_98@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #9
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x19]
    mov x0, x21
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_103@PAGE
    add x14, x14, l_text_103@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #33
    bl _lb_core_10format_put
    mov w14, w0
    sub x24, x29, #304
    ldr x14, [x22]
    ldr x15, [x20]
    cmp x14, x15
    b.ls L34_7
L34_6:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_100@PAGE
    add x15, x15, l_text_100@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L34_8
L34_7:
    mov x0, x21
    bl _lb_core_13format_finish
    sub x16, x29, #320
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #320
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L34_8:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L34_10
    b L34_9
L34_10:
    add x14, x24, #16
    sub x15, x29, #216
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L34_4
L34_9:
    sub x14, x29, #192
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L34_5
L34_4:
    adrp x14, l_text_104@PAGE
    add x14, x14, l_text_104@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    sub x14, x29, #192
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L34_5
L34_11:
L34_5:
    sub x14, x29, #192
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #352
    bl _lb_io_stderr
    sub x16, x29, #368
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #368
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #432
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #432
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L34_15
    b L34_14
L34_15:
    add x14, x15, #8
    sub x19, x29, #392
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L34_12
L34_14:
    b L34_13
L34_12:
    b L34_13
L34_16:
L34_13:
    movz x0, #3
    bl _lb_core_exit
    b L34_3
L34_2:
L34_3:
    bl _lb_ownership_15release_buffers
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #408]
    ldr x20, [sp, #400]
    ldr x21, [sp, #392]
    ldr x22, [sp, #384]
    ldr x23, [sp, #376]
    ldr x24, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15release_buffers
_lb_ownership_15release_buffers:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    str x24, [sp, #80]
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L35_1
    b L35_22
L35_22:
    mov w15, w14
    b L35_2
L35_1:
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L35_2:
    and w14, w15, #255
    cbnz w14, L35_3
    b L35_23
L35_23:
    mov w15, w14
    b L35_4
L35_3:
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L35_4:
    and w14, w15, #255
    cbnz w14, L35_5
    b L35_6
L35_6:
    adrp x0, l_text_106@PAGE
    add x0, x0, l_text_106@PAGEOFF
    adrp x1, l_text_105@PAGE
    add x1, x1, l_text_105@PAGEOFF
    bl _lb_core_7trap_at
L35_5:
    adrp x0, _lb_ownership_pending@TLVPPAGE
    ldr x0, [x0, _lb_ownership_pending@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L35_8
L35_7:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x20, x29, #80
    ldr x21, [x19]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_107@PAGE
    add x0, x0, l_text_107@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x21, [x20]
    add x21, x20, #8
    str x22, [x21]
    ldr x21, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L35_11
    b L35_10
L35_11:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L35_10:
    b L35_9
L35_8:
L35_9:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    add x14, x20, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L35_13
L35_12:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x21, x29, #96
    ldr x22, [x20]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_108@PAGE
    add x0, x0, l_text_108@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x22, [x21]
    add x22, x21, #8
    str x23, [x22]
    ldr x22, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L35_16
    b L35_15
L35_16:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L35_15:
    b L35_14
L35_13:
L35_14:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    add x14, x21, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L35_18
L35_17:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x22, x29, #112
    ldr x23, [x21]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_109@PAGE
    add x0, x0, l_text_109@PAGEOFF
    adrp x1, l_text_110@PAGE
    add x1, x1, l_text_110@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x23, [x22]
    add x23, x22, #8
    str x24, [x23]
    ldr x23, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L35_21
    b L35_20
L35_21:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L35_20:
    b L35_19
L35_18:
L35_19:
    sub x22, x29, #128
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    sub x23, x29, #144
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x22
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_0init

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
    .asciz "src/std/ownership/pool.lucb:13:5"
l_text_38:
    .asciz "src/std/ownership/pool.lucb:17:9"
l_text_39:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_40:
    .asciz "src/std/ownership/pool.lucb:18:13"
l_text_41:
    .asciz "src/std/ownership/pool.lucb:21:13"
l_text_42:
    .asciz "src/std/ownership/pool.lucb:22:13"
l_text_43:
    .asciz "src/std/ownership/pool.lucb:24:13"
l_text_44:
    .asciz "src/std/ownership/pool.lucb:26:5"
l_text_45:
    .asciz "src/std/ownership/pool.lucb:27:5"
l_text_46:
    .asciz "src/std/ownership/pool.lucb:32:5"
l_text_47:
    .asciz "src/std/ownership/pool.lucb:49:9"
l_text_48:
    .asciz "src/std/ownership/pool.lucb:55:13"
l_text_49:
    .asciz "src/std/ownership/pool.lucb:56:9"
l_text_50:
    .asciz "src/std/ownership/cycles.lucb:13:9"
l_text_51:
    .asciz "src/std/ownership/cycles.lucb:14:13"
l_text_52:
    .asciz "src/std/ownership/cycles.lucb:17:13"
l_text_53:
    .asciz "src/std/ownership/cycles.lucb:18:13"
l_text_54:
    .asciz "src/std/ownership/cycles.lucb:20:13"
l_text_55:
    .asciz "src/std/ownership/cycles.lucb:22:5"
l_text_56:
    .asciz "src/std/ownership/cycles.lucb:23:5"
l_text_57:
    .asciz "src/std/ownership/cycles.lucb:27:9"
l_text_58:
    .asciz "src/std/ownership/cycles.lucb:28:13"
l_text_59:
    .asciz "src/std/ownership/cycles.lucb:31:13"
l_text_60:
    .asciz "src/std/ownership/cycles.lucb:32:13"
l_text_61:
    .asciz "src/std/ownership/cycles.lucb:34:13"
l_text_62:
    .asciz "src/std/ownership/cycles.lucb:36:5"
l_text_63:
    .asciz "src/std/ownership/cycles.lucb:37:5"
l_text_64:
    .asciz "src/std/ownership/cycles.lucb:52:5"
l_text_65:
    .asciz "src/std/ownership/cycles.lucb:70:5"
l_text_66:
    .asciz "src/std/ownership/cycles.lucb:104:9"
l_text_67:
    .asciz "src/std/ownership/cycles.lucb:115:9"
l_text_68:
    .asciz "src/std/ownership/cycles.lucb:117:13"
l_text_69:
    .asciz "src/std/ownership/cycles.lucb:118:13"
l_text_70:
    .asciz "src/std/ownership/cycles.lucb:122:9"
l_text_71:
    .asciz "src/std/ownership/cycles.lucb:126:9"
l_text_72:
    .asciz "src/std/ownership/cycles.lucb:127:9"
l_text_73:
    .asciz "src/std/ownership/cycles.lucb:130:9"
l_text_74:
    .asciz "src/std/ownership/cycles.lucb:131:9"
l_text_75:
    .asciz "src/std/ownership/cycles.lucb:135:9"
l_text_76:
    .asciz "src/std/ownership/cycles.lucb:136:9"
l_text_77:
    .asciz "src/std/ownership/cycles.lucb:139:9"
l_text_78:
    .asciz "src/std/ownership/cycles.lucb:140:9"
l_text_79:
    .asciz "src/std/ownership/cycles.lucb:146:9"
l_text_80:
    .asciz "src/std/ownership/cycles.lucb:147:9"
l_text_81:
    .asciz "src/std/ownership/cycles.lucb:150:9"
l_text_82:
    .asciz "src/std/ownership/cycles.lucb:153:13"
l_text_83:
    .asciz "src/std/ownership/cycles.lucb:155:13"
l_text_84:
    .asciz "src/std/ownership/cycles.lucb:156:17"
l_text_85:
    .asciz "src/std/ownership/cycles.lucb:159:13"
l_text_86:
    .asciz "src/std/ownership/cycles.lucb:160:9"
l_text_87:
    .asciz "src/std/ownership/cycles.lucb:163:9"
l_text_88:
    .asciz "src/std/ownership/cycles.lucb:164:9"
l_text_89:
    .asciz "src/std/ownership/cycles.lucb:167:9"
l_text_90:
    .asciz "src/std/ownership/cycles.lucb:168:9"
l_text_91:
    .asciz "src/std/ownership/cycles.lucb:172:9"
l_text_92:
    .asciz "src/std/ownership/weak.lucb:9:9"
l_text_93:
    .asciz "src/std/ownership/weak.lucb:10:5"
l_text_94:
    .asciz "src/std/ownership/weak.lucb:16:13"
l_text_95:
    .asciz "src/std/ownership/weak.lucb:17:5"
l_text_96:
    .asciz "src/std/ownership/weak.lucb:23:13"
l_text_97:
    .asciz "src/std/ownership/weak.lucb:32:5"
l_text_98:
    .asciz "runtime: "
l_text_99:
    .asciz " objects alive at exit\n"
l_text_100:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
l_text_101:
    .asciz "runtime: objects alive at exit\n"
l_text_102:
    .asciz "src/std/ownership/lifecycle.lucb:17:5"
l_text_103:
    .asciz " objects alive when a task ended\n"
l_text_104:
    .asciz "runtime: objects alive when a task ended\n"
l_text_105:
    .asciz "assert failed: pending_count == 0 and root_count == 0 and white_count == 0"
l_text_106:
    .asciz "src/std/ownership/lifecycle.lucb:39:5"
l_text_107:
    .asciz "src/std/ownership/lifecycle.lucb:41:9"
l_text_108:
    .asciz "src/std/ownership/lifecycle.lucb:43:9"
l_text_109:
    .asciz "src/std/ownership/lifecycle.lucb:45:9"
l_text_110:
    .asciz "integer overflow"
l_text_111:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .globl _lb_ownership_black
    .zerofill __DATA,__bss,_lb_ownership_black,1,0
    .globl _lb_ownership_gray
    .zerofill __DATA,__bss,_lb_ownership_gray,1,0
    .globl _lb_ownership_white
    .zerofill __DATA,__bss,_lb_ownership_white,1,0
    .globl _lb_ownership_purple
    .zerofill __DATA,__bss,_lb_ownership_purple,1,0
    .globl _lb_ownership_10color_mask
    .zerofill __DATA,__bss,_lb_ownership_10color_mask,1,0
    .globl _lb_ownership_buffered
    .zerofill __DATA,__bss,_lb_ownership_buffered,1,0
    .globl _lb_ownership_dead
    .zerofill __DATA,__bss,_lb_ownership_dead,1,0
    .globl _lb_ownership_collecting
    .zerofill __DATA,__bss,_lb_ownership_collecting,1,0
    .globl _lb_ownership_immortal
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

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_pending$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_pending
_lb_ownership_pending:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_pending$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_13pending_count$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_13pending_count
_lb_ownership_13pending_count:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_13pending_count$tlv$init
    .globl _lb_ownership_15candidate_limit
    .zerofill __DATA,__bss,_lb_ownership_15candidate_limit,8,3

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_roots$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_roots
_lb_ownership_roots:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_roots$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_10root_count$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_10root_count
_lb_ownership_10root_count:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_10root_count$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_whites$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_whites
_lb_ownership_whites:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_whites$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_11white_count$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_11white_count
_lb_ownership_11white_count:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_11white_count$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_17collector_running$tlv$init:
    .space 1
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_17collector_running
_lb_ownership_17collector_running:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_17collector_running$tlv$init

