    .text

    .p2align 2
    .globl lb_net_11http_encode_0init
    .type lb_net_11http_encode_0init, %function
lb_net_11http_encode_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_11http_encode_0init, .-lb_net_11http_encode_0init

    .p2align 2
    .globl lb_net_16http_encode_head
    .type lb_net_16http_encode_head, %function
lb_net_16http_encode_head:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5712
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #5680]
    str x20, [sp, #5672]
    str x21, [sp, #5664]
    str x22, [sp, #5656]
    str x23, [sp, #5648]
    str x24, [sp, #5640]
    str x25, [sp, #5632]
    str x26, [sp, #5624]
    str x27, [sp, #5616]
    str x28, [sp, #5608]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #264
    str x2, [x16]
    sub x0, x29, #264
    ldr x1, [x0]
    movz x2, #96
    bl _memcpy
    sub x9, x29, #288
    str x9, [sp, #256]
    sub x14, x29, #168
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #312
    bl lb_io_SliceWriter_over
    sub x14, x29, #312
    mov x10, x14
    ldr x11, [sp, #256]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x9, x29, #376
    str x9, [sp, #248]
    ldr x11, [sp, #248]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    sub x9, x29, #264
    str x9, [sp, #240]
    ldr x9, [sp, #240]
    add x9, x9, #32
    str x9, [sp, #24]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #392
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #232]
    ldr x9, [sp, #232]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w23, eq
    cbnz w23, .L1_4
    b .L1_170
.L1_170:
    mov w14, w23
    b .L1_5
.L1_4:
    ldr x9, [sp, #24]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
.L1_5:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L1_6
    b .L1_171
.L1_171:
    mov w14, w15
    b .L1_7
.L1_6:
    adrp x14, .Ltext_1
    add x14, x14, :lo12:.Ltext_1
    sub x15, x29, #408
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #232]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w23, eq
    cbnz w23, .L1_8
    b .L1_172
.L1_172:
    mov w14, w23
    b .L1_9
.L1_8:
    ldr x9, [sp, #24]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
.L1_9:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L1_7:
    and w15, w14, #255
    cbnz w15, .L1_1
    b .L1_2
.L1_1:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_16http_unsupported
    add x15, x15, :lo12:lb_net_16http_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x20, x29, #424
    str x15, [x20]
    add x15, x20, #8
    movz x9, #24
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_10:
    b .L1_3
.L1_2:
.L1_3:
    ldr x9, [sp, #240]
    add x9, x9, #48
    str x9, [sp, #224]
    ldr x9, [sp, #224]
    ldrh w14, [x9]
    mov x10, #0
    cmp w14, w10
    b.ne .L1_12
.L1_11:
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L1_173
    b .L1_17
.L1_173:
    mov w15, w14
    b .L1_18
.L1_17:
    ldr x9, [sp, #240]
    add x14, x9, #16
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_25http_request_target_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L1_18:
    and w14, w15, #255
    cbnz w14, .L1_14
    b .L1_15
.L1_14:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x20, x29, #440
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_19:
    b .L1_16
.L1_15:
.L1_16:
    sub x14, x29, #456
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x25, lb_vt_io_SliceWriter_Writer
    add x25, x25, :lo12:lb_vt_io_SliceWriter_Writer
    add x15, x14, #8
    str x25, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #240]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #488
    bl lb_io_9write_all
    sub x15, x29, #488
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_21
    b .L1_20
.L1_21:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_22:
.L1_20:
    sub x14, x29, #504
    ldr x9, [sp, #256]
    str x9, [x14]
    add x15, x14, #8
    str x25, [x15]
    adrp x26, .Ltext_4
    add x26, x26, :lo12:.Ltext_4
    sub x15, x29, #520
    str x26, [x15]
    add x27, x15, #8
    movz x9, #1
    str x9, [x27]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #552
    bl lb_io_9write_all
    sub x15, x29, #552
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_24
    b .L1_23
.L1_24:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_25:
.L1_23:
    sub x14, x29, #568
    ldr x9, [sp, #256]
    str x9, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x9, [sp, #240]
    add x15, x9, #16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #600
    bl lb_io_9write_all
    sub x15, x29, #600
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_27
    b .L1_26
.L1_27:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_28:
.L1_26:
    sub x14, x29, #616
    ldr x9, [sp, #256]
    str x9, [x14]
    add x15, x14, #8
    str x25, [x15]
    sub x15, x29, #632
    str x26, [x15]
    add x27, x15, #8
    movz x9, #1
    str x9, [x27]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #664
    bl lb_io_9write_all
    sub x15, x29, #664
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_30
    b .L1_29
.L1_30:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_31:
.L1_29:
    sub x14, x29, #680
    ldr x9, [sp, #256]
    str x9, [x14]
    add x15, x14, #8
    str x25, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #24]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #712
    bl lb_io_9write_all
    sub x15, x29, #712
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_33
    b .L1_32
.L1_33:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_34:
.L1_32:
    sub x14, x29, #728
    ldr x9, [sp, #256]
    str x9, [x14]
    add x15, x14, #8
    str x25, [x15]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x26, x29, #744
    str x15, [x26]
    add x15, x26, #8
    movz x9, #2
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x26
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #776
    bl lb_io_9write_all
    sub x15, x29, #776
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_36
    b .L1_35
.L1_36:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_37:
.L1_35:
    b .L1_13
.L1_12:
    movz x10, #100
    cmp w14, w10
    cset w15, lo
    cbnz w15, .L1_174
    b .L1_41
.L1_174:
    mov w14, w15
    b .L1_42
.L1_41:
    movz x10, #599
    cmp w14, w10
    cset w15, hi
    mov w14, w15
.L1_42:
    and w15, w14, #255
    cbnz w15, .L1_38
    b .L1_39
.L1_38:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_6
    add x15, x15, :lo12:.Ltext_6
    sub x20, x29, #792
    str x15, [x20]
    add x15, x20, #8
    movz x9, #19
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_43:
    b .L1_40
.L1_39:
.L1_40:
    sub x14, x29, #808
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x25, x14, #8
    str x15, [x25]
    sub x25, x29, #824
    mov x10, x14
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #840
    ldr x9, [sp, #248]
    str x9, [x14]
    add x14, x14, #8
    movz x9, #64
    str x9, [x14]
    sub x26, x29, #864
    ldr x9, [sp, #248]
    str x9, [x26]
    add x27, x26, #8
    movz x9, #64
    str x9, [x27]
    add x28, x26, #16
    mov x9, #0
    str x9, [x28]
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #232]
    ldr x15, [x9]
    mov x0, x26
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    mov x0, x26
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #224]
    ldrh w14, [x9]
    mov w14, w14
    mov x0, x26
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    mov x0, x26
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    sub x21, x29, #912
    ldr x14, [x28]
    ldr x15, [x27]
    cmp x14, x15
    b.ls .L1_45
.L1_44:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    add x26, x14, #8
    str x15, [x26]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_46
.L1_45:
    mov x0, x26
    bl lb_core_13format_finish
    sub x16, x29, #928
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #928
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
.L1_46:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, .L1_48
    b .L1_47
.L1_48:
    add x14, x21, #16
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_49:
.L1_47:
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #960
    bl lb_io_9write_all
    sub x15, x29, #960
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_51
    b .L1_50
.L1_51:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_52:
.L1_50:
.L1_13:
    ldr x9, [sp, #240]
    add x14, x9, #56
    ldr x21, [x14]
    add x14, x14, #8
    ldr x25, [x14]
    sub x26, x29, #992
    adrp x27, .Ltext_9
    add x27, x27, :lo12:.Ltext_9
    sub x28, x29, #1008
    add x24, x28, #8
    adrp x22, .Ltext_10
    add x22, x22, :lo12:.Ltext_10
    sub x20, x29, #1024
    add x9, x20, #8
    str x9, [sp, #216]
    adrp x9, .Ltext_11
    add x9, x9, :lo12:.Ltext_11
    str x9, [sp, #208]
    sub x9, x29, #1040
    str x9, [sp, #200]
    ldr x9, [sp, #200]
    add x9, x9, #8
    str x9, [sp, #192]
    sub x9, x29, #1072
    str x9, [sp, #184]
    adrp x9, lb_vt_io_SliceWriter_Writer
    add x9, x9, :lo12:lb_vt_io_SliceWriter_Writer
    str x9, [sp, #176]
    ldr x9, [sp, #184]
    add x9, x9, #8
    str x9, [sp, #168]
    sub x9, x29, #1104
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #160]
    sub x9, x29, #1120
    str x9, [sp, #152]
    ldr x9, [sp, #152]
    add x9, x9, #8
    str x9, [sp, #144]
    adrp x9, .Ltext_13
    add x9, x9, :lo12:.Ltext_13
    str x9, [sp, #136]
    sub x9, x29, #1136
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #8
    str x9, [sp, #120]
    sub x9, x29, #1168
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #112]
    sub x9, x29, #1184
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #96]
    add x9, x26, #16
    str x9, [sp, #88]
    sub x9, x29, #1216
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #80]
    sub x9, x29, #1232
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #64]
    adrp x9, .Ltext_5
    add x9, x9, :lo12:.Ltext_5
    str x9, [sp, #56]
    sub x9, x29, #1248
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    sub x23, x29, #1280
    add x9, x23, #24
    str x9, [sp, #32]
    mov x9, #0
    mov x19, x9
.L1_53:
    cmp x19, x25
    b.hs .L1_56
.L1_54:
    lsl x14, x19, #5
    add x14, x21, x14
    mov x10, x14
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x26
    mov x0, x9
    bl lb_net_16http_field_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L1_175
    b .L1_60
.L1_175:
    mov w15, w14
    b .L1_61
.L1_60:
    str x27, [x28]
    movz x9, #14
    str x9, [x24]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x28
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_10http_equal
    mov w15, w0
.L1_61:
    and w14, w15, #255
    cbnz w14, .L1_176
    b .L1_62
.L1_176:
    mov w15, w14
    b .L1_63
.L1_62:
    str x22, [x20]
    movz x9, #17
    ldr x10, [sp, #216]
    str x9, [x10]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_10http_equal
    mov w15, w0
.L1_63:
    and w14, w15, #255
    cbnz w14, .L1_177
    b .L1_64
.L1_177:
    mov w15, w14
    b .L1_65
.L1_64:
    ldr x9, [sp, #208]
    ldr x10, [sp, #200]
    str x9, [x10]
    movz x9, #10
    ldr x10, [sp, #192]
    str x9, [x10]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #200]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_10http_equal
    mov w15, w0
.L1_65:
    and w14, w15, #255
    cbnz w14, .L1_57
    b .L1_58
.L1_57:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_12
    add x15, x15, :lo12:.Ltext_12
    sub x20, x29, #1056
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_66:
    b .L1_59
.L1_58:
.L1_59:
    ldr x9, [sp, #256]
    ldr x10, [sp, #184]
    str x9, [x10]
    ldr x9, [sp, #176]
    ldr x10, [sp, #168]
    str x9, [x10]
    ldr x9, [sp, #184]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x26
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1104
    bl lb_io_9write_all
    ldr x9, [sp, #160]
    ldrb w14, [x9]
    cbnz w14, .L1_68
    b .L1_67
.L1_68:
    sub x19, x29, #152
    add x14, x19, #16
    ldr x10, [sp, #16]
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_69:
.L1_67:
    ldr x9, [sp, #256]
    ldr x10, [sp, #152]
    str x9, [x10]
    ldr x9, [sp, #176]
    ldr x10, [sp, #144]
    str x9, [x10]
    ldr x9, [sp, #136]
    ldr x10, [sp, #128]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #120]
    str x9, [x10]
    ldr x9, [sp, #152]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #128]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1168
    bl lb_io_9write_all
    ldr x9, [sp, #112]
    ldrb w14, [x9]
    cbnz w14, .L1_71
    b .L1_70
.L1_71:
    sub x19, x29, #152
    add x14, x19, #16
    ldr x10, [sp, #8]
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_72:
.L1_70:
    ldr x9, [sp, #256]
    ldr x10, [sp, #104]
    str x9, [x10]
    ldr x9, [sp, #176]
    ldr x10, [sp, #96]
    str x9, [x10]
    ldr x9, [sp, #104]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #88]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1216
    bl lb_io_9write_all
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, .L1_74
    b .L1_73
.L1_74:
    sub x19, x29, #152
    add x14, x19, #16
    ldr x10, [sp, #0]
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_75:
.L1_73:
    ldr x9, [sp, #256]
    ldr x10, [sp, #72]
    str x9, [x10]
    ldr x9, [sp, #176]
    ldr x10, [sp, #64]
    str x9, [x10]
    ldr x9, [sp, #56]
    ldr x10, [sp, #48]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #40]
    str x9, [x10]
    ldr x9, [sp, #72]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #48]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1280
    bl lb_io_9write_all
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, .L1_77
    b .L1_76
.L1_77:
    sub x19, x29, #152
    add x14, x19, #16
    mov x10, x23
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_78:
.L1_76:
.L1_55:
    add x14, x19, #1
    mov x19, x14
    b .L1_53
.L1_56:
    ldr x9, [sp, #224]
    ldrh w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w15, hi
    cbnz w15, .L1_79
    b .L1_178
.L1_178:
    mov w14, w15
    b .L1_80
.L1_79:
    movz x10, #200
    cmp w14, w10
    cset w15, lo
    cbnz w15, .L1_179
    b .L1_81
.L1_179:
    mov w14, w15
    b .L1_82
.L1_81:
    movz x10, #204
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L1_82:
    and w15, w14, #255
    cbnz w15, .L1_180
    b .L1_83
.L1_180:
    mov w14, w15
    b .L1_84
.L1_83:
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #1296
    str x14, [x15]
    add x15, x15, #8
    movz x9, #7
    str x9, [x15]
    ldr x9, [sp, #240]
    add x15, x9, #8
    ldr x15, [x15]
    movz x10, #7
    cmp x15, x10
    cset w19, eq
    cbnz w19, .L1_85
    b .L1_181
.L1_181:
    mov w14, w19
    b .L1_86
.L1_85:
    ldr x9, [sp, #240]
    ldr x19, [x9]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w19, w0
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov w14, w19
.L1_86:
    and w15, w14, #255
    cbnz w15, .L1_87
    b .L1_182
.L1_182:
    mov w14, w15
    b .L1_88
.L1_87:
    ldr x9, [sp, #224]
    ldrh w14, [x9]
    movz x10, #300
    cmp w14, w10
    cset w14, lo
.L1_88:
    and w15, w14, #255
    mov w14, w15
.L1_84:
    and w15, w14, #255
    mov w14, w15
.L1_80:
    and w15, w14, #255
    and w15, w15, #255
    cbnz w15, .L1_92
    b .L1_183
.L1_183:
    mov w14, w15
    b .L1_93
.L1_92:
    ldr x9, [sp, #240]
    add x14, x9, #72
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L1_93:
    and w19, w14, #255
    cbnz w19, .L1_94
    b .L1_184
.L1_184:
    mov w14, w19
    b .L1_95
.L1_94:
    ldr x9, [sp, #240]
    add x14, x9, #72
    ldrb w14, [x14]
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L1_95:
    and w19, w14, #255
    cbnz w19, .L1_89
    b .L1_90
.L1_89:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_15
    add x15, x15, :lo12:.Ltext_15
    sub x20, x29, #1312
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_96:
    b .L1_91
.L1_90:
.L1_91:
    mov x10, #0
    cmp w15, w10
    b.ne .L1_98
.L1_97:
    ldr x9, [sp, #224]
    ldrh w14, [x9]
    movz x10, #304
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_103
    b .L1_185
.L1_185:
    mov w19, w15
    b .L1_104
.L1_103:
    ldr x9, [sp, #240]
    add x15, x9, #72
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w19, eq
.L1_104:
    and w15, w19, #255
    cbnz w15, .L1_100
    b .L1_101
.L1_100:
    b .L1_102
.L1_101:
    ldr x9, [sp, #240]
    add x15, x9, #72
    ldrb w15, [x15]
    movz x10, #1
    cmp w15, w10
    cset w19, eq
    cbnz w19, .L1_186
    b .L1_108
.L1_186:
    mov w20, w19
    b .L1_109
.L1_108:
    mov x10, #0
    cmp w15, w10
    cset w20, eq
.L1_109:
    and w21, w20, #255
    cbnz w21, .L1_105
    b .L1_106
.L1_105:
    cbnz w19, .L1_110
    b .L1_111
.L1_110:
    ldr x9, [sp, #240]
    add x14, x9, #80
    ldr x14, [x14]
    mov x19, x14
    b .L1_112
.L1_111:
    mov x9, #0
    mov x19, x9
.L1_112:
    sub x14, x29, #1328
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x20, x14, #8
    str x15, [x20]
    sub x20, x29, #1344
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #1360
    ldr x9, [sp, #248]
    str x9, [x14]
    add x14, x14, #8
    movz x9, #64
    str x9, [x14]
    sub x21, x29, #1384
    ldr x9, [sp, #248]
    str x9, [x21]
    add x22, x21, #8
    movz x9, #64
    str x9, [x22]
    add x23, x21, #16
    mov x9, #0
    str x9, [x23]
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    mov x0, x21
    mov x1, x14
    movz x2, #16
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x21
    mov x1, x19
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    mov x0, x21
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    sub x24, x29, #1432
    ldr x14, [x23]
    ldr x15, [x22]
    cmp x14, x15
    b.ls .L1_114
.L1_113:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_115
.L1_114:
    mov x0, x21
    bl lb_core_13format_finish
    sub x16, x29, #1448
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1448
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
.L1_115:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, .L1_117
    b .L1_116
.L1_117:
    add x14, x24, #16
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_118:
.L1_116:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x24
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1480
    bl lb_io_9write_all
    sub x15, x29, #1480
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_120
    b .L1_119
.L1_120:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_121:
.L1_119:
    b .L1_107
.L1_106:
    movz x10, #2
    cmp w15, w10
    b.ne .L1_123
.L1_122:
    adrp x14, .Ltext_1
    add x14, x14, :lo12:.Ltext_1
    sub x15, x29, #1496
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    ldr x9, [sp, #232]
    ldr x15, [x9]
    movz x10, #8
    cmp x15, x10
    cset w19, eq
    cbnz w19, .L1_128
    b .L1_187
.L1_187:
    mov w14, w19
    b .L1_129
.L1_128:
    ldr x9, [sp, #24]
    ldr x19, [x9]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w19, w0
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov w14, w19
.L1_129:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne .L1_126
.L1_125:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_17
    add x15, x15, :lo12:.Ltext_17
    sub x20, x29, #1512
    str x15, [x20]
    add x15, x20, #8
    movz x9, #33
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_130:
    b .L1_127
.L1_126:
.L1_127:
    sub x14, x29, #1528
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x19, x14, #8
    str x15, [x19]
    adrp x15, .Ltext_18
    add x15, x15, :lo12:.Ltext_18
    sub x19, x29, #1544
    str x15, [x19]
    add x15, x19, #8
    movz x9, #28
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1576
    bl lb_io_9write_all
    sub x15, x29, #1576
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_132
    b .L1_131
.L1_132:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_133:
.L1_131:
    b .L1_124
.L1_123:
    movz x10, #3
    cmp w15, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    cbnz w19, .L1_188
    b .L1_137
.L1_188:
    mov w14, w19
    b .L1_138
.L1_137:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L1_138:
    and w15, w14, #255
    cbnz w15, .L1_134
    b .L1_135
.L1_134:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_19
    add x15, x15, :lo12:.Ltext_19
    sub x20, x29, #1592
    str x15, [x20]
    add x15, x20, #8
    movz x9, #29
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_139:
    b .L1_136
.L1_135:
.L1_136:
.L1_124:
.L1_107:
.L1_102:
    b .L1_99
.L1_98:
.L1_99:
    ldr x9, [sp, #240]
    add x14, x9, #88
    ldrb w14, [x14]
    cbnz w14, .L1_143
    b .L1_189
.L1_189:
    mov w15, w14
    b .L1_144
.L1_143:
    ldr x9, [sp, #240]
    add x14, x9, #72
    ldrb w14, [x14]
    movz x10, #3
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L1_144:
    and w14, w15, #255
    cbnz w14, .L1_140
    b .L1_141
.L1_140:
    ldr x9, [sp, #240]
    add x14, x9, #90
    ldrb w14, [x14]
    cbnz w14, .L1_145
    b .L1_146
.L1_145:
    sub x14, x29, #1608
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x19, x14, #8
    str x15, [x19]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    sub x19, x29, #1624
    str x15, [x19]
    add x15, x19, #8
    movz x9, #21
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1656
    bl lb_io_9write_all
    sub x15, x29, #1656
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_149
    b .L1_148
.L1_149:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_150:
.L1_148:
    b .L1_147
.L1_146:
    sub x14, x29, #1672
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x19, x14, #8
    str x15, [x19]
    adrp x15, .Ltext_21
    add x15, x15, :lo12:.Ltext_21
    sub x19, x29, #1688
    str x15, [x19]
    add x15, x19, #8
    movz x9, #24
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1720
    bl lb_io_9write_all
    sub x15, x29, #1720
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_152
    b .L1_151
.L1_152:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_153:
.L1_151:
.L1_147:
    b .L1_142
.L1_141:
    sub x14, x29, #1736
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x19, x14, #8
    str x15, [x19]
    adrp x15, .Ltext_22
    add x15, x15, :lo12:.Ltext_22
    sub x19, x29, #1752
    str x15, [x19]
    add x15, x19, #8
    movz x9, #19
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1784
    bl lb_io_9write_all
    sub x15, x29, #1784
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_155
    b .L1_154
.L1_155:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_156:
.L1_154:
.L1_142:
    sub x14, x29, #1800
    ldr x9, [sp, #256]
    str x9, [x14]
    adrp x15, lb_vt_io_SliceWriter_Writer
    add x15, x15, :lo12:lb_vt_io_SliceWriter_Writer
    add x19, x14, #8
    str x15, [x19]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x19, x29, #1816
    str x15, [x19]
    add x15, x19, #8
    movz x9, #2
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1848
    bl lb_io_9write_all
    sub x15, x29, #1848
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_158
    b .L1_157
.L1_158:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_159:
.L1_157:
    movz x16, #5048
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #3200
    bl _memset
    movz x16, #5080
    sub x20, x29, x16
    movz x16, #5112
    sub x21, x29, x16
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x21, #24
    movn x9, #0
    str x9, [x14]
    movz x9, #32768
    str x9, [x21]
    add x14, x21, #8
    movz x9, #8192
    str x9, [x14]
    add x14, x21, #16
    movz x9, #100
    str x9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #224]
    ldrh w14, [x9]
    mov x10, #0
    cmp w14, w10
    b.ne .L1_161
.L1_160:
    ldr x0, [sp, #256]
    bl lb_io_SliceWriter_written
    movz x16, #5128
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #5128
    sub x14, x29, x16
    movz x16, #5144
    sub x15, x29, x16
    str x19, [x15]
    add x21, x15, #8
    movz x9, #100
    str x9, [x21]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x9, x20
    mov x4, x9
    movz x16, #5272
    sub x8, x29, x16
    bl lb_net_18http_parse_request
    movz x16, #5272
    sub x15, x29, x16
    add x14, x15, #120
    ldrb w14, [x14]
    cbnz w14, .L1_164
    b .L1_163
.L1_164:
    add x14, x15, #96
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_165:
.L1_163:
    b .L1_162
.L1_161:
    ldr x0, [sp, #256]
    bl lb_io_SliceWriter_written
    movz x16, #5288
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #5288
    sub x14, x29, x16
    movz x16, #5304
    sub x15, x29, x16
    str x19, [x15]
    add x21, x15, #8
    movz x9, #100
    str x9, [x21]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    ldr x9, [sp, #240]
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x9, x20
    mov x6, x9
    movz x16, #5432
    sub x8, x29, x16
    bl lb_net_19http_parse_response
    movz x16, #5432
    sub x15, x29, x16
    add x14, x15, #120
    ldrb w14, [x14]
    cbnz w14, .L1_167
    b .L1_166
.L1_167:
    add x14, x15, #96
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_168:
.L1_166:
.L1_162:
    ldr x0, [sp, #256]
    bl lb_io_SliceWriter_written
    movz x16, #5448
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #5448
    sub x14, x29, x16
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
    ldr x19, [sp, #5680]
    ldr x20, [sp, #5672]
    ldr x21, [sp, #5664]
    ldr x22, [sp, #5656]
    ldr x23, [sp, #5648]
    ldr x24, [sp, #5640]
    ldr x25, [sp, #5632]
    ldr x26, [sp, #5624]
    ldr x27, [sp, #5616]
    ldr x28, [sp, #5608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_169:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at

    .size lb_net_16http_encode_head, .-lb_net_16http_encode_head

    .p2align 2
    .globl lb_net_16http_write_chunk
    .type lb_net_16http_write_chunk, %function
lb_net_16http_write_chunk:
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
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    add x14, x19, #8
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ne .L2_2
.L2_1:
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_2:
.L2_3:
    sub x21, x29, #146
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x14, x29, #168
    adrp x22, .Ltext_25
    add x22, x22, :lo12:.Ltext_25
    sub x15, x29, #184
    str x22, [x15]
    add x23, x15, #8
    movz x9, #16
    str x9, [x23]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #16
    mov x14, x9
    mov x15, x20
.L2_5:
    mov x10, #0
    cmp x15, x10
    b.ls .L2_7
.L2_6:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_44
    add x1, x1, :lo12:.Ltext_44
    bl lb_core_7trap_at
1:
    mov x20, x9
    movz x10, #18
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_33
    add x1, x1, :lo12:.Ltext_33
    bl lb_core_7trap_at
1:
    add x23, x21, x20
.L2_9:
    movz x10, #16
    udiv x11, x15, x10
    msub x14, x11, x10, x15
    movz x10, #16
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_33
    add x1, x1, :lo12:.Ltext_33
    bl lb_core_7trap_at
1:
    add x14, x22, x14
    ldrb w14, [x14]
    strb w14, [x23]
.L2_11:
    movz x10, #16
    udiv x23, x15, x10
    mov x14, x20
    mov x15, x23
    b .L2_5
.L2_7:
    add x15, x21, #16
    movz x9, #13
    strb w9, [x15]
    add x15, x21, #17
    movz x9, #10
    strb w9, [x15]
    sub x20, x29, #112
    movz x10, #19
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_33
    add x1, x1, :lo12:.Ltext_33
    bl lb_core_7trap_at
1:
    movz x10, #18
    cmp x14, x10
    b.ls .L2_12
.L2_13:
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_33
    add x1, x1, :lo12:.Ltext_33
    bl lb_core_7trap_at
.L2_12:
    add x15, x21, x14
    movz x9, #18
    sub x22, x9, x14
    sub x23, x29, #200
    str x15, [x23]
    add x15, x23, #8
    str x22, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #232
    bl lb_io_9write_all
    sub x22, x29, #232
    add x15, x22, #24
    ldrb w15, [x15]
    cbnz w15, .L2_15
    b .L2_14
.L2_15:
    sub x19, x29, #96
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_14:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #264
    bl lb_io_9write_all
    sub x15, x29, #264
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_18
    b .L2_17
.L2_18:
    sub x19, x29, #96
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_17:
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #312
    bl lb_io_9write_all
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_21
    b .L2_20
.L2_21:
    sub x19, x29, #96
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_20:
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_16http_write_chunk, .-lb_net_16http_write_chunk

    .p2align 2
    .globl lb_net_15http_end_chunks
    .type lb_net_15http_end_chunks, %function
lb_net_15http_end_chunks:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #80
    adrp x15, .Ltext_34
    add x15, x15, :lo12:.Ltext_34
    sub x19, x29, #96
    str x15, [x19]
    add x15, x19, #8
    movz x9, #5
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #128
    bl lb_io_9write_all
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    sub x19, x29, #64
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_15http_end_chunks, .-lb_net_15http_end_chunks

    .p2align 2
    .globl lb_net_HttpBodyWriter_over
    .type lb_net_HttpBodyWriter_over, %function
lb_net_HttpBodyWriter_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str w2, [x16]
    sub x16, x29, #160
    str x3, [x16]
    sub x14, x29, #144
    ldrb w19, [x14]
    movz x10, #4
    cmp w19, w10
    b.ne .L4_2
.L4_1:
    sub x19, x29, #112
    add x14, x19, #40
    adrp x15, lb_net_16http_unsupported
    add x15, x15, :lo12:lb_net_16http_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_35
    add x15, x15, :lo12:.Ltext_35
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    sub x20, x29, #216
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x14, x29, #128
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    strb w19, [x14]
    movz x10, #1
    cmp w19, w10
    b.ne .L4_6
.L4_5:
    sub x14, x29, #160
    ldr x14, [x14]
    b .L4_7
.L4_6:
    mov x9, #0
    mov x14, x9
.L4_7:
    add x15, x20, #24
    str x14, [x15]
    add x15, x20, #32
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #112
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x15, x19, #64
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_8:
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at

    .size lb_net_HttpBodyWriter_over, .-lb_net_HttpBodyWriter_over

    .p2align 2
    .globl lb_net_HttpBodyWriter_write
    .type lb_net_HttpBodyWriter_write, %function
lb_net_HttpBodyWriter_write:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #160
    bl lb_net_HttpBodyWriter_check
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_2
    b .L5_1
.L5_2:
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
.L5_1:
    sub x14, x29, #128
    mov x10, x14
    sub x11, x29, #280
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #280
    add x20, x14, #8
    ldr x15, [x20]
    mov x10, #0
    cmp x15, x10
    b.ne .L5_11
.L5_10:
    sub x14, x29, #264
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b .L5_35
.L5_13:
    b .L5_12
.L5_11:
.L5_12:
    add x21, x19, #16
    ldrb w22, [x21]
    mov x10, #0
    cmp w22, w10
    cset w23, eq
    cbnz w23, .L5_36
    b .L5_17
.L5_36:
    mov w15, w23
    b .L5_18
.L5_17:
    movz x10, #1
    cmp w22, w10
    cset w23, eq
    cbnz w23, .L5_19
    b .L5_37
.L5_37:
    mov w15, w23
    b .L5_20
.L5_19:
    add x23, x19, #24
    ldr x23, [x23]
    cmp x15, x23
    cset w23, hi
    mov w15, w23
.L5_20:
    and w23, w15, #255
    mov w15, w23
.L5_18:
    and w23, w15, #255
    cbnz w23, .L5_14
    b .L5_15
.L5_14:
    sub x20, x29, #264
    add x14, x20, #8
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_38
    add x15, x15, :lo12:.Ltext_38
    sub x21, x29, #296
    str x15, [x21]
    add x15, x21, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b .L5_35
.L5_21:
    b .L5_16
.L5_15:
.L5_16:
    movz x10, #2
    cmp w22, w10
    b.ne .L5_23
.L5_22:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #328
    bl lb_net_16http_write_chunk
    sub x22, x29, #328
    add x15, x22, #24
    ldrb w15, [x15]
    cbnz w15, .L5_26
    b .L5_25
.L5_26:
    sub x20, x29, #264
    add x14, x20, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b .L5_35
.L5_27:
.L5_25:
    b .L5_24
.L5_23:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #360
    bl lb_io_9write_all
    sub x22, x29, #360
    add x15, x22, #24
    ldrb w15, [x15]
    cbnz w15, .L5_29
    b .L5_28
.L5_29:
    sub x20, x29, #264
    add x14, x20, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b .L5_35
.L5_30:
.L5_28:
.L5_24:
    ldrb w14, [x21]
    movz x10, #1
    cmp w14, w10
    b.ne .L5_32
.L5_31:
    add x14, x19, #24
    ldr x15, [x14]
    ldr x21, [x20]
    mov x9, x15
    mov x10, x21
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_44
    add x1, x1, :lo12:.Ltext_44
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    b .L5_33
.L5_32:
.L5_33:
    ldr x14, [x20]
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x15
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b .L5_35
.L5_34:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
.L5_35:
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L5_7
    b .L5_6
.L5_7:
    add x14, x15, #8
    sub x20, x29, #184
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L5_4
.L5_6:
    ldr x14, [x15]
    b .L5_5
.L5_4:
    add x14, x19, #33
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #36
    ldr w15, [x20]
    str w15, [x14]
    sub x21, x29, #104
    add x14, x21, #8
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_8:
.L5_5:
    sub x15, x29, #104
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_9:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at

    .size lb_net_HttpBodyWriter_write, .-lb_net_HttpBodyWriter_write

    .p2align 2
    .globl lb_net_HttpBodyWriter_finish
    .type lb_net_HttpBodyWriter_finish, %function
lb_net_HttpBodyWriter_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #120
    bl lb_net_HttpBodyWriter_check
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L6_2
    b .L6_1
.L6_2:
    sub x19, x29, #80
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_3:
.L6_1:
    add x14, x19, #16
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L6_12
    b .L6_26
.L6_26:
    mov w20, w15
    b .L6_13
.L6_12:
    add x15, x19, #24
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w20, eq
.L6_13:
    and w15, w20, #255
    cbnz w15, .L6_9
    b .L6_10
.L6_9:
    sub x20, x29, #208
    adrp x14, lb_io_14unexpected_eof
    add x14, x14, :lo12:lb_io_14unexpected_eof
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_41
    add x14, x14, :lo12:.Ltext_41
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
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
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b .L6_25
.L6_14:
    b .L6_11
.L6_10:
.L6_11:
    movz x10, #2
    cmp w14, w10
    b.ne .L6_16
.L6_15:
    mov x10, x19
    sub x11, x29, #304
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #304
    adrp x15, .Ltext_34
    add x15, x15, :lo12:.Ltext_34
    sub x20, x29, #320
    str x15, [x20]
    add x15, x20, #8
    movz x9, #5
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #352
    bl lb_io_9write_all
    sub x15, x29, #352
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L6_22
    b .L6_21
.L6_22:
    sub x20, x29, #288
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b .L6_24
.L6_23:
.L6_21:
    sub x14, x29, #288
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
.L6_24:
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L6_19
    b .L6_18
.L6_19:
    sub x20, x29, #208
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b .L6_25
.L6_20:
.L6_18:
    b .L6_17
.L6_16:
.L6_17:
    sub x14, x29, #208
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
.L6_25:
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L6_7
    b .L6_6
.L6_7:
    sub x20, x29, #144
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L6_4
.L6_6:
    b .L6_5
.L6_4:
    add x14, x19, #33
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #36
    ldr w15, [x20]
    str w15, [x14]
    sub x21, x29, #80
    str w15, [x21]
    add x14, x20, #8
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_8:
.L6_5:
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_HttpBodyWriter_finish, .-lb_net_HttpBodyWriter_finish

    .p2align 2
    .globl lb_net_HttpBodyWriter_check
    .type lb_net_HttpBodyWriter_check, %function
lb_net_HttpBodyWriter_check:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x15, [x9]
    add x14, x15, #33
    ldrb w14, [x14]
    cbnz w14, .L7_1
    b .L7_2
.L7_1:
    sub x19, x29, #72
    add x14, x15, #36
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_42
    add x14, x14, :lo12:.Ltext_42
    sub x20, x29, #96
    str x14, [x20]
    add x14, x20, #8
    movz x9, #27
    str x9, [x14]
    add x14, x19, #8
    mov x10, x20
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
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
    add x14, x15, #32
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L7_6
.L7_5:
    sub x19, x29, #72
    adrp x14, lb_io_closed
    add x14, x14, :lo12:lb_io_closed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_43
    add x14, x14, :lo12:.Ltext_43
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_8:
    b .L7_7
.L7_6:
.L7_7:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_HttpBodyWriter_check, .-lb_net_HttpBodyWriter_check

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_11http_encode_0init

    .section .rodata
.Ltext_0:
    .asciz "HTTP/1.0"
.Ltext_1:
    .asciz "HTTP/1.1"
.Ltext_2:
    .asciz "unsupported HTTP version"
.Ltext_3:
    .asciz "invalid HTTP request line"
.Ltext_4:
    .asciz " "
.Ltext_5:
    .asciz "\015\n"
.Ltext_6:
    .asciz "invalid HTTP status"
.Ltext_7:
    .asciz " \015\n"
.Ltext_8:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_9:
    .asciz "content-length"
.Ltext_10:
    .asciz "transfer-encoding"
.Ltext_11:
    .asciz "connection"
.Ltext_12:
    .asciz "invalid or generated HTTP field"
.Ltext_13:
    .asciz ": "
.Ltext_14:
    .asciz "CONNECT"
.Ltext_15:
    .asciz "framing is forbidden for this response"
.Ltext_16:
    .asciz "Content-Length: "
.Ltext_17:
    .asciz "chunked framing requires HTTP/1.1"
.Ltext_18:
    .asciz "Transfer-Encoding: chunked\015\n"
.Ltext_19:
    .asciz "invalid outgoing HTTP framing"
.Ltext_20:
    .asciz "Connection: Upgrade\015\n"
.Ltext_21:
    .asciz "Connection: keep-alive\015\n"
.Ltext_22:
    .asciz "Connection: close\015\n"
.Ltext_23:
    .asciz "unreachable"
.Ltext_24:
    .asciz "src/std/net/http/encode.lucb:60:5"
.Ltext_25:
    .asciz "0123456789abcdef"
.Ltext_26:
    .asciz "src/std/net/http/encode.lucb:72:9"
.Ltext_27:
    .asciz "src/std/net/http/encode.lucb:73:9"
.Ltext_28:
    .asciz "division by zero"
.Ltext_29:
    .asciz "src/std/net/http/encode.lucb:74:9"
.Ltext_30:
    .asciz "src/std/net/http/encode.lucb:75:5"
.Ltext_31:
    .asciz "src/std/net/http/encode.lucb:76:5"
.Ltext_32:
    .asciz "src/std/net/http/encode.lucb:77:5"
.Ltext_33:
    .asciz "index out of bounds"
.Ltext_34:
    .asciz "0\015\n\015\n"
.Ltext_35:
    .asciz "a tunnel has no HTTP body writer"
.Ltext_36:
    .asciz "src/std/net/http/encode.lucb:101:9"
.Ltext_37:
    .asciz "src/std/net/http/encode.lucb:108:13"
.Ltext_38:
    .asciz "HTTP body exceeds its declared length"
.Ltext_39:
    .asciz "src/std/net/http/encode.lucb:120:13"
.Ltext_40:
    .asciz "src/std/net/http/encode.lucb:121:9"
.Ltext_41:
    .asciz "HTTP body is shorter than its declared length"
.Ltext_42:
    .asciz "HTTP body writer has failed"
.Ltext_43:
    .asciz "HTTP body writer is not active"
.Ltext_44:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_io_SliceWriter_Writer
lb_vt_io_SliceWriter_Writer:
    .quad lb_io_SliceWriter_write


    .section .note.GNU-stack,"",%progbits
