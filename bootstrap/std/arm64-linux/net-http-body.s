    .text

    .p2align 2
    .globl lb_net_9http_body_0init
    .type lb_net_9http_body_0init, %function
lb_net_9http_body_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_9http_body_0init, .-lb_net_9http_body_0init

    .p2align 2
    .globl lb_net_HttpBodyDecoder_create
    .type lb_net_HttpBodyDecoder_create, %function
lb_net_HttpBodyDecoder_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #25024
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #24992]
    str x20, [sp, #24984]
    str x21, [sp, #24976]
    str x22, [sp, #24968]
    str x23, [sp, #24960]
    movz x16, #8392
    sub x16, x29, x16
    str w0, [x16]
    movz x16, #8408
    sub x16, x29, x16
    str x1, [x16]
    movz x16, #8424
    sub x16, x29, x16
    str x2, [x16]
    movz x16, #8392
    sub x14, x29, x16
    ldrb w19, [x14]
    movz x10, #4
    cmp w19, w10
    b.ne .L1_2
.L1_1:
    movz x16, #8376
    sub x19, x29, x16
    movz x10, #8280
    add x14, x19, x10
    adrp x15, lb_net_16http_unsupported
    add x15, x15, :lo12:lb_net_16http_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    movz x16, #8440
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x10, #8304
    add x14, x19, x10
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #8312
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #24992]
    ldr x20, [sp, #24984]
    ldr x21, [sp, #24976]
    ldr x22, [sp, #24968]
    ldr x23, [sp, #24960]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    b .L1_3
.L1_2:
.L1_3:
    movz x10, #1
    cmp w19, w10
    cset w20, eq
    cbnz w20, .L1_8
    b .L1_22
.L1_22:
    mov w14, w20
    b .L1_9
.L1_8:
    movz x16, #8408
    sub x14, x29, x16
    ldr x14, [x14]
    movz x16, #8424
    sub x15, x29, x16
    ldr x15, [x15]
    cmp x14, x15
    cset w14, hi
.L1_9:
    and w15, w14, #255
    cbnz w15, .L1_5
    b .L1_6
.L1_5:
    movz x16, #8376
    sub x19, x29, x16
    movz x10, #8280
    add x14, x19, x10
    adrp x15, lb_net_10http_limit
    add x15, x15, :lo12:lb_net_10http_limit
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    movz x16, #8456
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x10, #8304
    add x14, x19, x10
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #8312
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #24992]
    ldr x20, [sp, #24984]
    ldr x21, [sp, #24976]
    ldr x22, [sp, #24968]
    ldr x23, [sp, #24960]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_10:
    b .L1_7
.L1_6:
.L1_7:
    movz x16, #16736
    sub x21, x29, x16
    movz x16, #25016
    sub x22, x29, x16
    mov x0, x22
    mov x1, #0
    movz x2, #8280
    bl memset
    strb w19, [x22]
    movz x16, #8408
    sub x14, x29, x16
    ldr x23, [x14]
    add x14, x22, #8
    str x23, [x14]
    movz x16, #8424
    sub x14, x29, x16
    ldr x14, [x14]
    add x15, x22, #24
    str x14, [x15]
    add x14, x22, #32
    movz x9, #6
    strb w9, [x14]
    mov x0, x21
    mov x1, x22
    movz x2, #8280
    bl memcpy
    movz x10, #2
    cmp w19, w10
    b.ne .L1_12
.L1_11:
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b .L1_13
.L1_12:
    movz x10, #3
    cmp w19, w10
    cset w14, eq
    cbnz w14, .L1_23
    b .L1_17
.L1_23:
    mov w15, w14
    b .L1_18
.L1_17:
    cbnz w20, .L1_19
    b .L1_24
.L1_24:
    mov w14, w20
    b .L1_20
.L1_19:
    mov x10, #0
    cmp x23, x10
    cset w14, hi
.L1_20:
    and w15, w14, #255
.L1_18:
    and w14, w15, #255
    cbnz w14, .L1_14
    b .L1_15
.L1_14:
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    b .L1_16
.L1_15:
.L1_16:
.L1_13:
    movz x16, #8376
    sub x19, x29, x16
    mov x0, x19
    mov x1, x21
    movz x2, #8280
    bl memcpy
    movz x10, #8304
    add x14, x19, x10
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #8312
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #24992]
    ldr x20, [sp, #24984]
    ldr x21, [sp, #24976]
    ldr x22, [sp, #24968]
    ldr x23, [sp, #24960]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_21:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_HttpBodyDecoder_create, .-lb_net_HttpBodyDecoder_create

    .p2align 2
    .globl lb_net_HttpBodyDecoder_finished
    .type lb_net_HttpBodyDecoder_finished, %function
lb_net_HttpBodyDecoder_finished:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    movz x10, #8272
    add x14, x15, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L2_1
    b .L2_4
.L2_4:
    mov w15, w14
    b .L2_2
.L2_1:
    add x14, x15, #32
    ldrb w14, [x14]
    movz x10, #6
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L2_2:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_HttpBodyDecoder_finished, .-lb_net_HttpBodyDecoder_finished

    .p2align 2
    .globl lb_net_HttpBodyDecoder_consume
    .type lb_net_HttpBodyDecoder_consume, %function
lb_net_HttpBodyDecoder_consume:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #168
    ldr x20, [x9]
    movz x10, #8272
    add x19, x20, x10
    ldrb w14, [x19]
    cbnz w14, .L3_1
    b .L3_2
.L3_1:
    sub x19, x29, #160
    add x14, x19, #72
    movz x10, #8276
    add x15, x20, x10
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #200
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    b .L3_3
.L3_2:
.L3_3:
    sub x14, x29, #184
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #400
    bl lb_net_HttpBodyDecoder_advance
    sub x15, x29, #400
    add x14, x15, #96
    ldrb w14, [x14]
    cbnz w14, .L3_8
    b .L3_7
.L3_8:
    add x14, x15, #72
    sub x21, x29, #296
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_5
.L3_7:
    sub x19, x29, #272
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    b .L3_6
.L3_5:
    movz x9, #1
    strb w9, [x19]
    movz x10, #8276
    add x14, x20, x10
    ldr w15, [x21]
    str w15, [x14]
    sub x22, x29, #160
    add x14, x22, #72
    str w15, [x14]
    add x15, x21, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_9:
.L3_6:
    sub x20, x29, #160
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    add x14, x20, #96
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_10:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_HttpBodyDecoder_consume, .-lb_net_HttpBodyDecoder_consume

    .p2align 2
    .globl lb_net_HttpBodyDecoder_finish
    .type lb_net_HttpBodyDecoder_finish, %function
lb_net_HttpBodyDecoder_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x12, [x9]
    movz x10, #8272
    add x14, x12, x10
    ldrb w15, [x14]
    cbnz w15, .L4_1
    b .L4_2
.L4_1:
    sub x19, x29, #64
    movz x10, #8276
    add x14, x12, x10
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    ldrb w15, [x12]
    movz x10, #3
    cmp w15, w10
    b.ne .L4_6
.L4_5:
    add x15, x12, #32
    movz x9, #6
    strb w9, [x15]
    b .L4_7
.L4_6:
.L4_7:
    add x15, x12, #32
    ldrb w15, [x15]
    movz x10, #6
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L4_9
.L4_8:
    movz x9, #1
    strb w9, [x14]
    movz x10, #8276
    add x15, x12, x10
    adrp x13, lb_io_14unexpected_eof
    add x13, x13, :lo12:lb_io_14unexpected_eof
    ldr w19, [x13]
    str w19, [x15]
    sub x19, x29, #64
    ldr w15, [x13]
    str w15, [x19]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    sub x13, x29, #104
    str x15, [x13]
    add x15, x13, #8
    movz x9, #44
    str x9, [x15]
    add x15, x19, #8
    mov x10, x13
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_11:
    b .L4_10
.L4_9:
.L4_10:
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_HttpBodyDecoder_finish, .-lb_net_HttpBodyDecoder_finish

    .p2align 2
    .globl lb_net_HttpBodyDecoder_advance
    .type lb_net_HttpBodyDecoder_advance, %function
lb_net_HttpBodyDecoder_advance:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1984
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1952]
    str x20, [sp, #1944]
    str x21, [sp, #1936]
    str x22, [sp, #1928]
    str x23, [sp, #1920]
    str x24, [sp, #1912]
    str x25, [sp, #1904]
    str x26, [sp, #1896]
    str x27, [sp, #1888]
    str x28, [sp, #1880]
    sub x16, x29, #216
    str x0, [x16]
    sub x16, x29, #232
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #216
    ldr x23, [x9]
    sub x9, x29, #232
    str x9, [sp, #344]
    ldr x9, [sp, #344]
    add x9, x9, #8
    str x9, [sp, #336]
    add x21, x23, #32
    add x22, x23, #32
    movz x10, #8256
    add x9, x23, x10
    str x9, [sp, #328]
    movz x10, #8240
    add x9, x23, x10
    str x9, [sp, #320]
    movz x10, #8232
    add x9, x23, x10
    str x9, [sp, #232]
    add x9, x23, #33
    str x9, [sp, #224]
    sub x9, x29, #400
    str x9, [sp, #40]
    add x9, x23, #33
    str x9, [sp, #32]
    movz x10, #8232
    add x9, x23, x10
    str x9, [sp, #312]
    sub x9, x29, #416
    str x9, [sp, #304]
    ldr x9, [sp, #304]
    add x9, x9, #8
    str x9, [sp, #296]
    sub x9, x29, #432
    str x9, [sp, #288]
    ldr x9, [sp, #288]
    add x9, x9, #8
    str x9, [sp, #280]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #240]
    add x9, x23, #8
    str x9, [sp, #24]
    sub x9, x29, #992
    str x9, [sp, #216]
    sub x9, x29, #984
    str x9, [sp, #208]
    ldr x9, [sp, #208]
    add x9, x9, #8
    str x9, [sp, #200]
    sub x9, x29, #994
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #1
    str x9, [sp, #192]
    sub x9, x29, #1064
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #88]
    sub x9, x29, #968
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #32
    str x9, [sp, #48]
    sub x9, x29, #968
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #72]
    ldr x9, [sp, #80]
    add x9, x9, #32
    str x9, [sp, #64]
    sub x9, x29, #968
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    add x25, x9, #8
    adrp x9, lb_net_12http_invalid
    add x9, x9, :lo12:lb_net_12http_invalid
    str x9, [sp, #128]
    adrp x9, .Ltext_45
    add x9, x9, :lo12:.Ltext_45
    str x9, [sp, #120]
    sub x24, x29, #1032
    add x9, x24, #8
    str x9, [sp, #112]
    add x9, x25, #8
    str x9, [sp, #104]
    ldr x9, [sp, #136]
    add x9, x9, #32
    str x9, [sp, #96]
    sub x9, x29, #968
    str x9, [sp, #184]
    ldr x9, [sp, #184]
    add x27, x9, #8
    adrp x9, lb_net_10http_limit
    add x9, x9, :lo12:lb_net_10http_limit
    str x9, [sp, #176]
    adrp x9, .Ltext_42
    add x9, x9, :lo12:.Ltext_42
    str x9, [sp, #168]
    sub x26, x29, #1016
    add x9, x26, #8
    str x9, [sp, #160]
    add x9, x27, #8
    str x9, [sp, #152]
    ldr x9, [sp, #184]
    add x9, x9, #32
    str x9, [sp, #144]
    sub x9, x29, #472
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #32
    str x9, [sp, #272]
    movz x10, #8248
    add x9, x23, x10
    str x9, [sp, #264]
    add x9, x23, #24
    str x9, [sp, #256]
    add x9, x23, #16
    str x9, [sp, #248]
    mov x9, #0
    mov x28, x9
.L5_1:
    ldr x9, [sp, #336]
    ldr x19, [x9]
    cmp x28, x19
    cset w14, lo
    cbnz w14, .L5_4
    b .L5_148
.L5_148:
    mov w15, w14
    b .L5_5
.L5_4:
    ldrb w14, [x21]
    movz x10, #6
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_5:
    and w14, w15, #255
    cbnz w14, .L5_2
    b .L5_3
.L5_2:
    ldrb w14, [x22]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L5_149
    b .L5_9
.L5_149:
    mov w12, w15
    b .L5_10
.L5_9:
    movz x10, #2
    cmp w14, w10
    cset w12, eq
.L5_10:
    and w15, w12, #255
    cbnz w15, .L5_6
    b .L5_7
.L5_6:
    mov x9, x19
    mov x10, x28
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldrb w15, [x23]
    movz x10, #3
    cmp w15, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    cbnz w12, .L5_14
    b .L5_150
.L5_150:
    mov w13, w12
    b .L5_15
.L5_14:
    add x13, x23, #8
    ldr x13, [x13]
    cmp x14, x13
    cset w13, hi
.L5_15:
    and w20, w13, #255
    cbnz w20, .L5_11
    b .L5_12
.L5_11:
    add x14, x23, #8
    ldr x14, [x14]
    mov x20, x14
    b .L5_13
.L5_12:
    mov x20, x14
.L5_13:
    add x14, x23, #24
    ldr x14, [x14]
    add x13, x23, #16
    ldr x21, [x13]
    mov x9, x14
    mov x10, x21
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    cmp x20, x14
    b.ls .L5_17
.L5_16:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_10http_limit
    add x15, x15, :lo12:lb_net_10http_limit
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    sub x12, x29, #248
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_17:
.L5_18:
    mov x9, x21
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x13]
    cbnz w12, .L5_20
    b .L5_21
.L5_20:
    add x14, x23, #8
    ldr x12, [x14]
    mov x9, x12
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x14]
    mov x10, #0
    cmp x12, x10
    b.ne .L5_24
.L5_23:
    movz x10, #2
    cmp w15, w10
    b.ne .L5_27
.L5_26:
    movz x9, #3
    mov w14, w9
    b .L5_28
.L5_27:
    movz x9, #6
    mov w14, w9
.L5_28:
    and w15, w14, #255
    strb w15, [x22]
    b .L5_25
.L5_24:
.L5_25:
    b .L5_22
.L5_21:
.L5_22:
    sub x21, x29, #320
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, x28
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    ldr x9, [sp, #344]
    ldr x12, [x9]
    add x15, x19, #1
    cmp x28, x15
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x28, x14
    b.ls .L5_29
.L5_30:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L5_29:
    add x15, x28, x12
    sub x13, x14, x28
    sub x19, x29, #336
    str x15, [x19]
    add x15, x19, #8
    str x13, [x15]
    add x15, x21, #8
    mov x10, x19
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldrb w15, [x22]
    movz x10, #6
    cmp w15, w10
    cset w15, eq
    add x13, x21, #64
    strb w15, [x13]
    sub x19, x29, #208
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    add x15, x19, #96
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_7:
.L5_8:
    ldr x9, [sp, #344]
    ldr x15, [x9]
    cmp x28, x19
    b.lo 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x15, x15, x28
    ldrb w15, [x15]
    add x20, x28, #1
    movz x10, #3
    cmp w14, w10
    cset w12, eq
    cbnz w12, .L5_151
    b .L5_35
.L5_151:
    mov w13, w12
    b .L5_36
.L5_35:
    movz x10, #4
    cmp w14, w10
    cset w13, eq
.L5_36:
    and w19, w13, #255
    cbnz w19, .L5_32
    b .L5_33
.L5_32:
    cbnz w12, .L5_37
    b .L5_38
.L5_37:
    movz x9, #13
    mov w14, w9
    b .L5_39
.L5_38:
    movz x9, #10
    mov w14, w9
.L5_39:
    and w13, w14, #255
    and w19, w15, #255
    and w13, w13, #255
    cmp w19, w13
    cset w13, eq
    mov x10, #0
    cmp w13, w10
    b.ne .L5_41
.L5_40:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_16
    add x15, x15, :lo12:.Ltext_16
    sub x12, x29, #352
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_41:
.L5_42:
    cbnz w12, .L5_44
    b .L5_45
.L5_44:
    movz x9, #4
    mov w14, w9
    b .L5_46
.L5_45:
    movz x9, #1
    mov w14, w9
.L5_46:
    and w15, w14, #255
    strb w15, [x22]
    mov x28, x20
    b .L5_1
.L5_33:
.L5_34:
    movz x10, #5
    cmp w14, w10
    b.ne .L5_49
.L5_48:
    ldr x9, [sp, #328]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #328]
    str x14, [x10]
    movz x10, #32768
    cmp x14, x10
    b.ls .L5_52
.L5_51:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_10http_limit
    add x15, x15, :lo12:lb_net_10http_limit
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_18
    add x15, x15, :lo12:.Ltext_18
    sub x12, x29, #368
    str x15, [x12]
    add x15, x12, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_52:
.L5_53:
    b .L5_50
.L5_49:
.L5_50:
    ldr x9, [sp, #320]
    ldrb w14, [x9]
    cbnz w14, .L5_55
    b .L5_56
.L5_55:
    and w14, w15, #255
    movz x10, #10
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L5_59
.L5_58:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_19
    add x15, x15, :lo12:.Ltext_19
    sub x12, x29, #384
    str x15, [x12]
    add x15, x12, #8
    movz x9, #24
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_59:
.L5_60:
    mov x9, #0
    ldr x10, [sp, #320]
    strb w9, [x10]
    ldr x9, [sp, #312]
    ldr x15, [x9]
    movz x10, #8193
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls .L5_62
.L5_63:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L5_62:
    ldr x9, [sp, #32]
    ldr x10, [sp, #304]
    str x9, [x10]
    ldr x10, [sp, #296]
    str x15, [x10]
    ldr x9, [sp, #32]
    ldr x10, [sp, #288]
    str x9, [x10]
    ldr x10, [sp, #280]
    str x15, [x10]
    ldr x10, [sp, #288]
    ldr x11, [sp, #40]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    ldr x10, [sp, #312]
    str x9, [x10]
    ldrb w14, [x22]
    movz x10, #1
    cmp w14, w10
    b.ne .L5_65
.L5_64:
    ldr x10, [sp, #40]
    sub x11, x29, #984
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    ldr x10, [sp, #216]
    str x9, [x10]
    mov x9, #0
    mov x19, x9
    mov x9, #0
    mov x14, x9
.L5_113:
    ldr x9, [sp, #200]
    ldr x15, [x9]
    cmp x14, x15
    b.hs .L5_115
.L5_114:
    ldr x9, [sp, #208]
    ldr x15, [x9]
    add x15, x15, x14
    ldrb w15, [x15]
    mov x0, x15
    bl lb_net_8http_hex
    sub x16, x29, #994
    strh w0, [x16, #0]
    ldr x9, [sp, #192]
    ldrb w15, [x9]
    cbnz w15, .L5_116
    b .L5_117
.L5_116:
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    b .L5_118
.L5_117:
    b .L5_115
.L5_118:
    and w15, w14, #255
    and w15, w15, #255
    mov w15, w15
    movn x9, #0
    sub x12, x9, x15
.L5_124:
    movz x10, #16
    udiv x14, x12, x10
    cmp x19, x14
    b.ls .L5_121
.L5_120:
    ldr x9, [sp, #176]
    ldr w14, [x9]
    str w14, [x27]
    ldr x9, [sp, #168]
    str x9, [x26]
    movz x9, #31
    ldr x10, [sp, #160]
    str x9, [x10]
    mov x10, x26
    ldr x11, [sp, #152]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #144]
    strb w9, [x10]
    ldr x10, [sp, #184]
    sub x11, x29, #472
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b .L5_137
.L5_121:
.L5_122:
    mov x9, x19
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x15
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #216]
    ldr x12, [x9]
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x12, x9
    ldr x10, [sp, #216]
    str x12, [x10]
    mov x19, x14
    mov x14, x12
    b .L5_113
.L5_115:
    ldr x9, [sp, #216]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne .L5_127
.L5_126:
    ldr x9, [sp, #128]
    ldr w14, [x9]
    str w14, [x25]
    ldr x9, [sp, #120]
    str x9, [x24]
    movz x9, #35
    ldr x10, [sp, #112]
    str x9, [x10]
    mov x10, x24
    ldr x11, [sp, #104]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #96]
    strb w9, [x10]
    ldr x10, [sp, #136]
    sub x11, x29, #472
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b .L5_137
.L5_127:
.L5_128:
.L5_130:
    ldr x9, [sp, #216]
    ldr x14, [x9]
    ldr x9, [sp, #200]
    ldr x15, [x9]
    cmp x14, x15
    b.hs .L5_132
.L5_131:
    ldr x9, [sp, #208]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #216]
    sub x8, x29, #1064
    bl lb_net_20http_chunk_extension
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, .L5_134
    b .L5_133
.L5_134:
    ldr x10, [sp, #8]
    ldr x11, [sp, #72]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #64]
    strb w9, [x10]
    ldr x10, [sp, #80]
    sub x11, x29, #472
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b .L5_137
.L5_133:
    b .L5_130
.L5_132:
    ldr x10, [sp, #56]
    str x19, [x10]
    mov x9, #0
    ldr x10, [sp, #48]
    strb w9, [x10]
    ldr x10, [sp, #56]
    sub x11, x29, #472
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
.L5_137:
    ldr x9, [sp, #272]
    ldrb w14, [x9]
    cbnz w14, .L5_68
    b .L5_67
.L5_68:
    ldr x9, [sp, #0]
    add x14, x9, #8
    sub x19, x29, #208
    add x15, x19, #72
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_67:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x10, [sp, #24]
    str x14, [x10]
    ldr x9, [sp, #264]
    ldr x15, [x9]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x15, x9
    ldr x10, [sp, #264]
    str x15, [x10]
    movz x10, #16960
    movk x10, #15, lsl #16
    cmp x15, x10
    cset w15, hi
    cbnz w15, .L5_152
    b .L5_73
.L5_152:
    mov w12, w15
    b .L5_74
.L5_73:
    ldr x9, [sp, #256]
    ldr x15, [x9]
    ldr x9, [sp, #248]
    ldr x12, [x9]
    mov x9, x15
    mov x10, x12
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x15, x9
    cmp x14, x15
    cset w12, hi
.L5_74:
    and w15, w12, #255
    cbnz w15, .L5_70
    b .L5_71
.L5_70:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_10http_limit
    add x15, x15, :lo12:lb_net_10http_limit
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_23
    add x15, x15, :lo12:.Ltext_23
    sub x12, x29, #488
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_71:
.L5_72:
    mov x10, #0
    cmp x14, x10
    b.ne .L5_77
.L5_76:
    movz x9, #5
    mov w14, w9
    b .L5_78
.L5_77:
    movz x9, #2
    mov w14, w9
.L5_78:
    and w15, w14, #255
    strb w15, [x22]
    b .L5_66
.L5_65:
    ldr x9, [sp, #240]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne .L5_80
.L5_79:
    movz x9, #6
    strb w9, [x22]
    b .L5_81
.L5_80:
    movz x10, #8264
    add x14, x23, x10
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    movz x10, #100
    cmp x15, x10
    b.ls .L5_83
.L5_82:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_10http_limit
    add x15, x15, :lo12:lb_net_10http_limit
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_25
    add x15, x15, :lo12:.Ltext_25
    sub x12, x29, #504
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_83:
.L5_84:
    adrp x14, .Ltext_26
    add x14, x14, :lo12:.Ltext_26
    sub x15, x29, #520
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_strings_find
    sub x16, x29, #536
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #536
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L5_86
    b .L5_87
.L5_86:
    ldr x19, [x15]
    b .L5_88
.L5_87:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_27
    add x15, x15, :lo12:.Ltext_27
    sub x12, x29, #552
    str x15, [x12]
    add x15, x12, #8
    movz x9, #21
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_88:
    sub x23, x29, #584
    sub x24, x29, #616
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x9, [sp, #40]
    ldr x25, [x9]
    ldr x9, [sp, #240]
    ldr x21, [x9]
    add x22, x21, #1
    mov x9, #0
    cmp x9, x22
    b.lo 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x19, x22
    b.lo 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    b.ls .L5_90
.L5_91:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L5_90:
    sub x14, x29, #632
    str x25, [x14]
    add x14, x14, #8
    str x19, [x14]
    sub x14, x29, #648
    str x25, [x14]
    add x15, x14, #8
    str x19, [x15]
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #1
    cmp x15, x22
    b.lo 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x21, x22
    b.lo 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x15, x21
    b.ls .L5_92
.L5_93:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L5_92:
    add x14, x25, x15
    sub x12, x21, x15
    sub x13, x29, #664
    str x14, [x13]
    add x13, x13, #8
    str x12, [x13]
    sub x13, x29, #680
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    mov x9, x13
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_8http_ows
    sub x16, x29, #696
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #696
    add x12, x24, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x24
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, x23
    mov x0, x9
    bl lb_net_16http_field_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L5_153
    b .L5_97
.L5_153:
    mov w15, w14
    b .L5_98
.L5_97:
    mov x10, x23
    sub x11, x29, #1080
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #1256
    sub x21, x29, #1432
    adrp x14, .Ltext_73
    add x14, x14, :lo12:.Ltext_73
    sub x15, x29, #1448
    str x14, [x15]
    add x14, x15, #8
    movz x9, #14
    str x9, [x14]
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_74
    add x14, x14, :lo12:.Ltext_74
    sub x15, x29, #1464
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    add x14, x21, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_75
    add x14, x14, :lo12:.Ltext_75
    sub x15, x29, #1480
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    add x14, x21, #32
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_76
    add x14, x14, :lo12:.Ltext_76
    sub x15, x29, #1496
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    add x14, x21, #48
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_77
    add x14, x14, :lo12:.Ltext_77
    sub x15, x29, #1512
    str x14, [x15]
    add x14, x15, #8
    movz x9, #7
    str x9, [x14]
    add x14, x21, #64
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_78
    add x14, x14, :lo12:.Ltext_78
    sub x15, x29, #1528
    str x14, [x15]
    add x14, x15, #8
    movz x9, #7
    str x9, [x14]
    add x14, x21, #80
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_79
    add x14, x14, :lo12:.Ltext_79
    sub x15, x29, #1544
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    add x14, x21, #96
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_80
    add x14, x14, :lo12:.Ltext_80
    sub x15, x29, #1560
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    add x14, x21, #112
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_81
    add x14, x14, :lo12:.Ltext_81
    sub x15, x29, #1576
    str x14, [x15]
    add x14, x15, #8
    movz x9, #12
    str x9, [x14]
    add x14, x21, #128
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_82
    add x14, x14, :lo12:.Ltext_82
    sub x15, x29, #1592
    str x14, [x15]
    add x14, x15, #8
    movz x9, #16
    str x9, [x14]
    add x14, x21, #144
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_83
    add x14, x14, :lo12:.Ltext_83
    sub x15, x29, #1608
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    add x14, x21, #160
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x19
    mov x1, x21
    movz x2, #176
    bl memcpy
    sub x21, x29, #1624
    sub x22, x29, #1080
    mov x9, #0
    mov x24, x9
.L5_138:
    movz x10, #11
    cmp x24, x10
    b.hs .L5_141
.L5_139:
    lsl x14, x24, #4
    add x14, x19, x14
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_10http_equal
    mov w14, w0
    cbnz w14, .L5_142
    b .L5_143
.L5_142:
    movz x9, #1
    sub x10, x29, #1632
    str w9, [x10]
    movz x9, #1
    mov w15, w9
    b .L5_147
.L5_143:
.L5_144:
.L5_140:
    add x14, x24, #1
    mov x24, x14
    b .L5_138
.L5_141:
    mov x9, #0
    sub x10, x29, #1632
    str w9, [x10]
    mov x9, #0
    mov w15, w9
.L5_147:
.L5_98:
    and w14, w15, #255
    cbnz w14, .L5_94
    b .L5_95
.L5_94:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_29
    add x15, x15, :lo12:.Ltext_29
    sub x12, x29, #712
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_95:
.L5_96:
    sub x19, x29, #784
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str x20, [x19]
    sub x21, x29, #824
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #24
    mov x10, x21
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    sub x21, x29, #208
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    add x14, x21, #96
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_81:
.L5_66:
    b .L5_57
.L5_56:
    and w14, w15, #255
    movz x10, #13
    cmp w14, w10
    b.ne .L5_102
.L5_101:
    movz x9, #1
    ldr x10, [sp, #320]
    strb w9, [x10]
    b .L5_103
.L5_102:
    movz x10, #10
    cmp w14, w10
    b.ne .L5_105
.L5_104:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_12http_invalid
    add x15, x15, :lo12:lb_net_12http_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_19
    add x15, x15, :lo12:.Ltext_19
    sub x12, x29, #840
    str x15, [x12]
    add x15, x12, #8
    movz x9, #24
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_105:
.L5_106:
    ldr x9, [sp, #232]
    ldr x15, [x9]
    movz x10, #8192
    cmp x15, x10
    b.ne .L5_109
.L5_108:
    sub x19, x29, #208
    add x14, x19, #72
    adrp x15, lb_net_10http_limit
    add x15, x15, :lo12:lb_net_10http_limit
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_30
    add x15, x15, :lo12:.Ltext_30
    sub x12, x29, #856
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #96
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_109:
.L5_110:
    movz x10, #8192
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    ldr x10, [sp, #224]
    add x12, x15, x10
    strb w14, [x12]
    ldr x9, [sp, #232]
    ldr x12, [x9]
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x12, x9
    ldr x10, [sp, #232]
    str x12, [x10]
.L5_103:
.L5_57:
    mov x28, x20
    b .L5_1
.L5_3:
    sub x19, x29, #928
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str x28, [x19]
    add x14, x23, #32
    ldrb w14, [x14]
    movz x10, #6
    cmp w14, w10
    cset w14, eq
    add x15, x19, #64
    strb w14, [x15]
    sub x20, x29, #208
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    add x14, x20, #96
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #104
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1952]
    ldr x20, [sp, #1944]
    ldr x21, [sp, #1936]
    ldr x22, [sp, #1928]
    ldr x23, [sp, #1920]
    ldr x24, [sp, #1912]
    ldr x25, [sp, #1904]
    ldr x26, [sp, #1896]
    ldr x27, [sp, #1888]
    ldr x28, [sp, #1880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_HttpBodyDecoder_advance, .-lb_net_HttpBodyDecoder_advance

    .p2align 2
    .globl lb_net_8http_hex
    .type lb_net_8http_hex, %function
lb_net_8http_hex:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str w0, [x16]
    sub x14, x29, #56
    ldrb w14, [x14]
    movz x10, #48
    cmp w14, w10
    cset w15, hs
    cbnz w15, .L6_4
    b .L6_30
.L6_30:
    mov w12, w15
    b .L6_5
.L6_4:
    movz x10, #57
    cmp w14, w10
    cset w12, ls
.L6_5:
    and w15, w12, #255
    cbnz w15, .L6_1
    b .L6_2
.L6_1:
    sub w12, w14, #48
    and w15, w12, #255
    cmp w15, w12
    b.eq .L6_6
.L6_7:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L6_6:
    sub x14, x29, #58
    strb w12, [x14]
    add x15, x14, #1
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #34
    mov x10, x14
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_8:
    b .L6_3
.L6_2:
.L6_3:
    movz x10, #97
    cmp w14, w10
    cset w15, hs
    cbnz w15, .L6_12
    b .L6_31
.L6_31:
    mov w12, w15
    b .L6_13
.L6_12:
    movz x10, #102
    cmp w14, w10
    cset w12, ls
.L6_13:
    and w15, w12, #255
    cbnz w15, .L6_9
    b .L6_10
.L6_9:
    sub w12, w14, #97
    and w15, w12, #255
    cmp w15, w12
    b.eq .L6_14
.L6_15:
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L6_14:
    add w15, w12, #10
    and w14, w15, #255
    cmp w14, w15
    b.eq .L6_16
.L6_17:
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L6_16:
    sub x14, x29, #60
    strb w15, [x14]
    add x12, x14, #1
    movz x9, #1
    strb w9, [x12]
    sub x19, x29, #34
    mov x10, x14
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_18:
    b .L6_11
.L6_10:
.L6_11:
    movz x10, #65
    cmp w14, w10
    cset w15, hs
    cbnz w15, .L6_22
    b .L6_32
.L6_32:
    mov w12, w15
    b .L6_23
.L6_22:
    movz x10, #70
    cmp w14, w10
    cset w12, ls
.L6_23:
    and w15, w12, #255
    cbnz w15, .L6_19
    b .L6_20
.L6_19:
    sub w12, w14, #65
    and w15, w12, #255
    cmp w15, w12
    b.eq .L6_24
.L6_25:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L6_24:
    add w15, w12, #10
    and w14, w15, #255
    cmp w14, w15
    b.eq .L6_26
.L6_27:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L6_26:
    sub x14, x29, #62
    strb w15, [x14]
    add x12, x14, #1
    movz x9, #1
    strb w9, [x12]
    sub x19, x29, #34
    mov x10, x14
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_28:
    b .L6_21
.L6_20:
.L6_21:
    sub x19, x29, #64
    mov x11, x19
    strh wzr, [x11, #0]
    sub x20, x29, #34
    mov x10, x19
    mov x11, x20
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x20
    ldrh w0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_29:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_8http_hex, .-lb_net_8http_hex

    .p2align 2
    .globl lb_net_13http_skip_ows
    .type lb_net_13http_skip_ows, %function
lb_net_13http_skip_ows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #56
    str x2, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #40
    add x12, x15, #8
    ldr x12, [x12]
    ldr x15, [x15]
.L7_1:
    ldr x13, [x14]
    cmp x13, x12
    cset w13, lo
    cbnz w13, .L7_4
    b .L7_8
.L7_8:
    mov w19, w13
    b .L7_5
.L7_4:
    ldr x13, [x14]
    cmp x13, x12
    b.lo 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x13, x13, x15
    ldrb w13, [x13]
    movz x10, #32
    cmp w13, w10
    cset w13, eq
    cbnz w13, .L7_9
    b .L7_6
.L7_9:
    mov w19, w13
    b .L7_7
.L7_6:
    ldr x13, [x14]
    cmp x13, x12
    b.lo 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x13, x15, x13
    ldrb w13, [x13]
    movz x10, #9
    cmp w13, w10
    cset w19, eq
.L7_7:
    and w13, w19, #255
    mov w19, w13
.L7_5:
    and w13, w19, #255
    cbnz w13, .L7_2
    b .L7_3
.L7_2:
    ldr x13, [x14]
    mov x9, x13
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x13, x9
    str x13, [x14]
    b .L7_1
.L7_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_13http_skip_ows, .-lb_net_13http_skip_ows

    .p2align 2
    .globl lb_net_20http_chunk_extension
    .type lb_net_20http_chunk_extension, %function
lb_net_20http_chunk_extension:
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
    str x26, [sp, #280]
    str x27, [sp, #272]
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #160
    str x2, [x16]
    sub x19, x29, #144
    sub x14, x29, #160
    ldr x20, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    bl lb_net_13http_skip_ows
    ldr x14, [x20]
    add x21, x19, #8
    ldr x15, [x21]
    cmp x14, x15
    cset w14, eq
    cbnz w14, .L8_76
    b .L8_4
.L8_76:
    mov w15, w14
    b .L8_5
.L8_4:
    ldr x14, [x20]
    ldr x12, [x19]
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x14, x14, x12
    ldrb w14, [x14]
    movz x10, #59
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L8_5:
    and w14, w15, #255
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_50
    add x14, x14, :lo12:.Ltext_50
    sub x15, x29, #176
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_6:
    b .L8_3
.L8_2:
.L8_3:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    bl lb_net_13http_skip_ows
    ldr x22, [x20]
    sub x23, x29, #192
    add x24, x23, #8
    sub x25, x29, #208
    add x26, x25, #8
.L8_7:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x14, x15
    cset w14, lo
    cbnz w14, .L8_10
    b .L8_77
.L8_77:
    mov w15, w14
    b .L8_11
.L8_10:
    ldr x12, [x19]
    ldr x13, [x20]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x27, x9
    add x14, x15, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x27, x14
    b.lo 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x13, x27
    b.ls .L8_12
.L8_13:
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L8_12:
    add x14, x12, x13
    sub x15, x27, x13
    str x14, [x23]
    str x15, [x24]
    str x14, [x25]
    str x15, [x26]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w15, w0
.L8_11:
    and w14, w15, #255
    cbnz w14, .L8_8
    b .L8_9
.L8_8:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    b .L8_7
.L8_9:
    ldr x14, [x20]
    cmp x22, x14
    b.ne .L8_15
.L8_14:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_54
    add x14, x14, :lo12:.Ltext_54
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_17:
    b .L8_16
.L8_15:
.L8_16:
    ldr x22, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    bl lb_net_13http_skip_ows
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x14, x15
    b.ne .L8_19
.L8_18:
    ldr x14, [x20]
    cmp x22, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L8_22
.L8_21:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_55
    add x14, x14, :lo12:.Ltext_55
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_24:
    b .L8_23
.L8_22:
.L8_23:
    sub x14, x29, #128
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_25:
    b .L8_20
.L8_19:
.L8_20:
    ldr x14, [x20]
    ldr x12, [x19]
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_56
    add x0, x0, :lo12:.Ltext_56
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x14, x14, x12
    ldrb w14, [x14]
    movz x10, #59
    cmp w14, w10
    b.ne .L8_27
.L8_26:
    sub x14, x29, #128
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_29:
    b .L8_28
.L8_27:
.L8_28:
    ldr x14, [x20]
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x14, x12, x14
    ldrb w14, [x14]
    movz x10, #61
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L8_31
.L8_30:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_58
    add x14, x14, :lo12:.Ltext_58
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_33:
    b .L8_32
.L8_31:
.L8_32:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_59
    add x0, x0, :lo12:.Ltext_59
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    bl lb_net_13http_skip_ows
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x14, x15
    b.ne .L8_35
.L8_34:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_60
    add x14, x14, :lo12:.Ltext_60
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_37:
    b .L8_36
.L8_35:
.L8_36:
    ldr x14, [x20]
    ldr x12, [x19]
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x14, x14, x12
    ldrb w14, [x14]
    movz x10, #34
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L8_39
.L8_38:
    ldr x22, [x20]
    sub x23, x29, #288
    add x24, x23, #8
    sub x25, x29, #304
    add x26, x25, #8
.L8_41:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x14, x15
    cset w14, lo
    cbnz w14, .L8_44
    b .L8_78
.L8_78:
    mov w15, w14
    b .L8_45
.L8_44:
    ldr x12, [x19]
    ldr x13, [x20]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x27, x9
    add x14, x15, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x27, x14
    b.lo 1f
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    cmp x13, x27
    b.ls .L8_46
.L8_47:
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L8_46:
    add x14, x12, x13
    sub x15, x27, x13
    str x14, [x23]
    str x15, [x24]
    str x14, [x25]
    str x15, [x26]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w15, w0
.L8_45:
    and w14, w15, #255
    cbnz w14, .L8_42
    b .L8_43
.L8_42:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    b .L8_41
.L8_43:
    ldr x14, [x20]
    cmp x22, x14
    b.ne .L8_49
.L8_48:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_64
    add x14, x14, :lo12:.Ltext_64
    sub x15, x29, #320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_51:
    b .L8_50
.L8_49:
.L8_50:
    sub x14, x29, #128
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_52:
    b .L8_40
.L8_39:
.L8_40:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_65
    add x0, x0, :lo12:.Ltext_65
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
.L8_53:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x14, x15
    b.hs .L8_55
.L8_54:
    ldr x14, [x20]
    ldr x12, [x19]
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_66
    add x0, x0, :lo12:.Ltext_66
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x14, x14, x12
    ldrb w14, [x14]
    ldr x12, [x20]
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_67
    add x0, x0, :lo12:.Ltext_67
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x20]
    and w12, w14, #255
    movz x10, #34
    cmp w12, w10
    b.ne .L8_57
.L8_56:
    sub x14, x29, #128
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_59:
    b .L8_58
.L8_57:
.L8_58:
    movz x10, #92
    cmp w12, w10
    b.ne .L8_61
.L8_60:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x14, x15
    b.ne .L8_64
.L8_63:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_66:
    b .L8_65
.L8_64:
.L8_65:
    ldr x14, [x20]
    ldr x12, [x19]
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_69
    add x0, x0, :lo12:.Ltext_69
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
1:
    add x14, x14, x12
    ldrb w14, [x14]
    ldr x12, [x20]
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_70
    add x0, x0, :lo12:.Ltext_70
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x20]
    b .L8_62
.L8_61:
.L8_62:
    and w15, w14, #255
    movz x10, #32
    cmp w15, w10
    cset w12, lo
    cbnz w12, .L8_70
    b .L8_79
.L8_79:
    mov w14, w12
    b .L8_71
.L8_70:
    movz x10, #9
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L8_71:
    and w12, w14, #255
    cbnz w12, .L8_80
    b .L8_72
.L8_80:
    mov w14, w12
    b .L8_73
.L8_72:
    movz x10, #127
    cmp w15, w10
    cset w14, eq
.L8_73:
    and w15, w14, #255
    cbnz w15, .L8_67
    b .L8_68
.L8_67:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_71
    add x14, x14, :lo12:.Ltext_71
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_74:
    b .L8_69
.L8_68:
.L8_69:
    b .L8_53
.L8_55:
    sub x19, x29, #128
    adrp x14, lb_net_12http_invalid
    add x14, x14, :lo12:lb_net_12http_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_72
    add x14, x14, :lo12:.Ltext_72
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_75:
    sub x14, x29, #128
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_20http_chunk_extension, .-lb_net_20http_chunk_extension

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_9http_body_0init

    .section .rodata
.Ltext_0:
    .asciz "a tunnel has no HTTP body decoder"
.Ltext_1:
    .asciz "HTTP body exceeds its byte limit"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/net/http/body.lucb:38:9"
.Ltext_4:
    .asciz "src/std/net/http/body.lucb:41:9"
.Ltext_5:
    .asciz "HTTP body decoder has failed"
.Ltext_6:
    .asciz "src/std/net/http/body.lucb:49:13"
.Ltext_7:
    .asciz "HTTP body ended before its framing completed"
.Ltext_8:
    .asciz "src/std/net/http/body.lucb:65:17"
.Ltext_9:
    .asciz "src/std/net/http/body.lucb:68:17"
.Ltext_10:
    .asciz "src/std/net/http/body.lucb:70:17"
.Ltext_11:
    .asciz "src/std/net/http/body.lucb:72:21"
.Ltext_12:
    .asciz "src/std/net/http/body.lucb:75:17"
.Ltext_13:
    .asciz "index out of bounds"
.Ltext_14:
    .asciz "src/std/net/http/body.lucb:76:13"
.Ltext_15:
    .asciz "src/std/net/http/body.lucb:77:13"
.Ltext_16:
    .asciz "chunk data must end with CRLF"
.Ltext_17:
    .asciz "src/std/net/http/body.lucb:85:17"
.Ltext_18:
    .asciz "HTTP trailers exceed their byte limit"
.Ltext_19:
    .asciz "chunk lines require CRLF"
.Ltext_20:
    .asciz "src/std/net/http/body.lucb:92:17"
.Ltext_21:
    .asciz "src/std/net/http/body.lucb:96:21"
.Ltext_22:
    .asciz "src/std/net/http/body.lucb:97:21"
.Ltext_23:
    .asciz "HTTP chunks exceed their count or byte limit"
.Ltext_24:
    .asciz "src/std/net/http/body.lucb:103:21"
.Ltext_25:
    .asciz "too many HTTP trailer fields"
.Ltext_26:
    .asciz ":"
.Ltext_27:
    .asciz "trailer needs a colon"
.Ltext_28:
    .asciz "src/std/net/http/body.lucb:107:21"
.Ltext_29:
    .asciz "invalid or forbidden HTTP trailer"
.Ltext_30:
    .asciz "chunk line exceeds its byte limit"
.Ltext_31:
    .asciz "src/std/net/http/body.lucb:118:17"
.Ltext_32:
    .asciz "src/std/net/http/body.lucb:119:17"
.Ltext_33:
    .asciz "src/std/net/http/body.lucb:120:9"
.Ltext_34:
    .asciz "integer overflow"
.Ltext_35:
    .asciz "src/std/net/http/body.lucb:124:9"
.Ltext_36:
    .asciz "src/std/net/http/body.lucb:126:9"
.Ltext_37:
    .asciz "src/std/net/http/body.lucb:128:9"
.Ltext_38:
    .asciz "src/std/net/http/body.lucb:129:5"
.Ltext_39:
    .asciz "src/std/net/http/body.lucb:135:9"
.Ltext_40:
    .asciz "src/std/net/http/body.lucb:136:9"
.Ltext_41:
    .asciz "division by zero"
.Ltext_42:
    .asciz "HTTP chunk length overflows u64"
.Ltext_43:
    .asciz "src/std/net/http/body.lucb:138:9"
.Ltext_44:
    .asciz "src/std/net/http/body.lucb:139:9"
.Ltext_45:
    .asciz "chunk size needs hexadecimal digits"
.Ltext_46:
    .asciz "src/std/net/http/body.lucb:144:5"
.Ltext_47:
    .asciz "src/std/net/http/body.lucb:147:5"
.Ltext_48:
    .asciz "src/std/net/http/body.lucb:148:9"
.Ltext_49:
    .asciz "src/std/net/http/body.lucb:152:5"
.Ltext_50:
    .asciz "invalid chunk extension separator"
.Ltext_51:
    .asciz "src/std/net/http/body.lucb:154:5"
.Ltext_52:
    .asciz "src/std/net/http/body.lucb:157:5"
.Ltext_53:
    .asciz "src/std/net/http/body.lucb:158:9"
.Ltext_54:
    .asciz "chunk extension needs a name"
.Ltext_55:
    .asciz "trailing whitespace in chunk extension"
.Ltext_56:
    .asciz "src/std/net/http/body.lucb:167:5"
.Ltext_57:
    .asciz "src/std/net/http/body.lucb:169:5"
.Ltext_58:
    .asciz "invalid chunk extension"
.Ltext_59:
    .asciz "src/std/net/http/body.lucb:171:5"
.Ltext_60:
    .asciz "chunk extension needs a value"
.Ltext_61:
    .asciz "src/std/net/http/body.lucb:175:5"
.Ltext_62:
    .asciz "src/std/net/http/body.lucb:177:9"
.Ltext_63:
    .asciz "src/std/net/http/body.lucb:178:13"
.Ltext_64:
    .asciz "invalid chunk extension value"
.Ltext_65:
    .asciz "src/std/net/http/body.lucb:182:5"
.Ltext_66:
    .asciz "src/std/net/http/body.lucb:184:9"
.Ltext_67:
    .asciz "src/std/net/http/body.lucb:185:9"
.Ltext_68:
    .asciz "incomplete chunk quoted pair"
.Ltext_69:
    .asciz "src/std/net/http/body.lucb:191:13"
.Ltext_70:
    .asciz "src/std/net/http/body.lucb:192:13"
.Ltext_71:
    .asciz "invalid chunk quoted text"
.Ltext_72:
    .asciz "unclosed chunk extension value"
.Ltext_73:
    .asciz "content-length"
.Ltext_74:
    .asciz "transfer-encoding"
.Ltext_75:
    .asciz "host"
.Ltext_76:
    .asciz "connection"
.Ltext_77:
    .asciz "trailer"
.Ltext_78:
    .asciz "upgrade"
.Ltext_79:
    .asciz "expect"
.Ltext_80:
    .asciz "authorization"
.Ltext_81:
    .asciz "content-type"
.Ltext_82:
    .asciz "content-encoding"
.Ltext_83:
    .asciz "content-range"
.Ltext_84:
    .asciz "src/std/net/http/body.lucb:202:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
