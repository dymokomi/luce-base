    .text

    .p2align 2
    .globl lb_unicode_normalization_0init
    .type lb_unicode_normalization_0init, %function
lb_unicode_normalization_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_normalization_0init, .-lb_unicode_normalization_0init

    .p2align 2
    .globl lb_unicode_normalize
    .type lb_unicode_normalize, %function
lb_unicode_normalize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #720
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #688]
    str x20, [sp, #680]
    str x21, [sp, #672]
    str x22, [sp, #664]
    str x23, [sp, #656]
    str x24, [sp, #648]
    str x25, [sp, #640]
    str x26, [sp, #632]
    str x27, [sp, #624]
    str x28, [sp, #616]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str w2, [x16]
    sub x16, x29, #200
    str x3, [x16]
    str x4, [x16, #8]
    sub x14, x29, #184
    ldrb w9, [x14]
    str w9, [sp, #16]
    ldr w9, [sp, #16]
    movz x10, #2
    cmp w9, w10
    cset w9, eq
    str w9, [sp, #8]
    ldr w9, [sp, #8]
    cbnz w9, .L1_60
    b .L1_1
.L1_60:
    ldr w9, [sp, #8]
    mov w14, w9
    b .L1_2
.L1_1:
    ldr w9, [sp, #16]
    movz x10, #3
    cmp w9, w10
    cset w14, eq
.L1_2:
    and w21, w14, #255
    sub x22, x29, #216
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    sub x23, x29, #168
    and w21, w21, #255
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    mov x9, x22
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, #0
    sub x8, x29, #256
    bl lb_unicode_14decompose_pass
    sub x22, x29, #256
    add x15, x22, #32
    ldrb w15, [x15]
    cbnz w15, .L1_4
    b .L1_3
.L1_4:
    add x14, x22, #8
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_5:
.L1_3:
    ldr x24, [x22]
    mov x10, #0
    cmp x24, x10
    b.ne .L1_7
.L1_6:
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #320
    bl lb_strings_copy
    sub x15, x29, #320
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L1_10
    b .L1_9
.L1_10:
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_11:
.L1_9:
    sub x19, x29, #152
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_12:
    b .L1_8
.L1_7:
.L1_8:
    sub x22, x29, #328
    mov x0, x24
    movz x1, #4
    movz x2, #64
    mov x3, x22
    bl lb_core_6qmul_u
    mov w14, w0
    sub x25, x29, #344
    ldr x15, [x22]
    str x15, [x25]
    add x15, x25, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, .L1_13
    b .L1_14
.L1_13:
    b .L1_15
.L1_14:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    sub x20, x29, #360
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_16:
.L1_15:
    sub x22, x29, #376
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x25, x0
    sub x26, x29, #424
    movz x10, #4096, lsl #48
    cmp x24, x10
    b.ls .L1_18
.L1_17:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    add x27, x14, #8
    str x15, [x27]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_19
.L1_18:
    lsl x27, x24, #2
    ldr x14, [x25]
    add x15, x25, #8
    ldr x15, [x15]
    cbnz x15, .L1_20
    b .L1_21
.L1_21:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
.L1_20:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #4
    sub x8, x29, #448
    ldr x17, [sp], #16
    blr x17
    sub x19, x29, #448
    add x28, x19, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w20, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w20, w20, w28
    cbnz w20, .L1_22
    b .L1_23
.L1_22:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_19
.L1_23:
    ldr x14, [x19]
    str x14, [x26]
    add x14, x26, #8
    str x24, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
.L1_19:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, .L1_25
    b .L1_24
.L1_25:
    add x14, x26, #16
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_26:
.L1_24:
    mov x10, x26
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    mov x9, x22
    ldr x3, [x9]
    ldr x4, [x9, #8]
    movz x5, #1
    sub x8, x29, #488
    bl lb_unicode_14decompose_pass
    sub x15, x29, #488
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_28
    b .L1_27
.L1_28:
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
    sub x14, x29, #504
    ldr x20, [x22]
    add x21, x22, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x14]
    add x20, x14, #8
    str x21, [x20]
    ldr x20, [x25]
    add x21, x25, #8
    ldr x21, [x21]
    cbnz x21, .L1_30
    b .L1_29
.L1_30:
    add x15, x21, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_29:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_31:
.L1_27:
    ldr x14, [x15]
    cmp x24, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L1_33
.L1_32:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_utf8_16invalid_sequence
    add x15, x15, :lo12:lb_utf8_16invalid_sequence
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    sub x20, x29, #520
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #536
    ldr x15, [x22]
    add x20, x22, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x15, [x25]
    add x20, x25, #8
    ldr x20, [x20]
    cbnz x20, .L1_36
    b .L1_35
.L1_36:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_35:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_37:
    b .L1_34
.L1_33:
.L1_34:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #568
    bl lb_unicode_15canonical_order
    sub x15, x29, #568
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_39
    b .L1_38
.L1_39:
    sub x19, x29, #152
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #584
    ldr x20, [x22]
    add x21, x22, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x14]
    add x20, x14, #8
    str x21, [x20]
    ldr x20, [x25]
    add x21, x25, #8
    ldr x21, [x21]
    cbnz x21, .L1_41
    b .L1_40
.L1_41:
    add x15, x21, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_40:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_42:
.L1_38:
    ldr w9, [sp, #16]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    cbnz w14, .L1_61
    b .L1_46
.L1_61:
    mov w15, w14
    b .L1_47
.L1_46:
    ldr w9, [sp, #8]
    mov w15, w9
.L1_47:
    and w14, w15, #255
    cbnz w14, .L1_43
    b .L1_44
.L1_43:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_unicode_17compose_canonical
    mov x14, x0
    b .L1_45
.L1_44:
    mov x14, x24
.L1_45:
    ldr x20, [x22]
    add x19, x22, #8
    ldr x15, [x19]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L1_48
.L1_49:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L1_48:
    sub x15, x29, #600
    str x20, [x15]
    add x21, x15, #8
    str x14, [x21]
    sub x21, x29, #200
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #648
    bl lb_unicode_17encode_normalized
    sub x21, x29, #648
    add x15, x21, #40
    ldrb w15, [x15]
    cbnz w15, .L1_51
    b .L1_50
.L1_51:
    add x14, x21, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #664
    ldr x15, [x22]
    ldr x23, [x19]
    mov x9, x23
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x23, x9
    str x15, [x14]
    add x15, x14, #8
    str x23, [x15]
    ldr x15, [x25]
    add x23, x25, #8
    ldr x23, [x23]
    cbnz x23, .L1_53
    b .L1_52
.L1_53:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_52:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_54:
.L1_50:
    sub x20, x29, #152
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #680
    ldr x15, [x22]
    ldr x23, [x19]
    mov x9, x23
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x23, x9
    str x15, [x14]
    add x15, x14, #8
    str x23, [x15]
    ldr x15, [x25]
    add x23, x25, #8
    ldr x23, [x23]
    cbnz x23, .L1_56
    b .L1_55
.L1_56:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_55:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_57:
    sub x14, x29, #376
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    sub x19, x29, #696
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, .L1_59
    b .L1_58
.L1_59:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_58:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_unicode_normalize, .-lb_unicode_normalize

    .p2align 2
    .globl lb_unicode_14decompose_pass
    .type lb_unicode_14decompose_pass, %function
lb_unicode_14decompose_pass:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #640
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #608]
    str x20, [sp, #600]
    str x21, [sp, #592]
    str x22, [sp, #584]
    str x23, [sp, #576]
    str x24, [sp, #568]
    str x25, [sp, #560]
    str x26, [sp, #552]
    str x27, [sp, #544]
    str x28, [sp, #536]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #176
    str w2, [x16]
    sub x16, x29, #192
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #208
    str w5, [x16]
    sub x9, x29, #224
    str x9, [sp, #32]
    sub x14, x29, #176
    ldrb w14, [x14]
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    adrp x14, lb_unicode_22compatibility_mappings
    add x14, x14, :lo12:lb_unicode_22compatibility_mappings
    sub x15, x29, #240
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L2_3
.L2_2:
    adrp x14, lb_unicode_18canonical_mappings
    add x14, x14, :lo12:lb_unicode_18canonical_mappings
    sub x15, x29, #240
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
.L2_3:
    sub x14, x29, #240
    mov x10, x14
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #160
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x9, x9, #8
    str x9, [sp, #152]
    sub x28, x29, #256
    sub x26, x29, #280
    add x9, x26, #16
    str x9, [sp, #144]
    sub x9, x29, #296
    str x9, [sp, #136]
    add x9, x28, #8
    str x9, [sp, #128]
    sub x9, x29, #336
    str x9, [sp, #16]
    sub x9, x29, #368
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #120]
    sub x9, x29, #416
    str x9, [sp, #104]
    sub x9, x29, #392
    str x9, [sp, #96]
    sub x9, x29, #392
    str x9, [sp, #112]
    sub x9, x29, #392
    str x9, [sp, #88]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #80]
    sub x9, x29, #424
    str x9, [sp, #72]
    sub x25, x29, #440
    add x9, x25, #8
    str x9, [sp, #64]
    sub x9, x29, #208
    str x9, [sp, #56]
    sub x9, x29, #192
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    mov x9, #0
    mov x27, x9
    mov x9, #0
    str x9, [sp, #24]
.L2_4:
    ldr x9, [sp, #152]
    ldr x14, [x9]
    cmp x27, x14
    b.hs .L2_6
.L2_5:
    ldr x9, [sp, #160]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x27
    sub x8, x29, #280
    bl lb_utf8_decode
    ldr x9, [sp, #144]
    ldrb w14, [x9]
    cbnz w14, .L2_7
    b .L2_8
.L2_7:
    mov x10, x26
    ldr x11, [sp, #136]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L2_9
.L2_8:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, lb_utf8_16invalid_sequence
    add x15, x15, :lo12:lb_utf8_16invalid_sequence
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_9:
    ldr x10, [sp, #136]
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #128]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x20, x9
    ldr w14, [x28]
    mov w21, w14
    movz x10, #44032
    cmp w21, w10
    cset w14, hs
    cbnz w14, .L2_11
    b .L2_54
.L2_54:
    mov w15, w14
    b .L2_12
.L2_11:
    movz x10, #55203
    cmp w21, w10
    cset w15, ls
.L2_12:
    and w27, w15, #255
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    sub x8, x29, #368
    bl lb_unicode_mapped
    ldr x9, [sp, #120]
    ldrb w14, [x9]
    cbnz w14, .L2_13
    b .L2_14
.L2_13:
    ldr x10, [sp, #8]
    ldr x11, [sp, #112]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L2_15
.L2_14:
    mov x0, x21
    sub x8, x29, #416
    bl lb_unicode_16identity_mapping
    ldr x10, [sp, #104]
    ldr x11, [sp, #96]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
.L2_15:
    ldr x10, [sp, #88]
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    and w19, w27, #255
    cbnz w19, .L2_16
    b .L2_17
.L2_16:
    mov w9, w21
    movz x10, #44032
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
.L2_23:
    movz x10, #28
    udiv w11, w14, w10
    msub w15, w11, w10, w14
    mov x10, #0
    cmp w15, w10
    b.ne .L2_20
.L2_19:
    movz x9, #2
    mov x14, x9
    b .L2_21
.L2_20:
    movz x9, #3
    mov x14, x9
.L2_21:
    mov x27, x14
    b .L2_18
.L2_17:
    ldr x9, [sp, #80]
    ldr x27, [x9]
.L2_18:
    ldr x0, [sp, #24]
    mov x1, x27
    movz x2, #64
    ldr x3, [sp, #72]
    bl lb_core_6qadd_u
    mov w14, w0
    ldr x9, [sp, #72]
    ldr x22, [x9]
    str x22, [x25]
    ldr x10, [sp, #64]
    strb w14, [x10]
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, .L2_24
    b .L2_25
.L2_24:
    b .L2_26
.L2_25:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_17
    add x15, x15, :lo12:.Ltext_17
    sub x20, x29, #456
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_26:
    ldr x9, [sp, #56]
    ldrb w14, [x9]
    cbnz w14, .L2_28
    b .L2_29
.L2_28:
    ldr x9, [sp, #40]
    ldr x23, [x9]
    cmp x22, x23
    b.ls .L2_32
.L2_31:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, lb_utf8_16invalid_sequence
    add x15, x15, :lo12:lb_utf8_16invalid_sequence
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    sub x20, x29, #472
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_32:
.L2_33:
    cbnz w19, .L2_35
    b .L2_36
.L2_35:
    mov w9, w21
    movz x10, #44032
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    cmp x9, x23
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    lsl x19, x9, #2
    add x19, x15, x19
.L2_39:
    movz x10, #588
    udiv w21, w14, w10
    mov w9, w21
    movz x10, #4352
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w21, w9
    str w21, [x19]
    ldr x9, [sp, #24]
    add x21, x9, #1
    cmp x21, x23
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x21, x21, #2
    add x21, x15, x21
.L2_41:
    movz x10, #588
    udiv w11, w14, w10
    msub w19, w11, w10, w14
.L2_43:
    movz x10, #28
    udiv w24, w19, w10
    mov w9, w24
    movz x10, #4449
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w24, w9
    str w24, [x21]
    movz x10, #3
    cmp x27, x10
    b.ne .L2_45
.L2_44:
    ldr x9, [sp, #24]
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x19, x9
    cmp x19, x23
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x19, x19, #2
    add x19, x15, x19
.L2_48:
    movz x10, #28
    udiv w11, w14, w10
    msub w15, w11, w10, w14
    mov w9, w15
    movz x10, #4519
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x19]
    b .L2_46
.L2_45:
.L2_46:
    b .L2_37
.L2_36:
    mov x9, #0
    mov x19, x9
.L2_49:
    cmp x19, x27
    b.hs .L2_52
.L2_50:
    ldr x9, [sp, #24]
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #48]
    ldr x15, [x9]
    cmp x14, x23
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x14, x14, #2
    add x21, x15, x14
    ldr x0, [sp, #16]
    mov x1, x19
    bl lb_unicode_Mapping_at
    mov w14, w0
    str w14, [x21]
.L2_51:
    add x14, x19, #1
    mov x19, x14
    b .L2_49
.L2_52:
.L2_37:
    b .L2_30
.L2_29:
.L2_30:
    mov x27, x20
    mov x9, x22
    str x9, [sp, #24]
    b .L2_4
.L2_6:
    sub x14, x29, #144
    ldr x9, [sp, #24]
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_14decompose_pass, .-lb_unicode_14decompose_pass

    .p2align 2
    .globl lb_unicode_15canonical_order
    .type lb_unicode_15canonical_order, %function
lb_unicode_15canonical_order:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    str x23, [sp, #240]
    str x24, [sp, #232]
    str x25, [sp, #224]
    str x26, [sp, #216]
    str x27, [sp, #208]
    str x28, [sp, #200]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x9, x29, #152
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x20, x9, #8
    mov x9, #0
    mov x21, x9
    mov x9, #0
    mov x22, x9
.L3_1:
    ldr x23, [x20]
    cmp x21, x23
    b.hs .L3_3
.L3_2:
    ldr x9, [sp, #24]
    ldr x24, [x9]
    lsl x14, x21, #2
    add x14, x24, x14
    ldr w14, [x14]
    mov x0, x14
    bl lb_unicode_15combining_class
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_5
.L3_4:
    add x14, x21, #1
    mov x21, x14
    b .L3_1
.L3_7:
    b .L3_6
.L3_5:
.L3_6:
    mov x25, x21
    mov x9, #0
    mov w26, w9
    mov x9, #0
    mov w27, w9
.L3_8:
    cmp x25, x23
    b.hs .L3_10
.L3_9:
    lsl x14, x25, #2
    add x14, x24, x14
    ldr w14, [x14]
    mov x0, x14
    bl lb_unicode_15combining_class
    mov w14, w0
    and w14, w14, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L3_12
.L3_11:
    b .L3_10
.L3_14:
    b .L3_13
.L3_12:
.L3_13:
    and w15, w26, #255
    cmp w14, w15
    b.hs .L3_16
.L3_15:
    movz x9, #1
    mov w27, w9
    b .L3_17
.L3_16:
.L3_17:
    add x15, x25, #1
    mov x25, x15
    mov w26, w14
    b .L3_8
.L3_10:
    mov x9, x25
    mov x10, x21
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x14, x9
    and w15, w27, #255
    cbnz w15, .L3_21
    b .L3_61
.L3_61:
    mov w21, w15
    b .L3_22
.L3_21:
    cmp x14, x22
    cset w21, hi
.L3_22:
    and w15, w21, #255
    cbnz w15, .L3_18
    b .L3_19
.L3_18:
    mov x15, x14
    b .L3_20
.L3_19:
    mov x15, x22
.L3_20:
    mov x21, x25
    mov x22, x15
    b .L3_1
.L3_3:
    mov x10, #0
    cmp x22, x10
    b.ne .L3_24
.L3_23:
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    ldr x27, [sp, #208]
    ldr x28, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_26:
    b .L3_25
.L3_24:
.L3_25:
    sub x9, x29, #168
    str x9, [sp, #16]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    str x0, [sp, #8]
    sub x24, x29, #216
    movz x10, #4096, lsl #48
    cmp x22, x10
    b.ls .L3_28
.L3_27:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_29
.L3_28:
    lsl x25, x22, #2
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, .L3_30
    b .L3_31
.L3_31:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
.L3_30:
    ldr x26, [x15]
    mov x17, x26
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #4
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #240
    add x26, x28, #16
    ldrb w26, [x26]
    mov x10, #0
    cmp x25, x10
    cset w27, ne
    mov x10, #0
    cmp w26, w10
    cset w26, eq
    and w26, w27, w26
    cbnz w26, .L3_32
    b .L3_33
.L3_32:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_29
.L3_33:
    ldr x14, [x28]
    str x14, [x24]
    add x14, x24, #8
    str x22, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
.L3_29:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, .L3_35
    b .L3_34
.L3_35:
    add x14, x24, #16
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    ldr x27, [sp, #208]
    ldr x28, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_36:
.L3_34:
    mov x10, x24
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x22, x23, #1
    sub x25, x29, #256
    add x26, x25, #8
    mov x9, #0
    mov x27, x9
.L3_37:
    cmp x27, x23
    b.hs .L3_39
.L3_38:
    ldr x9, [sp, #24]
    ldr x24, [x9]
    lsl x14, x27, #2
    add x28, x24, x14
    ldr w14, [x28]
    mov x0, x14
    bl lb_unicode_15combining_class
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_41
.L3_40:
    add x14, x27, #1
    mov x27, x14
    b .L3_37
.L3_43:
    b .L3_42
.L3_41:
.L3_42:
    mov x19, x27
    mov x9, #0
    mov w21, w9
    mov x9, #0
    mov w20, w9
.L3_44:
    cmp x19, x23
    b.hs .L3_46
.L3_45:
    lsl x14, x19, #2
    add x14, x24, x14
    ldr w14, [x14]
    mov x0, x14
    bl lb_unicode_15combining_class
    mov w14, w0
    and w14, w14, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L3_48
.L3_47:
    b .L3_46
.L3_50:
    b .L3_49
.L3_48:
.L3_49:
    and w15, w21, #255
    cmp w14, w15
    b.hs .L3_52
.L3_51:
    movz x9, #1
    mov w20, w9
    b .L3_53
.L3_52:
.L3_53:
    add x15, x19, #1
    mov x19, x15
    mov w21, w14
    b .L3_44
.L3_46:
    and w14, w20, #255
    cbnz w14, .L3_54
    b .L3_55
.L3_54:
    cmp x27, x22
    b.lo 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x19, x22
    b.lo 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x27, x19
    b.ls .L3_57
.L3_58:
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L3_57:
    sub x14, x19, x27
    str x28, [x25]
    str x14, [x26]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #16]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_unicode_9order_run
    b .L3_56
.L3_55:
.L3_56:
    mov x27, x19
    b .L3_37
.L3_39:
    sub x14, x29, #272
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x19, x9, #8
    ldr x19, [x19]
    mov x9, x19
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x19, x9
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x19, x9, #8
    ldr x19, [x19]
    cbnz x19, .L3_60
    b .L3_59
.L3_60:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L3_59:
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    ldr x27, [sp, #208]
    ldr x28, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_15canonical_order, .-lb_unicode_15canonical_order

    .p2align 2
    .globl lb_unicode_9order_run
    .type lb_unicode_9order_run, %function
lb_unicode_9order_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    str x22, [sp, #160]
    str x23, [sp, #152]
    str x24, [sp, #144]
    str x25, [sp, #136]
    str x26, [sp, #128]
    str x27, [sp, #120]
    str x28, [sp, #112]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x9, x29, #112
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x14, x9, #8
    ldr x20, [x14]
    mov x9, #0
    mov x21, x9
.L4_1:
    cmp x21, x20
    b.hs .L4_4
.L4_2:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    lsl x15, x21, #2
    add x22, x14, x15
    ldr w23, [x22]
    ldr w14, [x22]
    mov x0, x14
    bl lb_unicode_15combining_class
    mov w14, w0
    mov w14, w14
.L4_6:
    lsl w15, w14, #21
    orr w15, w15, w23
    str w15, [x22]
.L4_3:
    add x14, x21, #1
    mov x21, x14
    b .L4_1
.L4_4:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    sub x15, x29, #128
    ldr x9, [x15]
    str x9, [sp, #64]
    add x15, x15, #8
    ldr x24, [x15]
    ldr x9, [sp, #72]
    ldr x9, [x9]
    str x9, [sp, #56]
    sub x15, x29, #128
    ldr x21, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    ldr x9, [sp, #72]
    ldr x22, [x9]
    ldr x9, [sp, #72]
    ldr x9, [x9]
    str x9, [sp, #48]
    sub x27, x29, #128
    ldr x9, [x27]
    str x9, [sp, #40]
    add x27, x27, #8
    ldr x9, [x27]
    str x9, [sp, #32]
    movz x9, #1
    str x9, [sp, #24]
.L4_7:
    ldr x9, [sp, #24]
    cmp x9, x20
    b.hs .L4_9
.L4_8:
    mov x9, #0
    mov x19, x9
.L4_10:
    cmp x19, x20
    b.hs .L4_12
.L4_11:
    sub x27, x20, x19
    ldr x9, [sp, #24]
    cmp x9, x27
    b.hs .L4_14
.L4_13:
    ldr x9, [sp, #24]
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x27, x9
    mov x9, x27
    str x9, [sp, #16]
    b .L4_15
.L4_14:
    mov x9, x20
    str x9, [sp, #16]
.L4_15:
    mov x9, x20
    ldr x10, [sp, #16]
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x26, x9
    ldr x9, [sp, #24]
    cmp x9, x26
    b.hs .L4_17
.L4_16:
    ldr x9, [sp, #24]
    ldr x10, [sp, #16]
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x26, x9
    mov x9, x26
    str x9, [sp, #8]
    b .L4_18
.L4_17:
    mov x9, x20
    str x9, [sp, #8]
.L4_18:
    mov x28, x19
    ldr x9, [sp, #16]
    mov x25, x9
    mov x23, x19
.L4_19:
    ldr x10, [sp, #8]
    cmp x23, x10
    b.hs .L4_21
.L4_20:
    ldr x10, [sp, #16]
    cmp x28, x10
    cset w19, lo
    cbnz w19, .L4_25
    b .L4_47
.L4_47:
    mov w27, w19
    b .L4_26
.L4_25:
    ldr x9, [sp, #8]
    cmp x9, x25
    cset w19, eq
    cbnz w19, .L4_48
    b .L4_27
.L4_48:
    mov w27, w19
    b .L4_28
.L4_27:
    cmp x28, x20
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x19, x28, #2
    add x19, x14, x19
    ldr w19, [x19]
.L4_30:
    lsr w26, w19, #21
    cmp x25, x20
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x27, x25, #2
    add x27, x14, x27
    ldr w27, [x27]
.L4_32:
    lsr w19, w27, #21
    cmp w26, w19
    cset w19, ls
    mov w27, w19
.L4_28:
    and w19, w27, #255
    mov w27, w19
.L4_26:
    and w19, w27, #255
    cbnz w19, .L4_22
    b .L4_23
.L4_22:
    cmp x23, x15
    b.lo 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x19, x23, #2
    add x19, x21, x19
    cmp x28, x20
    b.lo 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x26, x28, #2
    add x26, x22, x26
    ldr w26, [x26]
    str w26, [x19]
    add x19, x28, #1
    mov x26, x25
    b .L4_24
.L4_23:
    cmp x23, x24
    b.lo 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x19, x23, #2
    ldr x9, [sp, #64]
    add x19, x9, x19
    cmp x25, x20
    b.lo 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    lsl x26, x25, #2
    ldr x9, [sp, #56]
    add x26, x9, x26
    ldr w26, [x26]
    str w26, [x19]
    add x26, x25, #1
    mov x19, x28
.L4_24:
    add x27, x23, #1
    mov x28, x19
    mov x25, x26
    mov x23, x27
    b .L4_19
.L4_21:
    ldr x9, [sp, #8]
    mov x19, x9
    b .L4_10
.L4_12:
    mov x9, #0
    mov x19, x9
.L4_33:
    cmp x19, x20
    b.hs .L4_36
.L4_34:
    lsl x23, x19, #2
    ldr x9, [sp, #48]
    add x25, x9, x23
    ldr x10, [sp, #32]
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    ldr x10, [sp, #40]
    add x23, x23, x10
    ldr w23, [x23]
    str w23, [x25]
.L4_35:
    add x23, x19, #1
    mov x19, x23
    b .L4_33
.L4_36:
.L4_41:
    movz x10, #2
    udiv x19, x20, x10
    ldr x9, [sp, #24]
    cmp x9, x19
    b.ls .L4_38
.L4_37:
    b .L4_9
.L4_38:
.L4_39:
    ldr x9, [sp, #24]
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x19, x9
    mov x9, x19
    str x9, [sp, #24]
    b .L4_7
.L4_9:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    mov x9, #0
    mov x15, x9
.L4_43:
    cmp x15, x20
    b.hs .L4_46
.L4_44:
    lsl x19, x15, #2
    add x19, x14, x19
    ldr w21, [x19]
    movz x10, #65535
    movk x10, #31, lsl #16
    and w21, w21, w10
    str w21, [x19]
.L4_45:
    add x19, x15, #1
    mov x15, x19
    b .L4_43
.L4_46:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    ldr x26, [sp, #128]
    ldr x27, [sp, #120]
    ldr x28, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_9order_run, .-lb_unicode_9order_run

    .p2align 2
    .globl lb_unicode_17compose_canonical
    .type lb_unicode_17compose_canonical, %function
lb_unicode_17compose_canonical:
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
    str x1, [x16, #8]
    sub x14, x29, #112
    add x15, x14, #8
    ldr x9, [x15]
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    mov x10, #0
    cmp x9, x10
    b.ne .L5_2
.L5_1:
    mov x9, #0
    mov x0, x9
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
.L5_2:
.L5_3:
    ldr x20, [x14]
    mov x9, #0
    ldr x10, [sp, #160]
    cmp x9, x10
    b.lo 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    ldr w21, [x20]
    mov x0, x21
    bl lb_unicode_15combining_class
    mov w15, w0
    sub x23, x29, #120
    adrp x9, lb_unicode_20composition_mappings
    add x9, x9, :lo12:lb_unicode_20composition_mappings
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #72]
    sub x9, x29, #200
    str x9, [sp, #40]
    sub x9, x29, #136
    str x9, [sp, #32]
    sub x9, x29, #192
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #4
    str x9, [sp, #56]
    sub x9, x29, #136
    str x9, [sp, #48]
    sub x9, x29, #184
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #4
    str x9, [sp, #96]
    sub x9, x29, #136
    str x9, [sp, #88]
    sub x9, x29, #176
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #4
    str x9, [sp, #120]
    sub x9, x29, #136
    str x9, [sp, #112]
    sub x9, x29, #128
    str x9, [sp, #144]
    add x9, x23, #4
    str x9, [sp, #136]
    mov x9, #0
    str x9, [sp, #24]
    mov w9, w15
    str w9, [sp, #16]
    movz x9, #1
    str x9, [sp, #8]
    movz x9, #1
    str x9, [sp, #0]
.L5_5:
    ldr x9, [sp, #0]
    ldr x10, [sp, #160]
    cmp x9, x10
    b.hs .L5_8
.L5_6:
    ldr x9, [sp, #0]
    lsl x14, x9, #2
    add x14, x20, x14
    ldr w19, [x14]
    mov x0, x19
    bl lb_unicode_15combining_class
    str w0, [sp, #152]
    sub x10, x29, #152
    str w21, [x10]
    sub x10, x29, #168
    str w19, [x10]
    movz x10, #4352
    cmp w21, w10
    cset w14, hs
    cbnz w14, .L5_26
    b .L5_67
.L5_67:
    mov w15, w14
    b .L5_27
.L5_26:
    movz x10, #4371
    cmp w21, w10
    cset w15, lo
.L5_27:
    and w14, w15, #255
    cbnz w14, .L5_28
    b .L5_68
.L5_68:
    mov w15, w14
    b .L5_29
.L5_28:
    movz x10, #4449
    cmp w19, w10
    cset w15, hs
.L5_29:
    and w14, w15, #255
    cbnz w14, .L5_30
    b .L5_69
.L5_69:
    mov w15, w14
    b .L5_31
.L5_30:
    movz x10, #4470
    cmp w19, w10
    cset w15, lo
.L5_31:
    and w14, w15, #255
    cbnz w14, .L5_23
    b .L5_24
.L5_23:
    mov w9, w21
    movz x10, #4352
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
    mov w9, w14
    movz x10, #588
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
    mov w9, w14
    movz x10, #44032
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
    mov w9, w19
    movz x10, #4449
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w15, w9
    mov w9, w15
    movz x10, #28
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w15, w9
    mov w9, w14
    mov w10, w15
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w22, w9
    ldr x10, [sp, #128]
    str w22, [x10]
    movz x9, #1
    ldr x10, [sp, #120]
    strb w9, [x10]
    ldr x10, [sp, #128]
    ldr x11, [sp, #112]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #112]
    sub x11, x29, #128
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b .L5_66
.L5_24:
.L5_25:
    movz x10, #44032
    cmp w21, w10
    cset w14, hs
    cbnz w14, .L5_36
    b .L5_70
.L5_70:
    mov w15, w14
    b .L5_37
.L5_36:
    movz x10, #55203
    cmp w21, w10
    cset w15, ls
.L5_37:
    and w14, w15, #255
    cbnz w14, .L5_38
    b .L5_71
.L5_71:
    mov w15, w14
    b .L5_39
.L5_38:
    mov w9, w21
    movz x10, #44032
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_56
    add x0, x0, :lo12:.Ltext_56
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
.L5_41:
    movz x10, #28
    udiv w11, w14, w10
    msub w15, w11, w10, w14
    mov x10, #0
    cmp w15, w10
    cset w15, eq
.L5_39:
    and w14, w15, #255
    cbnz w14, .L5_42
    b .L5_72
.L5_72:
    mov w15, w14
    b .L5_43
.L5_42:
    movz x10, #4519
    cmp w19, w10
    cset w15, hi
.L5_43:
    and w14, w15, #255
    cbnz w14, .L5_44
    b .L5_73
.L5_73:
    mov w15, w14
    b .L5_45
.L5_44:
    movz x10, #4547
    cmp w19, w10
    cset w15, lo
.L5_45:
    and w14, w15, #255
    cbnz w14, .L5_33
    b .L5_34
.L5_33:
    mov w9, w19
    mov w10, w21
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w14, w9
    mov w9, w14
    movz x10, #4519
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov w22, w9
    ldr x10, [sp, #104]
    str w22, [x10]
    movz x9, #1
    ldr x10, [sp, #96]
    strb w9, [x10]
    ldr x10, [sp, #104]
    ldr x11, [sp, #88]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #88]
    sub x11, x29, #128
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b .L5_66
.L5_34:
.L5_35:
    mov w14, w21
.L5_48:
    lsl x15, x14, #21
    mov w22, w19
    orr x22, x15, x22
    ldr x9, [sp, #72]
    ldr x15, [x9]
.L5_50:
    movz x10, #24
    udiv x14, x15, x10
    mov x9, #0
    mov x24, x9
    mov x25, x14
.L5_51:
    cmp x24, x25
    b.hs .L5_53
.L5_52:
    sub x14, x25, x24
.L5_55:
    movz x10, #2
    udiv x15, x14, x10
    mov x9, x15
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_60
    add x0, x0, :lo12:.Ltext_60
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x26, x9
    mov x9, x26
    movz x10, #24
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x27, x9
    ldr x9, [sp, #80]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x27
    bl lb_unicode_10table_word
    mov w15, w0
    mov w15, w15
.L5_57:
    lsl x28, x15, #21
    mov x9, x27
    movz x10, #8
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #80]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl lb_unicode_10table_word
    mov w14, w0
    mov w14, w14
    orr x14, x28, x14
    cmp x14, x22
    b.hs .L5_59
.L5_58:
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x15, x25
    b .L5_60
.L5_59:
    cmp x14, x22
    b.ls .L5_62
.L5_61:
    b .L5_63
.L5_62:
    mov x9, x27
    movz x10, #16
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #80]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl lb_unicode_10table_word
    mov w22, w0
    ldr x10, [sp, #64]
    str w22, [x10]
    movz x9, #1
    ldr x10, [sp, #56]
    strb w9, [x10]
    ldr x10, [sp, #64]
    ldr x11, [sp, #48]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #48]
    sub x11, x29, #128
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b .L5_66
.L5_63:
    mov x14, x24
    mov x15, x26
.L5_60:
    mov x24, x14
    mov x25, x15
    b .L5_51
.L5_53:
    ldr x11, [sp, #40]
    str xzr, [x11, #0]
    ldr x10, [sp, #40]
    ldr x11, [sp, #32]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #32]
    sub x11, x29, #128
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x9, #0
    mov w22, w9
.L5_66:
    ldr x10, [sp, #144]
    mov x11, x23
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x9, [sp, #136]
    ldrb w14, [x9]
    cbnz w14, .L5_12
    b .L5_10
.L5_12:
.L5_9:
    ldr w9, [sp, #16]
    and w14, w9, #255
    ldr w9, [sp, #152]
    and w15, w9, #255
    cmp w14, w15
    cset w15, lo
    cbnz w15, .L5_74
    b .L5_16
.L5_74:
    mov w14, w15
    b .L5_17
.L5_16:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L5_17:
    and w15, w14, #255
    cbnz w15, .L5_13
    b .L5_14
.L5_13:
    ldr x9, [sp, #24]
    ldr x10, [sp, #160]
    cmp x9, x10
    b.lo 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    lsl x14, x9, #2
    add x14, x20, x14
    str w22, [x14]
    ldr x9, [sp, #24]
    mov x14, x9
    mov w15, w22
    ldr w9, [sp, #16]
    mov w19, w9
    ldr x9, [sp, #8]
    mov x24, x9
    b .L5_7
.L5_14:
.L5_15:
    b .L5_11
.L5_10:
.L5_11:
    ldr w9, [sp, #152]
    and w22, w9, #255
    mov x10, #0
    cmp w22, w10
    b.ne .L5_20
.L5_19:
    ldr x9, [sp, #8]
    mov x14, x9
    mov w15, w19
    b .L5_21
.L5_20:
    ldr x9, [sp, #24]
    mov x14, x9
    mov w15, w21
.L5_21:
    ldr x9, [sp, #8]
    ldr x10, [sp, #160]
    cmp x9, x10
    b.lo 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    lsl x21, x9, #2
    add x21, x20, x21
    str w19, [x21]
    ldr x9, [sp, #8]
    add x24, x9, #1
    mov w19, w22
.L5_7:
    ldr x9, [sp, #0]
    add x22, x9, #1
    mov x9, x14
    str x9, [sp, #24]
    mov w21, w15
    mov w9, w19
    str w9, [sp, #16]
    mov x9, x24
    str x9, [sp, #8]
    mov x9, x22
    str x9, [sp, #0]
    b .L5_5
.L5_8:
    ldr x9, [sp, #8]
    mov x0, x9
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

    .size lb_unicode_17compose_canonical, .-lb_unicode_17compose_canonical

    .p2align 2
    .globl lb_unicode_17encode_normalized
    .type lb_unicode_17encode_normalized, %function
lb_unicode_17encode_normalized:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #496]
    str x20, [sp, #488]
    str x21, [sp, #480]
    str x22, [sp, #472]
    str x23, [sp, #464]
    str x24, [sp, #456]
    str x25, [sp, #448]
    str x26, [sp, #440]
    str x27, [sp, #432]
    str x28, [sp, #424]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #40]
    add x14, x14, #8
    ldr x20, [x14]
    sub x27, x29, #200
    add x9, x27, #8
    str x9, [sp, #32]
    sub x22, x29, #224
    sub x28, x29, #240
    add x23, x28, #8
    sub x24, x29, #184
    add x9, x24, #8
    str x9, [sp, #24]
    mov x9, #0
    mov x25, x9
    mov x9, #0
    mov x26, x9
.L6_1:
    cmp x26, x20
    b.hs .L6_4
.L6_2:
    lsl x14, x26, #2
    ldr x9, [sp, #40]
    add x14, x9, x14
    ldr w14, [x14]
    mov x0, x14
    bl lb_utf8_14encoded_length
    sub x16, x29, #200
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, .L6_5
    b .L6_6
.L6_5:
    ldr x14, [x27]
    b .L6_7
.L6_6:
    adrp x14, .Ltext_66
    add x14, x14, :lo12:.Ltext_66
    sub x15, x29, #216
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    adrp x14, .Ltext_67
    add x14, x14, :lo12:.Ltext_67
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_67
    add x0, x0, :lo12:.Ltext_67
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L6_7:
    mov x0, x25
    mov x1, x14
    movz x2, #64
    mov x3, x22
    bl lb_core_6qadd_u
    mov w15, w0
    ldr x21, [x22]
    str x21, [x28]
    strb w15, [x23]
    ldrb w15, [x23]
    cbnz w15, .L6_8
    b .L6_9
.L6_8:
    b .L6_10
.L6_9:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_68
    add x15, x15, :lo12:.Ltext_68
    sub x20, x29, #256
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_11:
.L6_10:
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, .L6_15
    b .L6_13
.L6_15:
    ldr x14, [x24]
.L6_12:
    cmp x21, x14
    b.ls .L6_17
.L6_16:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_strings_16output_too_large
    add x15, x15, :lo12:lb_strings_16output_too_large
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_69
    add x15, x15, :lo12:.Ltext_69
    sub x20, x29, #272
    str x15, [x20]
    add x15, x20, #8
    movz x9, #42
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_19:
    b .L6_18
.L6_17:
.L6_18:
    b .L6_14
.L6_13:
.L6_14:
.L6_3:
    add x14, x26, #1
    mov x25, x21
    mov x26, x14
    b .L6_1
.L6_4:
    sub x21, x29, #280
    mov x0, x25
    movz x1, #1
    movz x2, #64
    mov x3, x21
    bl lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #296
    ldr x21, [x21]
    str x21, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, .L6_20
    b .L6_21
.L6_20:
    b .L6_22
.L6_21:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_68
    add x15, x15, :lo12:.Ltext_68
    sub x20, x29, #312
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_23:
.L6_22:
    sub x22, x29, #328
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    sub x23, x29, #376
    movz x10, #16384, lsl #48
    cmp x21, x10
    b.ls .L6_25
.L6_24:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L6_26
.L6_25:
    ldr x14, [x15]
    add x24, x15, #8
    ldr x24, [x24]
    cbnz x24, .L6_27
    b .L6_28
.L6_28:
    adrp x0, .Ltext_70
    add x0, x0, :lo12:.Ltext_70
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
.L6_27:
    ldr x15, [x24]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #1
    sub x8, x29, #400
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #400
    add x15, x27, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x21, x10
    cset w26, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w26, w15
    cbnz w15, .L6_29
    b .L6_30
.L6_29:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L6_26
.L6_30:
    ldr x14, [x27]
    str x14, [x23]
    add x14, x23, #8
    str x21, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L6_26:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L6_32
    b .L6_31
.L6_32:
    add x14, x23, #16
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_33:
.L6_31:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x21, x22, #8
    sub x24, x29, #416
    add x9, x24, #8
    str x9, [sp, #16]
    sub x26, x29, #432
    add x9, x26, #8
    str x9, [sp, #8]
    mov x9, #0
    mov x28, x9
    mov x9, #0
    mov x27, x9
.L6_34:
    cmp x27, x20
    b.hs .L6_37
.L6_35:
    lsl x14, x27, #2
    ldr x9, [sp, #40]
    add x14, x9, x14
    ldr w14, [x14]
    ldr x23, [x22]
    ldr x15, [x21]
    add x15, x15, #1
    cmp x28, x15
    b.lo 1f
    adrp x0, .Ltext_71
    add x0, x0, :lo12:.Ltext_71
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x25, x15
    b.lo 1f
    adrp x0, .Ltext_71
    add x0, x0, :lo12:.Ltext_71
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x28, x25
    b.ls .L6_38
.L6_39:
    adrp x0, .Ltext_71
    add x0, x0, :lo12:.Ltext_71
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L6_38:
    add x15, x28, x23
    sub x19, x25, x28
    str x15, [x24]
    ldr x10, [sp, #16]
    str x19, [x10]
    mov x0, x14
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_utf8_encode
    sub x16, x29, #432
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #8]
    ldrb w15, [x9]
    cbnz w15, .L6_40
    b .L6_41
.L6_40:
    ldr x14, [x26]
    b .L6_42
.L6_41:
    adrp x14, .Ltext_72
    add x14, x14, :lo12:.Ltext_72
    sub x15, x29, #448
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
    str x9, [x14]
    adrp x14, .Ltext_71
    add x14, x14, :lo12:.Ltext_71
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_71
    add x0, x0, :lo12:.Ltext_71
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L6_42:
    mov x9, x14
    mov x10, x28
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_73
    add x0, x0, :lo12:.Ltext_73
    adrp x1, .Ltext_76
    add x1, x1, :lo12:.Ltext_76
    bl lb_core_7trap_at
1:
    mov x15, x9
.L6_36:
    add x14, x27, #1
    mov x28, x15
    mov x27, x14
    b .L6_34
.L6_37:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cmp x25, x15
    b.lo 1f
    adrp x0, .Ltext_74
    add x0, x0, :lo12:.Ltext_74
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    add x19, x14, x25
    mov x9, #0
    strb w9, [x19]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_75
    add x0, x0, :lo12:.Ltext_75
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x25, x15
    b.lo 1f
    adrp x0, .Ltext_75
    add x0, x0, :lo12:.Ltext_75
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x25
    b.ls .L6_43
.L6_44:
    adrp x0, .Ltext_75
    add x0, x0, :lo12:.Ltext_75
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L6_43:
    sub x15, x29, #464
    str x14, [x15]
    add x15, x15, #8
    str x25, [x15]
    sub x15, x29, #480
    str x14, [x15]
    add x19, x15, #8
    str x25, [x19]
    sub x19, x29, #152
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #40
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_45:
    adrp x0, .Ltext_75
    add x0, x0, :lo12:.Ltext_75
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_unicode_17encode_normalized, .-lb_unicode_17encode_normalized

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_normalization_0init

    .section .rodata
.Ltext_0:
    .asciz ""
.Ltext_1:
    .asciz "the normalization storage size overflowed"
.Ltext_2:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_3:
    .asciz "memory.unset"
.Ltext_4:
    .asciz "src/std/unicode/normalization.lucb:22:5"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "src/std/unicode/normalization.lucb:24:5"
.Ltext_7:
    .asciz "the text changed during normalization"
.Ltext_8:
    .asciz "src/std/unicode/normalization.lucb:26:9"
.Ltext_9:
    .asciz "src/std/unicode/normalization.lucb:27:5"
.Ltext_10:
    .asciz "src/std/unicode/normalization.lucb:29:5"
.Ltext_11:
    .asciz "index out of bounds"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "invalid UTF-8 text"
.Ltext_14:
    .asciz "src/std/unicode/normalization.lucb:37:9"
.Ltext_15:
    .asciz "src/std/unicode/normalization.lucb:41:9"
.Ltext_16:
    .asciz "division by zero"
.Ltext_17:
    .asciz "the decomposed text size overflowed"
.Ltext_18:
    .asciz "src/std/unicode/normalization.lucb:47:17"
.Ltext_19:
    .asciz "src/std/unicode/normalization.lucb:48:17"
.Ltext_20:
    .asciz "src/std/unicode/normalization.lucb:49:17"
.Ltext_21:
    .asciz "src/std/unicode/normalization.lucb:51:21"
.Ltext_22:
    .asciz "src/std/unicode/normalization.lucb:54:21"
.Ltext_23:
    .asciz "src/std/unicode/normalization.lucb:56:5"
.Ltext_24:
    .asciz "src/std/unicode/normalization.lucb:65:9"
.Ltext_25:
    .asciz "src/std/unicode/normalization.lucb:66:13"
.Ltext_26:
    .asciz "src/std/unicode/normalization.lucb:72:13"
.Ltext_27:
    .asciz "src/std/unicode/normalization.lucb:78:13"
.Ltext_28:
    .asciz "src/std/unicode/normalization.lucb:79:9"
.Ltext_29:
    .asciz "src/std/unicode/normalization.lucb:84:5"
.Ltext_30:
    .asciz "src/std/unicode/normalization.lucb:88:9"
.Ltext_31:
    .asciz "src/std/unicode/normalization.lucb:89:13"
.Ltext_32:
    .asciz "src/std/unicode/normalization.lucb:95:13"
.Ltext_33:
    .asciz "src/std/unicode/normalization.lucb:101:13"
.Ltext_34:
    .asciz "src/std/unicode/normalization.lucb:103:13"
.Ltext_35:
    .asciz "src/std/unicode/normalization.lucb:110:9"
.Ltext_36:
    .asciz "shift count out of range"
.Ltext_37:
    .asciz "src/std/unicode/normalization.lucb:115:13"
.Ltext_38:
    .asciz "src/std/unicode/normalization.lucb:116:13"
.Ltext_39:
    .asciz "src/std/unicode/normalization.lucb:121:17"
.Ltext_40:
    .asciz "src/std/unicode/normalization.lucb:122:21"
.Ltext_41:
    .asciz "src/std/unicode/normalization.lucb:123:21"
.Ltext_42:
    .asciz "src/std/unicode/normalization.lucb:125:21"
.Ltext_43:
    .asciz "src/std/unicode/normalization.lucb:126:21"
.Ltext_44:
    .asciz "src/std/unicode/normalization.lucb:127:17"
.Ltext_45:
    .asciz "src/std/unicode/normalization.lucb:130:13"
.Ltext_46:
    .asciz "src/std/unicode/normalization.lucb:131:9"
.Ltext_47:
    .asciz "src/std/unicode/normalization.lucb:133:9"
.Ltext_48:
    .asciz "src/std/unicode/normalization.lucb:135:9"
.Ltext_49:
    .asciz "src/std/unicode/normalization.lucb:141:5"
.Ltext_50:
    .asciz "src/std/unicode/normalization.lucb:145:9"
.Ltext_51:
    .asciz "src/std/unicode/normalization.lucb:150:17"
.Ltext_52:
    .asciz "src/std/unicode/normalization.lucb:156:9"
.Ltext_53:
    .asciz "src/std/unicode/normalization.lucb:157:9"
.Ltext_54:
    .asciz "src/std/unicode/normalization.lucb:159:5"
.Ltext_55:
    .asciz "src/std/unicode/normalization.lucb:164:9"
.Ltext_56:
    .asciz "src/std/unicode/normalization.lucb:165:5"
.Ltext_57:
    .asciz "src/std/unicode/normalization.lucb:166:9"
.Ltext_58:
    .asciz "src/std/unicode/normalization.lucb:167:5"
.Ltext_59:
    .asciz "src/std/unicode/normalization.lucb:169:5"
.Ltext_60:
    .asciz "src/std/unicode/normalization.lucb:171:9"
.Ltext_61:
    .asciz "src/std/unicode/normalization.lucb:172:9"
.Ltext_62:
    .asciz "src/std/unicode/normalization.lucb:173:9"
.Ltext_63:
    .asciz "src/std/unicode/normalization.lucb:175:13"
.Ltext_64:
    .asciz "src/std/unicode/normalization.lucb:179:13"
.Ltext_65:
    .asciz "src/std/unicode/normalization.lucb:180:5"
.Ltext_66:
    .asciz "invalid generated Unicode scalar"
.Ltext_67:
    .asciz "src/std/unicode/normalization.lucb:185:9"
.Ltext_68:
    .asciz "the normalized text size overflowed"
.Ltext_69:
    .asciz "the normalized text exceeds its byte limit"
.Ltext_70:
    .asciz "src/std/unicode/normalization.lucb:191:5"
.Ltext_71:
    .asciz "src/std/unicode/normalization.lucb:194:9"
.Ltext_72:
    .asciz "a normalized scalar did not fit its encoded length"
.Ltext_73:
    .asciz "src/std/unicode/normalization.lucb:195:9"
.Ltext_74:
    .asciz "src/std/unicode/normalization.lucb:196:5"
.Ltext_75:
    .asciz "src/std/unicode/normalization.lucb:197:5"
.Ltext_76:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
