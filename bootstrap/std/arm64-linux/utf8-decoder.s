    .text

    .p2align 2
    .globl lb_utf8_decoder_0init
    .type lb_utf8_decoder_0init, %function
lb_utf8_decoder_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_decoder_0init, .-lb_utf8_decoder_0init

    .p2align 2
    .globl lb_utf8_Decoder_push
    .type lb_utf8_Decoder_push, %function
lb_utf8_Decoder_push:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    str x24, [sp, #168]
    str x25, [sp, #160]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str w1, [x16]
    sub x9, x29, #128
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #176
    bl lb_utf8_Decoder_13check_failure
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    add x14, x19, #4
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne .L1_5
.L1_4:
    sub x15, x29, #144
    ldrb w15, [x15]
    movz x10, #128
    cmp w15, w10
    b.hs .L1_8
.L1_7:
    mov w14, w15
    mov w14, w14
    adrp x19, .Ltext_0
    add x19, x19, :lo12:.Ltext_0
    mov x0, x14
    mov x1, #0
    mov x2, x19
    bl lb_core_7to_char
    mov x14, x0
    sub x19, x29, #184
    str w14, [x19]
    add x14, x19, #4
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_8:
.L1_9:
    add x20, x19, #5
    movz x9, #128
    strb w9, [x20]
    add x21, x19, #6
    movz x9, #191
    strb w9, [x21]
    movz x10, #194
    cmp w15, w10
    cset w22, hs
    cbnz w22, .L1_14
    b .L1_55
.L1_55:
    mov w23, w22
    b .L1_15
.L1_14:
    movz x10, #223
    cmp w15, w10
    cset w23, ls
.L1_15:
    and w22, w23, #255
    cbnz w22, .L1_11
    b .L1_12
.L1_11:
    movz x10, #31
    and w20, w15, w10
    mov w20, w20
    str w20, [x19]
    movz x9, #1
    strb w9, [x14]
    b .L1_13
.L1_12:
    movz x10, #224
    cmp w15, w10
    cset w22, hs
    cbnz w22, .L1_19
    b .L1_56
.L1_56:
    mov w23, w22
    b .L1_20
.L1_19:
    movz x10, #239
    cmp w15, w10
    cset w23, ls
.L1_20:
    and w22, w23, #255
    cbnz w22, .L1_16
    b .L1_17
.L1_16:
    movz x10, #15
    and w22, w15, w10
    mov w22, w22
    str w22, [x19]
    movz x9, #2
    strb w9, [x14]
    movz x10, #224
    cmp w15, w10
    b.ne .L1_22
.L1_21:
    movz x9, #160
    strb w9, [x20]
    b .L1_23
.L1_22:
    movz x10, #237
    cmp w15, w10
    b.ne .L1_25
.L1_24:
    movz x9, #159
    strb w9, [x21]
    b .L1_26
.L1_25:
.L1_26:
.L1_23:
    b .L1_18
.L1_17:
    movz x10, #240
    cmp w15, w10
    cset w22, hs
    cbnz w22, .L1_30
    b .L1_57
.L1_57:
    mov w23, w22
    b .L1_31
.L1_30:
    movz x10, #244
    cmp w15, w10
    cset w23, ls
.L1_31:
    and w22, w23, #255
    cbnz w22, .L1_27
    b .L1_28
.L1_27:
    movz x10, #7
    and w22, w15, w10
    mov w22, w22
    str w22, [x19]
    movz x9, #3
    strb w9, [x14]
    movz x10, #240
    cmp w15, w10
    b.ne .L1_33
.L1_32:
    movz x9, #144
    strb w9, [x20]
    b .L1_34
.L1_33:
    movz x10, #244
    cmp w15, w10
    b.ne .L1_36
.L1_35:
    movz x9, #143
    strb w9, [x21]
    b .L1_37
.L1_36:
.L1_37:
.L1_34:
    b .L1_29
.L1_28:
    add x14, x19, #7
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    add x14, x20, #8
    adrp x15, lb_utf8_16invalid_sequence
    add x15, x15, :lo12:lb_utf8_16invalid_sequence
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    sub x21, x29, #200
    str x15, [x21]
    add x15, x21, #8
    movz x9, #26
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_29:
.L1_18:
.L1_13:
    sub x19, x29, #208
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #120
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_5:
.L1_6:
    sub x20, x29, #144
    ldrb w20, [x20]
    add x21, x19, #5
    ldrb w22, [x21]
    cmp w20, w22
    cset w22, lo
    cbnz w22, .L1_58
    b .L1_43
.L1_58:
    mov w23, w22
    b .L1_44
.L1_43:
    add x22, x19, #6
    ldrb w22, [x22]
    cmp w20, w22
    cset w23, hi
.L1_44:
    and w22, w23, #255
    cbnz w22, .L1_40
    b .L1_41
.L1_40:
    add x14, x19, #7
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    add x14, x20, #8
    adrp x15, lb_utf8_16invalid_sequence
    add x15, x15, :lo12:lb_utf8_16invalid_sequence
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x21, x29, #224
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_41:
.L1_42:
    ldr w22, [x19]
.L1_47:
    lsl w23, w22, #6
    movz x10, #63
    and w24, w20, w10
    mov w24, w24
    orr w23, w23, w24
    str w23, [x19]
    sub w25, w15, #1
    and w24, w25, #255
    cmp w24, w25
    b.eq .L1_48
.L1_49:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
.L1_48:
    strb w25, [x14]
    movz x9, #128
    strb w9, [x21]
    add x15, x19, #6
    movz x9, #191
    strb w9, [x15]
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne .L1_51
.L1_50:
    mov w14, w23
    mov w14, w14
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl lb_core_7to_char
    mov x14, x0
    sub x15, x29, #232
    str w14, [x15]
    add x14, x15, #4
    movz x9, #1
    strb w9, [x14]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_51:
.L1_52:
    sub x19, x29, #240
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #120
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_Decoder_push, .-lb_utf8_Decoder_push

    .p2align 2
    .globl lb_utf8_Decoder_finish
    .type lb_utf8_Decoder_finish, %function
lb_utf8_Decoder_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #112
    bl lb_utf8_Decoder_13check_failure
    sub x15, x29, #112
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
.L2_1:
    add x14, x19, #4
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L2_5
.L2_4:
    add x14, x19, #7
    movz x9, #2
    strb w9, [x14]
    sub x20, x29, #72
    adrp x14, lb_utf8_19incomplete_sequence
    add x14, x14, :lo12:lb_utf8_19incomplete_sequence
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_7:
    b .L2_6
.L2_5:
.L2_6:
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_Decoder_finish, .-lb_utf8_Decoder_finish

    .p2align 2
    .globl lb_utf8_Decoder_10is_pending
    .type lb_utf8_Decoder_10is_pending, %function
lb_utf8_Decoder_10is_pending:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    add x14, x15, #7
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L3_1
    b .L3_4
.L3_4:
    mov w15, w14
    b .L3_2
.L3_1:
    add x14, x15, #4
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L3_2:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at

    .size lb_utf8_Decoder_10is_pending, .-lb_utf8_Decoder_10is_pending

    .p2align 2
    .globl lb_utf8_Decoder_9is_failed
    .type lb_utf8_Decoder_9is_failed, %function
lb_utf8_Decoder_9is_failed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #7
    ldrb w14, [x14]
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
.L4_1:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at

    .size lb_utf8_Decoder_9is_failed, .-lb_utf8_Decoder_9is_failed

    .p2align 2
    .globl lb_utf8_Decoder_reset
    .type lb_utf8_Decoder_reset, %function
lb_utf8_Decoder_reset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    mov x9, #0
    str w9, [x15]
    add x14, x15, #4
    mov x9, #0
    strb w9, [x14]
    add x14, x15, #5
    mov x9, #0
    strb w9, [x14]
    add x14, x15, #6
    mov x9, #0
    strb w9, [x14]
    add x14, x15, #7
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_Decoder_reset, .-lb_utf8_Decoder_reset

    .p2align 2
    .globl lb_utf8_Decoder_13check_failure
    .type lb_utf8_Decoder_13check_failure, %function
lb_utf8_Decoder_13check_failure:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    add x14, x14, #7
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne .L6_2
.L6_1:
    sub x19, x29, #64
    adrp x14, lb_utf8_16invalid_sequence
    add x14, x14, :lo12:lb_utf8_16invalid_sequence
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_13
    add x14, x14, :lo12:.Ltext_13
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
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
.L6_4:
    b .L6_3
.L6_2:
.L6_3:
    movz x10, #2
    cmp w14, w10
    b.ne .L6_6
.L6_5:
    sub x19, x29, #64
    adrp x14, lb_utf8_19incomplete_sequence
    add x14, x14, :lo12:lb_utf8_19incomplete_sequence
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #104
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_8:
    b .L6_7
.L6_6:
.L6_7:
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

    .size lb_utf8_Decoder_13check_failure, .-lb_utf8_Decoder_13check_failure

    .section .init_array,"aw"
    .p2align 3
    .quad lb_utf8_decoder_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/utf8/decoder.lucb:22:17"
.Ltext_1:
    .asciz "invalid UTF-8 leading byte"
.Ltext_2:
    .asciz "invalid UTF-8 continuation byte"
.Ltext_3:
    .asciz "shift count out of range"
.Ltext_4:
    .asciz "src/std/utf8/decoder.lucb:49:9"
.Ltext_5:
    .asciz "integer overflow"
.Ltext_6:
    .asciz "src/std/utf8/decoder.lucb:50:9"
.Ltext_7:
    .asciz "src/std/utf8/decoder.lucb:54:13"
.Ltext_8:
    .asciz "unreachable"
.Ltext_9:
    .asciz "src/std/utf8/decoder.lucb:55:9"
.Ltext_10:
    .asciz "the UTF-8 stream ends within a scalar"
.Ltext_11:
    .asciz "src/std/utf8/decoder.lucb:69:9"
.Ltext_12:
    .asciz "src/std/utf8/decoder.lucb:73:9"
.Ltext_13:
    .asciz "the UTF-8 decoder has rejected malformed input"
.Ltext_14:
    .asciz "the UTF-8 decoder has rejected incomplete input"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
