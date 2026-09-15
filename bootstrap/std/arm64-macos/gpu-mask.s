    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_mask_0init
_lb_gpu_mask_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_11canvas_mask
    .no_dead_strip _lb_gpu_11canvas_mask
_lb_gpu_11canvas_mask:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1072
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1040]
    str x20, [sp, #1032]
    str x21, [sp, #1024]
    str x22, [sp, #1016]
    str x23, [sp, #1008]
    str x24, [sp, #1000]
    str x25, [sp, #992]
    str x26, [sp, #984]
    str x27, [sp, #976]
    str x28, [sp, #968]
    str d8, [sp, #960]
    str d9, [sp, #952]
    str d10, [sp, #944]
    str d11, [sp, #936]
    str d12, [sp, #928]
    str d13, [sp, #920]
    str d14, [sp, #912]
    str d15, [sp, #904]
    sub x16, x29, #216
    str x0, [x16]
    sub x16, x29, #232
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #248
    str w3, [x16]
    sub x16, x29, #264
    str w4, [x16]
    sub x16, x29, #296
    str d0, [x16, #0]
    sub x16, x29, #296
    str d1, [x16, #8]
    sub x16, x29, #296
    str d2, [x16, #16]
    sub x16, x29, #296
    str d3, [x16, #24]
    sub x16, x29, #320
    str d4, [x16, #0]
    sub x16, x29, #320
    str d5, [x16, #8]
    sub x16, x29, #320
    str d6, [x16, #16]
    sub x16, x29, #336
    str x5, [x16]
    str x6, [x16, #8]
    sub x16, x29, #352
    str d7, [x16]
    ldr x9, [x29, #16]
    sub x16, x29, #368
    str x9, [x16]
    sub x9, x29, #320
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #400
    bl _lb_gpu_11check_color
    sub x15, x29, #400
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #200
    mov x10, x15
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    sub x14, x29, #248
    ldr w9, [x14]
    str w9, [sp, #48]
    ldr w9, [sp, #48]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    cbnz w14, L1_69
    b L1_7
L1_69:
    mov w15, w14
    b L1_8
L1_7:
    sub x14, x29, #264
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_8:
    and w14, w15, #255
    cbnz w14, L1_70
    b L1_9
L1_70:
    mov w15, w14
    b L1_10
L1_9:
    ldr w9, [sp, #48]
    movz x10, #16384
    cmp w9, w10
    cset w15, hi
L1_10:
    and w14, w15, #255
    cbnz w14, L1_71
    b L1_11
L1_71:
    mov w15, w14
    b L1_12
L1_11:
    sub x14, x29, #264
    ldr w14, [x14]
    movz x10, #16384
    cmp w14, w10
    cset w15, hi
L1_12:
    and w14, w15, #255
    cbnz w14, L1_72
    b L1_13
L1_72:
    mov w15, w14
    b L1_14
L1_13:
    sub x14, x29, #232
    add x14, x14, #8
    ldr x14, [x14]
    ldr w9, [sp, #48]
    mov w15, w9
    sub x12, x29, #264
    ldr w12, [x12]
    mov w12, w12
    mul x15, x15, x12
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_14:
    and w14, w15, #255
    cbnz w14, L1_4
    b L1_5
L1_4:
    sub x19, x29, #200
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #416
    str x14, [x15]
    add x14, x15, #8
    movz x9, #65
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_5:
L1_6:
    sub x21, x29, #296
    add x14, x21, #16
    ldr d8, [x14]
    mov x9, #0
    fmov d24, x9
    fcmp d8, d24
    cset w14, eq
    cbnz w14, L1_73
    b L1_19
L1_73:
    mov w15, w14
    b L1_20
L1_19:
    add x14, x21, #24
    ldr d25, [x14]
    fcmp d24, d25
    cset w15, eq
L1_20:
    and w14, w15, #255
    cbnz w14, L1_74
    b L1_21
L1_74:
    mov w15, w14
    b L1_22
L1_21:
    sub x14, x29, #336
    add x14, x14, #8
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_22:
    and w14, w15, #255
    cbnz w14, L1_75
    b L1_23
L1_75:
    mov w15, w14
    b L1_24
L1_23:
    sub x14, x29, #336
    add x14, x14, #12
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_24:
    and w14, w15, #255
    cbnz w14, L1_16
    b L1_17
L1_16:
    sub x14, x29, #200
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
L1_18:
    sub x9, x29, #232
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x14, x9, #8
    ldr x9, [x14]
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
L1_27:
    movz x10, #4
    udiv x9, x14, x10
    str x9, [sp, #24]
    sub x15, x29, #216
    ldr x9, [x15]
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x26, x9, #64
    ldr x15, [x26]
    movz x9, #64, lsl #16
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #24]
    cmp x9, x15
    b.ls L1_29
L1_28:
    sub x19, x29, #200
    adrp x14, _lb_gpu_13command_limit@PAGE
    add x14, x14, _lb_gpu_13command_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #432
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
L1_30:
    ldr x14, [x26]
    ldr x9, [sp, #24]
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #8]
    ldr x9, [sp, #16]
    add x28, x9, #48
    add x20, x28, #8
    ldr x14, [x20]
    ldr x9, [sp, #8]
    cmp x9, x14
    b.ls L1_33
L1_32:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #1024
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    movz x0, #64, lsl #16
    mov x1, x14
    bl _lb_gpu_10canvas_min
    mov x14, x0
    ldr x0, [sp, #8]
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x23, x0
    sub x24, x29, #448
    adrp x22, _lb_memory_heap@PAGE
    add x22, x22, _lb_memory_heap@PAGEOFF
    sub x25, x29, #496
    movz x10, #4096, lsl #48
    cmp x23, x10
    b.ls L1_36
L1_35:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L1_37
L1_36:
    lsl x27, x23, #2
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L1_38
    b L1_39
L1_39:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L1_38:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #4
    sub x8, x29, #520
    ldr x17, [sp], #16
    blr x17
    sub x19, x29, #520
    add x12, x19, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L1_40
    b L1_41
L1_40:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L1_37
L1_41:
    ldr x14, [x19]
    str x14, [x25]
    add x14, x25, #8
    str x23, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L1_37:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L1_43
    b L1_42
L1_43:
    add x14, x25, #16
    sub x19, x29, #200
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_42:
    mov x10, x25
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x26]
    mov x10, #0
    cmp x14, x10
    b.ls L1_46
L1_45:
    ldr x14, [x26]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x28
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u32
    b L1_47
L1_46:
L1_47:
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ls L1_49
L1_48:
    sub x14, x29, #536
    ldr x15, [x28]
    ldr x12, [x20]
    mov x9, x12
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cbnz x12, L1_52
    b L1_51
L1_52:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_51:
    b L1_50
L1_49:
L1_50:
    mov x10, x24
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_34
L1_33:
L1_34:
    ldr d9, [x21]
    movz x9, #16384, lsl #48
    fmov d24, x9
    fmul d25, d9, d24
    sub x14, x29, #352
    ldr d26, [x14]
    fdiv d25, d25, d26
    movz x9, #16368, lsl #48
    fmov d27, x9
    fsub d25, d25, d27
    fcvt s10, d25
    fadd d25, d8, d9
    fmul d25, d24, d25
    fdiv d25, d25, d26
    fsub d25, d25, d27
    fcvt s11, d25
    add x14, x21, #8
    ldr d12, [x14]
    fmul d25, d24, d12
    sub x14, x29, #368
    ldr d26, [x14]
    fdiv d25, d25, d26
    fsub d25, d27, d25
    fcvt s13, d25
    add x14, x21, #24
    ldr d14, [x14]
    fadd d25, d12, d14
    fmul d24, d24, d25
    fdiv d24, d24, d26
    fsub d24, d27, d24
    fcvt s15, d24
    sub x19, x29, #568
    sub x22, x29, #600
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str s10, [x22]
    add x14, x22, #4
    str s13, [x14]
    ldr x9, [sp, #56]
    ldr d24, [x9]
    fcvt s24, d24
    add x14, x22, #16
    str s24, [x14]
    ldr x9, [sp, #56]
    add x14, x9, #8
    ldr d24, [x14]
    fcvt s24, d24
    add x14, x22, #20
    str s24, [x14]
    ldr x9, [sp, #56]
    add x14, x9, #16
    ldr d24, [x14]
    fcvt s24, d24
    add x14, x22, #24
    str s24, [x14]
    movz x9, #16256, lsl #16
    fmov s24, w9
    add x14, x22, #12
    str s24, [x14]
    add x14, x22, #28
    str s24, [x14]
    mov x10, x22
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #632
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x23, x29, #664
    mov x10, x19
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x24, x29, #696
    mov x10, x19
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    str s11, [x22]
    str s11, [x23]
    add x14, x23, #4
    str s15, [x14]
    add x14, x24, #4
    str s15, [x14]
    sub x25, x29, #888
    mov x10, x19
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x25, #32
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x25, #64
    mov x10, x23
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x25, #96
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x25, #128
    mov x10, x23
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x25, #160
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x19, x29, #904
    str x25, [x19]
    add x14, x19, #8
    movz x9, #6
    str x9, [x14]
    sub x22, x29, #336
    sub x23, x29, #944
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x0, [sp, #16]
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x22
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, #0
    mov x9, x23
    mov x6, x9
    sub x8, x29, #976
    bl _lb_gpu_Canvas_triangles
    sub x15, x29, #976
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_54
    b L1_53
L1_54:
    sub x19, x29, #200
    mov x10, x15
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_53:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    mov x9, #0
    mov x15, x9
L1_56:
    ldr x10, [sp, #24]
    cmp x15, x10
    b.hs L1_59
L1_57:
    mov x9, #0
    mov w12, w9
    mov x9, #0
    mov x13, x9
L1_60:
    movz x10, #4
    cmp x13, x10
    b.hs L1_63
L1_61:
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x9, x19
    mov x10, x13
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    ldr x10, [sp, #32]
    cmp x19, x10
    b.hs L1_65
L1_64:
    add x21, x19, x14
    ldrb w21, [x21]
    mov w21, w21
    lsl x22, x13, #3
    mov w23, w22
    movz x10, #32
    cmp x23, x10
    b.lo L1_68
L1_67:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L1_68:
    lsl w19, w21, w22
    orr w19, w19, w12
    b L1_66
L1_65:
    mov w19, w12
L1_66:
L1_62:
    add x21, x13, #1
    mov w12, w19
    mov x13, x21
    b L1_60
L1_63:
    ldr x13, [x26]
    mov x9, x13
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x13, x9
    ldr x19, [x28]
    ldr x21, [x20]
    cmp x13, x21
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x13, x13, #2
    add x13, x19, x13
    str w12, [x13]
L1_58:
    add x12, x15, #1
    mov x15, x12
    b L1_56
L1_59:
    ldr x9, [sp, #16]
    add x14, x9, #40
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #16]
    add x15, x9, #16
    ldr x12, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #112
    mul x14, x14, x10
    add x14, x12, x14
    add x19, x14, #80
    sub x20, x29, #1008
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    fcvt s24, d9
    str s24, [x20]
    fcvt s24, d12
    add x14, x20, #4
    str s24, [x14]
    fcvt s24, d8
    add x14, x20, #8
    str s24, [x14]
    fcvt s24, d14
    add x14, x20, #12
    str s24, [x14]
    add x14, x20, #16
    ldr w9, [sp, #48]
    str w9, [x14]
    sub x14, x29, #264
    ldr w14, [x14]
    add x15, x20, #20
    str w14, [x15]
    ldr x14, [x26]
    mov x9, x14
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x15, x20, #24
    str w14, [x15]
    add x14, x20, #28
    mov x9, #0
    str w9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x9, [sp, #8]
    str x9, [x26]
    sub x14, x29, #200
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    ldr d8, [sp, #960]
    ldr d9, [sp, #952]
    ldr d10, [sp, #944]
    ldr d11, [sp, #936]
    ldr d12, [sp, #928]
    ldr d13, [sp, #920]
    ldr d14, [sp, #912]
    ldr d15, [sp, #904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u32
    .weak_definition _lb_memory_copy_0g1_u32
    .no_dead_strip _lb_memory_copy_0g1_u32
_lb_memory_copy_0g1_u32:
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
    cbnz w14, L2_11
    b L2_4
L2_11:
    mov w15, w14
    b L2_5
L2_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L2_3
L2_2:
L2_3:
    mov x10, #0
    cmp x19, x10
    b.ls L2_7
L2_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x9, x19
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcpy
    mov x14, x0
    cbnz x14, L2_9
    b L2_10
L2_10:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
L2_9:
    b L2_8
L2_7:
L2_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_mask_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/gpu/mask.lucb:17:5"
l_text_1:
    .asciz "coverage dimensions must match tightly packed pixels, in 1..16384"
l_text_2:
    .asciz "src/std/gpu/mask.lucb:21:5"
l_text_3:
    .asciz "division by zero"
l_text_4:
    .asciz "src/std/gpu/mask.lucb:22:5"
l_text_5:
    .asciz "a frame supports at most 16 MiB of coverage images"
l_text_6:
    .asciz "src/std/gpu/mask.lucb:24:5"
l_text_7:
    .asciz "src/std/gpu/mask.lucb:26:9"
l_text_8:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_9:
    .asciz "memory.unset"
l_text_10:
    .asciz "src/std/gpu/mask.lucb:27:9"
l_text_11:
    .asciz "memory.exhausted"
l_text_12:
    .asciz "src/std/gpu/mask.lucb:31:13"
l_text_13:
    .asciz "src/std/gpu/mask.lucb:51:13"
l_text_14:
    .asciz "src/std/gpu/mask.lucb:53:17"
l_text_15:
    .asciz "shift count out of range"
l_text_16:
    .asciz "src/std/gpu/mask.lucb:54:9"
l_text_17:
    .asciz "src/std/gpu/mask.lucb:55:5"
l_text_18:
    .asciz "index out of bounds"
l_text_19:
    .asciz "src/std/memory.lucb:328:9"
l_text_20:
    .asciz "src/std/memory.lucb:330:9"
l_text_21:
    .asciz "null_foreign"
l_text_22:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
