    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_json_0init
_lb_json_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    adrp x14, _lb_json_invalid@PAGE
    add x14, x14, _lb_json_invalid@PAGEOFF
    movz x9, #110
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_json_14limit_exceeded@PAGE
    add x14, x14, _lb_json_14limit_exceeded@PAGEOFF
    movz x9, #111
    movk x9, #3178, lsl #16
    str w9, [x14]
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
    movz x9, #10
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_json_Value_close@GOTPAGE
    ldr x14, [x14, _lb_json_Value_close@GOTPAGEOFF]
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
    adrp x14, _lb_json_10value_type@PAGE
    add x14, x14, _lb_json_10value_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Bytes_reserve
_lb_json_Bytes_reserve:
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
    str x24, [sp, #216]
    str x25, [sp, #208]
    str x26, [sp, #200]
    str x27, [sp, #192]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    sub x16, x29, #168
    str x2, [x16]
    sub x9, x29, #136
    ldr x20, [x9]
    sub x14, x29, #152
    ldr x14, [x14]
    sub x15, x29, #168
    ldr x15, [x15]
    cmp x14, x15
    b.ls L1_2
L1_1:
    sub x19, x29, #128
    adrp x14, _lb_json_14limit_exceeded@PAGE
    add x14, x14, _lb_json_14limit_exceeded@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_2:
L1_3:
    add x19, x20, #8
    ldr x21, [x19]
    cmp x14, x21
    b.hi L1_6
L1_5:
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_7:
    mov x10, #0
    cmp x21, x10
    b.ne L1_10
L1_9:
    movz x9, #64
    mov x21, x9
    b L1_11
L1_10:
L1_11:
    mov x22, x21
L1_12:
    cmp x22, x14
    b.hs L1_14
L1_13:
L1_19:
    movz x10, #2
    udiv x21, x15, x10
    cmp x22, x21
    b.ls L1_16
L1_15:
    mov x21, x15
    b L1_17
L1_16:
    mov x9, x22
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_68@PAGE
    add x1, x1, l_text_68@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
L1_17:
    mov x22, x21
    b L1_12
L1_14:
    cmp x22, x15
    b.ls L1_21
L1_20:
    mov x21, x15
    b L1_22
L1_21:
    mov x21, x22
L1_22:
    sub x22, x29, #200
    adrp x23, _lb_memory_heap@PAGE
    add x23, x23, _lb_memory_heap@PAGEOFF
    sub x24, x29, #248
    movz x10, #16384, lsl #48
    cmp x21, x10
    b.ls L1_24
L1_23:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L1_25
L1_24:
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cbnz x15, L1_26
    b L1_27
L1_27:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L1_26:
    ldr x25, [x15]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #1
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #272
    add x25, x27, #16
    ldrb w25, [x25]
    mov x10, #0
    cmp x21, x10
    cset w26, ne
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    and w25, w26, w25
    cbnz w25, L1_28
    b L1_29
L1_28:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L1_25
L1_29:
    ldr x14, [x27]
    str x14, [x24]
    add x14, x24, #8
    str x21, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L1_25:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L1_31
    b L1_30
L1_31:
    add x14, x24, #16
    sub x19, x29, #128
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_30:
    mov x10, x24
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    ldr x14, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ls L1_34
L1_33:
    sub x15, x29, #288
    ldr x19, [x20]
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    ldr x19, [x23]
    add x21, x23, #8
    ldr x21, [x21]
    cbnz x21, L1_37
    b L1_36
L1_37:
    add x14, x21, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_36:
    b L1_35
L1_34:
L1_35:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Bytes_append
_lb_json_Bytes_append:
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
    str x24, [sp, #184]
    str x25, [sp, #176]
    str x26, [sp, #168]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #160
    str x3, [x16]
    sub x9, x29, #128
    ldr x23, [x9]
    add x19, x23, #16
    ldr x14, [x19]
    sub x20, x29, #144
    add x21, x20, #8
    ldr x15, [x21]
    sub x22, x29, #168
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x22
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #184
    ldr x22, [x22]
    str x22, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L2_1
    b L2_2
L2_1:
    b L2_3
L2_2:
    sub x19, x29, #120
    adrp x14, _lb_json_14limit_exceeded@PAGE
    add x14, x14, _lb_json_14limit_exceeded@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
L2_3:
    sub x14, x29, #160
    ldr x14, [x14]
    mov x0, x23
    mov x1, x22
    mov x2, x14
    sub x8, x29, #232
    bl _lb_json_Bytes_reserve
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_6
    b L2_5
L2_6:
    sub x19, x29, #120
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
L2_5:
    ldr x15, [x23]
    add x14, x23, #8
    ldr x24, [x14]
    ldr x25, [x19]
    add x14, x24, #1
    cmp x25, x14
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x14
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x24
    b.ls L2_8
L2_9:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L2_8:
    add x14, x15, x25
    sub x23, x24, x25
    sub x26, x29, #248
    str x14, [x26]
    add x14, x26, #8
    str x23, [x14]
    ldr x14, [x21]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    str x22, [x19]
    sub x14, x29, #120
    add x23, x14, #24
    mov x9, #0
    strb w9, [x23]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Bytes_view
_lb_json_Bytes_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x15, [x9]
    ldr x19, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L3_1
L3_2:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_1:
    sub x14, x29, #72
    str x19, [x14]
    add x20, x14, #8
    str x15, [x20]
    sub x20, x29, #48
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_json_Bytes_close
_lb_json_Bytes_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L4_2
L4_1:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x20, x29, #64
    ldr x21, [x19]
    str x21, [x20]
    add x21, x20, #8
    str x14, [x21]
    ldr x21, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L4_5
    b L4_4
L4_5:
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
L4_4:
    b L4_3
L4_2:
L4_3:
    sub x20, x29, #80
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_quoted
_lb_json_quoted:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #736]
    str x20, [sp, #728]
    str x21, [sp, #720]
    str x22, [sp, #712]
    str x23, [sp, #704]
    str x24, [sp, #696]
    str x25, [sp, #688]
    str x26, [sp, #680]
    str x27, [sp, #672]
    str x28, [sp, #664]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    sub x16, x29, #184
    str x3, [x16]
    sub x19, x29, #192
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #152
    ldr x20, [x14]
    add x14, x14, #8
    ldr x9, [x14]
    str x9, [sp, #192]
    sub x24, x29, #232
    add x22, x24, #32
    mov x9, #0
    mov x23, x9
L5_1:
    ldr x10, [sp, #192]
    cmp x23, x10
    b.hs L5_4
L5_2:
    add x14, x20, x23
    ldrb w14, [x14]
    and w14, w14, #255
    mov x0, x19
    mov x1, x14
    sub x8, x29, #232
    bl _lb_utf8_Decoder_push
    ldrb w14, [x22]
    cbnz w14, L5_6
    b L5_5
L5_6:
    add x14, x24, #8
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
L5_3:
    add x14, x23, #1
    mov x23, x14
    b L5_1
L5_4:
    mov x0, x19
    sub x8, x29, #264
    bl _lb_utf8_Decoder_finish
    sub x15, x29, #264
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_9
    b L5_8
L5_9:
    sub x19, x29, #136
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #184]
    adrp x9, l_text_15@PAGE
    add x9, x9, l_text_15@PAGEOFF
    str x9, [sp, #176]
    sub x14, x29, #280
    ldr x9, [sp, #176]
    str x9, [x14]
    add x15, x14, #8
    movz x9, #1
    str x9, [x15]
    sub x15, x29, #184
    ldr x9, [x15]
    str x9, [sp, #168]
    ldr x0, [sp, #184]
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #168]
    sub x8, x29, #312
    bl _lb_json_Bytes_append
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_12
    b L5_11
L5_12:
    sub x19, x29, #136
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_11:
    sub x9, x29, #465
    str x9, [sp, #56]
    sub x9, x29, #466
    str x9, [sp, #48]
    sub x9, x29, #488
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #32]
    sub x9, x29, #520
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #24]
    sub x9, x29, #384
    str x9, [sp, #152]
    adrp x9, l_text_16@PAGE
    add x9, x9, l_text_16@PAGEOFF
    str x9, [sp, #144]
    sub x9, x29, #400
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    add x9, x9, #8
    str x9, [sp, #128]
    sub x9, x29, #406
    str x9, [sp, #8]
    sub x23, x29, #412
    add x9, x23, #1
    str x9, [sp, #120]
    add x9, x23, #2
    str x9, [sp, #112]
    add x9, x23, #3
    str x9, [sp, #104]
    add x9, x23, #4
    str x9, [sp, #96]
    add x9, x23, #5
    str x9, [sp, #88]
    sub x9, x29, #432
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #72]
    sub x9, x29, #464
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #64]
    sub x24, x29, #314
    sub x25, x29, #316
    add x26, x25, #1
    sub x27, x29, #336
    add x28, x27, #8
    sub x22, x29, #368
    add x9, x22, #24
    str x9, [sp, #160]
    mov x9, #0
    mov x19, x9
L5_14:
    ldr x10, [sp, #192]
    cmp x19, x10
    b.hs L5_17
L5_15:
    add x14, x20, x19
    ldrb w14, [x14]
    and w21, w14, #255
    movz x10, #34
    cmp w21, w10
    cset w14, eq
    cbnz w14, L5_40
    b L5_21
L5_40:
    mov w15, w14
    b L5_22
L5_21:
    movz x10, #92
    cmp w21, w10
    cset w15, eq
L5_22:
    and w14, w15, #255
    cbnz w14, L5_18
    b L5_19
L5_18:
    movz x9, #92
    strb w9, [x25]
    strb w21, [x26]
    mov x10, x25
    mov x11, x24
    ldrh w12, [x10, #0]
    strh w12, [x11, #0]
    str x24, [x27]
    movz x9, #2
    str x9, [x28]
    ldr x0, [sp, #184]
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #168]
    sub x8, x29, #368
    bl _lb_json_Bytes_append
    ldr x9, [sp, #160]
    ldrb w14, [x9]
    cbnz w14, L5_24
    b L5_23
L5_24:
    sub x19, x29, #136
    mov x10, x22
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_23:
    b L5_20
L5_19:
    movz x10, #32
    cmp w21, w10
    b.hs L5_27
L5_26:
    ldr x9, [sp, #144]
    ldr x10, [sp, #136]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #128]
    str x9, [x10]
    ldr x10, [sp, #136]
    ldr x11, [sp, #152]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #92
    strb w9, [x23]
    movz x9, #117
    ldr x10, [sp, #120]
    strb w9, [x10]
    movz x9, #48
    ldr x10, [sp, #112]
    strb w9, [x10]
    movz x9, #48
    ldr x10, [sp, #104]
    strb w9, [x10]
L5_30:
    lsr w14, w21, #4
    and w14, w14, #255
    mov w14, w14
    movz x10, #16
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #144]
    add x14, x9, x14
    ldrb w14, [x14]
    ldr x10, [sp, #96]
    strb w14, [x10]
    movz x10, #15
    and w14, w21, w10
    mov w14, w14
    ldr x9, [sp, #144]
    add x14, x9, x14
    ldrb w14, [x14]
    ldr x10, [sp, #88]
    strb w14, [x10]
    mov x10, x23
    ldr x11, [sp, #8]
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrh w12, [x10, #4]
    strh w12, [x11, #4]
    ldr x9, [sp, #8]
    ldr x10, [sp, #80]
    str x9, [x10]
    movz x9, #6
    ldr x10, [sp, #72]
    str x9, [x10]
    ldr x0, [sp, #184]
    ldr x9, [sp, #80]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #168]
    sub x8, x29, #464
    bl _lb_json_Bytes_append
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, L5_32
    b L5_31
L5_32:
    sub x19, x29, #136
    ldr x10, [sp, #0]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_31:
    b L5_28
L5_27:
    ldr x10, [sp, #48]
    strb w21, [x10]
    ldr x10, [sp, #48]
    ldr x11, [sp, #56]
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldr x9, [sp, #56]
    ldr x10, [sp, #40]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #32]
    str x9, [x10]
    ldr x0, [sp, #184]
    ldr x9, [sp, #40]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #168]
    sub x8, x29, #520
    bl _lb_json_Bytes_append
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, L5_35
    b L5_34
L5_35:
    sub x19, x29, #136
    ldr x10, [sp, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_34:
L5_28:
L5_20:
L5_16:
    add x14, x19, #1
    mov x19, x14
    b L5_14
L5_17:
    sub x14, x29, #536
    ldr x9, [sp, #176]
    str x9, [x14]
    add x15, x14, #8
    movz x9, #1
    str x9, [x15]
    ldr x0, [sp, #184]
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #168]
    sub x8, x29, #568
    bl _lb_json_Bytes_append
    sub x15, x29, #568
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_38
    b L5_37
L5_38:
    sub x19, x29, #136
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_37:
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    ldr x27, [sp, #672]
    ldr x28, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_init
_lb_json_Value_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    movz x10, #2
    cmp x19, x10
    cset w14, lo
    cbnz w14, L6_10
    b L6_4
L6_10:
    mov w15, w14
    b L6_5
L6_4:
    movz x10, #1024, lsl #16
    cmp x19, x10
    cset w15, hi
L6_5:
    and w14, w15, #255
    cbnz w14, L6_1
    b L6_2
L6_1:
    sub x19, x29, #88
    adrp x14, _lb_json_invalid@PAGE
    add x14, x14, _lb_json_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
    b L6_3
L6_2:
L6_3:
    sub x21, x29, #152
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x21, x20, #24
    sub x22, x29, #176
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #123
    strb w9, [x14]
    add x14, x20, #56
    mov x9, #0
    str x9, [x14]
    add x14, x20, #64
    str x19, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
    sub x21, x29, #192
    str x15, [x21]
    add x15, x21, #8
    movz x9, #2
    str x9, [x15]
    ldr x14, [x14]
    mov x0, x20
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x14
    sub x8, x29, #224
    bl _lb_json_Bytes_append
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L6_8
    b L6_7
L6_8:
    sub x19, x29, #88
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_9:
L6_7:
    sub x14, x29, #88
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_own
_lb_json_Value_own:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #104
    str x0, [x16]
    sub x14, x29, #104
    ldr x19, [x14]
    adrp x20, _lb_json_10value_type@PAGE
    add x20, x20, _lb_json_10value_type@PAGEOFF
    sub x21, x29, #120
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x9, x20
    mov x1, x9
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #160
    bl _lb_interop_Reference_0g1_json_Value_adopt
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_json_Value_array
_lb_json_Value_array:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    str x22, [sp, #216]
    str x23, [sp, #208]
    sub x16, x29, #120
    str x0, [x16]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #176
    ldr x19, [x20]
    add x14, x20, #8
    ldr x20, [x14]
    cbnz x20, L8_1
    b L8_2
L8_2:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L8_1:
    ldr x14, [x20]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    movz x1, #72
    movz x2, #8
    sub x8, x29, #200
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #200
    add x14, x22, #16
    ldrb w14, [x14]
    cbnz w14, L8_3
    b L8_4
L8_4:
    add x14, x21, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b L8_5
L8_3:
    ldr x23, [x22]
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    sub x14, x29, #120
    ldr x14, [x14]
    mov x0, x23
    mov x1, x14
    sub x8, x29, #232
    bl _lb_json_Value_init
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L8_7
    b L8_6
L8_7:
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    cbnz x20, L8_9
    b L8_8
L8_9:
    add x14, x20, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L8_8:
    b L8_5
L8_6:
    str x23, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
L8_5:
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L8_11
    b L8_10
L8_11:
    add x14, x21, #8
    sub x19, x29, #104
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_12:
L8_10:
    ldr x14, [x21]
    add x15, x14, #48
    movz x9, #91
    strb w9, [x15]
    ldr x15, [x14]
    add x19, x14, #8
    ldr x20, [x19]
    mov x9, #0
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #91
    strb w9, [x15]
    ldr x15, [x14]
    ldr x19, [x19]
    movz x9, #1
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x15, #1
    movz x9, #93
    strb w9, [x15]
    mov x0, x14
    sub x8, x29, #272
    bl _lb_json_Value_own
    sub x15, x29, #272
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L8_14
    b L8_13
L8_14:
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_15:
L8_13:
    sub x19, x29, #104
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_16:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_json_Value_scalar
_lb_json_Value_scalar:
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
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x21, x29, #144
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #184
    ldr x20, [x21]
    add x14, x21, #8
    ldr x21, [x14]
    cbnz x21, L9_1
    b L9_2
L9_2:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L9_1:
    ldr x14, [x21]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    movz x1, #72
    movz x2, #8
    sub x8, x29, #208
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #208
    add x14, x23, #16
    ldrb w14, [x14]
    cbnz w14, L9_3
    b L9_4
L9_4:
    add x14, x22, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    b L9_5
L9_3:
    ldr x24, [x23]
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x0, x24
    movz x1, #16, lsl #16
    sub x8, x29, #240
    bl _lb_json_Value_init
    sub x15, x29, #240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L9_7
    b L9_6
L9_7:
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    cbnz x21, L9_9
    b L9_8
L9_9:
    add x14, x21, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_8:
    b L9_5
L9_6:
    str x24, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
L9_5:
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L9_11
    b L9_10
L9_11:
    add x14, x22, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_12:
L9_10:
    ldr x20, [x22]
    add x14, x20, #16
    mov x9, #0
    str x9, [x14]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #128
    add x15, x20, #64
    ldr x15, [x15]
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    sub x8, x29, #296
    bl _lb_json_Bytes_append
    sub x15, x29, #296
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L9_16
    b L9_15
L9_16:
    sub x21, x29, #264
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L9_13
L9_15:
    b L9_14
L9_13:
    mov x0, x20
    bl _lb_json_Bytes_close
    add x14, x20, #24
    mov x0, x14
    bl _lb_json_Bytes_close
L9_24:
    sub x14, x29, #312
    str x20, [x14]
    add x15, x14, #8
    movz x9, #72
    str x9, [x15]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x22, [x22]
    cbnz x22, L9_18
    b L9_17
L9_18:
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
L9_17:
    sub x19, x29, #112
    add x14, x19, #8
    ldr w15, [x21]
    str w15, [x14]
    add x15, x21, #8
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_19:
L9_14:
    mov x0, x20
    sub x8, x29, #352
    bl _lb_json_Value_own
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L9_21
    b L9_20
L9_21:
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
L9_22:
L9_20:
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_23:
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_json_Value_null
_lb_json_Value_null:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #136
    bl _lb_json_Value_scalar
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    sub x19, x29, #80
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_json_Value_encode
_lb_json_Value_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x14, [x9]
    mov x0, x14
    bl _lb_json_Bytes_view
    sub x16, x29, #72
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #72
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    sub x19, x29, #88
    str x15, [x19]
    add x15, x19, #8
    str x14, [x15]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_1:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_json_Value_insert
_lb_json_Value_insert:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #960
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #928]
    str x20, [sp, #920]
    str x21, [sp, #912]
    str x22, [sp, #904]
    str x23, [sp, #896]
    str x24, [sp, #888]
    str x25, [sp, #880]
    str x26, [sp, #872]
    str x27, [sp, #864]
    str x28, [sp, #856]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x0, x29, #168
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x9, x29, #144
    ldr x9, [x9]
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #48
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L12_78
    b L12_4
L12_78:
    mov w14, w15
    b L12_5
L12_4:
    movz x10, #123
    cmp w14, w10
    cset w15, eq
    sub x21, x29, #168
    add x21, x21, #16
    ldrb w21, [x21]
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    cmp w15, w21
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L12_5:
    and w15, w14, #255
    cbnz w15, L12_1
    b L12_2
L12_1:
    sub x19, x29, #136
    adrp x14, _lb_json_invalid@PAGE
    add x14, x14, _lb_json_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_39@PAGE
    add x14, x14, l_text_39@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
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
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_6:
    b L12_3
L12_2:
L12_3:
    sub x9, x29, #224
    str x9, [sp, #96]
    ldr x11, [sp, #96]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x15, x29, #168
    add x14, x15, #16
    ldrb w9, [x14]
    str w9, [sp, #88]
    ldr w9, [sp, #88]
    cbnz w9, L12_10
    b L12_8
L12_10:
    sub x23, x29, #240
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L12_7:
    ldr x9, [sp, #0]
    add x14, x9, #64
    ldr x14, [x14]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #96]
    mov x3, x14
    sub x8, x29, #272
    bl _lb_json_quoted
    sub x15, x29, #272
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_12
    b L12_11
L12_12:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_13:
L12_11:
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x14, x9, #16
    ldr x9, [x14]
    str x9, [sp, #72]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #64]
    sub x26, x29, #288
    add x27, x26, #8
    sub x21, x29, #304
    add x28, x21, #8
    sub x9, x29, #320
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x19, x29, #336
    add x9, x19, #8
    str x9, [sp, #40]
    mov x9, #0
    mov x14, x9
    mov x9, #0
    mov x22, x9
L12_14:
    ldr x10, [sp, #72]
    cmp x22, x10
    b.hs L12_17
L12_15:
    ldr x9, [sp, #80]
    ldr x15, [x9]
    ldr x9, [sp, #64]
    ldr x24, [x9]
    cmp x22, x24
    b.lo 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x15, x22
    ldrb w20, [x20]
    movz x10, #10
    cmp w20, w10
    b.ne L12_19
L12_18:
    add x20, x24, #1
    cmp x14, x20
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x20
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x22
    b.ls L12_24
L12_25:
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L12_24:
    add x20, x15, x14
    sub x24, x22, x14
    str x20, [x26]
    str x24, [x27]
    str x20, [x21]
    str x24, [x28]
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_view
    sub x16, x29, #320
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #56]
    ldr x23, [x9]
    ldr x9, [sp, #48]
    ldr x25, [x9]
    str x23, [x19]
    ldr x10, [sp, #40]
    str x25, [x10]
    cmp x24, x25
    cset w25, eq
    cbnz w25, L12_26
    b L12_79
L12_79:
    mov w14, w25
    b L12_27
L12_26:
    mov x0, x20
    mov x1, x23
    mov x2, x24
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L12_27:
    and w15, w14, #255
    cbnz w15, L12_21
    b L12_22
L12_21:
    sub x19, x29, #136
    adrp x14, _lb_json_invalid@PAGE
    add x14, x14, _lb_json_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_28:
    b L12_23
L12_22:
L12_23:
    add x14, x22, #1
    b L12_20
L12_19:
L12_20:
L12_16:
    add x15, x22, #1
    mov x22, x15
    b L12_14
L12_17:
    b L12_9
L12_8:
L12_9:
    sub x19, x29, #376
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x9, [sp, #0]
    add x9, x9, #56
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L12_30
L12_29:
    adrp x14, l_text_44@PAGE
    add x14, x14, l_text_44@PAGEOFF
    sub x15, x29, #392
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    ldr x9, [sp, #0]
    add x14, x9, #64
    ldr x14, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x14
    sub x8, x29, #424
    bl _lb_json_Bytes_append
    sub x15, x29, #424
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_33
    b L12_32
L12_33:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_34:
L12_32:
    b L12_31
L12_30:
L12_31:
    ldr w9, [sp, #88]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w21, eq
    cbnz w21, L12_35
    b L12_36
L12_35:
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_view
    sub x16, x29, #440
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #440
    ldr x9, [sp, #0]
    add x22, x9, #64
    ldr x15, [x22]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    sub x8, x29, #472
    bl _lb_json_Bytes_append
    sub x15, x29, #472
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_39
    b L12_38
L12_39:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_40:
L12_38:
    adrp x14, l_text_45@PAGE
    add x14, x14, l_text_45@PAGEOFF
    sub x15, x29, #488
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    ldr x14, [x22]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x14
    sub x8, x29, #520
    bl _lb_json_Bytes_append
    sub x15, x29, #520
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_42
    b L12_41
L12_42:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_43:
L12_41:
    b L12_37
L12_36:
L12_37:
    sub x14, x29, #184
    ldr x14, [x14]
    mov x0, x14
    bl _lb_json_Bytes_view
    sub x16, x29, #536
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #536
    ldr x9, [sp, #0]
    add x22, x9, #64
    ldr x15, [x22]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    sub x8, x29, #568
    bl _lb_json_Bytes_append
    sub x15, x29, #568
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_45
    b L12_44
L12_45:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_46:
L12_44:
    ldr x9, [sp, #0]
    add x23, x9, #16
    ldr x14, [x23]
    add x24, x19, #16
    ldr x15, [x24]
    sub x25, x29, #576
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x25
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #592
    ldr x25, [x25]
    str x25, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L12_47
    b L12_48
L12_47:
    b L12_49
L12_48:
    sub x20, x29, #136
    adrp x14, _lb_json_14limit_exceeded@PAGE
    add x14, x14, _lb_json_14limit_exceeded@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #608
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_50:
L12_49:
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #16
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #96]
    add x9, x9, #16
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    sub x20, x29, #616
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x28, x29, #632
    ldr x15, [x20]
    str x15, [x28]
    add x20, x28, #8
    strb w14, [x20]
    ldrb w14, [x20]
    cbnz w14, L12_51
    b L12_52
L12_51:
    b L12_53
L12_52:
    sub x20, x29, #136
    adrp x14, _lb_json_14limit_exceeded@PAGE
    add x14, x14, _lb_json_14limit_exceeded@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    sub x15, x29, #648
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_54:
L12_53:
    sub x20, x29, #656
    mov x0, x15
    movz x1, #1
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x28, x29, #672
    ldr x20, [x20]
    str x20, [x28]
    add x28, x28, #8
    strb w14, [x28]
    ldrb w14, [x28]
    cbnz w14, L12_55
    b L12_56
L12_55:
    b L12_57
L12_56:
    sub x20, x29, #136
    adrp x14, _lb_json_14limit_exceeded@PAGE
    add x14, x14, _lb_json_14limit_exceeded@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    sub x15, x29, #688
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_58:
L12_57:
    ldr x14, [x22]
    ldr x0, [sp, #0]
    mov x1, x25
    mov x2, x14
    sub x8, x29, #720
    bl _lb_json_Bytes_reserve
    sub x15, x29, #720
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_60
    b L12_59
L12_60:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_61:
L12_59:
    cbnz w21, L12_62
    b L12_63
L12_62:
    ldr x14, [x22]
    ldr x0, [sp, #24]
    mov x1, x20
    mov x2, x14
    sub x8, x29, #752
    bl _lb_json_Bytes_reserve
    sub x15, x29, #752
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_66
    b L12_65
L12_66:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_67:
L12_65:
    b L12_64
L12_63:
L12_64:
    ldr x14, [x23]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_68@PAGE
    add x1, x1, l_text_68@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #0]
    ldr x22, [x9]
    ldr x9, [sp, #0]
    add x20, x9, #8
    ldr x28, [x20]
    add x15, x28, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x28, x15
    b.lo 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x28
    b.ls L12_68
L12_69:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L12_68:
    add x15, x14, x22
    sub x27, x28, x14
    sub x26, x29, #768
    str x15, [x26]
    add x15, x26, #8
    str x27, [x15]
    sub x27, x29, #784
    mov x10, x26
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x19
    bl _lb_json_Bytes_view
    sub x16, x29, #800
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #800
    ldr x26, [x24]
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x26
    bl _lb_memory_copy_0g1_u8
    str x25, [x23]
    mov x9, x25
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_68@PAGE
    add x1, x1, l_text_68@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #0]
    ldr x26, [x9]
    ldr x27, [x20]
    cmp x15, x27
    b.lo 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x26, x15, x26
    ldr x9, [sp, #104]
    ldrb w15, [x9]
    movz x10, #123
    cmp w15, w10
    b.ne L12_71
L12_70:
    movz x9, #125
    mov w14, w9
    b L12_72
L12_71:
    movz x9, #93
    mov w14, w9
L12_72:
    and w15, w14, #255
    strb w15, [x26]
    cbnz w21, L12_73
    b L12_74
L12_73:
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    add x20, x9, #8
    ldr x21, [x20]
    ldr x9, [sp, #16]
    ldr x22, [x9]
    add x14, x21, #1
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x21
    b.ls L12_76
L12_77:
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L12_76:
    add x14, x15, x22
    sub x23, x21, x22
    sub x24, x29, #816
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    sub x23, x29, #832
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_view
    sub x16, x29, #848
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #848
    ldr x9, [sp, #8]
    ldr x24, [x9]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x24
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x23, [x9]
    mov x9, x14
    mov x10, x23
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_68@PAGE
    add x1, x1, l_text_68@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #16]
    str x14, [x10]
    ldr x9, [sp, #24]
    ldr x23, [x9]
    ldr x24, [x20]
    cmp x14, x24
    b.lo 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x23
    movz x9, #10
    strb w9, [x14]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_68@PAGE
    add x1, x1, l_text_68@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #16]
    str x14, [x10]
    b L12_75
L12_74:
L12_75:
    ldr x9, [sp, #32]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_68@PAGE
    add x1, x1, l_text_68@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #32]
    str x14, [x10]
    mov x0, x19
    bl _lb_json_Bytes_close
    ldr x0, [sp, #96]
    bl _lb_json_Bytes_close
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
    ldr x19, [sp, #928]
    ldr x20, [sp, #920]
    ldr x21, [sp, #912]
    ldr x22, [sp, #904]
    ldr x23, [sp, #896]
    ldr x24, [sp, #888]
    ldr x25, [sp, #880]
    ldr x26, [sp, #872]
    ldr x27, [sp, #864]
    ldr x28, [sp, #856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_set
_lb_json_Value_set:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #120
    str x3, [x16]
    sub x9, x29, #88
    ldr x21, [x9]
    sub x14, x29, #104
    sub x19, x29, #144
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #168
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x14, x29, #120
    mov x0, x14
    sub x8, x29, #208
    bl _lb_interop_Reference_0g1_json_Value_get
    sub x15, x29, #208
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
L13_1:
    ldr x14, [x15]
    mov x0, x21
    mov x9, x20
    mov x1, x9
    mov x2, x14
    sub x8, x29, #240
    bl _lb_json_Value_insert
    sub x19, x29, #240
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L13_5
    b L13_4
L13_5:
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_6:
L13_4:
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_append
_lb_json_Value_append:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x9, x29, #88
    ldr x21, [x9]
    sub x19, x29, #128
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #152
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x14, x29, #104
    mov x0, x14
    sub x8, x29, #192
    bl _lb_interop_Reference_0g1_json_Value_get
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_2
    b L14_1
L14_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_3:
L14_1:
    ldr x14, [x15]
    mov x0, x21
    mov x9, x20
    mov x1, x9
    mov x2, x14
    sub x8, x29, #224
    bl _lb_json_Value_insert
    sub x19, x29, #224
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L14_5
    b L14_4
L14_5:
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_6:
L14_4:
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_8set_text
_lb_json_Value_8set_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    str x23, [sp, #336]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #136
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #104
    ldr x20, [x9]
    sub x21, x29, #144
    sub x14, x29, #136
    mov x10, x14
    sub x11, x29, #272
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #296
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #272
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    movz x3, #16, lsl #16
    sub x8, x29, #328
    bl _lb_json_quoted
    sub x15, x29, #328
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L15_8
    b L15_7
L15_8:
    sub x22, x29, #256
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    mov x10, x22
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L15_14
L15_9:
L15_7:
    mov x0, x19
    bl _lb_json_Bytes_view
    sub x16, x29, #344
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #344
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    sub x22, x29, #360
    str x15, [x22]
    add x15, x22, #8
    str x14, [x15]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #400
    bl _lb_json_Value_scalar
    sub x15, x29, #400
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L15_11
    b L15_10
L15_11:
    add x14, x15, #8
    sub x22, x29, #256
    add x23, x22, #8
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    mov x10, x22
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L15_14
L15_12:
L15_10:
    sub x22, x29, #256
    mov x10, x15
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _lb_json_Bytes_close
    mov x10, x22
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L15_14
L15_13:
    sub x14, x29, #296
    mov x0, x14
    bl _lb_json_Bytes_close
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L15_14:
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L15_2
    b L15_1
L15_2:
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_3:
L15_1:
    mov x10, x15
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #120
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x21
    ldr x3, [x9]
    sub x8, x29, #216
    bl _lb_json_Value_set
    sub x19, x29, #216
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L15_5
    b L15_4
L15_5:
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x21]
    mov x0, x14
    bl _lb_ownership_release
L15_15:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_6:
L15_4:
    ldr x14, [x21]
    mov x0, x14
    bl _lb_ownership_release
L15_16:
    sub x14, x29, #96
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_11set_integer
_lb_json_Value_11set_integer:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #144
    str x3, [x16]
    sub x9, x29, #112
    ldr x23, [x9]
    sub x24, x29, #152
    sub x14, x29, #144
    ldr x19, [x14]
    sub x10, x29, #280
    str x19, [x10]
    sub x20, x29, #312
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #328
    str x20, [x14]
    add x14, x14, #8
    movz x9, #32
    str x9, [x14]
    sub x21, x29, #352
    str x20, [x21]
    add x20, x21, #8
    movz x9, #32
    str x9, [x20]
    add x22, x21, #16
    mov x9, #0
    str x9, [x22]
    mov x0, x21
    mov x1, x19
    bl _lb_core_10format_i64
    mov w14, w0
    sub x19, x29, #400
    ldr x14, [x22]
    ldr x15, [x20]
    cmp x14, x15
    b.ls L16_8
L16_7:
    add x14, x19, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_29@PAGE
    add x15, x15, l_text_29@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    b L16_9
L16_8:
    mov x0, x21
    bl _lb_core_13format_finish
    sub x16, x29, #416
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #416
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
L16_9:
    add x14, x19, #40
    ldrb w14, [x14]
    cbnz w14, L16_11
    b L16_10
L16_11:
    add x14, x19, #16
    sub x20, x29, #264
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_17
L16_12:
L16_10:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #456
    bl _lb_json_Value_scalar
    sub x15, x29, #456
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_14
    b L16_13
L16_14:
    add x14, x15, #8
    sub x19, x29, #264
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
    mov x10, x19
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_17
L16_15:
L16_13:
    sub x19, x29, #264
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_17
L16_16:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L16_17:
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_2
    b L16_1
L16_2:
    add x14, x15, #8
    sub x19, x29, #104
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_3:
L16_1:
    mov x10, x15
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #128
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x24
    ldr x3, [x9]
    sub x8, x29, #224
    bl _lb_json_Value_set
    sub x19, x29, #224
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L16_5
    b L16_4
L16_5:
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x24]
    mov x0, x14
    bl _lb_ownership_release
L16_18:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_6:
L16_4:
    ldr x14, [x24]
    mov x0, x14
    bl _lb_ownership_release
L16_19:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_10set_number
_lb_json_Value_10set_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str d8, [sp, #400]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #136
    str d0, [x16]
    sub x9, x29, #104
    ldr x19, [x9]
    sub x20, x29, #144
    sub x14, x29, #136
    ldr d8, [x14]
    sub x10, x29, #272
    str d8, [x10]
    fmov d16, d8
    fmov d0, d16
    bl _lb_math_9is_finite
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L17_8
L17_7:
    sub x21, x29, #256
    add x14, x21, #8
    adrp x15, _lb_json_invalid@PAGE
    add x15, x15, _lb_json_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_31@PAGE
    add x15, x15, l_text_31@PAGEOFF
    sub x22, x29, #288
    str x15, [x22]
    add x15, x22, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L17_18
L17_10:
    b L17_9
L17_8:
L17_9:
    sub x21, x29, #352
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    sub x14, x29, #368
    str x21, [x14]
    add x15, x14, #8
    movz x9, #64
    str x9, [x15]
    fmov d16, d8
    fmov d0, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #416
    bl _lb_strings_10format_f64
    sub x15, x29, #416
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L17_12
    b L17_11
L17_12:
    add x14, x15, #16
    sub x21, x29, #256
    add x22, x21, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L17_18
L17_13:
L17_11:
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #456
    bl _lb_json_Value_scalar
    sub x21, x29, #456
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L17_15
    b L17_14
L17_15:
    add x14, x21, #8
    sub x22, x29, #256
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L17_18
L17_16:
L17_14:
    sub x22, x29, #256
    mov x10, x21
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L17_18
L17_17:
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L17_18:
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L17_2
    b L17_1
L17_2:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr d8, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_3:
L17_1:
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #120
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x20
    ldr x3, [x9]
    sub x8, x29, #216
    bl _lb_json_Value_set
    sub x21, x29, #216
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L17_5
    b L17_4
L17_5:
    sub x19, x29, #96
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_release
L17_19:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr d8, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_6:
L17_4:
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_release
L17_20:
    sub x14, x29, #96
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr d8, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_11set_boolean
_lb_json_Value_11set_boolean:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #128
    str w3, [x16]
    sub x9, x29, #96
    ldr x19, [x9]
    sub x20, x29, #136
    sub x14, x29, #128
    ldrb w14, [x14]
    sub x10, x29, #264
    str w14, [x10]
    sub x14, x29, #264
    ldrb w14, [x14]
    cbnz w14, L18_7
    b L18_8
L18_7:
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    sub x14, x29, #280
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L18_9
L18_8:
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #5
    str x9, [x14]
    sub x14, x29, #280
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L18_9:
    sub x14, x29, #280
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #352
    bl _lb_json_Value_scalar
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_11
    b L18_10
L18_11:
    add x14, x15, #8
    sub x21, x29, #248
    add x22, x21, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L18_14
L18_12:
L18_10:
    sub x21, x29, #248
    mov x10, x15
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L18_14
L18_13:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L18_14:
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_2
    b L18_1
L18_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_3:
L18_1:
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #112
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x20
    ldr x3, [x9]
    sub x8, x29, #208
    bl _lb_json_Value_set
    sub x21, x29, #208
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L18_5
    b L18_4
L18_5:
    sub x19, x29, #88
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_release
L18_15:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_6:
L18_4:
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_release
L18_16:
    sub x14, x29, #88
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_json_Value_close
_lb_json_Value_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_json_Bytes_close
    add x14, x19, #24
    mov x0, x14
    bl _lb_json_Bytes_close
    ldr x19, [sp, #8]
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
    cbnz w14, L20_11
    b L20_4
L20_11:
    mov w15, w14
    b L20_5
L20_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L20_5:
    and w14, w15, #255
    cbnz w14, L20_1
    b L20_2
L20_1:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L20_3
L20_2:
L20_3:
    mov x10, #0
    cmp x19, x10
    b.ls L20_7
L20_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L20_9
    b L20_10
L20_10:
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_57@PAGE
    add x1, x1, l_text_57@PAGEOFF
    bl _lb_core_7trap_at
L20_9:
    b L20_8
L20_7:
L20_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_json_Value_adopt
    .weak_definition _lb_interop_Reference_0g1_json_Value_adopt
_lb_interop_Reference_0g1_json_Value_adopt:
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
    cbnz x14, L21_1
    b L21_2
L21_1:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L21_3
L21_2:
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
L21_3:
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
    bl _lb_interop_Reservation_0g1_json_Value_init
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
    cbnz w14, L21_7
    b L21_6
L21_7:
    sub x20, x29, #264
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L21_4
L21_6:
    sub x20, x29, #240
    mov x10, x25
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L21_5
L21_4:
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
    movz x9, #72
    str x9, [x15]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x22, [x22]
    cbnz x22, L21_9
    b L21_8
L21_9:
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
L21_8:
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
L21_10:
L21_5:
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
    bl _lb_interop_Reservation_0g1_json_Value_publish
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
L21_11:
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_json_Value_get
    .weak_definition _lb_interop_Reference_0g1_json_Value_get
_lb_interop_Reference_0g1_json_Value_get:
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
    cbnz w15, L22_1
    b L22_2
L22_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_interop_invalid@PAGE
    add x15, x15, _lb_interop_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_59@PAGE
    add x15, x15, l_text_59@PAGEOFF
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
L22_4:
    b L22_3
L22_2:
L22_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L22_5
    b L22_6
L22_5:
    b L22_7
L22_6:
    adrp x14, l_text_60@PAGE
    add x14, x14, l_text_60@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_61@PAGE
    add x14, x14, l_text_61@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L22_7:
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
L22_8:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_json_Value_release
    .weak_definition _lb_interop_Reference_0g1_json_Value_release
_lb_interop_Reference_0g1_json_Value_release:
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
    .globl _lb_interop_Reservation_0g1_json_Value_init
    .weak_definition _lb_interop_Reservation_0g1_json_Value_init
_lb_interop_Reservation_0g1_json_Value_init:
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
    cbnz w14, L24_4
    b L24_10
L24_10:
    mov w15, w14
    b L24_5
L24_4:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L24_5:
    and w14, w15, #255
    cbnz w14, L24_1
    b L24_2
L24_1:
    sub x19, x29, #96
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_62@PAGE
    add x14, x14, l_text_62@PAGEOFF
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
L24_6:
    b L24_3
L24_2:
L24_3:
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
    adrp x14, _lb_interop_Owner_0g1_json_Value_12finish_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_json_Value_12finish_owner@GOTPAGEOFF]
    add x15, x22, #24
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_json_Value_10drop_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_json_Value_10drop_owner@GOTPAGEOFF]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_json_Value_11trace_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_json_Value_11trace_owner@GOTPAGEOFF]
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
    cbnz w14, L24_8
    b L24_7
L24_8:
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
L24_9:
L24_7:
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
    .globl _lb_interop_Reservation_0g1_json_Value_publish
    .weak_definition _lb_interop_Reservation_0g1_json_Value_publish
_lb_interop_Reservation_0g1_json_Value_publish:
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
    cbnz x20, L25_1
    b L25_2
L25_1:
    b L25_3
L25_2:
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    adrp x14, l_text_64@PAGE
    add x14, x14, l_text_64@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L25_3:
    add x14, x20, #160
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    add x21, x20, #168
    sub x15, x29, #96
    ldr x14, [x15]
    cbnz x14, L25_4
    b L25_5
L25_4:
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L25_6
L25_5:
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
L25_6:
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
L25_8:
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
L25_7:
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Owner_0g1_json_Value_12finish_owner
    .weak_definition _lb_interop_Owner_0g1_json_Value_12finish_owner
_lb_interop_Owner_0g1_json_Value_12finish_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_json_Value
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_json_Value_10drop_owner
    .weak_definition _lb_interop_Owner_0g1_json_Value_10drop_owner
_lb_interop_Owner_0g1_json_Value_10drop_owner:
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
    cbnz x20, L27_4
    b L27_2
L27_4:
L27_1:
    sub x22, x29, #88
    add x15, x14, #168
    ldr x21, [x15]
    cbnz x21, L27_5
    b L27_6
L27_5:
    sub x23, x29, #104
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L27_7
L27_6:
    adrp x14, l_text_66@PAGE
    add x14, x14, l_text_66@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    adrp x14, l_text_67@PAGE
    add x14, x14, l_text_67@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L27_7:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #72
    str x9, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L27_9
    b L27_8
L27_9:
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
L27_8:
    b L27_3
L27_2:
L27_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_json_Value_11trace_owner
    .weak_definition _lb_interop_Owner_0g1_json_Value_11trace_owner
_lb_interop_Owner_0g1_json_Value_11trace_owner:
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
    cbnz w15, L28_1
    b L28_2
L28_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_4:
    b L28_3
L28_2:
L28_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L28_8
    b L28_6
L28_8:
L28_5:
    add x19, x14, #120
    add x19, x19, #24
    ldr x19, [x19]
    cbnz x19, L28_12
    b L28_10
L28_12:
L28_9:
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
    b L28_11
L28_10:
L28_11:
    b L28_7
L28_6:
L28_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_json_Value_init
    .weak_definition _lb_interop_Reference_0g1_json_Value_init
_lb_interop_Reference_0g1_json_Value_init:
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
    .globl _lb_interop_11close_owner_0g1_json_Value
    .weak_definition _lb_interop_11close_owner_0g1_json_Value
_lb_interop_11close_owner_0g1_json_Value:
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
    cbnz w15, L30_1
    b L30_2
L30_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_4:
    b L30_3
L30_2:
L30_3:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #192
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L30_6
L30_5:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_json_Value
    b L30_7
L30_6:
L30_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_13dispose_owner_0g1_json_Value
    .weak_definition _lb_interop_13dispose_owner_0g1_json_Value
_lb_interop_13dispose_owner_0g1_json_Value:
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
    cbnz w19, L31_1
    b L31_2
L31_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_4:
    b L31_3
L31_2:
L31_3:
    movz x9, #1
    strb w9, [x15]
    add x19, x14, #160
    ldr x19, [x19]
    cbnz x19, L31_8
    b L31_6
L31_8:
L31_5:
    add x15, x14, #120
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    b L31_7
L31_6:
L31_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_json_0init

    .section __TEXT,__const
l_text_0:
    .asciz "JSON value"
l_text_1:
    .asciz "JSON exceeds its configured byte limit"
l_text_2:
    .asciz "division by zero"
l_text_3:
    .asciz "src/std/json.lucb:24:13"
l_text_4:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_5:
    .asciz "memory.unset"
l_text_6:
    .asciz "src/std/json.lucb:27:9"
l_text_7:
    .asciz "memory.exhausted"
l_text_8:
    .asciz "src/std/json.lucb:30:13"
l_text_9:
    .asciz "JSON size overflow"
l_text_10:
    .asciz "src/std/json.lucb:36:9"
l_text_11:
    .asciz "index out of bounds"
l_text_12:
    .asciz "src/std/json.lucb:40:9"
l_text_13:
    .asciz "unreachable"
l_text_14:
    .asciz "src/std/json.lucb:44:13"
l_text_15:
    .asciz "\""
l_text_16:
    .asciz "0123456789abcdef"
l_text_17:
    .asciz "shift count out of range"
l_text_18:
    .asciz "src/std/json.lucb:61:13"
l_text_19:
    .asciz "JSON byte limit must be between 2 and 64 MiB"
l_text_20:
    .asciz "{}"
l_text_21:
    .asciz "src/std/json.lucb:88:9"
l_text_22:
    .asciz "src/std/json.lucb:91:9"
l_text_23:
    .asciz "src/std/json.lucb:93:9"
l_text_24:
    .asciz "src/std/json.lucb:94:9"
l_text_25:
    .asciz "src/std/json.lucb:95:9"
l_text_26:
    .asciz "src/std/json.lucb:98:9"
l_text_27:
    .asciz "src/std/json.lucb:105:9"
l_text_28:
    .asciz "src/std/json.lucb:111:9"
l_text_29:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
l_text_30:
    .asciz "src/std/json.lucb:115:9"
l_text_31:
    .asciz "JSON numbers must be finite"
l_text_32:
    .asciz "src/std/json.lucb:121:9"
l_text_33:
    .asciz "true"
l_text_34:
    .asciz "false"
l_text_35:
    .asciz "src/std/json.lucb:124:9"
l_text_36:
    .asciz "null"
l_text_37:
    .asciz "src/std/json.lucb:127:9"
l_text_38:
    .asciz "src/std/json.lucb:131:9"
l_text_39:
    .asciz "JSON operation does not match the container type"
l_text_40:
    .asciz "src/std/json.lucb:142:17"
l_text_41:
    .asciz "src/std/json.lucb:143:21"
l_text_42:
    .asciz "JSON object already contains this key"
l_text_43:
    .asciz "src/std/json.lucb:145:21"
l_text_44:
    .asciz ","
l_text_45:
    .asciz ":"
l_text_46:
    .asciz "JSON key size overflow"
l_text_47:
    .asciz "src/std/json.lucb:162:9"
l_text_48:
    .asciz "src/std/json.lucb:163:9"
l_text_49:
    .asciz "src/std/json.lucb:165:9"
l_text_50:
    .asciz "src/std/json.lucb:167:13"
l_text_51:
    .asciz "src/std/json.lucb:168:13"
l_text_52:
    .asciz "src/std/json.lucb:169:13"
l_text_53:
    .asciz "src/std/json.lucb:170:13"
l_text_54:
    .asciz "src/std/json.lucb:171:9"
l_text_55:
    .asciz "src/std/memory.lucb:326:9"
l_text_56:
    .asciz "src/std/memory.lucb:328:9"
l_text_57:
    .asciz "null_foreign"
l_text_58:
    .asciz "src/std/interop/reference.lucb:17:9"
l_text_59:
    .asciz "a native object is closed"
l_text_60:
    .asciz "a native object has not been initialized"
l_text_61:
    .asciz "src/std/interop/reference.lucb:30:9"
l_text_62:
    .asciz "this native type requires the process main thread"
l_text_63:
    .asciz "native ownership has already been published or cancelled"
l_text_64:
    .asciz "src/std/interop/object.lucb:83:9"
l_text_65:
    .asciz "src/std/interop/object.lucb:87:9"
l_text_66:
    .asciz "native storage has no allocator"
l_text_67:
    .asciz "src/std/interop/object.lucb:37:13"
l_text_68:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_json_invalid
    .zerofill __DATA,__bss,_lb_json_invalid,4,2
    .globl _lb_json_14limit_exceeded
    .zerofill __DATA,__bss,_lb_json_14limit_exceeded,4,2
    .globl _lb_json_10value_type
    .zerofill __DATA,__bss,_lb_json_10value_type,40,3

