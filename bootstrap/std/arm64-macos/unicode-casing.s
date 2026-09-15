    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_unicode_casing_0init
_lb_unicode_casing_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_8to_upper
    .no_dead_strip _lb_unicode_8to_upper
_lb_unicode_8to_upper:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #120
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #104
    sub x15, x29, #120
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    mov x3, #0
    mov x9, x15
    ldr x4, [x9]
    ldr x5, [x9, #8]
    sub x8, x29, #168
    bl _lb_unicode_12convert_case
    sub x15, x29, #168
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #16
    sub x19, x29, #88
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x19, x29, #88
    mov x10, x15
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_unicode_8to_lower
    .no_dead_strip _lb_unicode_8to_lower
_lb_unicode_8to_lower:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #120
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #104
    sub x15, x29, #120
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #1
    mov x3, #0
    mov x9, x15
    ldr x4, [x9]
    ldr x5, [x9, #8]
    sub x8, x29, #168
    bl _lb_unicode_12convert_case
    sub x15, x29, #168
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #16
    sub x19, x29, #88
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x19, x29, #88
    mov x10, x15
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_unicode_9case_fold
    .no_dead_strip _lb_unicode_9case_fold
_lb_unicode_9case_fold:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #120
    str w2, [x16]
    sub x16, x29, #136
    str x3, [x16]
    str x4, [x16, #8]
    sub x14, x29, #104
    sub x15, x29, #120
    ldrb w15, [x15]
    sub x19, x29, #136
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #2
    mov x3, x15
    mov x9, x19
    ldr x4, [x9]
    ldr x5, [x9, #8]
    sub x8, x29, #184
    bl _lb_unicode_12convert_case
    sub x15, x29, #184
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #16
    sub x19, x29, #88
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    sub x19, x29, #88
    mov x10, x15
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_unicode_12convert_case
_lb_unicode_12convert_case:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #560
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #528]
    str x20, [sp, #520]
    str x21, [sp, #512]
    str x22, [sp, #504]
    str x23, [sp, #496]
    str x24, [sp, #488]
    str x25, [sp, #480]
    str x26, [sp, #472]
    str x27, [sp, #464]
    str x28, [sp, #456]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str w2, [x16]
    sub x16, x29, #200
    str w3, [x16]
    sub x16, x29, #216
    str x4, [x16]
    str x5, [x16, #8]
    sub x19, x29, #232
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x9, x29, #168
    str x9, [sp, #16]
    sub x14, x29, #184
    ldrb w21, [x14]
    sub x14, x29, #200
    ldrb w22, [x14]
    sub x23, x29, #216
    movz x16, #16
    sub sp, sp, x16
    mov x9, x23
    ldr x10, [x9]
    str x10, [sp, #0]
    ldr x10, [x9, #8]
    str x10, [sp, #8]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    mov x3, x22
    mov x9, x19
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x6, #0
    sub x8, x29, #272
    bl _lb_unicode_9case_pass
    movz x16, #16
    add sp, sp, x16
    sub x15, x29, #272
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldr x19, [x15]
    sub x24, x29, #280
    mov x0, x19
    movz x1, #1
    movz x2, #64
    mov x3, x24
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x25, x29, #296
    ldr x24, [x24]
    str x24, [x25]
    add x25, x25, #8
    strb w14, [x25]
    ldrb w14, [x25]
    cbnz w14, L4_4
    b L4_5
L4_4:
    b L4_6
L4_5:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #312
    str x15, [x20]
    add x15, x20, #8
    movz x9, #30
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_7:
L4_6:
    sub x25, x29, #328
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #8]
    sub x27, x29, #376
    movz x10, #16384, lsl #48
    cmp x24, x10
    b.ls L4_9
L4_8:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L4_10
L4_9:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L4_11
    b L4_12
L4_12:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L4_11:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #1
    sub x8, x29, #400
    ldr x17, [sp], #16
    blr x17
    sub x20, x29, #400
    add x28, x20, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x24, x10
    cset w26, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w26, w26, w28
    cbnz w26, L4_13
    b L4_14
L4_13:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L4_10
L4_14:
    ldr x14, [x20]
    str x14, [x27]
    add x14, x27, #8
    str x24, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
L4_10:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, L4_16
    b L4_15
L4_16:
    add x14, x27, #16
    sub x19, x29, #152
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_17:
L4_15:
    mov x10, x27
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x26, [x25]
    add x14, x25, #8
    ldr x20, [x14]
    add x14, x20, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    cset w24, ls
    cbnz w24, L4_18
    b L4_19
L4_19:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
L4_18:
    sub x14, x29, #416
    str x26, [x14]
    add x15, x14, #8
    str x19, [x15]
    movz x16, #16
    sub sp, sp, x16
    mov x9, x23
    ldr x10, [x9]
    str x10, [sp, #0]
    ldr x10, [x9, #8]
    str x10, [sp, #8]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    mov x3, x22
    mov x9, x14
    ldr x4, [x9]
    ldr x5, [x9, #8]
    movz x6, #1
    sub x8, x29, #456
    bl _lb_unicode_9case_pass
    movz x16, #16
    add sp, sp, x16
    sub x15, x29, #456
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_21
    b L4_20
L4_21:
    add x14, x15, #8
    sub x19, x29, #152
    add x21, x19, #16
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #472
    str x26, [x14]
    add x21, x14, #8
    str x20, [x21]
    ldr x9, [sp, #8]
    ldr x21, [x9]
    ldr x9, [sp, #8]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L4_23
    b L4_22
L4_23:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L4_22:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_24:
L4_20:
    ldr x14, [x15]
    cmp x19, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_26
L4_25:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_utf8_16invalid_sequence@PAGE
    add x15, x15, _lb_utf8_16invalid_sequence@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x21, x29, #488
    str x15, [x21]
    add x15, x21, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #504
    str x26, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L4_29
    b L4_28
L4_29:
    add x20, x21, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L4_28:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_30:
    b L4_27
L4_26:
L4_27:
    cmp x19, x20
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x19, x26
    mov x9, #0
    strb w9, [x14]
    cbnz w24, L4_31
    b L4_32
L4_32:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
L4_31:
    sub x14, x29, #520
    str x26, [x14]
    add x14, x14, #8
    str x19, [x14]
    sub x14, x29, #536
    str x26, [x14]
    add x15, x14, #8
    str x19, [x15]
    sub x20, x29, #152
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_33:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_unicode_9case_pass
_lb_unicode_9case_pass:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1616
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1584]
    str x20, [sp, #1576]
    str x21, [sp, #1568]
    str x22, [sp, #1560]
    str x23, [sp, #1552]
    str x24, [sp, #1544]
    str x25, [sp, #1536]
    str x26, [sp, #1528]
    str x27, [sp, #1520]
    str x28, [sp, #1512]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #176
    str w2, [x16]
    sub x16, x29, #192
    str w3, [x16]
    sub x16, x29, #208
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #224
    str w6, [x16]
    ldr x9, [x29, #16]
    sub x16, x29, #240
    str x9, [x16, #0]
    ldr x9, [x29, #24]
    sub x16, x29, #240
    str x9, [x16, #8]
    sub x9, x29, #160
    str x9, [sp, #560]
    ldr x9, [sp, #560]
    add x9, x9, #8
    str x9, [sp, #552]
    sub x27, x29, #256
    sub x9, x29, #280
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #16
    str x9, [sp, #544]
    sub x9, x29, #296
    str x9, [sp, #536]
    add x9, x27, #8
    str x9, [sp, #528]
    sub x9, x29, #336
    str x9, [sp, #64]
    sub x9, x29, #176
    str x9, [sp, #520]
    sub x9, x29, #192
    str x9, [sp, #512]
    sub x9, x29, #600
    str x9, [sp, #392]
    sub x9, x29, #616
    str x9, [sp, #240]
    adrp x9, _lb_unicode_15turkic_mappings@PAGE
    add x9, x9, _lb_unicode_15turkic_mappings@PAGEOFF
    str x9, [sp, #232]
    sub x9, x29, #848
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #24
    str x9, [sp, #224]
    adrp x9, _lb_unicode_13fold_mappings@PAGE
    add x9, x9, _lb_unicode_13fold_mappings@PAGEOFF
    str x9, [sp, #200]
    sub x9, x29, #904
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #24
    str x9, [sp, #192]
    sub x9, x29, #952
    str x9, [sp, #176]
    sub x9, x29, #928
    str x9, [sp, #168]
    sub x9, x29, #928
    str x9, [sp, #184]
    sub x9, x29, #928
    str x9, [sp, #160]
    sub x9, x29, #536
    str x9, [sp, #152]
    sub x9, x29, #872
    str x9, [sp, #216]
    sub x9, x29, #536
    str x9, [sp, #208]
    sub x9, x29, #632
    str x9, [sp, #328]
    sub x9, x29, #552
    str x9, [sp, #320]
    sub x9, x29, #968
    str x9, [sp, #144]
    ldr x9, [sp, #144]
    add x9, x9, #8
    str x9, [sp, #136]
    sub x9, x29, #1000
    str x9, [sp, #40]
    sub x9, x29, #1024
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #16
    str x9, [sp, #128]
    sub x9, x29, #1040
    str x9, [sp, #120]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #112]
    adrp x9, _lb_unicode_21case_ignorable_ranges@PAGE
    add x9, x9, _lb_unicode_21case_ignorable_ranges@PAGEOFF
    str x9, [sp, #104]
    adrp x9, _lb_unicode_12cased_ranges@PAGE
    add x9, x9, _lb_unicode_12cased_ranges@PAGEOFF
    str x9, [sp, #96]
    adrp x9, _lb_unicode_14lower_mappings@PAGE
    add x9, x9, _lb_unicode_14lower_mappings@PAGEOFF
    str x9, [sp, #296]
    sub x9, x29, #768
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #24
    str x9, [sp, #288]
    sub x9, x29, #816
    str x9, [sp, #272]
    sub x9, x29, #792
    str x9, [sp, #264]
    sub x9, x29, #792
    str x9, [sp, #280]
    sub x9, x29, #792
    str x9, [sp, #256]
    sub x9, x29, #536
    str x9, [sp, #248]
    sub x9, x29, #736
    str x9, [sp, #312]
    sub x9, x29, #536
    str x9, [sp, #304]
    adrp x9, _lb_unicode_14upper_mappings@PAGE
    add x9, x9, _lb_unicode_14upper_mappings@PAGEOFF
    str x9, [sp, #384]
    sub x24, x29, #664
    add x9, x24, #24
    str x9, [sp, #376]
    sub x9, x29, #712
    str x9, [sp, #360]
    sub x9, x29, #688
    str x9, [sp, #352]
    sub x9, x29, #688
    str x9, [sp, #368]
    sub x9, x29, #688
    str x9, [sp, #344]
    sub x9, x29, #536
    str x9, [sp, #336]
    sub x9, x29, #360
    str x9, [sp, #504]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #496]
    sub x9, x29, #376
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #488]
    sub x9, x29, #400
    str x9, [sp, #480]
    sub x9, x29, #416
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #472]
    sub x9, x29, #240
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #8
    str x9, [sp, #464]
    sub x9, x29, #224
    str x9, [sp, #456]
    sub x9, x29, #208
    str x9, [sp, #448]
    ldr x9, [sp, #448]
    add x9, x9, #8
    str x9, [sp, #440]
    sub x9, x29, #480
    str x9, [sp, #432]
    ldr x9, [sp, #432]
    add x9, x9, #8
    str x9, [sp, #424]
    sub x14, x29, #496
    add x9, x14, #8
    str x9, [sp, #416]
    adrp x9, _lb_unicode_21case_ignorable_ranges@PAGE
    add x9, x9, _lb_unicode_21case_ignorable_ranges@PAGEOFF
    str x9, [sp, #408]
    adrp x9, _lb_unicode_12cased_ranges@PAGE
    add x9, x9, _lb_unicode_12cased_ranges@PAGEOFF
    str x9, [sp, #400]
    mov x9, #0
    mov x28, x9
    mov x9, #0
    str x9, [sp, #88]
    mov x9, #0
    str w9, [sp, #80]
L5_1:
    ldr x9, [sp, #552]
    ldr x14, [x9]
    cmp x28, x14
    b.hs L5_3
L5_2:
    ldr x9, [sp, #560]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x28
    sub x8, x29, #280
    bl _lb_utf8_decode
    ldr x9, [sp, #544]
    ldrb w14, [x9]
    cbnz w14, L5_4
    b L5_5
L5_4:
    ldr x10, [sp, #72]
    ldr x11, [sp, #536]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L5_6
L5_5:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_utf8_16invalid_sequence@PAGE
    add x15, x15, _lb_utf8_16invalid_sequence@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    sub x20, x29, #312
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
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
    ldr x19, [sp, #1584]
    ldr x20, [sp, #1576]
    ldr x21, [sp, #1568]
    ldr x22, [sp, #1560]
    ldr x23, [sp, #1552]
    ldr x24, [sp, #1544]
    ldr x25, [sp, #1536]
    ldr x26, [sp, #1528]
    ldr x27, [sp, #1520]
    ldr x28, [sp, #1512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_7:
L5_6:
    ldr x10, [sp, #536]
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #528]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x28
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    ldr w14, [x27]
    mov w21, w14
    ldr x9, [sp, #520]
    ldrb w26, [x9]
    ldr x9, [sp, #512]
    ldrb w25, [x9]
    ldr w9, [sp, #80]
    and w23, w9, #255
    ldr x10, [sp, #560]
    sub x11, x29, #552
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #568
    str x20, [x10]
    sub x10, x29, #584
    str w21, [x10]
    sub x10, x29, #600
    str w26, [x10]
    sub x10, x29, #616
    str w25, [x10]
    sub x10, x29, #632
    str w23, [x10]
    ldr x9, [sp, #392]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    b.ne L5_44
L5_43:
    ldr x9, [sp, #384]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    sub x8, x29, #664
    bl _lb_unicode_mapped
    ldr x9, [sp, #376]
    ldrb w14, [x9]
    cbnz w14, L5_46
    b L5_47
L5_46:
    mov x10, x24
    ldr x11, [sp, #368]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_48
L5_47:
    mov x0, x21
    sub x8, x29, #712
    bl _lb_unicode_16identity_mapping
    ldr x10, [sp, #360]
    ldr x11, [sp, #352]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
L5_48:
    ldr x10, [sp, #344]
    ldr x11, [sp, #336]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #336]
    sub x11, x29, #360
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_90
L5_49:
    b L5_45
L5_44:
L5_45:
    movz x10, #1
    cmp w14, w10
    b.ne L5_51
L5_50:
    movz x10, #931
    cmp w21, w10
    cset w14, eq
    cbnz w14, L5_56
    b L5_91
L5_91:
    mov w15, w14
    b L5_57
L5_56:
    ldr x9, [sp, #328]
    ldrb w15, [x9]
L5_57:
    and w14, w15, #255
    cbnz w14, L5_58
    b L5_92
L5_92:
    mov w15, w14
    b L5_59
L5_58:
    ldr x10, [sp, #320]
    sub x11, x29, #968
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #984
    str x20, [x10]
    mov x23, x20
L5_77:
    ldr x9, [sp, #136]
    ldr x14, [x9]
    cmp x23, x14
    b.hs L5_79
L5_78:
    ldr x9, [sp, #144]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    sub x8, x29, #1024
    bl _lb_utf8_decode
    ldr x9, [sp, #128]
    ldrb w14, [x9]
    cbnz w14, L5_80
    b L5_81
L5_80:
    ldr x10, [sp, #32]
    ldr x11, [sp, #120]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L5_82
L5_81:
    mov x9, #0
    sub x10, x29, #1048
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L5_89
L5_83:
L5_82:
    ldr x10, [sp, #120]
    ldr x11, [sp, #40]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #112]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x23
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    ldr x9, [sp, #40]
    ldr w14, [x9]
    mov w26, w14
    ldr x9, [sp, #104]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x26
    bl _lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L5_85
L5_84:
    ldr x9, [sp, #96]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x26
    bl _lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #1048
    str w14, [x10]
    b L5_89
L5_87:
    b L5_86
L5_85:
L5_86:
    mov x23, x25
    b L5_77
L5_79:
    mov x9, #0
    sub x10, x29, #1048
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L5_89
L5_88:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_89:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_59:
    and w14, w15, #255
    cbnz w14, L5_53
    b L5_54
L5_53:
    movz x0, #962
    sub x8, x29, #736
    bl _lb_unicode_16identity_mapping
    ldr x10, [sp, #312]
    ldr x11, [sp, #304]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #304]
    sub x11, x29, #360
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_90
L5_60:
    b L5_55
L5_54:
L5_55:
    ldr x9, [sp, #296]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    sub x8, x29, #768
    bl _lb_unicode_mapped
    ldr x9, [sp, #288]
    ldrb w14, [x9]
    cbnz w14, L5_61
    b L5_62
L5_61:
    ldr x10, [sp, #24]
    ldr x11, [sp, #280]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_63
L5_62:
    mov x0, x21
    sub x8, x29, #816
    bl _lb_unicode_16identity_mapping
    ldr x10, [sp, #272]
    ldr x11, [sp, #264]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
L5_63:
    ldr x10, [sp, #256]
    ldr x11, [sp, #248]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #248]
    sub x11, x29, #360
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_90
L5_64:
    b L5_52
L5_51:
L5_52:
    ldr x9, [sp, #240]
    ldrb w14, [x9]
    cbnz w14, L5_65
    b L5_66
L5_65:
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    sub x8, x29, #848
    bl _lb_unicode_mapped
    ldr x9, [sp, #224]
    ldrb w14, [x9]
    cbnz w14, L5_71
    b L5_69
L5_71:
    ldr x10, [sp, #56]
    ldr x11, [sp, #216]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
L5_68:
    ldr x10, [sp, #216]
    ldr x11, [sp, #208]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #208]
    sub x11, x29, #360
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_90
L5_72:
    b L5_70
L5_69:
L5_70:
    b L5_67
L5_66:
L5_67:
    ldr x9, [sp, #200]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    sub x8, x29, #904
    bl _lb_unicode_mapped
    ldr x9, [sp, #192]
    ldrb w14, [x9]
    cbnz w14, L5_73
    b L5_74
L5_73:
    ldr x10, [sp, #48]
    ldr x11, [sp, #184]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_75
L5_74:
    mov x0, x21
    sub x8, x29, #952
    bl _lb_unicode_16identity_mapping
    ldr x10, [sp, #176]
    ldr x11, [sp, #168]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
L5_75:
    ldr x10, [sp, #160]
    ldr x11, [sp, #152]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #152]
    sub x11, x29, #360
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_90
L5_76:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_90:
    ldr x10, [sp, #504]
    ldr x11, [sp, #64]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #496]
    ldr x23, [x9]
    ldr x9, [sp, #88]
    mov x25, x9
    mov x9, #0
    mov x26, x9
L5_8:
    cmp x26, x23
    b.hs L5_11
L5_9:
    ldr x0, [sp, #64]
    mov x1, x26
    bl _lb_unicode_Mapping_at
    mov w28, w0
    mov x0, x28
    bl _lb_utf8_14encoded_length
    sub x16, x29, #376
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #488]
    ldrb w14, [x9]
    cbnz w14, L5_12
    b L5_13
L5_12:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    b L5_14
L5_13:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #392
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_14:
    mov x0, x25
    mov x1, x14
    movz x2, #64
    ldr x3, [sp, #480]
    bl _lb_core_6qadd_u
    mov w15, w0
    ldr x9, [sp, #480]
    ldr x19, [x9]
    ldr x10, [sp, #8]
    str x19, [x10]
    ldr x10, [sp, #472]
    strb w15, [x10]
    ldr x9, [sp, #472]
    ldrb w15, [x9]
    cbnz w15, L5_15
    b L5_16
L5_15:
    b L5_17
L5_16:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #432
    str x15, [x20]
    add x15, x20, #8
    movz x9, #30
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
    ldr x19, [sp, #1584]
    ldr x20, [sp, #1576]
    ldr x21, [sp, #1568]
    ldr x22, [sp, #1560]
    ldr x23, [sp, #1552]
    ldr x24, [sp, #1544]
    ldr x25, [sp, #1536]
    ldr x26, [sp, #1528]
    ldr x27, [sp, #1520]
    ldr x28, [sp, #1512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_18:
L5_17:
    ldr x9, [sp, #464]
    ldrb w14, [x9]
    cbnz w14, L5_22
    b L5_20
L5_22:
    ldr x9, [sp, #0]
    ldr x14, [x9]
L5_19:
    cmp x19, x14
    b.ls L5_24
L5_23:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_strings_16output_too_large@PAGE
    add x15, x15, _lb_strings_16output_too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x20, x29, #448
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x19, [sp, #1584]
    ldr x20, [sp, #1576]
    ldr x21, [sp, #1568]
    ldr x22, [sp, #1560]
    ldr x23, [sp, #1552]
    ldr x24, [sp, #1544]
    ldr x25, [sp, #1536]
    ldr x26, [sp, #1528]
    ldr x27, [sp, #1520]
    ldr x28, [sp, #1512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_26:
    b L5_25
L5_24:
L5_25:
    b L5_21
L5_20:
L5_21:
    ldr x9, [sp, #456]
    ldrb w14, [x9]
    cbnz w14, L5_27
    b L5_28
L5_27:
    ldr x9, [sp, #440]
    ldr x14, [x9]
    cmp x19, x14
    b.ls L5_31
L5_30:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_utf8_16invalid_sequence@PAGE
    add x15, x15, _lb_utf8_16invalid_sequence@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x20, x29, #464
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
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
    ldr x19, [sp, #1584]
    ldr x20, [sp, #1576]
    ldr x21, [sp, #1568]
    ldr x22, [sp, #1560]
    ldr x23, [sp, #1552]
    ldr x24, [sp, #1544]
    ldr x25, [sp, #1536]
    ldr x26, [sp, #1528]
    ldr x27, [sp, #1520]
    ldr x28, [sp, #1512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_33:
    b L5_32
L5_31:
L5_32:
    ldr x9, [sp, #448]
    ldr x22, [x9]
    add x15, x14, #1
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x19
    b.ls L5_34
L5_35:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
L5_34:
    add x14, x25, x22
    sub x15, x19, x25
    ldr x10, [sp, #432]
    str x14, [x10]
    ldr x10, [sp, #424]
    str x15, [x10]
    mov x0, x28
    ldr x9, [sp, #432]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_utf8_encode
    sub x16, x29, #496
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #416]
    ldrb w14, [x9]
    cbnz w14, L5_36
    b L5_37
L5_36:
    b L5_38
L5_37:
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #512
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
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
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_38:
    b L5_29
L5_28:
L5_29:
L5_10:
    add x14, x26, #1
    mov x25, x19
    mov x26, x14
    b L5_8
L5_11:
    ldr x9, [sp, #408]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L5_40
L5_39:
    ldr x9, [sp, #400]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    b L5_41
L5_40:
    ldr w9, [sp, #80]
    mov w14, w9
L5_41:
    mov x28, x20
    mov x9, x25
    str x9, [sp, #88]
    mov w9, w14
    str w9, [sp, #80]
    b L5_1
L5_3:
    sub x14, x29, #144
    ldr x9, [sp, #88]
    str x9, [x14]
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
    ldr x19, [sp, #1584]
    ldr x20, [sp, #1576]
    ldr x21, [sp, #1568]
    ldr x22, [sp, #1560]
    ldr x23, [sp, #1552]
    ldr x24, [sp, #1544]
    ldr x25, [sp, #1536]
    ldr x26, [sp, #1528]
    ldr x27, [sp, #1520]
    ldr x28, [sp, #1512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_42:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_unicode_casing_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/unicode/casing.lucb:4:5"
l_text_2:
    .asciz "src/std/unicode/casing.lucb:9:5"
l_text_3:
    .asciz "src/std/unicode/casing.lucb:15:5"
l_text_4:
    .asciz "the cased text size overflowed"
l_text_5:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_6:
    .asciz "memory.unset"
l_text_7:
    .asciz "src/std/unicode/casing.lucb:21:5"
l_text_8:
    .asciz "memory.exhausted"
l_text_9:
    .asciz "src/std/unicode/casing.lucb:23:5"
l_text_10:
    .asciz "index out of bounds"
l_text_11:
    .asciz "the text changed during Unicode casing"
l_text_12:
    .asciz "src/std/unicode/casing.lucb:25:9"
l_text_13:
    .asciz "src/std/unicode/casing.lucb:26:5"
l_text_14:
    .asciz "src/std/unicode/casing.lucb:27:5"
l_text_15:
    .asciz "invalid UTF-8 text"
l_text_16:
    .asciz "src/std/unicode/casing.lucb:35:9"
l_text_17:
    .asciz "invalid generated Unicode scalar"
l_text_18:
    .asciz "src/std/unicode/casing.lucb:40:13"
l_text_19:
    .asciz "the cased text exceeds its byte limit"
l_text_20:
    .asciz "src/std/unicode/casing.lucb:48:17"
l_text_21:
    .asciz "a Unicode scalar did not fit its encoded length"
l_text_22:
    .asciz "src/std/unicode/casing.lucb:55:5"
l_text_23:
    .asciz "src/std/unicode/casing.lucb:67:5"
l_text_24:
    .asciz "src/std/unicode/casing.lucb:75:9"
l_text_25:
    .asciz "src/std/unicode/casing.lucb:79:5"
l_text_26:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
