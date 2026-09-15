    .text

    .p2align 2
    .globl lb_process_17environment_posix_0init
    .type lb_process_17environment_posix_0init, %function
lb_process_17environment_posix_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_17environment_posix_0init, .-lb_process_17environment_posix_0init

    .p2align 2
    .globl lb_process_19environment_address
    .type lb_process_19environment_address, %function
lb_process_19environment_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, :got:environ
    ldr x14, [x14, :got_lo12:environ]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_process_19environment_address, .-lb_process_19environment_address

    .p2align 2
    .globl lb_process_16environment_name
    .type lb_process_16environment_name, %function
lb_process_16environment_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #112
    str x0, [x16]
    sub x19, x29, #128
    sub x14, x29, #112
    ldr x20, [x14]
    mov x0, x20
    bl strlen
    mov x21, x0
    sub x14, x29, #144
    str x20, [x14]
    add x15, x14, #8
    str x21, [x15]
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x14, x9
.L2_1:
    cmp x14, x21
    b.hs .L2_4
.L2_2:
    add x15, x20, x14
    ldrb w15, [x15]
    movz x10, #61
    cmp w15, w10
    b.ne .L2_6
.L2_5:
    mov x10, #0
    cmp x14, x10
    b.ne .L2_9
.L2_8:
    b .L2_4
.L2_11:
    b .L2_10
.L2_9:
.L2_10:
    add x15, x21, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L2_12
.L2_13:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
.L2_12:
    sub x15, x29, #160
    str x20, [x15]
    add x15, x15, #8
    str x14, [x15]
    sub x15, x29, #176
    str x20, [x15]
    add x19, x15, #8
    str x14, [x19]
    sub x19, x29, #96
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_14:
    b .L2_7
.L2_6:
.L2_7:
.L2_3:
    add x15, x14, #1
    mov x14, x15
    b .L2_1
.L2_4:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, lb_process_failed
    add x15, x15, :lo12:lb_process_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #63
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_15:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_process_16environment_name, .-lb_process_16environment_name

    .p2align 2
    .globl lb_process_17environment_posix
    .type lb_process_17environment_posix, %function
