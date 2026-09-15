    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_9http_head_0init
_lb_net_9http_head_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_18http_parse_request
    .no_dead_strip _lb_net_18http_parse_request
_lb_net_18http_parse_request:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1264
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1232]
    str x20, [sp, #1224]
    str x21, [sp, #1216]
    str x22, [sp, #1208]
    str x23, [sp, #1200]
    str x24, [sp, #1192]
    str x25, [sp, #1184]
    str x26, [sp, #1176]
    str x27, [sp, #1168]
    str x28, [sp, #1160]
    sub x16, x29, #248
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #264
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #296
    str x4, [x16]
    sub x0, x29, #296
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x9, x29, #304
    str x9, [sp, #8]
    mov x9, #0
    ldr x10, [sp, #8]
    str x9, [x10]
    sub x20, x29, #248
    sub x21, x29, #296
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    mov x2, x9
    sub x8, x29, #336
    bl _lb_net_15http_check_head
    sub x15, x29, #336
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #232
    add x14, x19, #96
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x22, x29, #352
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #8]
    sub x8, x29, #400
    bl _lb_net_9http_line
    sub x15, x29, #400
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x15, #16
    sub x19, x29, #232
    add x12, x19, #96
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x23, x22, #8
    ldr x14, [x23]
    add x12, x21, #8
    ldr x12, [x12]
    cmp x14, x12
    b.ls L1_8
L1_7:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_10http_limit@PAGE
    add x15, x15, _lb_net_10http_limit@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x12, x29, #416
    str x15, [x12]
    add x15, x12, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
    b L1_9
L1_8:
L1_9:
    adrp x24, l_text_1@PAGE
    add x24, x24, l_text_1@PAGEOFF
    sub x14, x29, #432
    str x24, [x14]
    add x15, x14, #8
    movz x9, #1
    str x9, [x15]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_strings_find
    sub x16, x29, #448
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #448
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L1_11
    b L1_12
L1_11:
    ldr x25, [x15]
    b L1_13
L1_12:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x12, x29, #464
    str x15, [x12]
    add x15, x12, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
L1_13:
    sub x28, x29, #480
    ldr x19, [x22]
    ldr x26, [x23]
    add x27, x26, #1
    mov x9, #0
    cmp x9, x27
    b.lo 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x27
    b.lo 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x25
    b.ls L1_15
L1_16:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L1_15:
    sub x14, x29, #496
    str x19, [x14]
    add x14, x14, #8
    str x25, [x14]
    sub x14, x29, #512
    str x19, [x14]
    add x15, x14, #8
    str x25, [x15]
    mov x10, x14
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #528
    add x15, x25, #1
    cmp x15, x27
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x26, x27
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x26
    b.ls L1_17
L1_18:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L1_17:
    add x14, x19, x15
    sub x12, x26, x15
    sub x13, x29, #544
    str x14, [x13]
    add x13, x13, #8
    str x12, [x13]
    sub x13, x29, #560
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    mov x10, x13
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #576
    str x24, [x14]
    add x12, x14, #8
    movz x9, #1
    str x9, [x12]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_strings_find
    sub x16, x29, #592
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x12, x29, #592
    add x14, x12, #8
    ldrb w14, [x14]
    cbnz w14, L1_19
    b L1_20
L1_19:
    ldr x19, [x12]
    b L1_21
L1_20:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    sub x12, x29, #608
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_22:
L1_21:
    sub x25, x29, #624
    ldr x26, [x22]
    add x14, x22, #8
    ldr x23, [x14]
    add x24, x23, #1
    mov x9, #0
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x24
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    b.ls L1_23
L1_24:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L1_23:
    sub x14, x29, #640
    str x26, [x14]
    add x14, x14, #8
    str x19, [x14]
    sub x14, x29, #656
    str x26, [x14]
    add x15, x14, #8
    str x19, [x15]
    mov x10, x14
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #672
    add x15, x19, #1
    cmp x15, x24
    b.lo 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x24
    b.lo 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x23
    b.ls L1_25
L1_26:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L1_25:
    add x19, x26, x15
    sub x24, x23, x15
    sub x14, x29, #688
    str x19, [x14]
    add x14, x14, #8
    str x24, [x14]
    sub x14, x29, #704
    str x19, [x14]
    add x12, x14, #8
    str x24, [x12]
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x28
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L1_73
    b L1_30
L1_73:
    mov w15, w14
    b L1_31
L1_30:
    mov x9, x28
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x25
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_25http_request_target_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_31:
    and w14, w15, #255
    cbnz w14, L1_27
    b L1_28
L1_27:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x12, x29, #720
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_32:
    b L1_29
L1_28:
L1_29:
    sub x23, x29, #816
    sub x26, x29, #912
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    mov x10, x28
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x26, #16
    mov x10, x25
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x26, #32
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x26
    mov x11, x23
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
    sub x14, x29, #264
    mov x0, x23
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #8]
    mov x9, x14
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x9, x21
    mov x6, x9
    sub x8, x29, #944
    bl _lb_net_16http_finish_head
    sub x15, x29, #944
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_34
    b L1_33
L1_34:
    sub x19, x29, #232
    add x14, x19, #96
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_35:
L1_33:
    adrp x20, l_text_10@PAGE
    add x20, x20, l_text_10@PAGEOFF
    sub x14, x29, #960
    str x20, [x14]
    add x14, x14, #8
    movz x9, #8
    str x9, [x14]
    movz x10, #8
    cmp x24, x10
    cset w21, eq
    cbnz w21, L1_39
    b L1_74
L1_74:
    mov w14, w21
    b L1_40
L1_39:
    mov x0, x19
    mov x1, x20
    mov x2, x24
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_40:
    and w15, w14, #255
    cbnz w15, L1_41
    b L1_75
L1_75:
    mov w14, w15
    b L1_42
L1_41:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    sub x15, x29, #976
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    mov x0, x23
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_42:
    and w15, w14, #255
    cbnz w15, L1_36
    b L1_37
L1_36:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
    sub x12, x29, #992
    str x15, [x12]
    add x15, x12, #8
    movz x9, #40
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_43:
    b L1_38
L1_37:
L1_38:
    adrp x22, l_text_11@PAGE
    add x22, x22, l_text_11@PAGEOFF
    sub x14, x29, #1008
    str x22, [x14]
    add x15, x14, #8
    movz x9, #4
    str x9, [x15]
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    b.ls L1_45
L1_44:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x12, x29, #1024
    str x15, [x12]
    add x15, x12, #8
    movz x9, #20
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_47:
    b L1_46
L1_45:
L1_46:
    sub x14, x29, #1040
    str x22, [x14]
    add x15, x14, #8
    movz x9, #4
    str x9, [x15]
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1064
    bl _lb_net_HttpHead_field
    sub x15, x29, #1064
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L1_51
    b L1_49
L1_51:
    sub x22, x29, #1080
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L1_48:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_15http_host_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_53
L1_52:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_14@PAGE
    add x15, x15, l_text_14@PAGEOFF
    sub x12, x29, #1096
    str x15, [x12]
    add x15, x12, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_55:
    b L1_54
L1_53:
L1_54:
    b L1_50
L1_49:
L1_50:
    adrp x22, l_text_15@PAGE
    add x22, x22, l_text_15@PAGEOFF
    sub x14, x29, #1112
    str x22, [x14]
    add x15, x14, #8
    movz x9, #6
    str x9, [x15]
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_net_HttpHead_11field_count
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.ls L1_57
L1_56:
    sub x14, x29, #1128
    str x20, [x14]
    add x14, x14, #8
    movz x9, #8
    str x9, [x14]
    cbnz w21, L1_62
    b L1_76
L1_76:
    mov w14, w21
    b L1_63
L1_62:
    mov x0, x19
    mov x1, x20
    mov x2, x24
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_63:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L1_77
    b L1_64
L1_77:
    mov w14, w15
    b L1_65
L1_64:
    sub x14, x29, #1144
    str x22, [x14]
    add x15, x14, #8
    movz x9, #6
    str x9, [x15]
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_65:
    and w15, w14, #255
    cbnz w15, L1_78
    b L1_66
L1_78:
    mov w14, w15
    b L1_67
L1_66:
    sub x14, x29, #1160
    str x22, [x14]
    add x15, x14, #8
    movz x9, #6
    str x9, [x15]
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1184
    bl _lb_net_HttpHead_field
    sub x15, x29, #1184
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L1_68
    b L1_69
L1_68:
    sub x14, x29, #1200
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_70
L1_69:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #1216
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #1200
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L1_70:
    sub x14, x29, #1200
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    sub x12, x29, #1232
    str x15, [x12]
    add x15, x12, #8
    movz x9, #12
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x12
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_67:
    and w15, w14, #255
    cbnz w15, L1_59
    b L1_60
L1_59:
    sub x19, x29, #232
    add x14, x19, #96
    adrp x15, _lb_net_16http_unsupported@PAGE
    add x15, x15, _lb_net_16http_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x12, x29, #1248
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_71:
    b L1_61
L1_60:
L1_61:
    add x14, x23, #89
    movz x9, #1
    strb w9, [x14]
    b L1_58
L1_57:
L1_58:
    sub x19, x29, #232
    mov x10, x23
    mov x11, x19
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
    add x14, x19, #120
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_72:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_19http_parse_response
    .no_dead_strip _lb_net_19http_parse_response
_lb_net_19http_parse_response:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #880
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #848]
    str x20, [sp, #840]
    str x21, [sp, #832]
    str x22, [sp, #824]
    str x23, [sp, #816]
    str x24, [sp, #808]
    str x25, [sp, #800]
    str x26, [sp, #792]
    str x27, [sp, #784]
    sub x16, x29, #240
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #256
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #272
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #304
    str x6, [x16]
    sub x0, x29, #304
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x19, x29, #312
    mov x9, #0
    str x9, [x19]
    sub x20, x29, #240
    sub x21, x29, #304
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    mov x2, x9
    sub x8, x29, #344
    bl _lb_net_15http_check_head
    sub x15, x29, #344
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    sub x19, x29, #224
    add x14, x19, #96
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    sub x22, x29, #360
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    sub x8, x29, #408
    bl _lb_net_9http_line
    sub x15, x29, #408
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x15, #16
    sub x19, x29, #224
    add x12, x19, #96
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #8
    ldr x23, [x14]
    add x14, x21, #8
    ldr x14, [x14]
    cmp x23, x14
    b.ls L2_8
L2_7:
    sub x19, x29, #224
    add x14, x19, #96
    adrp x15, _lb_net_10http_limit@PAGE
    add x15, x15, _lb_net_10http_limit@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_21@PAGE
    add x15, x15, l_text_21@PAGEOFF
    sub x12, x29, #424
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
L2_9:
    movz x10, #13
    cmp x23, x10
    cset w14, lo
    cbnz w14, L2_44
    b L2_14
L2_44:
    mov w15, w14
    b L2_15
L2_14:
    ldr x14, [x22]
    movz x9, #8
    cmp x9, x23
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, #8
    ldrb w14, [x14]
    movz x10, #32
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_15:
    and w14, w15, #255
    cbnz w14, L2_45
    b L2_16
L2_45:
    mov w15, w14
    b L2_17
L2_16:
    ldr x14, [x22]
    movz x9, #12
    cmp x9, x23
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, #12
    ldrb w14, [x14]
    movz x10, #32
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_17:
    and w14, w15, #255
    cbnz w14, L2_11
    b L2_12
L2_11:
    sub x19, x29, #224
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #440
    str x15, [x12]
    add x15, x12, #8
    movz x9, #24
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
L2_13:
    ldr x25, [x22]
    add x24, x23, #1
    movz x9, #9
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #12
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
L2_19:
    add x14, x25, #9
    sub x15, x29, #456
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    sub x15, x29, #472
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #512
    bl _lb_net_11http_number
    sub x15, x29, #512
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_22
    b L2_21
L2_22:
    add x14, x15, #8
    sub x19, x29, #224
    add x12, x19, #96
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    ldr x22, [x15]
    movz x10, #100
    cmp x22, x10
    cset w14, lo
    cbnz w14, L2_46
    b L2_27
L2_46:
    mov w15, w14
    b L2_28
L2_27:
    movz x10, #599
    cmp x22, x10
    cset w15, hi
L2_28:
    and w14, w15, #255
    cbnz w14, L2_47
    b L2_29
L2_47:
    mov w15, w14
    b L2_30
L2_29:
    sub x26, x29, #544
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #560
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    mov x10, x15
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #13
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x24
    b.lo 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #13
    cmp x9, x23
    b.ls L2_31
L2_32:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L2_31:
    add x14, x25, #13
    sub x15, x23, #13
    sub x12, x29, #576
    str x14, [x12]
    add x12, x12, #8
    str x15, [x12]
    sub x12, x29, #592
    str x14, [x12]
    add x14, x12, #8
    str x15, [x14]
    add x14, x26, #16
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x26
    mov x0, x9
    bl _lb_net_16http_field_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_30:
    and w14, w15, #255
    cbnz w14, L2_24
    b L2_25
L2_24:
    sub x19, x29, #224
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_27@PAGE
    add x15, x15, l_text_27@PAGEOFF
    sub x12, x29, #608
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_25:
L2_26:
    sub x23, x29, #272
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_35
L2_34:
    sub x19, x29, #224
    add x14, x19, #96
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_28@PAGE
    add x15, x15, l_text_28@PAGEOFF
    sub x12, x29, #624
    str x15, [x12]
    add x15, x12, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_35:
L2_36:
    sub x26, x29, #720
    sub x27, x29, #816
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    mov x10, x23
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #8
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
L2_38:
    sub x14, x29, #832
    str x25, [x14]
    add x14, x14, #8
    movz x9, #8
    str x9, [x14]
    sub x14, x29, #848
    str x25, [x14]
    add x15, x14, #8
    movz x9, #8
    str x9, [x15]
    add x15, x27, #32
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    and w14, w22, #65535
    add x15, x27, #48
    strh w14, [x15]
    mov x10, x27
    mov x11, x26
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
    sub x14, x29, #256
    mov x0, x26
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x19
    mov x9, x14
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x9, x21
    mov x6, x9
    sub x8, x29, #880
    bl _lb_net_16http_finish_head
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_41
    b L2_40
L2_41:
    sub x19, x29, #224
    add x14, x19, #96
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #120
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_40:
    sub x19, x29, #224
    mov x10, x26
    mov x11, x19
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
    add x14, x19, #120
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_15http_check_head
_lb_net_15http_check_head:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    sub x0, x29, #112
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x14, x29, #80
    add x19, x14, #8
    ldr x15, [x19]
    sub x12, x29, #112
    ldr x12, [x12]
    cmp x15, x12
    b.ls L3_2
L3_1:
    sub x19, x29, #64
    adrp x14, _lb_net_10http_limit@PAGE
    add x14, x14, _lb_net_10http_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    bl _lb_net_13http_head_end
    sub x16, x29, #144
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x12, x29, #144
    add x15, x12, #8
    ldrb w15, [x15]
    cbnz w15, L3_5
    b L3_6
L3_5:
    ldr x14, [x12]
    b L3_7
L3_6:
    sub x19, x29, #64
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #20
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
L3_7:
    ldr x15, [x19]
    cmp x14, x15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_10
L3_9:
    sub x19, x29, #64
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_12:
    b L3_11
L3_10:
L3_11:
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_16http_finish_head
_lb_net_16http_finish_head:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1648
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1616]
    str x20, [sp, #1608]
    str x21, [sp, #1600]
    str x22, [sp, #1592]
    str x23, [sp, #1584]
    str x24, [sp, #1576]
    str x25, [sp, #1568]
    str x26, [sp, #1560]
    str x27, [sp, #1552]
    str x28, [sp, #1544]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str x3, [x16]
    sub x16, x29, #200
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #232
    str x6, [x16]
    sub x0, x29, #232
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x14, x29, #152
    ldr x9, [x14]
    str x9, [sp, #416]
    ldr x9, [sp, #416]
    add x9, x9, #32
    str x9, [sp, #80]
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #408]
    ldr x9, [sp, #408]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w12, eq
    cbnz w12, L4_4
    b L4_159
L4_159:
    mov w14, w12
    b L4_5
L4_4:
    ldr x9, [sp, #80]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
L4_5:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L4_6
    b L4_160
L4_160:
    mov w14, w15
    b L4_7
L4_6:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #408]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w12, eq
    cbnz w12, L4_8
    b L4_161
L4_161:
    mov w14, w12
    b L4_9
L4_8:
    ldr x9, [sp, #80]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
L4_9:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L4_7:
    and w15, w14, #255
    cbnz w15, L4_1
    b L4_2
L4_1:
    sub x19, x29, #136
    adrp x14, _lb_net_16http_unsupported@PAGE
    add x14, x14, _lb_net_16http_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #24
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
    b L4_3
L4_2:
L4_3:
    sub x9, x29, #184
    str x9, [sp, #400]
    sub x9, x29, #168
    str x9, [sp, #392]
    ldr x9, [sp, #392]
    add x9, x9, #8
    str x9, [sp, #384]
    sub x20, x29, #296
    sub x9, x29, #344
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x25, x9, #40
    add x26, x20, #8
    sub x14, x29, #232
    add x27, x14, #8
    sub x15, x29, #200
    add x28, x15, #8
    add x9, x14, #16
    str x9, [sp, #376]
    adrp x9, l_text_37@PAGE
    add x9, x9, l_text_37@PAGEOFF
    str x9, [sp, #368]
    sub x9, x29, #376
    str x9, [sp, #360]
    ldr x9, [sp, #360]
    add x9, x9, #8
    str x9, [sp, #352]
    sub x9, x29, #392
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #344]
    sub x9, x29, #440
    str x9, [sp, #48]
    sub x19, x29, #472
    sub x9, x29, #488
    str x9, [sp, #336]
    ldr x9, [sp, #336]
    add x9, x9, #8
    str x9, [sp, #328]
    sub x9, x29, #504
    str x9, [sp, #320]
    ldr x9, [sp, #320]
    add x9, x9, #8
    str x9, [sp, #312]
    sub x9, x29, #520
    str x9, [sp, #304]
    ldr x9, [sp, #304]
    add x9, x9, #8
    str x9, [sp, #296]
    sub x9, x29, #536
    str x9, [sp, #288]
    ldr x9, [sp, #288]
    add x9, x9, #8
    str x9, [sp, #280]
    sub x9, x29, #552
    str x9, [sp, #272]
    add x9, x19, #16
    str x9, [sp, #264]
    sub x9, x29, #200
    str x9, [sp, #256]
    ldr x9, [sp, #256]
    add x9, x9, #8
    str x9, [sp, #248]
    mov x9, #0
    str x9, [sp, #72]
L4_11:
    ldr x9, [sp, #400]
    ldr x14, [x9]
    ldr x15, [x14]
    ldr x9, [sp, #384]
    ldr x12, [x9]
    cmp x15, x12
    b.hs L4_13
L4_12:
    ldr x9, [sp, #392]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #344
    bl _lb_net_9http_line
    ldrb w15, [x25]
    cbnz w15, L4_15
    b L4_14
L4_15:
    ldr x9, [sp, #64]
    add x14, x9, #16
    sub x19, x29, #136
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_16:
L4_14:
    ldr x10, [sp, #64]
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x26]
    mov x10, #0
    cmp x14, x10
    b.ne L4_18
L4_17:
    b L4_13
L4_20:
    b L4_19
L4_18:
L4_19:
    ldr x15, [x27]
    cmp x14, x15
    cset w15, hi
    cbnz w15, L4_162
    b L4_24
L4_162:
    mov w14, w15
    b L4_25
L4_24:
    ldr x14, [x28]
    ldr x9, [sp, #72]
    cmp x9, x14
    cset w14, hs
L4_25:
    and w15, w14, #255
    cbnz w15, L4_163
    b L4_26
L4_163:
    mov w14, w15
    b L4_27
L4_26:
    ldr x9, [sp, #376]
    ldr x14, [x9]
    ldr x9, [sp, #72]
    cmp x9, x14
    cset w14, hs
L4_27:
    and w15, w14, #255
    cbnz w15, L4_21
    b L4_22
L4_21:
    sub x19, x29, #136
    adrp x14, _lb_net_10http_limit@PAGE
    add x14, x14, _lb_net_10http_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    sub x15, x29, #360
    str x14, [x15]
    add x14, x15, #8
    movz x9, #54
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_28:
    b L4_23
L4_22:
L4_23:
    ldr x9, [sp, #368]
    ldr x10, [sp, #360]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #352]
    str x9, [x10]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #360]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_strings_find
    sub x16, x29, #392
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #344]
    ldrb w14, [x9]
    cbnz w14, L4_29
    b L4_30
L4_29:
    ldr x9, [sp, #56]
    ldr x21, [x9]
    b L4_31
L4_30:
    sub x19, x29, #136
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_38@PAGE
    add x14, x14, l_text_38@PAGEOFF
    sub x15, x29, #408
    str x14, [x15]
    add x14, x15, #8
    movz x9, #24
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_32:
L4_31:
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x24, [x20]
    ldr x22, [x26]
    add x23, x22, #1
    mov x9, #0
    cmp x9, x23
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x23
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls L4_33
L4_34:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L4_33:
    ldr x10, [sp, #336]
    str x24, [x10]
    ldr x10, [sp, #328]
    str x21, [x10]
    ldr x10, [sp, #320]
    str x24, [x10]
    ldr x10, [sp, #312]
    str x21, [x10]
    ldr x10, [sp, #320]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x21, #1
    cmp x15, x23
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x23
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x22
    b.ls L4_35
L4_36:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L4_35:
    add x14, x24, x15
    sub x12, x22, x15
    ldr x10, [sp, #304]
    str x14, [x10]
    ldr x10, [sp, #296]
    str x12, [x10]
    ldr x10, [sp, #288]
    str x14, [x10]
    ldr x10, [sp, #280]
    str x12, [x10]
    ldr x9, [sp, #288]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_8http_ows
    sub x16, x29, #552
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x10, [sp, #272]
    ldr x11, [sp, #264]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x19
    ldr x11, [sp, #48]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x9, [sp, #48]
    mov x0, x9
    bl _lb_net_16http_field_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L4_38
L4_37:
    sub x19, x29, #136
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    sub x15, x29, #568
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_40:
    b L4_39
L4_38:
L4_39:
    ldr x9, [sp, #256]
    ldr x14, [x9]
    ldr x9, [sp, #248]
    ldr x15, [x9]
    ldr x9, [sp, #72]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    lsl x15, x9, #5
    add x14, x14, x15
    ldr x10, [sp, #48]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x9, [sp, #72]
    add x14, x9, #1
    mov x9, x14
    str x9, [sp, #72]
    b L4_11
L4_13:
    ldr x9, [sp, #416]
    add x19, x9, #56
    sub x14, x29, #200
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #72]
    cmp x9, x10
    b.ls L4_41
L4_42:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L4_41:
    sub x14, x29, #584
    str x15, [x14]
    add x12, x14, #8
    ldr x9, [sp, #72]
    str x9, [x12]
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #416]
    add x21, x9, #90
    adrp x20, l_text_44@PAGE
    add x20, x20, l_text_44@PAGEOFF
    sub x14, x29, #600
    str x20, [x14]
    add x12, x14, #8
    movz x9, #10
    str x9, [x12]
    adrp x12, l_text_45@PAGE
    add x12, x12, l_text_45@PAGEOFF
    sub x13, x29, #616
    str x12, [x13]
    add x12, x13, #8
    movz x9, #7
    str x9, [x12]
    ldr x0, [sp, #416]
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x13
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #656
    bl _lb_net_HttpHead_9has_token
    sub x12, x29, #656
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L4_44
    b L4_43
L4_44:
    add x14, x12, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_45:
L4_43:
    ldrb w14, [x12]
    strb w14, [x21]
    sub x14, x29, #672
    str x20, [x14]
    add x15, x14, #8
    movz x9, #10
    str x9, [x15]
    adrp x15, l_text_46@PAGE
    add x15, x15, l_text_46@PAGEOFF
    sub x13, x29, #688
    str x15, [x13]
    add x15, x13, #8
    movz x9, #5
    str x9, [x15]
    ldr x0, [sp, #416]
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x13
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #728
    bl _lb_net_HttpHead_9has_token
    sub x15, x29, #728
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_47
    b L4_46
L4_47:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_48:
L4_46:
    ldrb w14, [x15]
    ldr x9, [sp, #416]
    add x9, x9, #88
    str x9, [sp, #40]
    and w14, w14, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L4_49
    b L4_164
L4_164:
    mov w15, w14
    b L4_50
L4_49:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #744
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #408]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w12, eq
    cbnz w12, L4_51
    b L4_165
L4_165:
    mov w14, w12
    b L4_52
L4_51:
    ldr x9, [sp, #80]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
L4_52:
    and w15, w14, #255
    cbnz w15, L4_166
    b L4_53
L4_166:
    mov w14, w15
    b L4_54
L4_53:
    sub x14, x29, #760
    str x20, [x14]
    add x15, x14, #8
    movz x9, #10
    str x9, [x15]
    adrp x15, l_text_47@PAGE
    add x15, x15, l_text_47@PAGEOFF
    sub x12, x29, #776
    str x15, [x12]
    add x15, x12, #8
    movz x9, #10
    str x9, [x15]
    ldr x0, [sp, #416]
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x12
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #816
    bl _lb_net_HttpHead_9has_token
    sub x15, x29, #816
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_56
    b L4_55
L4_56:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_57:
L4_55:
    ldrb w14, [x15]
L4_54:
    and w15, w14, #255
L4_50:
    and w14, w15, #255
    ldr x10, [sp, #40]
    strb w14, [x10]
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    sub x12, x29, #832
    str x14, [x12]
    add x12, x12, #8
    movz x9, #7
    str x9, [x12]
    ldr x9, [sp, #416]
    add x9, x9, #8
    str x9, [sp, #240]
    ldr x9, [sp, #240]
    ldr x12, [x9]
    movz x10, #7
    cmp x12, x10
    cset w13, eq
    cbnz w13, L4_61
    b L4_167
L4_167:
    mov w14, w13
    b L4_62
L4_61:
    ldr x9, [sp, #416]
    ldr x15, [x9]
    mov x0, x15
    mov x1, x14
    mov x2, x12
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L4_62:
    and w15, w14, #255
    cbnz w15, L4_63
    b L4_168
L4_168:
    mov w14, w15
    b L4_64
L4_63:
    ldr x9, [sp, #416]
    add x14, x9, #48
    ldrh w14, [x14]
    movz x10, #200
    cmp w14, w10
    cset w14, hs
L4_64:
    and w15, w14, #255
    cbnz w15, L4_65
    b L4_169
L4_169:
    mov w14, w15
    b L4_66
L4_65:
    ldr x9, [sp, #416]
    add x14, x9, #48
    ldrh w14, [x14]
    movz x10, #300
    cmp w14, w10
    cset w14, lo
L4_66:
    and w15, w14, #255
    cbnz w15, L4_58
    b L4_59
L4_58:
    ldr x9, [sp, #416]
    add x14, x9, #72
    movz x9, #4
    strb w9, [x14]
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_67:
    b L4_60
L4_59:
L4_60:
    sub x9, x29, #848
    str x9, [sp, #232]
    sub x23, x29, #864
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x23
    ldr x11, [sp, #232]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x23, [x19]
    add x14, x19, #8
    ldr x24, [x14]
    sub x25, x29, #896
    adrp x26, l_text_49@PAGE
    add x26, x26, l_text_49@PAGEOFF
    sub x27, x29, #912
    add x28, x27, #8
    sub x21, x29, #920
    add x9, x25, #16
    str x9, [sp, #224]
    sub x9, x29, #944
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #16
    str x9, [sp, #216]
    sub x9, x29, #960
    str x9, [sp, #208]
    sub x9, x29, #1000
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #32
    str x9, [sp, #200]
    ldr x9, [sp, #232]
    add x9, x9, #8
    str x9, [sp, #192]
    sub x9, x29, #1032
    str x9, [sp, #184]
    ldr x9, [sp, #184]
    add x9, x9, #8
    str x9, [sp, #176]
    adrp x9, l_text_51@PAGE
    add x9, x9, l_text_51@PAGEOFF
    str x9, [sp, #168]
    sub x9, x29, #1048
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x9, x9, #8
    str x9, [sp, #152]
    sub x9, x29, #1056
    str x9, [sp, #144]
    add x9, x25, #16
    str x9, [sp, #136]
    sub x9, x29, #1080
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #128]
    sub x9, x29, #1096
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #8
    str x9, [sp, #112]
    adrp x9, l_text_52@PAGE
    add x9, x9, l_text_52@PAGEOFF
    str x9, [sp, #104]
    sub x9, x29, #1112
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    add x9, x9, #8
    str x9, [sp, #88]
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    mov x22, x9
    mov x9, #0
    mov x20, x9
L4_68:
    cmp x22, x24
    b.hs L4_71
L4_69:
    lsl x14, x22, #5
    add x14, x23, x14
    mov x10, x14
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    str x26, [x27]
    movz x9, #14
    str x9, [x28]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x27
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    cbnz w14, L4_72
    b L4_73
L4_72:
    mov x9, #0
    str x9, [x21]
    mov x19, x20
L4_75:
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    sub x8, x29, #944
    bl _lb_net_14http_list_next
    ldr x9, [sp, #216]
    ldrb w14, [x9]
    cbnz w14, L4_78
    b L4_77
L4_78:
    ldr x10, [sp, #24]
    ldr x11, [sp, #208]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L4_76:
    ldr x9, [sp, #208]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #1000
    bl _lb_net_11http_number
    ldr x9, [sp, #200]
    ldrb w14, [x9]
    cbnz w14, L4_80
    b L4_79
L4_80:
    ldr x9, [sp, #16]
    add x14, x9, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_81:
L4_79:
    ldr x9, [sp, #16]
    ldr x20, [x9]
    ldr x9, [sp, #192]
    ldrb w14, [x9]
    cbnz w14, L4_85
    b L4_83
L4_85:
L4_82:
    cmp x20, x19
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_87
L4_86:
    sub x19, x29, #136
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_50@PAGE
    add x14, x14, l_text_50@PAGEOFF
    sub x15, x29, #1016
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_89:
    b L4_88
L4_87:
L4_88:
    b L4_84
L4_83:
L4_84:
    ldr x10, [sp, #184]
    str x20, [x10]
    movz x9, #1
    ldr x10, [sp, #176]
    strb w9, [x10]
    ldr x10, [sp, #184]
    ldr x11, [sp, #232]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x19, x20
    b L4_75
L4_77:
    mov x20, x19
    b L4_74
L4_73:
L4_74:
    ldr x9, [sp, #168]
    ldr x10, [sp, #160]
    str x9, [x10]
    movz x9, #17
    ldr x10, [sp, #152]
    str x9, [x10]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #160]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    cbnz w14, L4_90
    b L4_91
L4_90:
    mov x9, #0
    ldr x10, [sp, #144]
    str x9, [x10]
    ldr x9, [sp, #32]
    mov x19, x9
L4_93:
    ldr x9, [sp, #136]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #144]
    sub x8, x29, #1080
    bl _lb_net_14http_list_next
    ldr x9, [sp, #128]
    ldrb w14, [x9]
    cbnz w14, L4_96
    b L4_95
L4_96:
    ldr x10, [sp, #8]
    ldr x11, [sp, #120]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L4_94:
    ldr x9, [sp, #112]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne L4_98
L4_97:
    b L4_93
L4_100:
    b L4_99
L4_98:
L4_99:
    ldr x9, [sp, #104]
    ldr x10, [sp, #96]
    str x9, [x10]
    movz x9, #7
    ldr x10, [sp, #88]
    str x9, [x10]
    ldr x9, [sp, #120]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #96]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L4_102
L4_101:
    sub x19, x29, #136
    adrp x14, _lb_net_16http_unsupported@PAGE
    add x14, x14, _lb_net_16http_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    sub x15, x29, #1128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_104:
    b L4_103
L4_102:
L4_103:
    mov x9, x19
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x19, x14
    b L4_93
L4_95:
    mov x14, x19
    b L4_92
L4_91:
    ldr x9, [sp, #32]
    mov x14, x9
L4_92:
L4_70:
    add x15, x22, #1
    mov x9, x14
    str x9, [sp, #32]
    mov x22, x15
    b L4_68
L4_71:
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    sub x15, x29, #1144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    ldr x0, [sp, #416]
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_net_HttpHead_11field_count
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.ls L4_106
L4_105:
    ldr x9, [sp, #32]
    movz x10, #1
    cmp x9, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L4_170
    b L4_111
L4_170:
    mov w15, w14
    b L4_112
L4_111:
    ldr x9, [sp, #232]
    add x14, x9, #8
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L4_112:
    and w14, w15, #255
    cbnz w14, L4_171
    b L4_113
L4_171:
    mov w15, w14
    b L4_114
L4_113:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #1160
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #408]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w12, eq
    cbnz w12, L4_115
    b L4_172
L4_172:
    mov w14, w12
    b L4_116
L4_115:
    ldr x9, [sp, #80]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
L4_116:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L4_114:
    and w14, w15, #255
    cbnz w14, L4_108
    b L4_109
L4_108:
    sub x19, x29, #136
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    sub x15, x29, #1176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_117:
    b L4_110
L4_109:
L4_110:
    b L4_107
L4_106:
L4_107:
    ldr x9, [sp, #416]
    add x19, x9, #48
    ldrh w14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w14, hi
    cbnz w14, L4_121
    b L4_173
L4_173:
    mov w15, w14
    b L4_122
L4_121:
    ldrh w14, [x19]
    movz x10, #200
    cmp w14, w10
    cset w14, lo
    cbnz w14, L4_174
    b L4_123
L4_174:
    mov w15, w14
    b L4_124
L4_123:
    ldrh w14, [x19]
    movz x10, #204
    cmp w14, w10
    cset w15, eq
L4_124:
    and w14, w15, #255
    mov w15, w14
L4_122:
    and w14, w15, #255
    cbnz w14, L4_118
    b L4_119
L4_118:
    ldr x9, [sp, #232]
    add x14, x9, #8
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L4_175
    b L4_128
L4_175:
    mov w15, w14
    b L4_129
L4_128:
    ldr x9, [sp, #32]
    mov x10, #0
    cmp x9, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L4_129:
    and w14, w15, #255
    cbnz w14, L4_125
    b L4_126
L4_125:
    sub x19, x29, #136
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_56@PAGE
    add x14, x14, l_text_56@PAGEOFF
    sub x15, x29, #1192
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_130:
    b L4_127
L4_126:
L4_127:
    b L4_120
L4_119:
L4_120:
    ldrh w14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w14, hi
    cbnz w14, L4_134
    b L4_176
L4_176:
    mov w15, w14
    b L4_135
L4_134:
    adrp x14, l_text_57@PAGE
    add x14, x14, l_text_57@PAGEOFF
    sub x15, x29, #1208
    str x14, [x15]
    add x15, x15, #8
    movz x9, #4
    str x9, [x15]
    ldr x9, [sp, #240]
    ldr x15, [x9]
    movz x10, #4
    cmp x15, x10
    cset w12, eq
    cbnz w12, L4_136
    b L4_177
L4_177:
    mov w14, w12
    b L4_137
L4_136:
    ldr x9, [sp, #416]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
L4_137:
    and w15, w14, #255
    cbnz w15, L4_178
    b L4_138
L4_178:
    mov w14, w15
    b L4_139
L4_138:
    ldrh w14, [x19]
    movz x10, #200
    cmp w14, w10
    cset w14, lo
L4_139:
    and w15, w14, #255
    cbnz w15, L4_179
    b L4_140
L4_179:
    mov w14, w15
    b L4_141
L4_140:
    ldrh w14, [x19]
    movz x10, #204
    cmp w14, w10
    cset w14, eq
L4_141:
    and w15, w14, #255
    cbnz w15, L4_180
    b L4_142
L4_180:
    mov w14, w15
    b L4_143
L4_142:
    ldrh w14, [x19]
    movz x10, #304
    cmp w14, w10
    cset w14, eq
L4_143:
    and w15, w14, #255
L4_135:
    and w14, w15, #255
    cbnz w14, L4_131
    b L4_132
L4_131:
    ldr x9, [sp, #416]
    add x14, x9, #72
    mov x9, #0
    strb w9, [x14]
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_144:
    b L4_133
L4_132:
L4_133:
    ldr x9, [sp, #32]
    mov x10, #0
    cmp x9, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_146
L4_145:
    ldr x9, [sp, #416]
    add x14, x9, #72
    movz x9, #2
    strb w9, [x14]
    b L4_147
L4_146:
    ldr x9, [sp, #232]
    add x14, x9, #8
    ldrb w14, [x14]
    cbnz w14, L4_151
    b L4_149
L4_151:
L4_148:
    sub x14, x29, #232
    add x14, x14, #24
    ldr x14, [x14]
    cmp x20, x14
    b.ls L4_153
L4_152:
    sub x19, x29, #136
    adrp x14, _lb_net_10http_limit@PAGE
    add x14, x14, _lb_net_10http_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    sub x15, x29, #1224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_155:
    b L4_154
L4_153:
L4_154:
    ldr x9, [sp, #416]
    add x14, x9, #72
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #416]
    add x14, x9, #80
    str x20, [x14]
    b L4_150
L4_149:
    ldrh w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ls L4_157
L4_156:
    ldr x9, [sp, #416]
    add x14, x9, #72
    movz x9, #3
    strb w9, [x14]
    mov x9, #0
    ldr x10, [sp, #40]
    strb w9, [x10]
    b L4_158
L4_157:
    ldr x9, [sp, #416]
    add x14, x9, #72
    mov x9, #0
    strb w9, [x14]
L4_158:
L4_150:
L4_147:
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
    ldr x19, [sp, #1616]
    ldr x20, [sp, #1608]
    ldr x21, [sp, #1600]
    ldr x22, [sp, #1592]
    ldr x23, [sp, #1584]
    ldr x24, [sp, #1576]
    ldr x25, [sp, #1568]
    ldr x26, [sp, #1560]
    ldr x27, [sp, #1552]
    ldr x28, [sp, #1544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_9http_head_0init

    .section __TEXT,__const
l_text_0:
    .asciz "HTTP request line exceeds its limit"
l_text_1:
    .asciz " "
l_text_2:
    .asciz "request line needs a method"
l_text_3:
    .asciz "src/std/net/http/head.lucb:10:5"
l_text_4:
    .asciz "index out of bounds"
l_text_5:
    .asciz "src/std/net/http/head.lucb:11:5"
l_text_6:
    .asciz "request line needs a version"
l_text_7:
    .asciz "src/std/net/http/head.lucb:13:5"
l_text_8:
    .asciz "src/std/net/http/head.lucb:14:5"
l_text_9:
    .asciz "invalid request method or target"
l_text_10:
    .asciz "HTTP/1.1"
l_text_11:
    .asciz "host"
l_text_12:
    .asciz "HTTP/1.1 requires exactly one Host field"
l_text_13:
    .asciz "duplicate Host field"
l_text_14:
    .asciz "invalid Host field"
l_text_15:
    .asciz "expect"
l_text_16:
    .asciz ""
l_text_17:
    .asciz "100-continue"
l_text_18:
    .asciz "unsupported HTTP expectation"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/net/http/head.lucb:30:5"
l_text_21:
    .asciz "HTTP status line exceeds its limit"
l_text_22:
    .asciz "src/std/net/http/head.lucb:40:5"
l_text_23:
    .asciz "invalid HTTP status line"
l_text_24:
    .asciz "src/std/net/http/head.lucb:42:5"
l_text_25:
    .asciz "reason"
l_text_26:
    .asciz "src/std/net/http/head.lucb:43:5"
l_text_27:
    .asciz "invalid HTTP status or reason"
l_text_28:
    .asciz "invalid request method for response framing"
l_text_29:
    .asciz "src/std/net/http/head.lucb:47:5"
l_text_30:
    .asciz "src/std/net/http/head.lucb:49:5"
l_text_31:
    .asciz "HTTP head exceeds its byte limit"
l_text_32:
    .asciz "incomplete HTTP head"
l_text_33:
    .asciz "HTTP head parser does not consume body bytes"
l_text_34:
    .asciz "HTTP/1.0"
l_text_35:
    .asciz "unsupported HTTP version"
l_text_36:
    .asciz "HTTP fields exceed caller storage or configured limits"
l_text_37:
    .asciz ":"
l_text_38:
    .asciz "HTTP field needs a colon"
l_text_39:
    .asciz "src/std/net/http/head.lucb:69:9"
l_text_40:
    .asciz "invalid HTTP field name or value"
l_text_41:
    .asciz "src/std/net/http/head.lucb:72:9"
l_text_42:
    .asciz "src/std/net/http/head.lucb:73:9"
l_text_43:
    .asciz "src/std/net/http/head.lucb:74:5"
l_text_44:
    .asciz "connection"
l_text_45:
    .asciz "upgrade"
l_text_46:
    .asciz "close"
l_text_47:
    .asciz "keep-alive"
l_text_48:
    .asciz "CONNECT"
l_text_49:
    .asciz "content-length"
l_text_50:
    .asciz "conflicting Content-Length fields"
l_text_51:
    .asciz "transfer-encoding"
l_text_52:
    .asciz "chunked"
l_text_53:
    .asciz "unsupported HTTP transfer coding"
l_text_54:
    .asciz "src/std/net/http/head.lucb:101:17"
l_text_55:
    .asciz "ambiguous HTTP transfer framing"
l_text_56:
    .asciz "body framing is forbidden for this response status"
l_text_57:
    .asciz "HEAD"
l_text_58:
    .asciz "HTTP body exceeds its byte limit"
l_text_59:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
