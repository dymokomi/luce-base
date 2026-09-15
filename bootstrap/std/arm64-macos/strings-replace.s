    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_strings_replace_0init
_lb_strings_replace_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_replace
    .no_dead_strip _lb_strings_replace
_lb_strings_replace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #704
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #672]
    str x20, [sp, #664]
    str x21, [sp, #656]
    str x22, [sp, #648]
    str x23, [sp, #640]
    str x24, [sp, #632]
    str x25, [sp, #624]
    str x26, [sp, #616]
    str x27, [sp, #608]
    str x28, [sp, #600]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #200
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #216
    str x6, [x16]
    ldr x9, [x29, #16]
    sub x16, x29, #232
    str x9, [x16, #0]
    ldr x9, [x29, #24]
    sub x16, x29, #232
    str x9, [x16, #8]
    sub x9, x29, #184
    str x9, [sp, #168]
    ldr x9, [sp, #168]
    add x9, x9, #8
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne L1_2
L1_1:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_strings_17invalid_separator@PAGE
    add x15, x15, _lb_strings_17invalid_separator@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #248
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #672]
    ldr x20, [sp, #664]
    ldr x21, [sp, #656]
    ldr x22, [sp, #648]
    ldr x23, [sp, #640]
    ldr x24, [sp, #632]
    ldr x25, [sp, #624]
    ldr x26, [sp, #616]
    ldr x27, [sp, #608]
    ldr x28, [sp, #600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x21, x29, #168
    add x9, x21, #8
    str x9, [sp, #152]
    ldr x9, [sp, #152]
    ldr x14, [x9]
    sub x9, x29, #216
    str x9, [sp, #144]
    sub x27, x29, #264
    add x9, x27, #8
    str x9, [sp, #136]
    sub x15, x29, #200
    add x25, x15, #8
    sub x9, x29, #272
    str x9, [sp, #128]
    sub x9, x29, #288
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #120]
    mov x28, x14
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    mov x14, x9
L1_5:
    ldr x9, [sp, #144]
    ldr x15, [x9]
    mov x10, #0
    cmp x15, x10
    cset w26, eq
    cbnz w26, L1_51
    b L1_8
L1_51:
    mov w15, w26
    b L1_9
L1_8:
    ldr x9, [sp, #40]
    cmp x9, x15
    cset w26, lo
    mov w15, w26
L1_9:
    and w26, w15, #255
    cbnz w26, L1_6
    b L1_7
L1_6:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #168]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_strings_9find_from
    sub x16, x29, #264
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #136]
    ldrb w15, [x9]
    cbnz w15, L1_10
    b L1_11
L1_10:
    ldr x26, [x27]
    b L1_12
L1_11:
    b L1_7
L1_13:
L1_12:
    ldr x14, [x25]
    ldr x9, [sp, #160]
    ldr x15, [x9]
    cmp x14, x15
    b.lo L1_15
L1_14:
    sub x23, x14, x15
    mov x0, x28
    mov x1, x23
    movz x2, #64
    ldr x3, [sp, #128]
    bl _lb_core_6qadd_u
    mov w23, w0
    ldr x9, [sp, #128]
    ldr x24, [x9]
    ldr x10, [sp, #32]
    str x24, [x10]
    ldr x10, [sp, #120]
    strb w23, [x10]
    ldr x9, [sp, #120]
    ldrb w23, [x9]
    cbnz w23, L1_17
    b L1_18
L1_17:
    b L1_19
L1_18:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x20, x29, #304
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #672]
    ldr x20, [sp, #664]
    ldr x21, [sp, #656]
    ldr x22, [sp, #648]
    ldr x23, [sp, #640]
    ldr x24, [sp, #632]
    ldr x25, [sp, #624]
    ldr x26, [sp, #616]
    ldr x27, [sp, #608]
    ldr x28, [sp, #600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
L1_19:
    mov x14, x24
    b L1_16
L1_15:
    sub x23, x15, x14
    mov x9, x28
    mov x10, x23
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x14, x23
L1_16:
    ldr x9, [sp, #160]
    ldr x15, [x9]
    mov x9, x26
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #40]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x28, x14
    mov x9, x23
    str x9, [sp, #40]
    mov x14, x15
    b L1_5
L1_7:
    sub x15, x29, #232
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L1_24
    b L1_22
L1_24:
    ldr x14, [x15]
L1_21:
    cmp x28, x14
    b.ls L1_26
L1_25:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_strings_16output_too_large@PAGE
    add x15, x15, _lb_strings_16output_too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    sub x20, x29, #320
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #672]
    ldr x20, [sp, #664]
    ldr x21, [sp, #656]
    ldr x22, [sp, #648]
    ldr x23, [sp, #640]
    ldr x24, [sp, #632]
    ldr x25, [sp, #624]
    ldr x26, [sp, #616]
    ldr x27, [sp, #608]
    ldr x28, [sp, #600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_28:
    b L1_27
L1_26:
L1_27:
    b L1_23
L1_22:
L1_23:
    sub x23, x29, #336
    mov x0, x28
    sub x8, x29, #384
    bl _lb_strings_17terminated_buffer
    sub x15, x29, #384
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_30
    b L1_29
L1_30:
    add x14, x15, #16
    sub x19, x29, #152
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
    ldr x19, [sp, #672]
    ldr x20, [sp, #664]
    ldr x21, [sp, #656]
    ldr x22, [sp, #648]
    ldr x23, [sp, #640]
    ldr x24, [sp, #632]
    ldr x25, [sp, #624]
    ldr x26, [sp, #616]
    ldr x27, [sp, #608]
    ldr x28, [sp, #600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_31:
L1_29:
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #400
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #112]
    add x9, x23, #8
    str x9, [sp, #104]
    sub x26, x29, #432
    add x9, x26, #8
    str x9, [sp, #96]
    sub x9, x29, #448
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #8
    str x9, [sp, #80]
    sub x9, x29, #464
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #64]
    sub x9, x29, #200
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    mov x9, #0
    mov x20, x9
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #16]
L1_32:
    ldr x9, [sp, #16]
    ldr x10, [sp, #40]
    cmp x9, x10
    b.hs L1_34
L1_33:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #168]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl _lb_strings_9find_from
    sub x16, x29, #400
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #112]
    ldrb w14, [x9]
    cbnz w14, L1_35
    b L1_36
L1_35:
    ldr x9, [sp, #8]
    ldr x19, [x9]
    b L1_37
L1_36:
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #416
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
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
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L1_37:
    mov x9, x19
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    ldr x28, [x23]
    ldr x9, [sp, #104]
    ldr x27, [x9]
    add x24, x27, #1
    ldr x9, [sp, #24]
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x27, x24
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    cmp x9, x27
    b.ls L1_38
L1_39:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L1_38:
    ldr x9, [sp, #24]
    add x14, x9, x28
    ldr x10, [sp, #24]
    sub x15, x27, x10
    str x14, [x26]
    ldr x10, [sp, #96]
    str x15, [x10]
    ldr x15, [x21]
    ldr x9, [sp, #152]
    ldr x14, [x9]
    add x14, x14, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.ls L1_40
L1_41:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L1_40:
    add x14, x20, x15
    sub x25, x19, x20
    ldr x10, [sp, #88]
    str x14, [x10]
    ldr x10, [sp, #80]
    str x25, [x10]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #88]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    bl _lb_memory_copy_0g1_u8
    mov x9, x22
    ldr x10, [sp, #24]
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    cmp x25, x24
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x27
    b.ls L1_42
L1_43:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L1_42:
    add x14, x25, x28
    sub x15, x27, x25
    ldr x10, [sp, #72]
    str x14, [x10]
    ldr x10, [sp, #64]
    str x15, [x10]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #72]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #56]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #48]
    ldr x14, [x9]
    mov x9, x25
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #160]
    ldr x15, [x9]
    mov x9, x19
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    ldr x9, [sp, #16]
    add x15, x9, #1
    mov x9, x14
    str x9, [sp, #24]
    mov x9, x15
    str x9, [sp, #16]
    b L1_32
L1_34:
    ldr x9, [sp, #152]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    ldr x24, [x23]
    add x15, x23, #8
    ldr x25, [x15]
    add x22, x25, #1
    ldr x9, [sp, #24]
    cmp x9, x22
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x22
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    cmp x9, x25
    b.ls L1_44
L1_45:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L1_44:
    ldr x9, [sp, #24]
    add x15, x9, x24
    ldr x10, [sp, #24]
    sub x23, x25, x10
    sub x26, x29, #480
    str x15, [x26]
    add x15, x26, #8
    str x23, [x15]
    ldr x23, [x21]
    add x15, x14, #1
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x14
    b.ls L1_46
L1_47:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L1_46:
    add x15, x20, x23
    sub x21, x14, x20
    sub x27, x29, #496
    str x15, [x27]
    add x15, x27, #8
    str x21, [x15]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x27
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    bl _lb_memory_copy_0g1_u8
    mov x9, x19
    ldr x10, [sp, #24]
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x25
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x21, x15, x24
    mov x9, #0
    strb w9, [x21]
    mov x9, #0
    cmp x9, x22
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L1_48
L1_49:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L1_48:
    sub x14, x29, #512
    str x24, [x14]
    add x14, x14, #8
    str x15, [x14]
    sub x14, x29, #528
    str x24, [x14]
    add x19, x14, #8
    str x15, [x19]
    sub x19, x29, #152
    mov x10, x14
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
    ldr x19, [sp, #672]
    ldr x20, [sp, #664]
    ldr x21, [sp, #656]
    ldr x22, [sp, #648]
    ldr x23, [sp, #640]
    ldr x24, [sp, #632]
    ldr x25, [sp, #624]
    ldr x26, [sp, #616]
    ldr x27, [sp, #608]
    ldr x28, [sp, #600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_50:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
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
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
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
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L2_9
    b L2_10
L2_10:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_25@PAGE
    add x1, x1, l_text_25@PAGEOFF
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
    .quad _lb_strings_replace_0init

    .section __TEXT,__const
l_text_0:
    .asciz "replacement requires a nonempty needle"
l_text_1:
    .asciz "src/std/strings/replace.lucb:16:13"
l_text_2:
    .asciz "the replacement result is too large"
l_text_3:
    .asciz "src/std/strings/replace.lucb:18:13"
l_text_4:
    .asciz "src/std/strings/replace.lucb:19:9"
l_text_5:
    .asciz "src/std/strings/replace.lucb:20:9"
l_text_6:
    .asciz "the replacement result exceeds its byte limit"
l_text_7:
    .asciz "replacement input changed between scans"
l_text_8:
    .asciz "src/std/strings/replace.lucb:29:9"
l_text_9:
    .asciz "unreachable"
l_text_10:
    .asciz "src/std/strings/replace.lucb:30:9"
l_text_11:
    .asciz "src/std/strings/replace.lucb:31:9"
l_text_12:
    .asciz "index out of bounds"
l_text_13:
    .asciz "src/std/strings/replace.lucb:32:9"
l_text_14:
    .asciz "src/std/strings/replace.lucb:33:9"
l_text_15:
    .asciz "src/std/strings/replace.lucb:34:9"
l_text_16:
    .asciz "src/std/strings/replace.lucb:35:9"
l_text_17:
    .asciz "src/std/strings/replace.lucb:36:9"
l_text_18:
    .asciz "src/std/strings/replace.lucb:37:5"
l_text_19:
    .asciz "src/std/strings/replace.lucb:38:5"
l_text_20:
    .asciz "src/std/strings/replace.lucb:39:5"
l_text_21:
    .asciz "src/std/strings/replace.lucb:40:5"
l_text_22:
    .asciz "src/std/strings/replace.lucb:41:5"
l_text_23:
    .asciz "src/std/memory.lucb:326:9"
l_text_24:
    .asciz "src/std/memory.lucb:328:9"
l_text_25:
    .asciz "null_foreign"
l_text_26:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