lb_process_17environment_posix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #848
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #816]
    str x20, [sp, #808]
    str x21, [sp, #800]
    str x22, [sp, #792]
    str x23, [sp, #784]
    str x24, [sp, #776]
    str x25, [sp, #768]
    str x26, [sp, #760]
    str x27, [sp, #752]
    str x28, [sp, #744]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    sub x9, x29, #168
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x14, x9, #8
    ldr x9, [x14]
    str x9, [sp, #152]
    sub x26, x29, #200
    sub x27, x29, #248
    add x9, x27, #40
    str x9, [sp, #136]
    sub x28, x29, #296
    add x22, x28, #40
    add x23, x26, #8
    add x24, x28, #8
    mov x9, #0
    mov x25, x9
.L3_1:
    ldr x10, [sp, #152]
    cmp x25, x10
    b.hs .L3_4
.L3_2:
    ldr x9, [sp, #160]
    ldr x9, [x9]
    str x9, [sp, #144]
    lsl x14, x25, #3
    ldr x9, [sp, #144]
    add x14, x9, x14
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #248
    bl lb_process_16environment_name
    ldr x9, [sp, #136]
    ldrb w14, [x9]
    cbnz w14, .L3_6
    b .L3_5
.L3_6:
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_7:
.L3_5:
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x21, x9
.L3_8:
    cmp x21, x25
    b.hs .L3_11
.L3_9:
    lsl x14, x21, #3
    ldr x9, [sp, #144]
    add x14, x9, x14
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #296
    bl lb_process_16environment_name
    ldrb w14, [x22]
    cbnz w14, .L3_16
    b .L3_15
.L3_16:
    add x14, x28, #16
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_17:
.L3_15:
    ldr x14, [x23]
    ldr x15, [x24]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L3_18
    b .L3_77
.L3_77:
    mov w14, w15
    b .L3_19
.L3_18:
    ldr x15, [x26]
    ldr x20, [x28]
    mov x0, x15
    mov x1, x20
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L3_19:
    and w15, w14, #255
    cbnz w15, .L3_12
    b .L3_13
.L3_12:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_process_failed
    add x15, x15, :lo12:lb_process_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    sub x20, x29, #312
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_20:
    b .L3_14
.L3_13:
.L3_14:
.L3_10:
    add x14, x21, #1
    mov x21, x14
    b .L3_8
.L3_11:
.L3_3:
    add x14, x25, #1
    mov x25, x14
    b .L3_1
.L3_4:
    sub x14, x29, #184
    ldr x9, [x14]
    str x9, [sp, #128]
    mov x9, #0
    str x9, [sp, #32]
.L3_21:
    ldr x9, [sp, #32]
    lsl x14, x9, #3
    ldr x9, [sp, #128]
    add x14, x9, x14
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_23
.L3_22:
    ldr x9, [sp, #32]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_26
    add x1, x1, :lo12:.Ltext_26
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    str x9, [sp, #32]
    b .L3_21
.L3_23:
    sub x22, x29, #320
    ldr x0, [sp, #32]
    ldr x1, [sp, #152]
    movz x2, #64
    mov x3, x22
    bl lb_core_6qadd_u
    mov w14, w0
    sub x23, x29, #336
    ldr x15, [x22]
    str x15, [x23]
    add x22, x23, #8
    strb w14, [x22]
    ldrb w14, [x22]
    cbnz w14, .L3_24
    b .L3_25
.L3_24:
    b .L3_26
.L3_25:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_process_failed
    add x15, x15, :lo12:lb_process_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    sub x20, x29, #352
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_27:
.L3_26:
    sub x22, x29, #360
    mov x0, x15
    movz x1, #1
    movz x2, #64
    mov x3, x22
    bl lb_core_6qadd_u
    mov w14, w0
    sub x23, x29, #376
    ldr x22, [x22]
    str x22, [x23]
    add x23, x23, #8
    strb w14, [x23]
    ldrb w14, [x23]
    cbnz w14, .L3_28
    b .L3_29
.L3_28:
    b .L3_30
.L3_29:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_process_failed
    add x15, x15, :lo12:lb_process_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    sub x20, x29, #392
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_31:
.L3_30:
    sub x23, x29, #408
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    str x0, [sp, #24]
    sub x25, x29, #456
    movz x10, #2048, lsl #48
    cmp x22, x10
    b.ls .L3_33
.L3_32:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_12
    add x15, x15, :lo12:.Ltext_12
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_34
.L3_33:
    lsl x26, x22, #3
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, .L3_35
    b .L3_36
.L3_36:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L3_35:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x26
    movz x2, #8
    sub x8, x29, #480
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #480
    add x27, x24, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x26, x10
    cset w28, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w27, w28, w27
    cbnz w27, .L3_37
    b .L3_38
.L3_37:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_15
    add x15, x15, :lo12:.Ltext_15
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_34
.L3_38:
    ldr x14, [x24]
    str x14, [x25]
    add x14, x25, #8
    str x22, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
.L3_34:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, .L3_40
    b .L3_39
.L3_40:
    add x14, x25, #16
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_41:
.L3_39:
    mov x10, x25
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x28, x29, #512
    sub x9, x29, #600
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x22, x9, #40
    sub x9, x29, #528
    str x9, [sp, #120]
    ldr x9, [sp, #8]
    add x24, x9, #16
    sub x26, x29, #552
    adrp x9, .Ltext_18
    add x9, x9, :lo12:.Ltext_18
    str x9, [sp, #112]
    sub x9, x29, #616
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #96]
    sub x9, x29, #528
    str x9, [sp, #88]
    sub x9, x29, #528
    str x9, [sp, #80]
    sub x27, x29, #664
    add x9, x27, #40
    str x9, [sp, #64]
    add x9, x28, #8
    str x9, [sp, #56]
    add x9, x27, #8
    str x9, [sp, #48]
    add x9, x23, #8
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    mov x19, x9
.L3_42:
    ldr x10, [sp, #32]
    cmp x19, x10
    b.hs .L3_45
.L3_43:
    lsl x14, x19, #3
    ldr x9, [sp, #128]
    add x14, x9, x14
    ldr x25, [x14]
    cbnz x25, .L3_46
    b .L3_47
.L3_46:
    b .L3_48
.L3_47:
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    sub x15, x29, #496
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    adrp x14, .Ltext_17
    add x14, x14, :lo12:.Ltext_17
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L3_48:
    mov x0, x25
    sub x8, x29, #600
    bl lb_process_16environment_name
    ldrb w14, [x22]
    cbnz w14, .L3_52
    b .L3_51
.L3_52:
    mov x10, x24
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L3_49
.L3_51:
    ldr x10, [sp, #8]
    ldr x11, [sp, #120]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L3_50
.L3_49:
    ldr x9, [sp, #112]
    ldr x10, [sp, #104]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #96]
    str x9, [x10]
    ldr x10, [sp, #104]
    ldr x11, [sp, #88]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L3_50
.L3_53:
.L3_50:
    ldr x10, [sp, #80]
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #160]
    ldr x9, [x9]
    str x9, [sp, #72]
    mov x9, #0
    mov x21, x9
.L3_54:
    ldr x10, [sp, #152]
    cmp x21, x10
    b.lo .L3_55
.L3_78:
    mov x9, #0
    mov w14, w9
    b .L3_57
.L3_55:
    lsl x14, x21, #3
    ldr x9, [sp, #72]
    add x14, x9, x14
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #664
    bl lb_process_16environment_name
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, .L3_62
    b .L3_61
.L3_62:
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
    sub x14, x29, #680
    ldr x15, [x23]
    add x20, x23, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_26
    add x1, x1, :lo12:.Ltext_26
    bl lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, .L3_64
    b .L3_63
.L3_64:
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
.L3_63:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_65:
.L3_61:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L3_66
    b .L3_79
.L3_79:
    mov w14, w15
    b .L3_67
.L3_66:
    ldr x15, [x28]
    ldr x20, [x27]
    mov x0, x15
    mov x1, x20
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L3_67:
    and w15, w14, #255
    cbnz w15, .L3_58
    b .L3_59
.L3_58:
    movz x9, #1
    mov w14, w9
    b .L3_57
.L3_68:
    b .L3_60
.L3_59:
.L3_60:
.L3_56:
    add x14, x21, #1
    mov x21, x14
    b .L3_54
.L3_57:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne .L3_70
.L3_69:
    ldr x14, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    lsl x15, x9, #3
    add x14, x14, x15
    str x25, [x14]
    ldr x9, [sp, #16]
    add x14, x9, #1
    b .L3_71
.L3_70:
    ldr x9, [sp, #16]
    mov x14, x9
.L3_71:
.L3_44:
    add x15, x19, #1
    mov x9, x14
    str x9, [sp, #16]
    mov x19, x15
    b .L3_42
.L3_45:
    ldr x9, [sp, #160]
    ldr x14, [x9]
    ldr x15, [x23]
    add x19, x23, #8
    ldr x19, [x19]
    ldr x9, [sp, #16]
    mov x20, x9
    mov x9, #0
    mov x21, x9
.L3_72:
    ldr x10, [sp, #152]
    cmp x21, x10
    b.hs .L3_75
.L3_73:
    lsl x22, x21, #3
    add x22, x14, x22
    ldr x22, [x22]
    cmp x20, x19
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    lsl x24, x20, #3
    add x24, x15, x24
    str x22, [x24]
    add x22, x20, #1
.L3_74:
    add x24, x21, #1
    mov x20, x22
    mov x21, x24
    b .L3_72
.L3_75:
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cmp x20, x15
    b.lo 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x14, x14, x15
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #152
    mov x10, x23
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_76:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_process_17environment_posix, .-lb_process_17environment_posix

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_17environment_posix_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/process/environment/posix.lucb:10:5"
.Ltext_2:
    .asciz "src/std/process/environment/posix.lucb:15:9"
.Ltext_3:
    .asciz "src/std/process/environment/posix.lucb:18:13"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "an environment override must be NAME=value with a nonempty name"
.Ltext_6:
    .asciz "src/std/process/environment/posix.lucb:19:5"
.Ltext_7:
    .asciz "src/std/process/environment/posix.lucb:23:9"
.Ltext_8:
    .asciz "src/std/process/environment/posix.lucb:25:13"
.Ltext_9:
    .asciz "an environment override repeats a name"
.Ltext_10:
    .asciz "src/std/process/environment/posix.lucb:29:9"
.Ltext_11:
    .asciz "the environment is too large"
.Ltext_12:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_13:
    .asciz "memory.unset"
.Ltext_14:
    .asciz "src/std/process/environment/posix.lucb:32:5"
.Ltext_15:
    .asciz "memory.exhausted"
.Ltext_16:
    .asciz "the environment changed during process creation"
.Ltext_17:
    .asciz "src/std/process/environment/posix.lucb:36:9"
.Ltext_18:
    .asciz ""
.Ltext_19:
    .asciz "src/std/process/environment/posix.lucb:41:13"
.Ltext_20:
    .asciz "src/std/process/environment/posix.lucb:45:13"
.Ltext_21:
    .asciz "src/std/process/environment/posix.lucb:46:13"
.Ltext_22:
    .asciz "src/std/process/environment/posix.lucb:48:9"
.Ltext_23:
    .asciz "src/std/process/environment/posix.lucb:49:9"
.Ltext_24:
    .asciz "src/std/process/environment/posix.lucb:50:5"
.Ltext_25:
    .asciz "src/std/process/environment/posix.lucb:51:5"
.Ltext_26:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
