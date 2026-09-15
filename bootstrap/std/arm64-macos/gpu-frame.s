    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_frame_0init
_lb_gpu_frame_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    sub x19, x29, #64
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #15
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_FrameState_close@GOTPAGE
    ldr x14, [x14, _lb_gpu_FrameState_close@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_gpu_16frame_state_type@PAGE
    add x14, x14, _lb_gpu_16frame_state_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #9
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_Frame_close@GOTPAGE
    ldr x14, [x14, _lb_gpu_Frame_close@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    adrp x14, _lb_gpu_Frame_trace@GOTPAGE
    ldr x14, [x14, _lb_gpu_Frame_trace@GOTPAGEOFF]
    add x15, x19, #24
    str x14, [x15]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_gpu_10frame_type@PAGE
    add x14, x14, _lb_gpu_10frame_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x19, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_FrameState_check
_lb_gpu_FrameState_check:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #144
    ldrb w14, [x14]
    cbnz w14, L1_1
    b L1_2
L1_1:
    sub x19, x29, #80
    adrp x14, _lb_gpu_14frame_finished@PAGE
    add x14, x14, _lb_gpu_14frame_finished@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #104
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    add x14, x15, #112
    ldr x14, [x14]
    cbnz x14, L1_8
    b L1_6
L1_8:
L1_5:
    add x19, x15, #120
    ldr x19, [x19]
    cbnz x19, L1_9
    b L1_10
L1_9:
    b L1_11
L1_10:
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L1_11:
    add x20, x15, #72
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x20
    mov x1, x9
    sub x8, x29, #152
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #152
    add x20, x21, #24
    ldrb w20, [x20]
    cbnz w20, L1_13
    b L1_12
L1_13:
    sub x19, x29, #80
    mov x10, x21
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
L1_12:
    b L1_7
L1_6:
L1_7:
    sub x14, x29, #80
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_FrameState_close
_lb_gpu_FrameState_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    add x14, x19, #144
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Canvas_destroy
    add x14, x19, #112
    ldr x15, [x14]
    cbnz x15, L2_4
    b L2_2
L2_4:
L2_1:
    mov x9, #0
    str x9, [x14]
    add x20, x19, #136
    ldr x20, [x20]
    cbnz x20, L2_5
    b L2_6
L2_5:
    b L2_7
L2_6:
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #56
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L2_7:
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    ldr x17, [sp], #16
    blr x17
    b L2_3
L2_2:
L2_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Frame_init
    .no_dead_strip _lb_gpu_Frame_init
_lb_gpu_Frame_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #816
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #784]
    str x20, [sp, #776]
    str x21, [sp, #768]
    str x22, [sp, #760]
    str x23, [sp, #752]
    str x24, [sp, #744]
    str x25, [sp, #736]
    str d8, [sp, #728]
    str d9, [sp, #720]
    str d10, [sp, #712]
    str d11, [sp, #704]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #192
    str x1, [x16]
    sub x0, x29, #192
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #152
    ldr x21, [x9]
    sub x19, x29, #192
    mov x10, x19
    sub x11, x29, #768
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x20, x29, #768
    ldr d8, [x20]
    mov x9, #0
    fmov d9, x9
    fcmp d8, d9
    cset w14, ge
    cbnz w14, L3_21
    b L3_54
L3_54:
    mov w15, w14
    b L3_22
L3_21:
    movz x9, #16592, lsl #48
    fmov d24, x9
    fcmp d8, d24
    cset w15, ls
L3_22:
    and w14, w15, #255
    cbnz w14, L3_23
    b L3_55
L3_55:
    mov w15, w14
    b L3_24
L3_23:
    add x14, x20, #8
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, ge
L3_24:
    and w14, w15, #255
    cbnz w14, L3_25
    b L3_56
L3_56:
    mov w15, w14
    b L3_26
L3_25:
    add x14, x20, #8
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L3_26:
    and w14, w15, #255
    cbnz w14, L3_27
    b L3_57
L3_57:
    mov w15, w14
    b L3_28
L3_27:
    add x14, x20, #16
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, ge
L3_28:
    and w14, w15, #255
    cbnz w14, L3_29
    b L3_58
L3_58:
    mov w15, w14
    b L3_30
L3_29:
    add x14, x20, #16
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L3_30:
    and w14, w15, #255
    cbnz w14, L3_31
    b L3_59
L3_59:
    mov w15, w14
    b L3_32
L3_31:
    add x14, x20, #24
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, ge
L3_32:
    and w14, w15, #255
    cbnz w14, L3_33
    b L3_60
L3_60:
    mov w15, w14
    b L3_34
L3_33:
    add x14, x20, #24
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L3_34:
    and w14, w15, #255
    cbnz w14, L3_35
    b L3_61
L3_61:
    mov w15, w14
    b L3_36
L3_35:
    add x14, x20, #32
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, gt
L3_36:
    and w14, w15, #255
    cbnz w14, L3_37
    b L3_62
L3_62:
    mov w15, w14
    b L3_38
L3_37:
    add x14, x20, #32
    ldr d24, [x14]
    movz x9, #16432, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L3_38:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L3_19
L3_18:
    sub x20, x29, #728
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x15, x29, #784
    str x14, [x15]
    add x14, x15, #8
    movz x9, #73
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L3_52
L3_39:
    b L3_20
L3_19:
L3_20:
    add x14, x20, #16
    ldr d10, [x14]
    fmov d16, d10
    fmov d0, d16
    bl _lb_math_floor
    fmov d24, d0
    fcmp d10, d24
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L3_63
    b L3_43
L3_63:
    mov w15, w14
    b L3_44
L3_43:
    add x14, x20, #24
    ldr d11, [x14]
    fmov d16, d11
    fmov d0, d16
    bl _lb_math_floor
    fmov d24, d0
    fcmp d11, d24
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L3_44:
    and w14, w15, #255
    cbnz w14, L3_40
    b L3_41
L3_40:
    sub x20, x29, #728
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #800
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L3_52
L3_45:
    b L3_42
L3_41:
L3_42:
    fcmp d8, d9
    cset w14, eq
    fcmp d9, d10
    cset w15, eq
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L3_64
    b L3_49
L3_64:
    mov w15, w14
    b L3_50
L3_49:
    add x14, x20, #8
    ldr d24, [x14]
    fcmp d9, d24
    cset w14, eq
    add x15, x20, #24
    ldr d24, [x15]
    fcmp d9, d24
    cset w15, eq
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L3_50:
    and w14, w15, #255
    cbnz w14, L3_46
    b L3_47
L3_46:
    sub x20, x29, #728
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    sub x15, x29, #816
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L3_52
L3_51:
    b L3_48
L3_47:
L3_48:
    sub x14, x29, #728
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L3_52:
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    sub x19, x29, #144
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x20, x29, #240
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #280
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L3_4
    b L3_5
L3_5:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L3_4:
    ldr x20, [x15]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #152
    movz x2, #8
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #304
    add x20, x23, #16
    ldrb w20, [x20]
    cbnz w20, L3_6
    b L3_7
L3_7:
    add x14, x22, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    b L3_8
L3_6:
    ldr x20, [x23]
    sub x24, x29, #456
    mov x0, x24
    mov x1, #0
    movz x2, #152
    bl _memset
    sub x25, x29, #528
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x10, x25
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    add x14, x24, #72
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    mov x0, x20
    mov x1, x24
    movz x2, #152
    bl _memcpy
    str x20, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
L3_8:
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L3_10
    b L3_9
L3_10:
    add x14, x22, #8
    sub x19, x29, #144
    mov x10, x14
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_11:
L3_9:
    ldr x19, [x22]
    sub x24, x29, #536
    adrp x20, _lb_gpu_16frame_state_type@PAGE
    add x20, x20, _lb_gpu_16frame_state_type@PAGEOFF
    sub x23, x29, #552
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x9, x20
    mov x1, x9
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #592
    bl _lb_interop_Reference_0g1_gpu_FrameState_adopt
    sub x15, x29, #592
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_13
    b L3_12
L3_13:
    add x14, x15, #8
    sub x19, x29, #144
    mov x10, x14
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_14:
L3_12:
    mov x10, x15
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x19, x29, #608
    mov x0, x24
    sub x8, x29, #656
    bl _lb_interop_Reference_0g1_gpu_FrameState_lease
    sub x20, x29, #656
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, L3_16
    b L3_15
L3_16:
    add x14, x20, #16
    sub x19, x29, #144
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x24]
    mov x0, x14
    bl _lb_ownership_release
L3_53:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_17:
L3_15:
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #672
    mov x10, x24
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x22, #8
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x22, x21, #16
    sub x23, x29, #696
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x14, x29, #144
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Frame_11state_value
    .no_dead_strip _lb_gpu_Frame_11state_value
_lb_gpu_Frame_11state_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L4_1
    b L4_2
L4_1:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L4_3
L4_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_14frame_finished@PAGE
    add x15, x15, _lb_gpu_14frame_finished@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
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
L4_5:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_size
    .no_dead_strip _lb_gpu_Frame_size
_lb_gpu_Frame_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    sub x19, x29, #128
    mov x0, x14
    sub x8, x29, #168
    bl _lb_gpu_Frame_11state_value
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x19
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x14, x0
    mov x0, x14
    sub x8, x29, #200
    bl _lb_gpu_FrameState_check
    sub x20, x29, #200
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L5_5
    b L5_4
L5_5:
    sub x19, x29, #112
    add x14, x19, #40
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_4:
    mov x0, x19
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x14, x0
    add x14, x14, #72
    sub x20, x29, #112
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_7:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_target
    .no_dead_strip _lb_gpu_Frame_target
_lb_gpu_Frame_target:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str x24, [sp, #392]
    str x25, [sp, #384]
    str x26, [sp, #376]
    sub x16, x29, #136
    str x0, [x16]
    sub x9, x29, #136
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #176
    bl _lb_gpu_Frame_11state_value
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    add x14, x15, #8
    sub x19, x29, #128
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    mov x0, x15
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x20, x0
    mov x0, x20
    sub x8, x29, #208
    bl _lb_gpu_FrameState_check
    sub x21, x29, #208
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L6_5
    b L6_4
L6_5:
    sub x19, x29, #128
    add x14, x19, #8
    mov x10, x21
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
L6_4:
    sub x21, x29, #224
    add x15, x19, #16
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L6_7
    b L6_8
L6_7:
    sub x19, x29, #240
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L6_9
L6_8:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_14frame_finished@PAGE
    add x15, x15, _lb_gpu_14frame_finished@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x20, x29, #256
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_10:
L6_9:
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #288
    sub x23, x29, #320
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x24, x20, #72
    ldr d24, [x24]
    add x14, x23, #16
    str d24, [x14]
    add x14, x24, #8
    ldr d24, [x14]
    add x14, x23, #24
    str d24, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x23, x29, #336
    sub x25, x29, #352
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    add x14, x24, #16
    ldr d24, [x14]
    adrp x26, l_text_14@PAGE
    add x26, x26, l_text_14@PAGEOFF
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x25, #8
    str w14, [x15]
    add x14, x24, #24
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x25, #12
    str w14, [x15]
    mov x10, x25
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #424
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str x20, [x24]
    add x14, x24, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #24
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #56
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x9, x24
    mov x0, x9
    mov x9, x14
    mov x1, x9
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #464
    bl _lb_interop_View_0g1_gpu_RenderTarget_make
    sub x15, x29, #464
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_12
    b L6_11
L6_12:
    add x14, x15, #8
    sub x19, x29, #128
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_13:
L6_11:
    sub x19, x29, #128
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_14:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_present
    .no_dead_strip _lb_gpu_Frame_present
_lb_gpu_Frame_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    str x23, [sp, #288]
    str x24, [sp, #280]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #144
    str d0, [x16, #0]
    sub x16, x29, #144
    str d1, [x16, #8]
    sub x16, x29, #144
    str d2, [x16, #16]
    sub x9, x29, #120
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #184
    bl _lb_gpu_Frame_11state_value
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    mov x0, x15
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x20, x0
    mov x0, x20
    sub x8, x29, #216
    bl _lb_gpu_FrameState_check
    sub x21, x29, #216
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L7_5
    b L7_4
L7_5:
    sub x20, x29, #112
    add x14, x20, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_6:
L7_4:
    sub x21, x29, #144
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #248
    bl _lb_gpu_11check_color
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L7_8
    b L7_7
L7_8:
    sub x20, x29, #112
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_9:
L7_7:
    add x14, x20, #112
    ldr x22, [x14]
    cbnz x22, L7_10
    b L7_11
L7_10:
    b L7_12
L7_11:
    sub x20, x29, #112
    add x14, x20, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    sub x21, x29, #264
    str x15, [x21]
    add x15, x21, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_13:
L7_12:
    add x14, x20, #128
    ldr x23, [x14]
    cbnz x23, L7_14
    b L7_15
L7_14:
    b L7_16
L7_15:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L7_16:
    add x15, x19, #16
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L7_17
    b L7_18
L7_17:
    sub x24, x29, #296
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L7_19
L7_18:
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L7_19:
    mov x0, x24
    bl _lb_interop_Lease_invalidate
    add x14, x20, #144
    movz x9, #1
    strb w9, [x14]
    mov x17, x23
    str x17, [sp, #-16]!
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x22
    mov x9, x20
    mov x1, x9
    sub x8, x29, #352
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_21
    b L7_20
L7_21:
    add x14, x15, #8
    sub x20, x29, #112
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_22:
L7_20:
    ldrb w14, [x15]
    sub x20, x29, #112
    strb w14, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_23:
    mov x0, x14
    bl _lb_gpu_Frame_close
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_close
    .no_dead_strip _lb_gpu_Frame_close
_lb_gpu_Frame_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    add x20, x19, #16
    add x14, x20, #16
    ldrb w14, [x14]
    cbnz w14, L8_4
    b L8_2
L8_4:
    sub x21, x29, #72
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L8_1:
    sub x22, x29, #96
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x0, x21
    bl _lb_interop_Lease_invalidate
    mov x0, x21
    bl _lb_interop_Lease_release
    b L8_3
L8_2:
L8_3:
    add x14, x19, #8
    ldrb w14, [x14]
    cbnz w14, L8_8
    b L8_6
L8_8:
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
L8_5:
    sub x21, x29, #120
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    bl _lb_interop_Reference_0g1_gpu_FrameState_close
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_release
L8_9:
    b L8_7
L8_6:
L8_7:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Frame_trace
    .no_dead_strip _lb_gpu_Frame_trace
_lb_gpu_Frame_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str x2, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    add x14, x19, #8
    ldrb w14, [x14]
    cbnz w14, L9_4
    b L9_2
L9_4:
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
L9_1:
    sub x14, x29, #72
    ldr x21, [x14]
    sub x14, x29, #88
    ldr x22, [x14]
    sub x10, x29, #128
    str x21, [x10]
    sub x10, x29, #144
    str x22, [x10]
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_12check_thread
    ldr x14, [x20]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    ldr x17, [sp], #16
    blr x17
L9_9:
    b L9_3
L9_2:
L9_3:
    add x15, x19, #16
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L9_8
    b L9_6
L9_8:
    sub x19, x29, #112
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L9_5:
    sub x14, x29, #72
    ldr x14, [x14]
    sub x15, x29, #88
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl _lb_interop_Lease_trace
    b L9_7
L9_6:
L9_7:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_RenderTarget_size
    .no_dead_strip _lb_gpu_RenderTarget_size
_lb_gpu_RenderTarget_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str d8, [sp, #168]
    str d9, [sp, #160]
    sub x16, x29, #144
    str x0, [x16]
    sub x9, x29, #144
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #176
    bl _lb_gpu_FrameState_check
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    sub x19, x29, #136
    add x14, x19, #40
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr d8, [sp, #168]
    ldr d9, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d9, d0
    sub x20, x29, #216
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    add x14, x19, #24
    add x15, x14, #16
    ldr d24, [x15]
    str d24, [x20]
    add x14, x14, #24
    ldr d25, [x14]
    add x14, x20, #8
    str d25, [x14]
    fmul d24, d8, d24
    add x14, x20, #16
    str d24, [x14]
    fmul d24, d9, d25
    add x14, x20, #24
    str d24, [x14]
    ldr x14, [x19]
    add x14, x14, #72
    add x14, x14, #32
    ldr d24, [x14]
    add x14, x20, #32
    str d24, [x14]
    sub x21, x29, #136
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x21, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr d8, [sp, #168]
    ldr d9, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_RenderTarget_region
    .no_dead_strip _lb_gpu_RenderTarget_region
_lb_gpu_RenderTarget_region:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str d8, [sp, #392]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #152
    str d0, [x16, #0]
    sub x16, x29, #152
    str d1, [x16, #8]
    sub x16, x29, #152
    str d2, [x16, #16]
    sub x16, x29, #152
    str d3, [x16, #24]
    sub x9, x29, #120
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #184
    bl _lb_gpu_FrameState_check
    sub x15, x29, #184
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L11_2
    b L11_1
L11_2:
    sub x19, x29, #112
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_3:
L11_1:
    sub x20, x29, #152
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #216
    bl _lb_gpu_12check_region
    sub x15, x29, #216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L11_5
    b L11_4
L11_5:
    sub x19, x29, #112
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_6:
L11_4:
    sub x21, x29, #248
    sub x22, x29, #280
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x19, #24
    ldr d24, [x14]
    ldr d25, [x20]
    fadd d24, d24, d25
    str d24, [x22]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x20, #8
    ldr d25, [x14]
    fadd d24, d24, d25
    add x14, x22, #8
    str d24, [x14]
    add x14, x20, #16
    ldr d24, [x14]
    add x14, x22, #16
    str d24, [x14]
    add x14, x20, #24
    ldr d24, [x14]
    add x14, x22, #24
    str d24, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #312
    bl _lb_gpu_12check_region
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L11_8
    b L11_7
L11_8:
    sub x19, x29, #112
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_9:
L11_7:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d24, d0
    sub x20, x29, #328
    add x14, x19, #56
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    fmov d16, d8
    fmov d4, d16
    fmov d16, d24
    fmov d5, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_gpu_14intersect_clip
    sub x16, x29, #344
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #344
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #416
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x14, [x19]
    str x14, [x22]
    add x23, x19, #8
    add x14, x22, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x22, #56
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x9, x22
    mov x0, x9
    mov x9, x14
    mov x1, x9
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #456
    bl _lb_interop_View_0g1_gpu_RenderTarget_make
    sub x15, x29, #456
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L11_11
    b L11_10
L11_11:
    add x14, x15, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_12:
L11_10:
    sub x19, x29, #112
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_13:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_RenderTarget_clipped
    .no_dead_strip _lb_gpu_RenderTarget_clipped
_lb_gpu_RenderTarget_clipped:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str x24, [sp, #392]
    str d8, [sp, #384]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    sub x16, x29, #160
    str d3, [x16, #24]
    sub x9, x29, #128
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #192
    bl _lb_gpu_FrameState_check
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_2
    b L12_1
L12_2:
    sub x19, x29, #120
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_3:
L12_1:
    sub x20, x29, #160
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #224
    bl _lb_gpu_12check_region
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_5
    b L12_4
L12_5:
    sub x19, x29, #120
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_6:
L12_4:
    sub x21, x29, #256
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x23, x19, #24
    ldr d24, [x23]
    ldr d25, [x20]
    fadd d24, d24, d25
    str d24, [x22]
    add x14, x23, #8
    ldr d24, [x14]
    add x14, x20, #8
    ldr d25, [x14]
    fadd d24, d24, d25
    add x14, x22, #8
    str d24, [x14]
    add x14, x20, #16
    ldr d24, [x14]
    add x14, x22, #16
    str d24, [x14]
    add x14, x20, #24
    ldr d24, [x14]
    add x14, x22, #24
    str d24, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #320
    bl _lb_gpu_12check_region
    sub x15, x29, #320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_8
    b L12_7
L12_8:
    sub x19, x29, #120
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_9:
L12_7:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d24, d0
    sub x20, x29, #336
    add x14, x19, #56
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    fmov d16, d8
    fmov d4, d16
    fmov d16, d24
    fmov d5, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_gpu_14intersect_clip
    sub x16, x29, #352
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #352
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #424
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x14, [x19]
    str x14, [x22]
    add x24, x19, #8
    add x14, x22, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x22, #56
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x9, x22
    mov x0, x9
    mov x9, x14
    mov x1, x9
    mov x9, x24
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #464
    bl _lb_interop_View_0g1_gpu_RenderTarget_make
    sub x15, x29, #464
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L12_11
    b L12_10
L12_11:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_12:
L12_10:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_13:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_RenderTarget_triangles
    .no_dead_strip _lb_gpu_RenderTarget_triangles
_lb_gpu_RenderTarget_triangles:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    str x24, [sp, #264]
    str x25, [sp, #256]
    str d8, [sp, #248]
    str d9, [sp, #240]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #168
    str w3, [x16]
    sub x9, x29, #136
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_gpu_FrameState_check
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
    sub x19, x29, #128
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr d8, [sp, #248]
    ldr d9, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
L13_1:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d9, d0
    sub x20, x29, #232
    sub x21, x29, #264
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x19, #24
    ldr d24, [x14]
    fmul d24, d8, d24
    str d24, [x21]
    add x15, x14, #8
    ldr d24, [x15]
    fmul d24, d9, d24
    add x15, x21, #8
    str d24, [x15]
    add x15, x14, #16
    ldr d24, [x15]
    fmul d24, d8, d24
    add x15, x21, #16
    str d24, [x15]
    add x14, x14, #24
    ldr d24, [x14]
    fmul d24, d9, d24
    add x14, x21, #24
    str d24, [x14]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x21, [x19]
    sub x22, x29, #152
    add x23, x19, #56
    sub x14, x29, #168
    ldrb w24, [x14]
    sub x25, x29, #304
    mov x10, x20
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x25, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x23
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, x24
    mov x9, x25
    mov x6, x9
    sub x8, x29, #336
    bl _lb_gpu_Canvas_triangles
    sub x15, x29, #336
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L13_5
    b L13_4
L13_5:
    sub x19, x29, #128
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr d8, [sp, #248]
    ldr d9, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_6:
L13_4:
    sub x14, x29, #128
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr d8, [sp, #248]
    ldr d9, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_RenderTarget_mask
    .no_dead_strip _lb_gpu_RenderTarget_mask
_lb_gpu_RenderTarget_mask:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #384]
    str x20, [sp, #376]
    str x21, [sp, #368]
    str x22, [sp, #360]
    str x23, [sp, #352]
    str x24, [sp, #344]
    str x25, [sp, #336]
    str x26, [sp, #328]
    str x27, [sp, #320]
    str d8, [sp, #312]
    str d9, [sp, #304]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str w3, [x16]
    sub x16, x29, #200
    str w4, [x16]
    sub x16, x29, #232
    str d0, [x16, #0]
    sub x16, x29, #232
    str d1, [x16, #8]
    sub x16, x29, #232
    str d2, [x16, #16]
    sub x16, x29, #232
    str d3, [x16, #24]
    sub x16, x29, #256
    str d4, [x16, #0]
    sub x16, x29, #256
    str d5, [x16, #8]
    sub x16, x29, #256
    str d6, [x16, #16]
    sub x9, x29, #152
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #288
    bl _lb_gpu_FrameState_check
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_2
    b L14_1
L14_2:
    sub x19, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_3:
L14_1:
    sub x20, x29, #232
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #320
    bl _lb_gpu_12check_region
    sub x15, x29, #320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_5
    b L14_4
L14_5:
    sub x19, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_6:
L14_4:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d9, d0
    sub x21, x29, #352
    sub x22, x29, #384
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x19, #24
    ldr d24, [x14]
    ldr d25, [x20]
    fadd d24, d24, d25
    fmul d24, d8, d24
    str d24, [x22]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x20, #8
    ldr d25, [x14]
    fadd d24, d24, d25
    fmul d24, d9, d24
    add x14, x22, #8
    str d24, [x14]
    add x14, x20, #16
    ldr d24, [x14]
    fmul d24, d8, d24
    add x14, x22, #16
    str d24, [x14]
    add x14, x20, #24
    ldr d24, [x14]
    fmul d24, d9, d24
    add x14, x22, #24
    str d24, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x19]
    sub x15, x29, #168
    sub x22, x29, #184
    ldr w22, [x22]
    sub x23, x29, #200
    ldr w23, [x23]
    sub x24, x29, #256
    add x25, x19, #56
    add x26, x14, #72
    add x27, x26, #16
    ldr d24, [x27]
    add x26, x26, #24
    ldr d25, [x26]
    movz x16, #16
    sub sp, sp, x16
    fmov d16, d25
    str d16, [sp, #0]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x9, x24
    ldr d4, [x9, #0]
    ldr d5, [x9, #8]
    ldr d6, [x9, #16]
    fmov d16, d24
    fmov d7, d16
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x22
    mov x4, x23
    mov x9, x25
    ldr x5, [x9]
    ldr x6, [x9, #8]
    sub x8, x29, #416
    bl _lb_gpu_11canvas_mask
    movz x16, #16
    add sp, sp, x16
    sub x15, x29, #416
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_8
    b L14_7
L14_8:
    sub x19, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_9:
L14_7:
    sub x14, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_11frame_scale
_lb_gpu_11frame_scale:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #48
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, gt
    cbnz w14, L15_1
    b L15_2
L15_1:
    sub x14, x29, #32
    ldr d25, [x14]
    fdiv d25, d25, d24
    b L15_3
L15_2:
L15_3:
    fmov d16, d25
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_4:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_12check_region
_lb_gpu_12check_region:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x16, x29, #96
    str d3, [x16, #24]
    sub x14, x29, #96
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fneg d26, d25
    fcmp d24, d26
    cset w15, ge
    cbnz w15, L16_4
    b L16_19
L16_19:
    mov w19, w15
    b L16_5
L16_4:
    fcmp d24, d25
    cset w19, ls
L16_5:
    and w15, w19, #255
    cbnz w15, L16_6
    b L16_20
L16_20:
    mov w19, w15
    b L16_7
L16_6:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d26
    cset w19, ge
L16_7:
    and w15, w19, #255
    cbnz w15, L16_8
    b L16_21
L16_21:
    mov w19, w15
    b L16_9
L16_8:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ls
L16_9:
    and w15, w19, #255
    cbnz w15, L16_10
    b L16_22
L16_22:
    mov w19, w15
    b L16_11
L16_10:
    add x15, x14, #16
    ldr d24, [x15]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w19, ge
L16_11:
    and w15, w19, #255
    cbnz w15, L16_12
    b L16_23
L16_23:
    mov w19, w15
    b L16_13
L16_12:
    add x15, x14, #16
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ls
L16_13:
    and w15, w19, #255
    cbnz w15, L16_14
    b L16_24
L16_24:
    mov w19, w15
    b L16_15
L16_14:
    add x15, x14, #24
    ldr d24, [x15]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w19, ge
L16_15:
    and w15, w19, #255
    cbnz w15, L16_16
    b L16_25
L16_25:
    mov w14, w15
    b L16_17
L16_16:
    add x15, x14, #24
    ldr d24, [x15]
    fcmp d24, d25
    cset w15, ls
    mov w14, w15
L16_17:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L16_2
L16_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_18:
    b L16_3
L16_2:
L16_3:
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_14intersect_clip
_lb_gpu_14intersect_clip:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str d8, [sp, #184]
    str d9, [sp, #176]
    str d10, [sp, #168]
    str d11, [sp, #160]
    str d12, [sp, #152]
    str d13, [sp, #144]
    str d14, [sp, #136]
    str d15, [sp, #128]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    sub x16, x29, #160
    str d3, [x16, #24]
    sub x16, x29, #176
    str d4, [x16]
    sub x16, x29, #192
    str d5, [x16]
    sub x19, x29, #128
    ldr w14, [x19]
    mov w14, w14
    ucvtf d8, x14
    sub x20, x29, #160
    ldr d9, [x20]
    sub x14, x29, #176
    ldr d10, [x14]
    fmul d24, d9, d10
    fmov d16, d8
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    bl _lb_math_max
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_floor
    fmov d11, d0
    add x14, x19, #4
    ldr w14, [x14]
    mov w14, w14
    ucvtf d12, x14
    add x14, x20, #8
    ldr d13, [x14]
    sub x14, x29, #192
    ldr d14, [x14]
    fmul d24, d13, d14
    fmov d16, d12
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    bl _lb_math_max
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_floor
    fmov d15, d0
    add x14, x19, #8
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    fadd d24, d8, d24
    add x14, x20, #16
    ldr d25, [x14]
    fadd d25, d9, d25
    fmul d25, d10, d25
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_math_min
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_ceil
    fmov d8, d0
    add x14, x19, #12
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    fadd d24, d12, d24
    add x14, x20, #24
    ldr d25, [x14]
    fadd d25, d13, d25
    fmul d25, d14, d25
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_math_min
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_ceil
    fmov d9, d0
    fcmp d8, d11
    cset w14, ls
    cbnz w14, L17_8
    b L17_4
L17_8:
    mov w15, w14
    b L17_5
L17_4:
    fcmp d9, d15
    cset w15, ls
L17_5:
    and w14, w15, #255
    cbnz w14, L17_1
    b L17_2
L17_1:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr d8, [sp, #184]
    ldr d9, [sp, #176]
    ldr d10, [sp, #168]
    ldr d11, [sp, #160]
    ldr d12, [sp, #152]
    ldr d13, [sp, #144]
    ldr d14, [sp, #136]
    ldr d15, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_6:
    b L17_3
L17_2:
L17_3:
    sub x19, x29, #224
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    adrp x20, l_text_30@PAGE
    add x20, x20, l_text_30@PAGEOFF
    fmov d16, d11
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    str w14, [x19]
    fmov d16, d15
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x19, #4
    str w14, [x15]
    fsub d24, d8, d11
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x19, #8
    str w14, [x15]
    fsub d24, d9, d15
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x19, #12
    str w14, [x15]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr d8, [sp, #184]
    ldr d9, [sp, #176]
    ldr d10, [sp, #168]
    ldr d11, [sp, #160]
    ldr d12, [sp, #152]
    ldr d13, [sp, #144]
    ldr d14, [sp, #136]
    ldr d15, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_7:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_adopt
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_adopt
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_adopt
_lb_interop_Reference_0g1_gpu_FrameState_adopt:
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
    str x25, [sp, #288]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #192
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x19, x29, #208
    sub x15, x29, #192
    ldr x14, [x15]
    cbnz x14, L18_1
    b L18_2
L18_1:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L18_3
L18_2:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #224
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L18_3:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #232
    sub x20, x29, #272
    mov x11, x20
    str xzr, [x11, #0]
    sub x21, x29, #176
    mov x0, x20
    mov x9, x21
    mov x1, x9
    sub x8, x29, #304
    bl _lb_interop_Reservation_0g1_gpu_FrameState_init
    sub x22, x29, #304
    sub x25, x29, #344
    add x23, x25, #8
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    ldrb w14, [x14]
    add x22, x25, #32
    strb w14, [x22]
    mov x10, x20
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldrb w14, [x22]
    cbnz w14, L18_7
    b L18_6
L18_7:
    sub x20, x29, #264
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L18_4
L18_6:
    sub x20, x29, #240
    mov x10, x25
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L18_5
L18_4:
    add x14, x21, #16
    ldr x14, [x14]
    sub x15, x29, #136
    ldr x22, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    ldr x17, [sp], #16
    blr x17
    sub x14, x29, #360
    str x22, [x14]
    add x15, x14, #8
    movz x9, #152
    str x9, [x15]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x22, [x22]
    cbnz x22, L18_9
    b L18_8
L18_9:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L18_8:
    sub x19, x29, #120
    add x14, x19, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_10:
L18_5:
    mov x10, x20
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x24
    mov x1, x14
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_interop_Reservation_0g1_gpu_FrameState_publish
    sub x16, x29, #368
    str x0, [x16, #0]
    sub x14, x29, #368
    sub x21, x29, #120
    mov x10, x14
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_11:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_lease
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_lease
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_lease
_lb_interop_Reference_0g1_gpu_FrameState_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    str x22, [sp, #200]
    str x23, [sp, #192]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #160
    bl _lb_interop_Reference_0g1_gpu_FrameState_get
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L19_2
    b L19_1
L19_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_3:
L19_1:
    sub x20, x29, #176
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x19]
    adrp x15, _lb_interop_Owner_0g1_gpu_FrameState_7is_open@GOTPAGE
    ldr x15, [x15, _lb_interop_Owner_0g1_gpu_FrameState_7is_open@GOTPAGEOFF]
    adrp x21, _lb_interop_Owner_0g1_gpu_FrameState_enter@GOTPAGE
    ldr x21, [x21, _lb_interop_Owner_0g1_gpu_FrameState_enter@GOTPAGEOFF]
    adrp x22, _lb_interop_Owner_0g1_gpu_FrameState_leave@GOTPAGE
    ldr x22, [x22, _lb_interop_Owner_0g1_gpu_FrameState_leave@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x21
    mov x4, x22
    sub x8, x29, #208
    bl _lb_interop_Lease_init
    sub x21, x29, #208
    sub x23, x29, #256
    add x22, x23, #16
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    ldrb w14, [x14]
    add x21, x23, #40
    strb w14, [x21]
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w14, [x21]
    cbnz w14, L19_5
    b L19_4
L19_5:
    sub x19, x29, #112
    add x14, x19, #16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_6:
L19_4:
    sub x19, x29, #112
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_7:
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_release
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_release
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_release
_lb_interop_Reference_0g1_gpu_FrameState_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_value
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_value
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_value
_lb_interop_Reference_0g1_gpu_FrameState_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #96
    bl _lb_interop_Reference_0g1_gpu_FrameState_get
    sub x15, x29, #96
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L21_4
    b L21_3
L21_4:
    add x14, x15, #8
    sub x19, x29, #56
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L21_1
L21_3:
    ldr x14, [x15]
    b L21_2
L21_1:
    add x14, x19, #8
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    mov x9, #0
    mov x14, x9
L21_2:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_5:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_View_0g1_gpu_RenderTarget_make
    .weak_definition _lb_interop_View_0g1_gpu_RenderTarget_make
    .no_dead_strip _lb_interop_View_0g1_gpu_RenderTarget_make
_lb_interop_View_0g1_gpu_RenderTarget_make:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    sub x16, x29, #176
    str x0, [x16]
    sub x16, x29, #200
    str x1, [x16]
    sub x16, x29, #216
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x0, x29, #200
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x19, x29, #216
    mov x0, x19
    sub x8, x29, #248
    bl _lb_interop_Lease_check
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L22_2
    b L22_1
L22_2:
    sub x19, x29, #104
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_3:
L22_1:
    sub x20, x29, #304
    sub x21, x29, #360
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    sub x22, x29, #200
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #16
    movz x9, #232
    str x9, [x14]
    add x14, x21, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view@GOTPAGE
    ldr x14, [x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view@GOTPAGEOFF]
    add x15, x21, #32
    str x14, [x15]
    adrp x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view@GOTPAGE
    ldr x14, [x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view@GOTPAGEOFF]
    add x15, x21, #40
    str x14, [x15]
    add x14, x21, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x21, x29, #376
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x20
    movz x1, #232
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #416
    bl _lb_ownership_reserve
    sub x15, x29, #416
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L22_5
    b L22_4
L22_5:
    add x14, x15, #8
    sub x19, x29, #104
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_6:
L22_4:
    ldr x21, [x15]
    add x23, x21, #64
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x21, #16
    str x23, [x14]
    add x14, x21, #120
    sub x23, x29, #176
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    add x14, x21, #192
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x23, x21, #216
    mov x0, x19
    bl _lb_interop_Lease_clone
    sub x16, x29, #432
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #432
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #440
    mov x11, x23
    str xzr, [x11, #0]
    sub x10, x29, #456
    str x21, [x10]
    mov x0, x21
    bl _lb_ownership_11check_alive
    str x21, [x23]
L22_8:
    sub x19, x29, #104
    mov x10, x23
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_7:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_close
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_close
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_close
_lb_interop_Reference_0g1_gpu_FrameState_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_11check_alive
    ldr x14, [x19]
    add x14, x14, #120
    add x14, x14, #32
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L23_2
L23_1:
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
    str x9, [x14]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L23_3
L23_2:
L23_3:
    ldr x14, [x19]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_gpu_FrameState
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_trace
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_trace
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_trace
_lb_interop_Reference_0g1_gpu_FrameState_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    ldr x15, [x19]
    sub x19, x29, #64
    ldr x19, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_FrameState_init
    .weak_definition _lb_interop_Reservation_0g1_gpu_FrameState_init
    .no_dead_strip _lb_interop_Reservation_0g1_gpu_FrameState_init
_lb_interop_Reservation_0g1_gpu_FrameState_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x0, x29, #144
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #104
    ldr x20, [x9]
    sub x19, x29, #144
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L25_4
    b L25_10
L25_10:
    mov w15, w14
    b L25_5
L25_4:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L25_5:
    and w14, w15, #255
    cbnz w14, L25_1
    b L25_2
L25_1:
    sub x19, x29, #96
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_6:
    b L25_3
L25_2:
L25_3:
    sub x21, x29, #216
    sub x22, x29, #272
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #16
    movz x9, #200
    str x9, [x14]
    adrp x14, _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner@GOTPAGEOFF]
    add x15, x22, #24
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner@GOTPAGEOFF]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner@GOTPAGEOFF]
    add x15, x22, #40
    str x14, [x15]
    add x14, x22, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    movz x1, #200
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #328
    bl _lb_ownership_reserve
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L25_8
    b L25_7
L25_8:
    add x14, x15, #8
    sub x19, x29, #96
    mov x10, x14
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_9:
L25_7:
    ldr x22, [x15]
    add x23, x22, #64
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x22, #16
    str x23, [x14]
    add x14, x22, #120
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x22, [x20]
    sub x14, x29, #96
    add x22, x14, #24
    mov x9, #0
    strb w9, [x22]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_FrameState_publish
    .weak_definition _lb_interop_Reservation_0g1_gpu_FrameState_publish
    .no_dead_strip _lb_interop_Reservation_0g1_gpu_FrameState_publish
_lb_interop_Reservation_0g1_gpu_FrameState_publish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x9, x29, #64
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L26_1
    b L26_2
L26_1:
    b L26_3
L26_2:
    adrp x14, l_text_38@PAGE
    add x14, x14, l_text_38@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    adrp x14, l_text_39@PAGE
    add x14, x14, l_text_39@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L26_3:
    add x14, x20, #160
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    add x21, x20, #168
    sub x15, x29, #96
    ldr x14, [x15]
    cbnz x14, L26_4
    b L26_5
L26_4:
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L26_6
L26_5:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L26_6:
    sub x14, x29, #128
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x22, x29, #136
    mov x11, x22
    str xzr, [x11, #0]
    sub x10, x29, #152
    str x20, [x10]
    mov x0, x20
    bl _lb_ownership_11check_alive
    str x20, [x22]
L26_8:
    sub x19, x29, #56
    mov x10, x22
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_7:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_get
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_get
_lb_interop_Reference_0g1_gpu_FrameState_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_11check_alive
    ldr x14, [x19]
    add x15, x14, #184
    ldrb w15, [x15]
    cbnz w15, L27_1
    b L27_2
L27_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_interop_invalid@PAGE
    add x15, x15, _lb_interop_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_41@PAGE
    add x15, x15, l_text_41@PAGEOFF
    sub x20, x29, #104
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
L27_4:
    b L27_3
L27_2:
L27_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L27_5
    b L27_6
L27_5:
    b L27_7
L27_6:
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L27_7:
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
L27_8:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_7is_open
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_7is_open
    .no_dead_strip _lb_interop_Owner_0g1_gpu_FrameState_7is_open
_lb_interop_Owner_0g1_gpu_FrameState_7is_open:
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
    add x14, x19, #184
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_1:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_enter
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_enter
    .no_dead_strip _lb_interop_Owner_0g1_gpu_FrameState_enter
_lb_interop_Owner_0g1_gpu_FrameState_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_retain
    mov x14, x0
    add x14, x19, #192
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_leave
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_leave
    .no_dead_strip _lb_interop_Owner_0g1_gpu_FrameState_leave
_lb_interop_Owner_0g1_gpu_FrameState_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x20, x19, #192
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L30_2
L30_1:
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L30_3
L30_2:
L30_3:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    add x15, x19, #184
    ldrb w15, [x15]
    cbnz w15, L30_7
    b L30_9
L30_9:
    mov w14, w15
    b L30_8
L30_7:
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov w14, w15
L30_8:
    and w15, w14, #255
    cbnz w15, L30_4
    b L30_5
L30_4:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_gpu_FrameState
    b L30_6
L30_5:
L30_6:
    mov x0, x19
    bl _lb_ownership_release
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view
    .weak_definition _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view
_lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #216
    mov x0, x14
    bl _lb_interop_Lease_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view
    .weak_definition _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view
_lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view:
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
    add x14, x14, #216
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _lb_interop_Lease_trace
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_View_0g1_gpu_RenderTarget_init
    .weak_definition _lb_interop_View_0g1_gpu_RenderTarget_init
_lb_interop_View_0g1_gpu_RenderTarget_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_11close_owner_0g1_gpu_FrameState
    .weak_definition _lb_interop_11close_owner_0g1_gpu_FrameState
    .no_dead_strip _lb_interop_11close_owner_0g1_gpu_FrameState
_lb_interop_11close_owner_0g1_gpu_FrameState:
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
    add x14, x19, #184
    ldrb w15, [x14]
    cbnz w15, L34_1
    b L34_2
L34_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L34_4:
    b L34_3
L34_2:
L34_3:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #192
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L34_6
L34_5:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_gpu_FrameState
    b L34_7
L34_6:
L34_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
    .no_dead_strip _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
_lb_interop_Owner_0g1_gpu_FrameState_12finish_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_gpu_FrameState
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
    .no_dead_strip _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
_lb_interop_Owner_0g1_gpu_FrameState_10drop_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    add x19, x14, #160
    ldr x20, [x19]
    cbnz x20, L36_4
    b L36_2
L36_4:
L36_1:
    sub x22, x29, #88
    add x15, x14, #168
    ldr x21, [x15]
    cbnz x21, L36_5
    b L36_6
L36_5:
    sub x23, x29, #104
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L36_7
L36_6:
    adrp x14, l_text_49@PAGE
    add x14, x14, l_text_49@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    adrp x14, l_text_50@PAGE
    add x14, x14, l_text_50@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L36_7:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #152
    str x9, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L36_9
    b L36_8
L36_9:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L36_8:
    b L36_3
L36_2:
L36_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
    .no_dead_strip _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
_lb_interop_Owner_0g1_gpu_FrameState_11trace_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w15, [x15]
    cbnz w15, L37_1
    b L37_2
L37_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_4:
    b L37_3
L37_2:
L37_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L37_8
    b L37_6
L37_8:
L37_5:
    add x19, x14, #120
    add x19, x19, #24
    ldr x19, [x19]
    cbnz x19, L37_12
    b L37_10
L37_12:
L37_9:
    sub x14, x29, #64
    ldr x14, [x14]
    sub x20, x29, #80
    ldr x20, [x20]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x14
    mov x2, x20
    ldr x17, [sp], #16
    blr x17
    b L37_11
L37_10:
L37_11:
    b L37_7
L37_6:
L37_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_init
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_init
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_init
_lb_interop_Reference_0g1_gpu_FrameState_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_13dispose_owner_0g1_gpu_FrameState
    .weak_definition _lb_interop_13dispose_owner_0g1_gpu_FrameState
    .no_dead_strip _lb_interop_13dispose_owner_0g1_gpu_FrameState
_lb_interop_13dispose_owner_0g1_gpu_FrameState:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w19, [x15]
    cbnz w19, L39_1
    b L39_2
L39_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_4:
    b L39_3
L39_2:
L39_3:
    movz x9, #1
    strb w9, [x15]
    add x19, x14, #160
    ldr x19, [x19]
    cbnz x19, L39_8
    b L39_6
L39_8:
L39_5:
    add x15, x14, #120
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    b L39_7
L39_6:
L39_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_frame_0init

    .section __TEXT,__const
l_text_0:
    .asciz "GPU frame state"
l_text_1:
    .asciz "GPU frame"
l_text_2:
    .asciz "GPU render target"
l_text_3:
    .asciz "the recording frame is finished"
l_text_4:
    .asciz "frame presentation has no validator"
l_text_5:
    .asciz "src/std/gpu/frame.lucb:23:13"
l_text_6:
    .asciz "unreachable"
l_text_7:
    .asciz "frame presentation has no release operation"
l_text_8:
    .asciz "src/std/gpu/frame.lucb:30:13"
l_text_9:
    .asciz "memory.unset"
l_text_10:
    .asciz "src/std/gpu/frame.lucb:43:9"
l_text_11:
    .asciz "memory.exhausted"
l_text_12:
    .asciz "src/std/gpu/frame.lucb:51:9"
l_text_13:
    .asciz "src/std/gpu/frame.lucb:56:9"
l_text_14:
    .asciz "src/std/gpu/frame.lucb:63:9"
l_text_15:
    .asciz "src/std/gpu/frame.lucb:64:9"
l_text_16:
    .asciz "a standalone frame has no presentation surface"
l_text_17:
    .asciz "frame presentation has no submit operation"
l_text_18:
    .asciz "src/std/gpu/frame.lucb:74:9"
l_text_19:
    .asciz "an open frame has no lease"
l_text_20:
    .asciz "src/std/gpu/frame.lucb:75:9"
l_text_21:
    .asciz "src/std/gpu/frame.lucb:77:9"
l_text_22:
    .asciz "src/std/gpu/frame.lucb:109:9"
l_text_23:
    .asciz "src/std/gpu/frame.lucb:121:9"
l_text_24:
    .asciz "src/std/gpu/frame.lucb:133:9"
l_text_25:
    .asciz "src/std/gpu/frame.lucb:159:5"
l_text_26:
    .asciz "frame extents must be finite, nonnegative and at most 16384 pixels/points"
l_text_27:
    .asciz "frame backing extents must be whole pixels"
l_text_28:
    .asciz "empty logical and backing dimensions must agree"
l_text_29:
    .asciz "render regions need finite origins and nonnegative extents"
l_text_30:
    .asciz "src/std/gpu/frame.lucb:180:5"
l_text_31:
    .asciz "src/std/interop/reference.lucb:17:9"
l_text_32:
    .asciz "src/std/interop/reference.lucb:52:9"
l_text_33:
    .asciz "src/std/interop/reference.lucb:34:9"
l_text_34:
    .asciz "src/std/interop/view.lucb:39:9"
l_text_35:
    .asciz "this native type does not support explicit close"
l_text_36:
    .asciz "src/std/interop/reference.lucb:47:13"
l_text_37:
    .asciz "this native type requires the process main thread"
l_text_38:
    .asciz "native ownership has already been published or cancelled"
l_text_39:
    .asciz "src/std/interop/object.lucb:83:9"
l_text_40:
    .asciz "src/std/interop/object.lucb:87:9"
l_text_41:
    .asciz "a native object is closed"
l_text_42:
    .asciz "a native object has not been initialized"
l_text_43:
    .asciz "src/std/interop/reference.lucb:30:9"
l_text_44:
    .asciz "src/std/interop/object.lucb:15:9"
l_text_45:
    .asciz "src/std/interop/object.lucb:19:9"
l_text_46:
    .asciz "a native call guard was left twice"
l_text_47:
    .asciz "src/std/interop/object.lucb:25:13"
l_text_48:
    .asciz "src/std/interop/object.lucb:26:9"
l_text_49:
    .asciz "native storage has no allocator"
l_text_50:
    .asciz "src/std/interop/object.lucb:37:13"
l_text_51:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_16frame_state_type
    .weak_definition _lb_gpu_16frame_state_type
_lb_gpu_16frame_state_type:
    .zero 40
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_10frame_type
    .weak_definition _lb_gpu_10frame_type
    .no_dead_strip _lb_gpu_10frame_type
_lb_gpu_10frame_type:
    .zero 40
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_18render_target_type
    .weak_definition _lb_gpu_18render_target_type
    .no_dead_strip _lb_gpu_18render_target_type
_lb_gpu_18render_target_type:
    .zero 24

.subsections_via_symbols
