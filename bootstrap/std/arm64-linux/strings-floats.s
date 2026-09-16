    .text

    .p2align 2
    .globl lb_strings_floats_0init
    .type lb_strings_floats_0init, %function
lb_strings_floats_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_floats_0init, .-lb_strings_floats_0init

    .p2align 2
    .globl lb_strings_9parse_f64
    .type lb_strings_9parse_f64, %function
lb_strings_9parse_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    str x21, [sp, #384]
    str x22, [sp, #376]
    str x23, [sp, #368]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_12float_syntax
    sub x16, x29, #122
    strh w0, [x16, #0]
    sub x15, x29, #122
    add x14, x15, #1
    ldrb w14, [x14]
    cbnz w14, .L1_1
    b .L1_2
.L1_1:
    ldrb w14, [x15]
    b .L1_3
.L1_2:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_strings_14invalid_number
    add x15, x15, :lo12:lb_strings_14invalid_number
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
.L1_3:
    and w15, w14, #255
    and w15, w15, #255
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne .L1_6
.L1_5:
    sub x12, x29, #152
    movz x10, #1
    cmp w15, w10
    b.ne .L1_9
.L1_8:
    movz x9, #32752, lsl #48
    mov x14, x9
    b .L1_10
.L1_9:
    movz x9, #32760, lsl #48
    mov x14, x9
.L1_10:
    str x14, [x12]
    ldr x15, [x19]
    add x13, x19, #8
    ldr x13, [x13]
    mov x9, #0
    cmp x9, x13
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    ldrb w15, [x15]
    movz x10, #45
    cmp w15, w10
    b.ne .L1_12
.L1_11:
    movz x10, #32768, lsl #48
    orr x15, x14, x10
    str x15, [x12]
    b .L1_13
.L1_12:
.L1_13:
    sub x10, x29, #344
    str x12, [x10]
    sub x19, x29, #352
    mov x0, x19
    mov x1, x12
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L1_33
    b .L1_34
.L1_34:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L1_33:
    ldr d24, [x19]
    b .L1_36
.L1_35:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_36:
    sub x14, x29, #104
    str d24, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_14:
    b .L1_7
.L1_6:
.L1_7:
    sub x20, x29, #160
    sub x8, x29, #200
    bl lb_strings_NumericLocale_create
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_16
    b .L1_15
.L1_16:
    add x14, x15, #8
    sub x19, x29, #104
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_17:
.L1_15:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x21, x29, #216
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #264
    bl lb_strings_copy
    sub x12, x29, #264
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, .L1_19
    b .L1_18
.L1_19:
    add x14, x12, #16
    sub x19, x29, #104
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    cbnz x14, .L1_40
    b .L1_38
.L1_40:
.L1_37:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L1_39
.L1_38:
.L1_39:
.L1_41:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_20:
.L1_18:
    mov x10, x12
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #272
    mov x9, #0
    str x9, [x19]
    mov x0, #0
    bl lb_c_9set_errno
    sub x23, x29, #280
    ldr x22, [x21]
    mov x0, x20
    bl lb_strings_NumericLocale_handle
    mov x14, x0
    sub x10, x29, #368
    str x22, [x10]
    sub x10, x29, #384
    str x19, [x10]
    sub x10, x29, #400
    str x14, [x10]
    mov x0, x22
    mov x1, x19
    mov x2, x14
    bl strtod_l
    fmov d24, d0
    b .L1_43
.L1_42:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_43:
    str d24, [x23]
    bl lb_c_errno
    mov w22, w0
    ldr x14, [x19]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x22
    sub x8, x29, #312
    bl lb_strings_22check_float_conversion
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_22
    b .L1_21
.L1_22:
    sub x19, x29, #104
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    ldr x14, [x20]
    cbnz x14, .L1_47
    b .L1_45
.L1_47:
.L1_44:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L1_46
.L1_45:
.L1_46:
.L1_48:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_23:
.L1_21:
    sub x10, x29, #416
    str x23, [x10]
    sub x19, x29, #424
    mov x0, x19
    mov x1, x23
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L1_49
    b .L1_50
.L1_50:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L1_49:
    ldr x14, [x19]
    b .L1_52
.L1_51:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_52:
    movz x10, #65535
    movk x10, #65535, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #32767, lsl #48
    and x15, x14, x10
    movz x10, #32752, lsl #48
    cmp x15, x10
    cset w12, hs
    cbnz w12, .L1_68
    b .L1_27
.L1_68:
    mov w14, w12
    b .L1_28
.L1_27:
    movz x10, #34
    cmp w22, w10
    cset w14, eq
    cbnz w14, .L1_29
    b .L1_69
.L1_69:
    mov w15, w14
    b .L1_30
.L1_29:
    movz x10, #16368, lsl #48
    cmp x15, x10
    cset w14, hs
    mov w15, w14
.L1_30:
    and w14, w15, #255
.L1_28:
    and w15, w14, #255
    cbnz w15, .L1_24
    b .L1_25
.L1_24:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_strings_19number_out_of_range
    add x15, x15, :lo12:lb_strings_19number_out_of_range
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #328
    str x15, [x12]
    add x15, x12, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    ldr x14, [x20]
    cbnz x14, .L1_56
    b .L1_54
.L1_56:
.L1_53:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L1_55
.L1_54:
.L1_55:
.L1_57:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_31:
    b .L1_26
.L1_25:
.L1_26:
    ldr d24, [x23]
    sub x19, x29, #104
    str d24, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    ldr x14, [x20]
    cbnz x14, .L1_61
    b .L1_59
.L1_61:
.L1_58:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L1_60
.L1_59:
.L1_60:
.L1_62:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_32:
    sub x14, x29, #216
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    sub x14, x29, #160
    ldr x14, [x14]
    cbnz x14, .L1_66
    b .L1_64
.L1_66:
    mov x15, x14
.L1_63:
    mov x12, x14
    mov x9, #0
    str x9, [x12]
    mov x12, x15
    mov x0, x12
    bl freelocale
    b .L1_65
.L1_64:
.L1_65:
.L1_67:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_9parse_f64, .-lb_strings_9parse_f64

    .p2align 2
    .globl lb_strings_9parse_f32
    .type lb_strings_9parse_f32, %function
lb_strings_9parse_f32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #416]
    str x20, [sp, #408]
    str x21, [sp, #400]
    str x22, [sp, #392]
    str x23, [sp, #384]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_12float_syntax
    sub x16, x29, #122
    strh w0, [x16, #0]
    sub x15, x29, #122
    add x14, x15, #1
    ldrb w14, [x14]
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    ldrb w14, [x15]
    b .L2_3
.L2_2:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_strings_14invalid_number
    add x15, x15, :lo12:lb_strings_14invalid_number
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
.L2_3:
    and w15, w14, #255
    and w15, w15, #255
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne .L2_6
.L2_5:
    sub x12, x29, #148
    movz x10, #1
    cmp w15, w10
    b.ne .L2_9
.L2_8:
    movz x9, #32640, lsl #16
    mov w14, w9
    b .L2_10
.L2_9:
    movz x9, #32704, lsl #16
    mov w14, w9
.L2_10:
    str w14, [x12]
    ldr x15, [x19]
    add x13, x19, #8
    ldr x13, [x13]
    mov x9, #0
    cmp x9, x13
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    ldrb w15, [x15]
    movz x10, #45
    cmp w15, w10
    b.ne .L2_12
.L2_11:
    movz x10, #32768, lsl #16
    orr w15, w14, w10
    str w15, [x12]
    b .L2_13
.L2_12:
.L2_13:
    sub x10, x29, #344
    str x12, [x10]
    sub x19, x29, #348
    mov x0, x19
    mov x1, x12
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L2_33
    b .L2_34
.L2_34:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L2_33:
    ldr s24, [x19]
    sub x10, x29, #360
    str s24, [x10]
    b .L2_36
.L2_35:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_36:
    sub x14, x29, #104
    str s24, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_14:
    b .L2_7
.L2_6:
.L2_7:
    sub x20, x29, #160
    sub x8, x29, #200
    bl lb_strings_NumericLocale_create
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_16
    b .L2_15
.L2_16:
    add x14, x15, #8
    sub x19, x29, #104
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_17:
.L2_15:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x21, x29, #216
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #264
    bl lb_strings_copy
    sub x12, x29, #264
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, .L2_19
    b .L2_18
.L2_19:
    add x14, x12, #16
    sub x19, x29, #104
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    cbnz x14, .L2_40
    b .L2_38
.L2_40:
.L2_37:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L2_39
.L2_38:
.L2_39:
.L2_41:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_20:
.L2_18:
    mov x10, x12
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #272
    mov x9, #0
    str x9, [x19]
    mov x0, #0
    bl lb_c_9set_errno
    sub x23, x29, #276
    ldr x22, [x21]
    mov x0, x20
    bl lb_strings_NumericLocale_handle
    mov x14, x0
    sub x10, x29, #376
    str x22, [x10]
    sub x10, x29, #392
    str x19, [x10]
    sub x10, x29, #408
    str x14, [x10]
    mov x0, x22
    mov x1, x19
    mov x2, x14
    bl strtof_l
    fmov s24, s0
    sub x10, x29, #416
    str s24, [x10]
    b .L2_43
.L2_42:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_43:
    str s24, [x23]
    bl lb_c_errno
    mov w22, w0
    ldr x14, [x19]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x22
    sub x8, x29, #312
    bl lb_strings_22check_float_conversion
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_22
    b .L2_21
.L2_22:
    sub x19, x29, #104
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    ldr x14, [x20]
    cbnz x14, .L2_47
    b .L2_45
.L2_47:
.L2_44:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L2_46
.L2_45:
.L2_46:
.L2_48:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_23:
.L2_21:
    sub x10, x29, #432
    str x23, [x10]
    sub x19, x29, #436
    mov x0, x19
    mov x1, x23
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L2_49
    b .L2_50
.L2_50:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L2_49:
    ldr w14, [x19]
    sub x10, x29, #448
    str w14, [x10]
    b .L2_52
.L2_51:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_52:
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w15, w14, w10
    movz x10, #32640, lsl #16
    cmp w15, w10
    cset w12, hs
    cbnz w12, .L2_68
    b .L2_27
.L2_68:
    mov w14, w12
    b .L2_28
.L2_27:
    movz x10, #34
    cmp w22, w10
    cset w14, eq
    cbnz w14, .L2_29
    b .L2_69
.L2_69:
    mov w15, w14
    b .L2_30
.L2_29:
    movz x10, #16256, lsl #16
    cmp w15, w10
    cset w14, hs
    mov w15, w14
.L2_30:
    and w14, w15, #255
.L2_28:
    and w15, w14, #255
    cbnz w15, .L2_24
    b .L2_25
.L2_24:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_strings_19number_out_of_range
    add x15, x15, :lo12:lb_strings_19number_out_of_range
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    sub x12, x29, #328
    str x15, [x12]
    add x15, x12, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    ldr x14, [x20]
    cbnz x14, .L2_56
    b .L2_54
.L2_56:
.L2_53:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L2_55
.L2_54:
.L2_55:
.L2_57:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_31:
    b .L2_26
.L2_25:
.L2_26:
    ldr s24, [x23]
    sub x19, x29, #104
    str s24, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    ldr x14, [x20]
    cbnz x14, .L2_61
    b .L2_59
.L2_61:
.L2_58:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L2_60
.L2_59:
.L2_60:
.L2_62:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_32:
    sub x14, x29, #216
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    sub x14, x29, #160
    ldr x14, [x14]
    cbnz x14, .L2_66
    b .L2_64
.L2_66:
    mov x15, x14
.L2_63:
    mov x12, x14
    mov x9, #0
    str x9, [x12]
    mov x12, x15
    mov x0, x12
    bl freelocale
    b .L2_65
.L2_64:
.L2_65:
.L2_67:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_9parse_f32, .-lb_strings_9parse_f32

    .p2align 2
    .globl lb_strings_10format_f64
    .type lb_strings_10format_f64, %function
lb_strings_10format_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #96
    str d0, [x16]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #96
    ldr d24, [x14]
    sub x14, x29, #112
    fmov d16, d24
    fmov d0, d16
    movz x0, #17
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #160
    bl lb_strings_12format_float
    sub x15, x29, #160
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #16
    sub x19, x29, #80
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_10format_f64, .-lb_strings_10format_f64

    .p2align 2
    .globl lb_strings_10format_f32
    .type lb_strings_10format_f32, %function
lb_strings_10format_f32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #96
    str s0, [x16]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #96
    ldr s24, [x14]
    fcvt d24, s24
    sub x14, x29, #112
    fmov d16, d24
    fmov d0, d16
    movz x0, #9
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #160
    bl lb_strings_12format_float
    sub x15, x29, #160
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #16
    sub x19, x29, #80
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_10format_f32, .-lb_strings_10format_f32

    .p2align 2
    .globl lb_strings_NumericLocale_create
    .type lb_strings_NumericLocale_create, %function
lb_strings_NumericLocale_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    str x21, [sp, #64]
    adrp x14, .Ltext_12
    add x14, x14, :lo12:.Ltext_12
    movz x0, #2
    mov x1, x14
    mov x2, #0
    bl newlocale
    mov x19, x0
    cbnz x19, .L5_1
    b .L5_2
.L5_1:
    b .L5_3
.L5_2:
    sub x19, x29, #88
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    movz x10, #12
    cmp w14, w10
    b.ne .L5_5
.L5_4:
    adrp x14, lb_memory_exhausted
    add x14, x14, :lo12:lb_memory_exhausted
    ldr w14, [x14]
    b .L5_6
.L5_5:
    adrp x14, lb_strings_17conversion_failed
    add x14, x14, :lo12:lb_strings_17conversion_failed
    ldr w14, [x14]
.L5_6:
    str w14, [x20]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    sub x12, x29, #104
    str x15, [x12]
    add x15, x12, #8
    movz x9, #41
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #32
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_7:
.L5_3:
    sub x20, x29, #112
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #88
    mov x10, x20
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_8:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_NumericLocale_create, .-lb_strings_NumericLocale_create

    .p2align 2
    .globl lb_strings_NumericLocale_handle
    .type lb_strings_NumericLocale_handle, %function
lb_strings_NumericLocale_handle:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, .L6_1
    b .L6_2
.L6_1:
    b .L6_3
.L6_2:
    adrp x14, .Ltext_15
    add x14, x14, :lo12:.Ltext_15
    sub x15, x29, #40
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L6_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_4:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_NumericLocale_handle, .-lb_strings_NumericLocale_handle

    .p2align 2
    .globl lb_strings_12format_float
    .type lb_strings_12format_float, %function
lb_strings_12format_float:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #512]
    str x20, [sp, #504]
    str x21, [sp, #496]
    str x22, [sp, #488]
    str x23, [sp, #480]
    str x24, [sp, #472]
    sub x16, x29, #136
    str d0, [x16]
    sub x16, x29, #152
    str w0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #136
    sub x10, x29, #504
    str x19, [x10]
    sub x20, x29, #512
    mov x0, x20
    mov x1, x19
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_39
    b .L7_40
.L7_40:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L7_39:
    ldr x14, [x20]
.L7_42:
    movz x10, #65535
    movk x10, #65535, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #32767, lsl #48
    and x15, x14, x10
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.lo .L7_2
.L7_1:
    sub x19, x29, #184
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls .L7_5
.L7_4:
    adrp x14, .Ltext_17
    add x14, x14, :lo12:.Ltext_17
    sub x15, x29, #216
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    sub x14, x29, #200
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #3
    mov x20, x9
    b .L7_6
.L7_5:
.L7_11:
    lsr x15, x14, #63
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L7_8
.L7_7:
    adrp x14, .Ltext_20
    add x14, x14, :lo12:.Ltext_20
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    sub x14, x29, #232
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #4
    mov x20, x9
    b .L7_9
.L7_8:
    adrp x14, .Ltext_21
    add x14, x14, :lo12:.Ltext_21
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    sub x14, x29, #232
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #3
    mov x20, x9
.L7_9:
    sub x14, x29, #232
    sub x15, x29, #200
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L7_6:
    sub x14, x29, #200
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #168
    add x22, x21, #8
    ldr x14, [x22]
    add x23, x19, #8
    cmp x14, x20
    b.hs .L7_13
.L7_12:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_io_full
    add x15, x15, :lo12:lb_io_full
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_22
    add x15, x15, :lo12:.Ltext_22
    sub x12, x29, #280
    str x15, [x12]
    add x15, x12, #8
    movz x9, #62
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_13:
.L7_14:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl lb_memory_copy_0g1_u8
    ldr x15, [x21]
    ldr x14, [x22]
    ldr x12, [x23]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x12
    b.ls .L7_16
.L7_17:
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
.L7_16:
    sub x14, x29, #296
    str x15, [x14]
    add x14, x14, #8
    str x12, [x14]
    sub x14, x29, #312
    str x15, [x14]
    add x13, x14, #8
    str x12, [x13]
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_2:
.L7_3:
    sub x20, x29, #320
    sub x8, x29, #360
    bl lb_strings_NumericLocale_create
    sub x15, x29, #360
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L7_20
    b .L7_19
.L7_20:
    add x14, x15, #8
    sub x19, x29, #120
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_19:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x21, x29, #392
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x0, x20
    bl lb_strings_NumericLocale_handle
    mov x14, x0
    mov x0, x14
    bl uselocale
    mov x22, x0
    cbnz x22, .L7_22
    b .L7_23
.L7_22:
    b .L7_24
.L7_23:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_strings_17conversion_failed
    add x15, x15, :lo12:lb_strings_17conversion_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_25
    add x15, x15, :lo12:.Ltext_25
    sub x12, x29, #408
    str x15, [x12]
    add x15, x12, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    cbnz x14, .L7_46
    b .L7_44
.L7_46:
.L7_43:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L7_45
.L7_44:
.L7_45:
.L7_47:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_24:
    adrp x14, .Ltext_27
    add x14, x14, :lo12:.Ltext_27
    sub x15, x29, #152
    ldrsw x15, [x15]
    ldr d24, [x19]
    fmov d16, d24
    fmov d0, d16
    mov x0, x21
    movz x1, #32
    mov x2, x14
    mov x3, x15
    bl snprintf
    mov w23, w0
    sub x10, x29, #528
    str x22, [x10]
    mov x0, x22
    bl uselocale
    mov x14, x0
    cbnz x14, .L7_48
    b .L7_49
.L7_48:
    b .L7_50
.L7_49:
    adrp x14, .Ltext_30
    add x14, x14, :lo12:.Ltext_30
    sub x15, x29, #544
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    adrp x14, .Ltext_31
    add x14, x14, :lo12:.Ltext_31
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L7_50:
.L7_51:
    mov x10, #0
    cmp w23, w10
    cset w14, lt
    cbnz w14, .L7_72
    b .L7_29
.L7_72:
    mov w15, w14
    b .L7_30
.L7_29:
    sxtw x14, w23
    movz x10, #32
    cmp x14, x10
    cset w15, hs
.L7_30:
    and w14, w15, #255
    cbnz w14, .L7_26
    b .L7_27
.L7_26:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_strings_17conversion_failed
    add x15, x15, :lo12:lb_strings_17conversion_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_28
    add x15, x15, :lo12:.Ltext_28
    sub x12, x29, #424
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    cbnz x14, .L7_55
    b .L7_53
.L7_55:
.L7_52:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L7_54
.L7_53:
.L7_54:
.L7_56:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_27:
.L7_28:
    sub x19, x29, #168
    add x22, x19, #8
    ldr x14, [x22]
    sxtw x24, w23
    cmp x14, x24
    b.hs .L7_33
.L7_32:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_io_full
    add x15, x15, :lo12:lb_io_full
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_22
    add x15, x15, :lo12:.Ltext_22
    sub x12, x29, #440
    str x15, [x12]
    add x15, x12, #8
    movz x9, #62
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    cbnz x14, .L7_60
    b .L7_58
.L7_60:
.L7_57:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L7_59
.L7_58:
.L7_59:
.L7_61:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_33:
.L7_34:
    sub x14, x29, #456
    str x21, [x14]
    add x15, x14, #8
    movz x9, #32
    str x9, [x15]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x24
    bl lb_memory_copy_0g1_u8
    ldr x15, [x19]
    ldr x14, [x22]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    cmp x24, x14
    b.lo 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x24
    b.ls .L7_36
.L7_37:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
.L7_36:
    sub x14, x29, #472
    str x15, [x14]
    add x14, x14, #8
    str x24, [x14]
    sub x14, x29, #488
    str x15, [x14]
    add x12, x14, #8
    str x24, [x12]
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    ldr x14, [x20]
    cbnz x14, .L7_65
    b .L7_63
.L7_65:
.L7_62:
    mov x9, #0
    str x9, [x20]
    mov x0, x14
    bl freelocale
    b .L7_64
.L7_63:
.L7_64:
.L7_66:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_12format_float, .-lb_strings_12format_float

    .p2align 2
    .globl lb_strings_22check_float_conversion
    .type lb_strings_22check_float_conversion, %function
lb_strings_22check_float_conversion:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    sub x16, x29, #112
    str w3, [x16]
    sub x14, x29, #112
    ldrsw x14, [x14]
    movz x10, #12
    cmp w14, w10
    b.ne .L8_2
.L8_1:
    sub x19, x29, #64
    adrp x14, lb_memory_exhausted
    add x14, x14, :lo12:lb_memory_exhausted
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_32
    add x14, x14, :lo12:.Ltext_32
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_4:
    b .L8_3
.L8_2:
.L8_3:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L8_8
    b .L8_19
.L8_19:
    mov w14, w15
    b .L8_9
.L8_8:
    movz x10, #34
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L8_9:
    and w15, w14, #255
    cbnz w15, .L8_5
    b .L8_6
.L8_5:
    sub x19, x29, #64
    adrp x14, lb_strings_17conversion_failed
    add x14, x14, :lo12:lb_strings_17conversion_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_33
    add x14, x14, :lo12:.Ltext_33
    sub x15, x29, #144
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_10:
    b .L8_7
.L8_6:
.L8_7:
    sub x14, x29, #96
    ldr x14, [x14]
    cbnz x14, .L8_11
    b .L8_12
.L8_11:
    b .L8_13
.L8_12:
    sub x19, x29, #64
    adrp x14, lb_strings_14invalid_number
    add x14, x14, :lo12:lb_strings_14invalid_number
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_34
    add x14, x14, :lo12:.Ltext_34
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #55
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_14:
.L8_13:
    sub x15, x29, #80
    ldr x12, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    mov x9, x12
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x14
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L8_16
.L8_15:
    sub x19, x29, #64
    adrp x14, lb_strings_14invalid_number
    add x14, x14, :lo12:lb_strings_14invalid_number
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_36
    add x14, x14, :lo12:.Ltext_36
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_18:
    b .L8_17
.L8_16:
.L8_17:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_22check_float_conversion, .-lb_strings_22check_float_conversion

    .p2align 2
    .globl lb_strings_12float_syntax
    .type lb_strings_12float_syntax, %function
lb_strings_12float_syntax:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str x19, [sp, #216]
    str x20, [sp, #208]
    str x21, [sp, #200]
    str x22, [sp, #192]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #72
    add x15, x14, #8
    ldr x19, [x15]
    mov x10, #0
    cmp x19, x10
    b.ne .L9_2
.L9_1:
    sub x19, x29, #74
    mov x11, x19
    strh wzr, [x11, #0]
    sub x20, x29, #50
    mov x10, x19
    mov x11, x20
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x20
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_4:
    b .L9_3
.L9_2:
.L9_3:
    ldr x20, [x14]
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    ldrb w15, [x20]
    movz x10, #43
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L9_84
    b .L9_8
.L9_84:
    mov w14, w15
    b .L9_9
.L9_8:
    ldrb w14, [x20]
    movz x10, #45
    cmp w14, w10
    cset w14, eq
.L9_9:
    and w15, w14, #255
    cbnz w15, .L9_5
    b .L9_6
.L9_5:
    movz x9, #1
    mov x21, x9
    b .L9_7
.L9_6:
    mov x9, #0
    mov x21, x9
.L9_7:
    cmp x19, x21
    b.ne .L9_11
.L9_10:
    sub x19, x29, #76
    mov x11, x19
    strh wzr, [x11, #0]
    sub x20, x29, #50
    mov x10, x19
    mov x11, x20
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x20
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_13:
    b .L9_12
.L9_11:
.L9_12:
    sub x22, x29, #96
    add x14, x19, #1
    cmp x21, x14
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    cmp x21, x19
    b.ls .L9_14
.L9_15:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
.L9_14:
    add x14, x20, x21
    sub x15, x19, x21
    sub x12, x29, #112
    str x14, [x12]
    add x12, x12, #8
    str x15, [x12]
    sub x12, x29, #128
    str x14, [x12]
    add x14, x12, #8
    str x15, [x14]
    mov x10, x12
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_21
    add x14, x14, :lo12:.Ltext_21
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_strings_10ascii_word
    mov w14, w0
    cbnz w14, .L9_85
    b .L9_19
.L9_85:
    mov w15, w14
    b .L9_20
.L9_19:
    adrp x14, .Ltext_39
    add x14, x14, :lo12:.Ltext_39
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #8
    str x9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_strings_10ascii_word
    mov w15, w0
.L9_20:
    and w14, w15, #255
    cbnz w14, .L9_16
    b .L9_17
.L9_16:
    sub x14, x29, #162
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #1
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #50
    mov x10, x14
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_21:
    b .L9_18
.L9_17:
.L9_18:
    adrp x14, .Ltext_17
    add x14, x14, :lo12:.Ltext_17
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_strings_10ascii_word
    mov w14, w0
    cbnz w14, .L9_22
    b .L9_23
.L9_22:
    sub x14, x29, #186
    movz x9, #2
    strb w9, [x14]
    add x15, x14, #1
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #50
    mov x10, x14
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_25:
    b .L9_24
.L9_23:
.L9_24:
    sub x14, x29, #216
    mov x15, x21
    mov x9, #0
    mov x12, x9
.L9_26:
    cmp x15, x19
    cset w13, lo
    cbnz w13, .L9_29
    b .L9_86
.L9_86:
    mov w21, w13
    b .L9_30
.L9_29:
    add x21, x20, x15
    ldrb w21, [x21]
    sub x10, x29, #216
    str w21, [x10]
    ldrb w21, [x14]
    movz x10, #48
    cmp w21, w10
    cset w22, hs
    cbnz w22, .L9_72
    b .L9_87
.L9_87:
    mov w21, w22
    b .L9_73
.L9_72:
    movz x10, #57
    cmp w21, w10
    cset w22, ls
    mov w21, w22
.L9_73:
    and w22, w21, #255
    and w22, w22, #255
    sub x10, x29, #224
    str w22, [x10]
    b .L9_75
.L9_74:
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L9_75:
    mov w21, w22
.L9_30:
    and w22, w21, #255
    cbnz w22, .L9_27
    b .L9_28
.L9_27:
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x13, x9
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x21, x9
    mov x15, x21
    mov x12, x13
    b .L9_26
.L9_28:
    cbnz w13, .L9_34
    b .L9_88
.L9_88:
    mov w14, w13
    b .L9_35
.L9_34:
    add x14, x20, x15
    ldrb w14, [x14]
    movz x10, #46
    cmp w14, w10
    cset w14, eq
.L9_35:
    and w13, w14, #255
    cbnz w13, .L9_31
    b .L9_32
.L9_31:
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x14, x9
    sub x13, x29, #216
    mov x21, x12
.L9_36:
    cmp x14, x19
    cset w15, lo
    cbnz w15, .L9_39
    b .L9_89
.L9_89:
    mov w12, w15
    b .L9_40
.L9_39:
    add x15, x20, x14
    ldrb w15, [x15]
    sub x10, x29, #216
    str w15, [x10]
    ldrb w15, [x13]
    movz x10, #48
    cmp w15, w10
    cset w12, hs
    cbnz w12, .L9_76
    b .L9_90
.L9_90:
    mov w15, w12
    b .L9_77
.L9_76:
    movz x10, #57
    cmp w15, w10
    cset w12, ls
    mov w15, w12
.L9_77:
    and w12, w15, #255
    and w12, w12, #255
    sub x10, x29, #232
    str w12, [x10]
    b .L9_79
.L9_78:
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L9_79:
.L9_40:
    and w15, w12, #255
    cbnz w15, .L9_37
    b .L9_38
.L9_37:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x14, x12
    mov x21, x15
    b .L9_36
.L9_38:
    mov x15, x14
    mov x12, x21
    b .L9_33
.L9_32:
.L9_33:
    mov x10, #0
    cmp x12, x10
    b.ne .L9_42
.L9_41:
    sub x19, x29, #188
    mov x11, x19
    strh wzr, [x11, #0]
    sub x20, x29, #50
    mov x10, x19
    mov x11, x20
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x20
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_44:
    b .L9_43
.L9_42:
.L9_43:
    cmp x15, x19
    cset w14, lo
    cbnz w14, .L9_48
    b .L9_91
.L9_91:
    mov w12, w14
    b .L9_49
.L9_48:
    add x14, x20, x15
    ldrb w12, [x14]
    movz x10, #101
    cmp w12, w10
    cset w12, eq
    cbnz w12, .L9_92
    b .L9_50
.L9_92:
    mov w14, w12
    b .L9_51
.L9_50:
    ldrb w12, [x14]
    movz x10, #69
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L9_51:
    and w12, w14, #255
.L9_49:
    and w14, w12, #255
    cbnz w14, .L9_45
    b .L9_46
.L9_45:
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x19
    cset w12, lo
    cbnz w12, .L9_55
    b .L9_93
.L9_93:
    mov w15, w12
    b .L9_56
.L9_55:
    add x15, x20, x14
    ldrb w12, [x15]
    movz x10, #43
    cmp w12, w10
    cset w12, eq
    cbnz w12, .L9_94
    b .L9_57
.L9_94:
    mov w15, w12
    b .L9_58
.L9_57:
    ldrb w12, [x15]
    movz x10, #45
    cmp w12, w10
    cset w12, eq
    mov w15, w12
.L9_58:
    and w12, w15, #255
    mov w15, w12
.L9_56:
    and w12, w15, #255
    cbnz w12, .L9_52
    b .L9_53
.L9_52:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x15, x9
    b .L9_54
.L9_53:
    mov x15, x14
.L9_54:
    sub x14, x29, #216
    mov x12, x15
.L9_59:
    cmp x12, x19
    cset w13, lo
    cbnz w13, .L9_62
    b .L9_95
.L9_95:
    mov w21, w13
    b .L9_63
.L9_62:
    add x13, x20, x12
    ldrb w13, [x13]
    sub x10, x29, #216
    str w13, [x10]
    ldrb w13, [x14]
    movz x10, #48
    cmp w13, w10
    cset w21, hs
    cbnz w21, .L9_80
    b .L9_96
.L9_96:
    mov w13, w21
    b .L9_81
.L9_80:
    movz x10, #57
    cmp w13, w10
    cset w21, ls
    mov w13, w21
.L9_81:
    and w21, w13, #255
    and w21, w21, #255
    sub x10, x29, #240
    str w21, [x10]
    b .L9_83
.L9_82:
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L9_83:
.L9_63:
    and w13, w21, #255
    cbnz w13, .L9_60
    b .L9_61
.L9_60:
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
1:
    mov x13, x9
    mov x12, x13
    b .L9_59
.L9_61:
    cmp x15, x12
    b.ne .L9_65
.L9_64:
    sub x19, x29, #190
    mov x11, x19
    strh wzr, [x11, #0]
    sub x20, x29, #50
    mov x10, x19
    mov x11, x20
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x20
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_67:
    b .L9_66
.L9_65:
.L9_66:
    mov x14, x12
    b .L9_47
.L9_46:
    mov x14, x15
.L9_47:
    cmp x19, x14
    b.ne .L9_69
.L9_68:
    sub x14, x29, #194
    mov x9, #0
    strb w9, [x14]
    add x15, x14, #1
    movz x9, #1
    strb w9, [x15]
    sub x15, x29, #192
    mov x10, x14
    mov x11, x15
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    b .L9_70
.L9_69:
    sub x19, x29, #196
    mov x11, x19
    strh wzr, [x11, #0]
    sub x14, x29, #192
    mov x10, x19
    mov x11, x14
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
.L9_70:
    sub x14, x29, #192
    sub x19, x29, #50
    mov x10, x14
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_71:
    adrp x0, .Ltext_54
    add x0, x0, :lo12:.Ltext_54
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_12float_syntax, .-lb_strings_12float_syntax

    .p2align 2
    .globl lb_strings_10ascii_word
    .type lb_strings_10ascii_word, %function
lb_strings_10ascii_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #80
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #64
    add x15, x14, #8
    ldr x15, [x15]
    sub x12, x29, #80
    add x13, x12, #8
    ldr x13, [x13]
    cmp x15, x13
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne .L10_2
.L10_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_4:
    b .L10_3
.L10_2:
.L10_3:
    ldr x19, [x14]
    ldr x20, [x12]
    mov x9, #0
    mov x21, x9
.L10_5:
    cmp x21, x15
    b.hs .L10_7
.L10_6:
    add x14, x19, x21
    ldrb w14, [x14]
    and w14, w14, #255
    movz x10, #65
    cmp w14, w10
    cset w12, hs
    cbnz w12, .L10_11
    b .L10_20
.L10_20:
    mov w22, w12
    b .L10_12
.L10_11:
    movz x10, #90
    cmp w14, w10
    cset w22, ls
.L10_12:
    and w12, w22, #255
    cbnz w12, .L10_8
    b .L10_9
.L10_8:
    add w22, w14, #32
    and w12, w22, #255
    cmp w12, w22
    b.eq .L10_13
.L10_14:
    adrp x0, .Ltext_58
    add x0, x0, :lo12:.Ltext_58
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
.L10_13:
    mov w14, w22
    b .L10_10
.L10_9:
.L10_10:
    and w12, w14, #255
    and w12, w12, #255
    cmp x21, x13
    b.lo 1f
    adrp x0, .Ltext_59
    add x0, x0, :lo12:.Ltext_59
    adrp x1, .Ltext_24
    add x1, x1, :lo12:.Ltext_24
    bl lb_core_7trap_at
1:
    add x22, x20, x21
    ldrb w22, [x22]
    cmp w12, w22
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne .L10_16
.L10_15:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_18:
    b .L10_17
.L10_16:
.L10_17:
    add x14, x21, #1
    mov x21, x14
    b .L10_5
.L10_7:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_19:
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_10ascii_word, .-lb_strings_10ascii_word

    .p2align 2
    .weak lb_memory_read_0g1_f64
    .type lb_memory_read_0g1_f64, %function
lb_memory_read_0g1_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L11_1
    b .L11_2
.L11_2:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L11_1:
    ldr d24, [x19]
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_3:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_f64, .-lb_memory_read_0g1_f64

    .p2align 2
    .weak lb_memory_read_0g1_u64
    .type lb_memory_read_0g1_u64, %function
lb_memory_read_0g1_u64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L12_1
    b .L12_2
.L12_2:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L12_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_3:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_u64, .-lb_memory_read_0g1_u64

    .p2align 2
    .weak lb_memory_read_0g1_f32
    .type lb_memory_read_0g1_f32, %function
lb_memory_read_0g1_f32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #44
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L13_1
    b .L13_2
.L13_2:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L13_1:
    ldr s24, [x19]
    fmov s16, s24
    fmov s0, s16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_3:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_f32, .-lb_memory_read_0g1_f32

    .p2align 2
    .weak lb_memory_read_0g1_u32
    .type lb_memory_read_0g1_u32, %function
lb_memory_read_0g1_u32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #44
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L14_1
    b .L14_2
.L14_2:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L14_1:
    ldr w14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_3:
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_u32, .-lb_memory_read_0g1_u32

    .p2align 2
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, %function
lb_memory_copy_0g1_u8:
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
    cbnz w14, .L15_11
    b .L15_4
.L15_11:
    mov w15, w14
    b .L15_5
.L15_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L15_5:
    and w14, w15, #255
    cbnz w14, .L15_1
    b .L15_2
.L15_1:
    adrp x14, .Ltext_24
    add x14, x14, :lo12:.Ltext_24
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_65
    add x14, x14, :lo12:.Ltext_65
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L15_3
.L15_2:
.L15_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L15_7
.L15_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L15_9
    b .L15_10
.L15_10:
    adrp x0, .Ltext_66
    add x0, x0, :lo12:.Ltext_66
    adrp x1, .Ltext_62
    add x1, x1, :lo12:.Ltext_62
    bl lb_core_7trap_at
.L15_9:
    b .L15_8
.L15_7:
.L15_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_floats_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/strings/floats.lucb:20:5"
.Ltext_2:
    .asciz "src/std/strings/floats.lucb:25:5"
.Ltext_3:
    .asciz "invalid floating-point text"
.Ltext_4:
    .asciz "src/std/strings/floats.lucb:38:9"
.Ltext_5:
    .asciz "the decimal value exceeds f64 range"
.Ltext_6:
    .asciz "src/std/strings/floats.lucb:53:5"
.Ltext_7:
    .asciz "src/std/strings/floats.lucb:61:9"
.Ltext_8:
    .asciz "the decimal value exceeds f32 range"
.Ltext_9:
    .asciz "src/std/strings/floats.lucb:76:5"
.Ltext_10:
    .asciz "src/std/strings/floats.lucb:85:5"
.Ltext_11:
    .asciz "src/std/strings/floats.lucb:90:5"
.Ltext_12:
    .asciz "C"
.Ltext_13:
    .asciz "the C numeric locale could not be created"
.Ltext_14:
    .asciz "src/std/strings/floats.lucb:100:9"
.Ltext_15:
    .asciz "the numeric locale is closed"
.Ltext_16:
    .asciz "src/std/strings/floats.lucb:103:9"
.Ltext_17:
    .asciz "nan"
.Ltext_18:
    .asciz "shift count out of range"
.Ltext_19:
    .asciz "src/std/strings/floats.lucb:119:9"
.Ltext_20:
    .asciz "-inf"
.Ltext_21:
    .asciz "inf"
.Ltext_22:
    .asciz "the destination cannot hold the formatted floating-point value"
.Ltext_23:
    .asciz "src/std/strings/floats.lucb:123:9"
.Ltext_24:
    .asciz "index out of bounds"
.Ltext_25:
    .asciz "the thread numeric locale could not be selected"
.Ltext_26:
    .asciz "src/std/strings/floats.lucb:139:9"
.Ltext_27:
    .asciz "%.*g"
.Ltext_28:
    .asciz "floating-point formatting failed"
.Ltext_29:
    .asciz "src/std/strings/floats.lucb:145:5"
.Ltext_30:
    .asciz "a valid thread locale could not be restored"
.Ltext_31:
    .asciz "src/std/strings/floats.lucb:149:5"
.Ltext_32:
    .asciz "floating-point conversion ran out of memory"
.Ltext_33:
    .asciz "floating-point conversion failed"
.Ltext_34:
    .asciz "floating-point conversion did not return an end pointer"
.Ltext_35:
    .asciz "src/std/strings/floats.lucb:158:5"
.Ltext_36:
    .asciz "floating-point conversion did not consume the input"
.Ltext_37:
    .asciz "src/std/strings/floats.lucb:166:5"
.Ltext_38:
    .asciz "src/std/strings/floats.lucb:170:5"
.Ltext_39:
    .asciz "infinity"
.Ltext_40:
    .asciz "src/std/strings/floats.lucb:176:5"
.Ltext_41:
    .asciz "src/std/strings/floats.lucb:177:9"
.Ltext_42:
    .asciz "src/std/strings/floats.lucb:178:9"
.Ltext_43:
    .asciz "src/std/strings/floats.lucb:179:5"
.Ltext_44:
    .asciz "src/std/strings/floats.lucb:180:9"
.Ltext_45:
    .asciz "src/std/strings/floats.lucb:181:9"
.Ltext_46:
    .asciz "src/std/strings/floats.lucb:182:13"
.Ltext_47:
    .asciz "src/std/strings/floats.lucb:183:13"
.Ltext_48:
    .asciz "src/std/strings/floats.lucb:186:5"
.Ltext_49:
    .asciz "src/std/strings/floats.lucb:187:9"
.Ltext_50:
    .asciz "src/std/strings/floats.lucb:188:9"
.Ltext_51:
    .asciz "src/std/strings/floats.lucb:189:13"
.Ltext_52:
    .asciz "src/std/strings/floats.lucb:191:9"
.Ltext_53:
    .asciz "src/std/strings/floats.lucb:192:13"
.Ltext_54:
    .asciz "src/std/strings/floats.lucb:195:5"
.Ltext_55:
    .asciz "src/std/strings/floats.lucb:198:5"
.Ltext_56:
    .asciz "src/std/strings/floats.lucb:205:9"
.Ltext_57:
    .asciz "integer overflow"
.Ltext_58:
    .asciz "src/std/strings/floats.lucb:206:9"
.Ltext_59:
    .asciz "src/std/strings/floats.lucb:207:9"
.Ltext_60:
    .asciz "src/std/strings/floats.lucb:209:9"
.Ltext_61:
    .asciz "src/std/strings/floats.lucb:210:5"
.Ltext_62:
    .asciz "null_foreign"
.Ltext_63:
    .asciz "src/std/memory.lucb:344:5"
.Ltext_64:
    .asciz "src/std/memory.lucb:345:5"
.Ltext_65:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_66:
    .asciz "src/std/memory.lucb:330:9"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
