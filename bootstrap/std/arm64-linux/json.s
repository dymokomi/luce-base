    .text

    .p2align 2
    .globl lb_json_0init
    .type lb_json_0init, %function
lb_json_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    adrp x14, lb_json_invalid
    add x14, x14, :lo12:lb_json_invalid
    movz x9, #110
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_json_14limit_exceeded
    add x14, x14, :lo12:lb_json_14limit_exceeded
    movz x9, #111
    movk x9, #3178, lsl #16
    str w9, [x14]
    sub x19, x29, #64
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, :got:lb_json_Value_close
    ldr x14, [x14, :got_lo12:lb_json_Value_close]
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
    adrp x14, lb_json_10value_type
    add x14, x14, :lo12:lb_json_10value_type
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_0init, .-lb_json_0init

    .p2align 2
    .globl lb_json_Bytes_reserve
    .type lb_json_Bytes_reserve, %function
lb_json_Bytes_reserve:
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
    str x24, [sp, #200]
    str x25, [sp, #192]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str x2, [x16]
    sub x9, x29, #120
    ldr x19, [x9]
    sub x14, x29, #136
    ldr x14, [x14]
    sub x15, x29, #152
    ldr x15, [x15]
    cmp x14, x15
    b.ls .L1_2
.L1_1:
    sub x19, x29, #112
    adrp x14, lb_json_14limit_exceeded
    add x14, x14, :lo12:lb_json_14limit_exceeded
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_1
    add x14, x14, :lo12:.Ltext_1
    sub x15, x29, #168
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_2:
.L1_3:
    add x20, x19, #8
    ldr x12, [x20]
    cmp x14, x12
    b.hi .L1_6
.L1_5:
    sub x14, x29, #112
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_6:
.L1_7:
    mov x10, #0
    cmp x12, x10
    b.ne .L1_10
.L1_9:
    movz x9, #64
    mov x12, x9
    b .L1_11
.L1_10:
.L1_11:
    mov x13, x12
.L1_12:
    cmp x13, x14
    b.hs .L1_14
.L1_13:
.L1_19:
    movz x10, #2
    udiv x12, x15, x10
    cmp x13, x12
    b.ls .L1_16
.L1_15:
    mov x12, x15
    b .L1_17
.L1_16:
    mov x9, x13
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_68
    add x1, x1, :lo12:.Ltext_68
    bl lb_core_7trap_at
1:
    mov x12, x9
.L1_17:
    mov x13, x12
    b .L1_12
.L1_14:
    cmp x13, x15
    b.ls .L1_21
.L1_20:
    mov x21, x15
    b .L1_22
.L1_21:
    mov x21, x13
.L1_22:
    sub x22, x29, #184
    adrp x23, lb_memory_heap
    add x23, x23, :lo12:lb_memory_heap
    sub x24, x29, #232
    movz x10, #16384, lsl #48
    cmp x21, x10
    b.ls .L1_24
.L1_23:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_25
.L1_24:
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cbnz x15, .L1_26
    b .L1_27
.L1_27:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
.L1_26:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #1
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #256
    add x12, x25, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x21, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L1_28
    b .L1_29
.L1_28:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_25
.L1_29:
    ldr x14, [x25]
    str x14, [x24]
    add x14, x24, #8
    str x21, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
.L1_25:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, .L1_31
    b .L1_30
.L1_31:
    add x14, x24, #16
    sub x19, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_30:
    mov x10, x24
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    ldr x14, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_u8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ls .L1_34
.L1_33:
    sub x15, x29, #272
    ldr x12, [x19]
    str x12, [x15]
    add x12, x15, #8
    str x14, [x12]
    ldr x12, [x23]
    add x13, x23, #8
    ldr x13, [x13]
    cbnz x13, .L1_37
    b .L1_36
.L1_37:
    add x14, x13, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_36:
    b .L1_35
.L1_34:
.L1_35:
    mov x10, x22
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #112
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Bytes_reserve, .-lb_json_Bytes_reserve

    .p2align 2
    .globl lb_json_Bytes_append
    .type lb_json_Bytes_append, %function
lb_json_Bytes_append:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #144
    str x3, [x16]
    sub x9, x29, #112
    ldr x23, [x9]
    add x19, x23, #16
    ldr x14, [x19]
    sub x20, x29, #128
    add x21, x20, #8
    ldr x15, [x21]
    sub x22, x29, #152
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x22
    bl lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #168
    ldr x22, [x22]
    str x22, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    b .L2_3
.L2_2:
    sub x19, x29, #104
    adrp x14, lb_json_14limit_exceeded
    add x14, x14, :lo12:lb_json_14limit_exceeded
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_9
    add x14, x14, :lo12:.Ltext_9
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
.L2_3:
    sub x14, x29, #144
    ldr x14, [x14]
    mov x0, x23
    mov x1, x22
    mov x2, x14
    sub x8, x29, #216
    bl lb_json_Bytes_reserve
    sub x15, x29, #216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_6
    b .L2_5
.L2_6:
    sub x19, x29, #104
    mov x10, x15
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_7:
.L2_5:
    ldr x15, [x23]
    add x14, x23, #8
    ldr x12, [x14]
    ldr x13, [x19]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x13, x12
    b.ls .L2_8
.L2_9:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L2_8:
    add x14, x15, x13
    sub x23, x12, x13
    sub x24, x29, #232
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    ldr x14, [x21]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_u8
    str x22, [x19]
    sub x14, x29, #104
    add x23, x14, #24
    mov x9, #0
    strb w9, [x23]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Bytes_append, .-lb_json_Bytes_append

    .p2align 2
    .globl lb_json_Bytes_view
    .type lb_json_Bytes_view, %function
lb_json_Bytes_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x15, [x9]
    ldr x12, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x15, x14
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls .L3_1
.L3_2:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L3_1:
    sub x14, x29, #64
    str x12, [x14]
    add x13, x14, #8
    str x15, [x13]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Bytes_view, .-lb_json_Bytes_view

    .p2align 2
    .globl lb_json_Bytes_close
    .type lb_json_Bytes_close, %function
lb_json_Bytes_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L4_2
.L4_1:
    adrp x15, lb_memory_heap
    add x15, x15, :lo12:lb_memory_heap
    sub x12, x29, #56
    ldr x13, [x19]
    str x13, [x12]
    add x13, x12, #8
    str x14, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, .L4_5
    b .L4_4
.L4_5:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    sub x20, x29, #72
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Bytes_close, .-lb_json_Bytes_close

    .p2align 2
    .globl lb_json_quoted
    .type lb_json_quoted, %function
lb_json_quoted:
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
.L5_1:
    ldr x10, [sp, #192]
    cmp x23, x10
    b.hs .L5_4
.L5_2:
    add x14, x20, x23
    ldrb w14, [x14]
    and w14, w14, #255
    mov x0, x19
    mov x1, x14
    sub x8, x29, #232
    bl lb_utf8_Decoder_push
    ldrb w14, [x22]
    cbnz w14, .L5_6
    b .L5_5
.L5_6:
    add x14, x24, #8
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
    bl memcpy
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
.L5_5:
.L5_3:
    add x14, x23, #1
    mov x23, x14
    b .L5_1
.L5_4:
    mov x0, x19
    sub x8, x29, #264
    bl lb_utf8_Decoder_finish
    sub x15, x29, #264
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_9
    b .L5_8
.L5_9:
    sub x19, x29, #136
    mov x10, x15
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
    bl memcpy
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
.L5_8:
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #184]
    adrp x9, .Ltext_15
    add x9, x9, :lo12:.Ltext_15
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
    bl lb_json_Bytes_append
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_12
    b .L5_11
.L5_12:
    sub x19, x29, #136
    mov x10, x15
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
    bl memcpy
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
.L5_11:
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
    adrp x9, .Ltext_16
    add x9, x9, :lo12:.Ltext_16
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
.L5_14:
    ldr x10, [sp, #192]
    cmp x19, x10
    b.hs .L5_17
.L5_15:
    add x14, x20, x19
    ldrb w14, [x14]
    and w21, w14, #255
    movz x10, #34
    cmp w21, w10
    cset w14, eq
    cbnz w14, .L5_40
    b .L5_21
.L5_40:
    mov w15, w14
    b .L5_22
.L5_21:
    movz x10, #92
    cmp w21, w10
    cset w15, eq
.L5_22:
    and w14, w15, #255
    cbnz w14, .L5_18
    b .L5_19
.L5_18:
    movz x9, #92
    strb w9, [x25]
    strb w21, [x26]
    mov x10, x25
    mov x11, x24
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    str x24, [x27]
    movz x9, #2
    str x9, [x28]
    ldr x0, [sp, #184]
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x3, [sp, #168]
    sub x8, x29, #368
    bl lb_json_Bytes_append
    ldr x9, [sp, #160]
    ldrb w14, [x9]
    cbnz w14, .L5_24
    b .L5_23
.L5_24:
    sub x19, x29, #136
    mov x10, x22
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
    bl memcpy
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
.L5_23:
    b .L5_20
.L5_19:
    movz x10, #32
    cmp w21, w10
    b.hs .L5_27
.L5_26:
    ldr x9, [sp, #144]
    ldr x10, [sp, #136]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #128]
    str x9, [x10]
    ldr x10, [sp, #136]
    ldr x11, [sp, #152]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L5_30:
    lsr w14, w21, #4
    and w14, w14, #255
    mov w14, w14
    movz x10, #16
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
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
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    ldrh w16, [x10, #4]
    strh w16, [x11, #4]
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
    bl lb_json_Bytes_append
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, .L5_32
    b .L5_31
.L5_32:
    sub x19, x29, #136
    ldr x10, [sp, #0]
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
    bl memcpy
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
.L5_31:
    b .L5_28
.L5_27:
    ldr x10, [sp, #48]
    strb w21, [x10]
    ldr x10, [sp, #48]
    ldr x11, [sp, #56]
    ldrb w16, [x10, #0]
    strb w16, [x11, #0]
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
    bl lb_json_Bytes_append
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, .L5_35
    b .L5_34
.L5_35:
    sub x19, x29, #136
    ldr x10, [sp, #16]
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
    bl memcpy
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
.L5_34:
.L5_28:
.L5_20:
.L5_16:
    add x14, x19, #1
    mov x19, x14
    b .L5_14
.L5_17:
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
    bl lb_json_Bytes_append
    sub x15, x29, #568
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_38
    b .L5_37
.L5_38:
    sub x19, x29, #136
    mov x10, x15
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
    bl memcpy
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
.L5_37:
    sub x14, x29, #136
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

    .size lb_json_quoted, .-lb_json_quoted

    .p2align 2
    .globl lb_json_Value_init
    .type lb_json_Value_init, %function
lb_json_Value_init:
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
    cbnz w14, .L6_10
    b .L6_4
.L6_10:
    mov w15, w14
    b .L6_5
.L6_4:
    movz x10, #1024, lsl #16
    cmp x19, x10
    cset w15, hi
.L6_5:
    and w14, w15, #255
    cbnz w14, .L6_1
    b .L6_2
.L6_1:
    sub x19, x29, #88
    adrp x14, lb_json_invalid
    add x14, x14, :lo12:lb_json_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_19
    add x14, x14, :lo12:.Ltext_19
    sub x15, x29, #128
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_6:
    b .L6_3
.L6_2:
.L6_3:
    sub x21, x29, #152
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x21, x20, #24
    sub x22, x29, #176
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    movz x9, #123
    strb w9, [x14]
    add x14, x20, #56
    mov x9, #0
    str x9, [x14]
    add x14, x20, #64
    str x19, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    sub x12, x29, #192
    str x15, [x12]
    add x15, x12, #8
    movz x9, #2
    str x9, [x15]
    ldr x14, [x14]
    mov x0, x20
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x14
    sub x8, x29, #224
    bl lb_json_Bytes_append
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L6_8
    b .L6_7
.L6_8:
    sub x19, x29, #88
    mov x10, x15
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_9:
.L6_7:
    sub x14, x29, #88
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_init, .-lb_json_Value_init

    .p2align 2
    .globl lb_json_Value_own
    .type lb_json_Value_own, %function
lb_json_Value_own:
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
    adrp x20, lb_json_10value_type
    add x20, x20, :lo12:lb_json_10value_type
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
    bl lb_interop_Reference_0g1_json_Value_adopt
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L7_2
    b .L7_1
.L7_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_3:
.L7_1:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_own, .-lb_json_Value_own

    .p2align 2
    .globl lb_json_Value_array
    .type lb_json_Value_array, %function
lb_json_Value_array:
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
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #176
    ldr x19, [x20]
    add x14, x20, #8
    ldr x20, [x14]
    cbnz x20, .L8_1
    b .L8_2
.L8_2:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
.L8_1:
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
    cbnz w14, .L8_3
    b .L8_4
.L8_4:
    add x14, x21, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b .L8_5
.L8_3:
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
    bl lb_json_Value_init
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L8_7
    b .L8_6
.L8_7:
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    cbnz x20, .L8_9
    b .L8_8
.L8_9:
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
.L8_8:
    b .L8_5
.L8_6:
    str x23, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
.L8_5:
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, .L8_11
    b .L8_10
.L8_11:
    add x14, x21, #8
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
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
.L8_12:
.L8_10:
    ldr x14, [x21]
    add x15, x14, #48
    movz x9, #91
    strb w9, [x15]
    ldr x15, [x14]
    add x12, x14, #8
    ldr x13, [x12]
    mov x9, #0
    cmp x9, x13
    b.lo 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    movz x9, #91
    strb w9, [x15]
    ldr x15, [x14]
    ldr x12, [x12]
    movz x9, #1
    cmp x9, x12
    b.lo 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    add x15, x15, #1
    movz x9, #93
    strb w9, [x15]
    mov x0, x14
    sub x8, x29, #272
    bl lb_json_Value_own
    sub x15, x29, #272
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L8_14
    b .L8_13
.L8_14:
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_15:
.L8_13:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
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
.L8_16:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_array, .-lb_json_Value_array

    .p2align 2
    .globl lb_json_Value_scalar
    .type lb_json_Value_scalar, %function
lb_json_Value_scalar:
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
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x19, x0
    sub x21, x29, #144
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #184
    ldr x20, [x21]
    add x14, x21, #8
    ldr x21, [x14]
    cbnz x21, .L9_1
    b .L9_2
.L9_2:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
.L9_1:
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
    cbnz w14, .L9_3
    b .L9_4
.L9_4:
    add x14, x22, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    b .L9_5
.L9_3:
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
    bl lb_json_Value_init
    sub x15, x29, #240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L9_7
    b .L9_6
.L9_7:
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    cbnz x21, .L9_9
    b .L9_8
.L9_9:
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
.L9_8:
    b .L9_5
.L9_6:
    str x24, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
.L9_5:
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, .L9_11
    b .L9_10
.L9_11:
    add x14, x22, #8
    sub x19, x29, #112
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
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
.L9_12:
.L9_10:
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
    bl lb_json_Bytes_append
    sub x15, x29, #296
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L9_16
    b .L9_15
.L9_16:
    sub x21, x29, #264
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L9_13
.L9_15:
    b .L9_14
.L9_13:
    mov x0, x20
    bl lb_json_Bytes_close
    add x14, x20, #24
    mov x0, x14
    bl lb_json_Bytes_close
.L9_24:
    sub x14, x29, #312
    str x20, [x14]
    add x15, x14, #8
    movz x9, #72
    str x9, [x15]
    ldr x15, [x19]
    add x12, x19, #8
    ldr x12, [x12]
    cbnz x12, .L9_18
    b .L9_17
.L9_18:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L9_17:
    sub x19, x29, #112
    add x14, x19, #8
    ldr w15, [x21]
    str w15, [x14]
    add x15, x21, #8
    add x14, x14, #8
    mov x10, x15
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_19:
.L9_14:
    mov x0, x20
    sub x8, x29, #352
    bl lb_json_Value_own
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L9_21
    b .L9_20
.L9_21:
    add x14, x15, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_22:
.L9_20:
    sub x19, x29, #112
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
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
.L9_23:
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_scalar, .-lb_json_Value_scalar

    .p2align 2
    .globl lb_json_Value_text
    .type lb_json_Value_text, %function
lb_json_Value_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    movz x3, #16, lsl #16
    sub x8, x29, #152
    bl lb_json_quoted
    sub x15, x29, #152
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L10_2
    b .L10_1
.L10_2:
    sub x20, x29, #80
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_3:
.L10_1:
    mov x0, x19
    bl lb_json_Bytes_view
    sub x16, x29, #168
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #168
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    str x14, [x15]
    mov x9, x12
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #224
    bl lb_json_Value_scalar
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L10_5
    b .L10_4
.L10_5:
    add x14, x15, #8
    sub x20, x29, #80
    add x12, x20, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_6:
.L10_4:
    sub x20, x29, #80
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_7:
    sub x14, x29, #120
    mov x0, x14
    bl lb_json_Bytes_close
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_text, .-lb_json_Value_text

    .p2align 2
    .globl lb_json_Value_integer
    .type lb_json_Value_integer, %function
lb_json_Value_integer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    sub x16, x29, #112
    str x0, [x16]
    sub x19, x29, #144
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #160
    str x19, [x14]
    add x14, x14, #8
    movz x9, #32
    str x9, [x14]
    sub x20, x29, #184
    str x19, [x20]
    add x19, x20, #8
    movz x9, #32
    str x9, [x19]
    add x21, x20, #16
    mov x9, #0
    str x9, [x21]
    sub x14, x29, #112
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl lb_core_10format_i64
    mov w14, w0
    sub x22, x29, #232
    ldr x14, [x21]
    ldr x15, [x19]
    cmp x14, x15
    b.ls .L11_2
.L11_1:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_29
    add x15, x15, :lo12:.Ltext_29
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_3
.L11_2:
    mov x0, x20
    bl lb_core_13format_finish
    sub x16, x29, #248
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #248
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
.L11_3:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, .L11_5
    b .L11_4
.L11_5:
    add x14, x22, #16
    sub x19, x29, #96
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_6:
.L11_4:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #288
    bl lb_json_Value_scalar
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L11_8
    b .L11_7
.L11_8:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_9:
.L11_7:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_10:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_integer, .-lb_json_Value_integer

    .p2align 2
    .globl lb_json_Value_number
    .type lb_json_Value_number, %function
lb_json_Value_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str d8, [sp, #248]
    sub x16, x29, #96
    str d0, [x16]
    sub x14, x29, #96
    ldr d8, [x14]
    fmov d16, d8
    fmov d0, d16
    bl lb_math_9is_finite
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L12_2
.L12_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_json_invalid
    add x15, x15, :lo12:lb_json_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_31
    add x15, x15, :lo12:.Ltext_31
    sub x12, x29, #112
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
    ldr x19, [sp, #256]
    ldr d8, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_4:
    b .L12_3
.L12_2:
.L12_3:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    sub x14, x29, #192
    str x19, [x14]
    add x15, x14, #8
    movz x9, #64
    str x9, [x15]
    fmov d16, d8
    fmov d0, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl lb_strings_10format_f64
    sub x15, x29, #240
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L12_6
    b .L12_5
.L12_6:
    add x14, x15, #16
    sub x19, x29, #80
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
    ldr x19, [sp, #256]
    ldr d8, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_7:
.L12_5:
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #280
    bl lb_json_Value_scalar
    sub x12, x29, #280
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L12_9
    b .L12_8
.L12_9:
    add x14, x12, #8
    sub x19, x29, #80
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr d8, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_10:
.L12_8:
    sub x19, x29, #80
    mov x10, x12
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr d8, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_11:
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_number, .-lb_json_Value_number

    .p2align 2
    .globl lb_json_Value_boolean
    .type lb_json_Value_boolean, %function
lb_json_Value_boolean:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    sub x16, x29, #88
    str w0, [x16]
    sub x14, x29, #88
    ldrb w14, [x14]
    cbnz w14, .L13_1
    b .L13_2
.L13_1:
    adrp x14, .Ltext_33
    add x14, x14, :lo12:.Ltext_33
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    sub x14, x29, #104
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L13_3
.L13_2:
    adrp x14, .Ltext_34
    add x14, x14, :lo12:.Ltext_34
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #5
    str x9, [x14]
    sub x14, x29, #104
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L13_3:
    sub x14, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl lb_json_Value_scalar
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L13_5
    b .L13_4
.L13_5:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_6:
.L13_4:
    sub x19, x29, #72
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_7:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_boolean, .-lb_json_Value_boolean

    .p2align 2
    .globl lb_json_Value_null
    .type lb_json_Value_null, %function
lb_json_Value_null:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    adrp x14, .Ltext_36
    add x14, x14, :lo12:.Ltext_36
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #128
    bl lb_json_Value_scalar
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L14_2
    b .L14_1
.L14_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_3:
.L14_1:
    sub x19, x29, #72
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_4:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_null, .-lb_json_Value_null

    .p2align 2
    .globl lb_json_Value_encode
    .type lb_json_Value_encode, %function
lb_json_Value_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x14, [x9]
    mov x0, x14
    bl lb_json_Bytes_view
    sub x16, x29, #64
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #64
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    sub x12, x29, #80
    str x15, [x12]
    add x15, x12, #8
    str x14, [x15]
    sub x19, x29, #40
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_1:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_json_Value_encode, .-lb_json_Value_encode

    .p2align 2
    .globl lb_json_Value_insert
    .type lb_json_Value_insert, %function
lb_json_Value_insert:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #944
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #912]
    str x20, [sp, #904]
    str x21, [sp, #896]
    str x22, [sp, #888]
    str x23, [sp, #880]
    str x24, [sp, #872]
    str x25, [sp, #864]
    str x26, [sp, #856]
    str x27, [sp, #848]
    str x28, [sp, #840]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x0, x29, #168
    ldr x1, [x0]
    movz x2, #24
    bl memcpy
    sub x9, x29, #144
    ldr x20, [x9]
    add x9, x20, #48
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L16_78
    b .L16_4
.L16_78:
    mov w14, w15
    b .L16_5
.L16_4:
    movz x10, #123
    cmp w14, w10
    cset w15, eq
    sub x12, x29, #168
    add x12, x12, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    cmp w15, w12
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L16_5:
    and w15, w14, #255
    cbnz w15, .L16_1
    b .L16_2
.L16_1:
    sub x19, x29, #136
    adrp x14, lb_json_invalid
    add x14, x14, :lo12:lb_json_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_39
    add x14, x14, :lo12:.Ltext_39
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
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
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_6:
    b .L16_3
.L16_2:
.L16_3:
    sub x9, x29, #224
    str x9, [sp, #80]
    ldr x11, [sp, #80]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x15, x29, #168
    add x14, x15, #16
    ldrb w9, [x14]
    str w9, [sp, #72]
    ldr w9, [sp, #72]
    cbnz w9, .L16_10
    b .L16_8
.L16_10:
    sub x23, x29, #240
    mov x10, x15
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L16_7:
    add x14, x20, #64
    ldr x14, [x14]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #80]
    mov x3, x14
    sub x8, x29, #272
    bl lb_json_quoted
    sub x15, x29, #272
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_12
    b .L16_11
.L16_12:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_13:
.L16_11:
    add x9, x20, #24
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x14, x9, #16
    ldr x9, [x14]
    str x9, [sp, #56]
    ldr x9, [sp, #64]
    add x25, x9, #8
    sub x26, x29, #288
    add x27, x26, #8
    sub x21, x29, #304
    add x28, x21, #8
    sub x9, x29, #320
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    sub x19, x29, #336
    add x9, x19, #8
    str x9, [sp, #32]
    mov x9, #0
    mov x14, x9
    mov x9, #0
    mov x22, x9
.L16_14:
    ldr x10, [sp, #56]
    cmp x22, x10
    b.hs .L16_17
.L16_15:
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x12, [x25]
    cmp x22, x12
    b.lo 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    add x13, x15, x22
    ldrb w13, [x13]
    movz x10, #10
    cmp w13, w10
    b.ne .L16_19
.L16_18:
    add x13, x12, #1
    cmp x14, x13
    b.lo 1f
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x22, x13
    b.lo 1f
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x14, x22
    b.ls .L16_24
.L16_25:
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L16_24:
    add x23, x15, x14
    sub x24, x22, x14
    str x23, [x26]
    str x24, [x27]
    str x23, [x21]
    str x24, [x28]
    ldr x0, [sp, #80]
    bl lb_json_Bytes_view
    sub x16, x29, #320
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #48]
    ldr x12, [x9]
    ldr x9, [sp, #40]
    ldr x13, [x9]
    str x12, [x19]
    ldr x10, [sp, #32]
    str x13, [x10]
    cmp x24, x13
    cset w13, eq
    cbnz w13, .L16_26
    b .L16_79
.L16_79:
    mov w14, w13
    b .L16_27
.L16_26:
    mov x0, x23
    mov x1, x12
    mov x2, x24
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L16_27:
    and w15, w14, #255
    cbnz w15, .L16_21
    b .L16_22
.L16_21:
    sub x19, x29, #136
    adrp x14, lb_json_invalid
    add x14, x14, :lo12:lb_json_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_42
    add x14, x14, :lo12:.Ltext_42
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_28:
    b .L16_23
.L16_22:
.L16_23:
    add x14, x22, #1
    b .L16_20
.L16_19:
.L16_20:
.L16_16:
    add x15, x22, #1
    mov x22, x15
    b .L16_14
.L16_17:
    b .L16_9
.L16_8:
.L16_9:
    sub x19, x29, #376
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    add x9, x20, #56
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls .L16_30
.L16_29:
    adrp x14, .Ltext_44
    add x14, x14, :lo12:.Ltext_44
    sub x15, x29, #392
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    add x14, x20, #64
    ldr x14, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x14
    sub x8, x29, #424
    bl lb_json_Bytes_append
    sub x15, x29, #424
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_33
    b .L16_32
.L16_33:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_34:
.L16_32:
    b .L16_31
.L16_30:
.L16_31:
    ldr w9, [sp, #72]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w22, eq
    cbnz w22, .L16_35
    b .L16_36
.L16_35:
    ldr x0, [sp, #80]
    bl lb_json_Bytes_view
    sub x16, x29, #440
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #440
    add x23, x20, #64
    ldr x15, [x23]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    sub x8, x29, #472
    bl lb_json_Bytes_append
    sub x15, x29, #472
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_39
    b .L16_38
.L16_39:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_40:
.L16_38:
    adrp x14, .Ltext_45
    add x14, x14, :lo12:.Ltext_45
    sub x15, x29, #488
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    ldr x14, [x23]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x14
    sub x8, x29, #520
    bl lb_json_Bytes_append
    sub x15, x29, #520
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_42
    b .L16_41
.L16_42:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_43:
.L16_41:
    b .L16_37
.L16_36:
.L16_37:
    sub x14, x29, #184
    ldr x14, [x14]
    mov x0, x14
    bl lb_json_Bytes_view
    sub x16, x29, #536
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #536
    add x23, x20, #64
    ldr x15, [x23]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    sub x8, x29, #568
    bl lb_json_Bytes_append
    sub x15, x29, #568
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_45
    b .L16_44
.L16_45:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_46:
.L16_44:
    add x24, x20, #16
    ldr x14, [x24]
    add x25, x19, #16
    ldr x15, [x25]
    sub x26, x29, #576
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x26
    bl lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #592
    ldr x26, [x26]
    str x26, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, .L16_47
    b .L16_48
.L16_47:
    b .L16_49
.L16_48:
    sub x20, x29, #136
    adrp x14, lb_json_14limit_exceeded
    add x14, x14, :lo12:lb_json_14limit_exceeded
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_9
    add x14, x14, :lo12:.Ltext_9
    sub x15, x29, #608
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_50:
.L16_49:
    add x27, x20, #24
    add x9, x27, #16
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #80]
    add x9, x9, #16
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    sub x21, x29, #616
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x21
    bl lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #632
    ldr x15, [x21]
    str x15, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, .L16_51
    b .L16_52
.L16_51:
    b .L16_53
.L16_52:
    sub x20, x29, #136
    adrp x14, lb_json_14limit_exceeded
    add x14, x14, :lo12:lb_json_14limit_exceeded
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_46
    add x14, x14, :lo12:.Ltext_46
    sub x15, x29, #648
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_54:
.L16_53:
    sub x21, x29, #656
    mov x0, x15
    movz x1, #1
    movz x2, #64
    mov x3, x21
    bl lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #672
    ldr x21, [x21]
    str x21, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, .L16_55
    b .L16_56
.L16_55:
    b .L16_57
.L16_56:
    sub x20, x29, #136
    adrp x14, lb_json_14limit_exceeded
    add x14, x14, :lo12:lb_json_14limit_exceeded
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_46
    add x14, x14, :lo12:.Ltext_46
    sub x15, x29, #688
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_58:
.L16_57:
    ldr x14, [x23]
    mov x0, x20
    mov x1, x26
    mov x2, x14
    sub x8, x29, #720
    bl lb_json_Bytes_reserve
    sub x15, x29, #720
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_60
    b .L16_59
.L16_60:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_61:
.L16_59:
    cbnz w22, .L16_62
    b .L16_63
.L16_62:
    ldr x14, [x23]
    mov x0, x27
    mov x1, x21
    mov x2, x14
    sub x8, x29, #752
    bl lb_json_Bytes_reserve
    sub x15, x29, #752
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L16_66
    b .L16_65
.L16_66:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_67:
.L16_65:
    b .L16_64
.L16_63:
.L16_64:
    ldr x14, [x24]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_68
    add x1, x1, :lo12:.Ltext_68
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x12, [x20]
    add x21, x20, #8
    ldr x13, [x21]
    add x15, x13, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x13, x15
    b.lo 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x14, x13
    b.ls .L16_68
.L16_69:
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L16_68:
    add x15, x14, x12
    sub x23, x13, x14
    sub x28, x29, #768
    str x15, [x28]
    add x15, x28, #8
    str x23, [x15]
    sub x23, x29, #784
    mov x10, x28
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x19
    bl lb_json_Bytes_view
    sub x16, x29, #800
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #800
    ldr x28, [x25]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x28
    bl lb_memory_copy_0g1_u8
    str x26, [x24]
    mov x9, x26
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_68
    add x1, x1, :lo12:.Ltext_68
    bl lb_core_7trap_at
1:
    mov x15, x9
    ldr x23, [x20]
    ldr x28, [x21]
    cmp x15, x28
    b.lo 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    add x23, x15, x23
    ldr x9, [sp, #88]
    ldrb w15, [x9]
    movz x10, #123
    cmp w15, w10
    b.ne .L16_71
.L16_70:
    movz x9, #125
    mov w14, w9
    b .L16_72
.L16_71:
    movz x9, #93
    mov w14, w9
.L16_72:
    and w15, w14, #255
    strb w15, [x23]
    cbnz w22, .L16_73
    b .L16_74
.L16_73:
    ldr x15, [x27]
    add x20, x27, #8
    ldr x12, [x20]
    ldr x9, [sp, #16]
    ldr x13, [x9]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_50
    add x0, x0, :lo12:.Ltext_50
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_50
    add x0, x0, :lo12:.Ltext_50
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    cmp x13, x12
    b.ls .L16_76
.L16_77:
    adrp x0, .Ltext_50
    add x0, x0, :lo12:.Ltext_50
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L16_76:
    add x14, x15, x13
    sub x21, x12, x13
    sub x22, x29, #816
    str x14, [x22]
    add x14, x22, #8
    str x21, [x14]
    sub x21, x29, #832
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #80]
    bl lb_json_Bytes_view
    sub x16, x29, #848
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #848
    ldr x9, [sp, #8]
    ldr x22, [x9]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    bl lb_memory_copy_0g1_u8
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x21, [x9]
    mov x9, x14
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_68
    add x1, x1, :lo12:.Ltext_68
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #16]
    str x14, [x10]
    ldr x21, [x27]
    ldr x22, [x20]
    cmp x14, x22
    b.lo 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
1:
    add x14, x14, x21
    movz x9, #10
    strb w9, [x14]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_68
    add x1, x1, :lo12:.Ltext_68
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #16]
    str x14, [x10]
    b .L16_75
.L16_74:
.L16_75:
    ldr x9, [sp, #24]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_54
    add x0, x0, :lo12:.Ltext_54
    adrp x1, .Ltext_68
    add x1, x1, :lo12:.Ltext_68
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #24]
    str x14, [x10]
    mov x0, x19
    bl lb_json_Bytes_close
    ldr x0, [sp, #80]
    bl lb_json_Bytes_close
    sub x14, x29, #136
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
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    ldr x26, [sp, #856]
    ldr x27, [sp, #848]
    ldr x28, [sp, #840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_insert, .-lb_json_Value_insert

    .p2align 2
    .globl lb_json_Value_set
    .type lb_json_Value_set, %function
lb_json_Value_set:
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #168
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x14, x29, #120
    mov x0, x14
    sub x8, x29, #208
    bl lb_interop_Reference_0g1_json_Value_get
    sub x15, x29, #208
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L17_2
    b .L17_1
.L17_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_3:
.L17_1:
    ldr x14, [x15]
    mov x0, x21
    mov x9, x20
    mov x1, x9
    mov x2, x14
    sub x8, x29, #240
    bl lb_json_Value_insert
    sub x12, x29, #240
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L17_5
    b .L17_4
.L17_5:
    sub x19, x29, #80
    mov x10, x12
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_6:
.L17_4:
    sub x14, x29, #80
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_set, .-lb_json_Value_set

    .p2align 2
    .globl lb_json_Value_append
    .type lb_json_Value_append, %function
lb_json_Value_append:
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x14, x29, #104
    mov x0, x14
    sub x8, x29, #192
    bl lb_interop_Reference_0g1_json_Value_get
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L18_2
    b .L18_1
.L18_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_3:
.L18_1:
    ldr x14, [x15]
    mov x0, x21
    mov x9, x20
    mov x1, x9
    mov x2, x14
    sub x8, x29, #224
    bl lb_json_Value_insert
    sub x12, x29, #224
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L18_5
    b .L18_4
.L18_5:
    sub x19, x29, #80
    mov x10, x12
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_6:
.L18_4:
    sub x14, x29, #80
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_append, .-lb_json_Value_append

    .p2align 2
    .globl lb_json_Value_8set_text
    .type lb_json_Value_8set_text, %function
lb_json_Value_8set_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #80
    ldr x19, [x9]
    sub x20, x29, #120
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #160
    bl lb_json_Value_text
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L19_2
    b .L19_1
.L19_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_3:
.L19_1:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #96
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x20
    ldr x3, [x9]
    sub x8, x29, #192
    bl lb_json_Value_set
    sub x12, x29, #192
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L19_5
    b .L19_4
.L19_5:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L19_7:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_6:
.L19_4:
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L19_8:
    sub x14, x29, #72
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_8set_text, .-lb_json_Value_8set_text

    .p2align 2
    .globl lb_json_Value_11set_integer
    .type lb_json_Value_11set_integer, %function
lb_json_Value_11set_integer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str x3, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    sub x20, x29, #120
    sub x14, x29, #112
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #160
    bl lb_json_Value_integer
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L20_2
    b .L20_1
.L20_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_3:
.L20_1:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #96
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x20
    ldr x3, [x9]
    sub x8, x29, #192
    bl lb_json_Value_set
    sub x12, x29, #192
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L20_5
    b .L20_4
.L20_5:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L20_7:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_6:
.L20_4:
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L20_8:
    sub x14, x29, #72
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_11set_integer, .-lb_json_Value_11set_integer

    .p2align 2
    .globl lb_json_Value_10set_number
    .type lb_json_Value_10set_number, %function
lb_json_Value_10set_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str d0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    sub x20, x29, #120
    sub x14, x29, #112
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    sub x8, x29, #160
    bl lb_json_Value_number
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L21_2
    b .L21_1
.L21_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_3:
.L21_1:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #96
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x20
    ldr x3, [x9]
    sub x8, x29, #192
    bl lb_json_Value_set
    sub x12, x29, #192
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L21_5
    b .L21_4
.L21_5:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L21_7:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_6:
.L21_4:
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L21_8:
    sub x14, x29, #72
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_10set_number, .-lb_json_Value_10set_number

    .p2align 2
    .globl lb_json_Value_11set_boolean
    .type lb_json_Value_11set_boolean, %function
lb_json_Value_11set_boolean:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str w3, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    sub x20, x29, #120
    sub x14, x29, #112
    ldrb w14, [x14]
    mov x0, x14
    sub x8, x29, #160
    bl lb_json_Value_boolean
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L22_2
    b .L22_1
.L22_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L22_3:
.L22_1:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #96
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x20
    ldr x3, [x9]
    sub x8, x29, #192
    bl lb_json_Value_set
    sub x12, x29, #192
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L22_5
    b .L22_4
.L22_5:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L22_7:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L22_6:
.L22_4:
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_release
.L22_8:
    sub x14, x29, #72
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_11set_boolean, .-lb_json_Value_11set_boolean

    .p2align 2
    .globl lb_json_Value_close
    .type lb_json_Value_close, %function
lb_json_Value_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl lb_json_Bytes_close
    add x14, x19, #24
    mov x0, x14
    bl lb_json_Bytes_close
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_json_Value_close, .-lb_json_Value_close

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
    cbnz w14, .L24_11
    b .L24_4
.L24_11:
    mov w15, w14
    b .L24_5
.L24_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L24_5:
    and w14, w15, #255
    cbnz w14, .L24_1
    b .L24_2
.L24_1:
    adrp x14, .Ltext_11
    add x14, x14, :lo12:.Ltext_11
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_55
    add x14, x14, :lo12:.Ltext_55
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L24_3
.L24_2:
.L24_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L24_7
.L24_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L24_9
    b .L24_10
.L24_10:
    adrp x0, .Ltext_56
    add x0, x0, :lo12:.Ltext_56
    adrp x1, .Ltext_57
    add x1, x1, :lo12:.Ltext_57
    bl lb_core_7trap_at
.L24_9:
    b .L24_8
.L24_7:
.L24_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .p2align 2
    .weak lb_interop_Reference_0g1_json_Value_adopt
    .type lb_interop_Reference_0g1_json_Value_adopt, %function
lb_interop_Reference_0g1_json_Value_adopt:
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
    bl memcpy
    sub x19, x29, #208
    sub x15, x29, #192
    ldr x14, [x15]
    cbnz x14, .L25_1
    b .L25_2
.L25_1:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L25_3
.L25_2:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x15, x29, #224
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L25_3:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x24, x29, #232
    sub x20, x29, #272
    mov x11, x20
    str xzr, [x11, #0]
    sub x21, x29, #176
    mov x0, x20
    mov x9, x21
    mov x1, x9
    sub x8, x29, #304
    bl lb_interop_Reservation_0g1_json_Value_init
    sub x22, x29, #304
    sub x25, x29, #344
    add x23, x25, #8
    mov x10, x22
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #24
    ldrb w14, [x14]
    add x22, x25, #32
    strb w14, [x22]
    mov x10, x20
    mov x11, x25
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldrb w14, [x22]
    cbnz w14, .L25_7
    b .L25_6
.L25_7:
    sub x20, x29, #264
    mov x10, x23
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L25_4
.L25_6:
    sub x20, x29, #240
    mov x10, x25
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    b .L25_5
.L25_4:
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
    add x12, x19, #8
    ldr x12, [x12]
    cbnz x12, .L25_9
    b .L25_8
.L25_9:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L25_8:
    sub x19, x29, #120
    add x14, x19, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
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
.L25_10:
.L25_5:
    mov x10, x20
    mov x11, x24
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x24
    mov x1, x14
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_interop_Reservation_0g1_json_Value_publish
    sub x16, x29, #368
    str x0, [x16, #0]
    sub x14, x29, #368
    sub x21, x29, #120
    mov x10, x14
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
.L25_11:
    adrp x0, .Ltext_58
    add x0, x0, :lo12:.Ltext_58
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_interop_Reference_0g1_json_Value_adopt, .-lb_interop_Reference_0g1_json_Value_adopt

    .p2align 2
    .weak lb_interop_Reference_0g1_json_Value_get
    .type lb_interop_Reference_0g1_json_Value_get, %function
lb_interop_Reference_0g1_json_Value_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl lb_ownership_11check_alive
    ldr x14, [x19]
    add x15, x14, #184
    ldrb w15, [x15]
    cbnz w15, .L26_1
    b .L26_2
.L26_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_interop_invalid
    add x15, x15, :lo12:lb_interop_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_59
    add x15, x15, :lo12:.Ltext_59
    sub x12, x29, #96
    str x15, [x12]
    add x15, x12, #8
    movz x9, #25
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L26_4:
    b .L26_3
.L26_2:
.L26_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, .L26_5
    b .L26_6
.L26_5:
    b .L26_7
.L26_6:
    adrp x14, .Ltext_60
    add x14, x14, :lo12:.Ltext_60
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, .Ltext_61
    add x14, x14, :lo12:.Ltext_61
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L26_7:
    sub x14, x29, #72
    str x15, [x14]
    add x12, x14, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L26_8:
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_interop_Reference_0g1_json_Value_get, .-lb_interop_Reference_0g1_json_Value_get

    .p2align 2
    .weak lb_interop_Reference_0g1_json_Value_release
    .type lb_interop_Reference_0g1_json_Value_release, %function
lb_interop_Reference_0g1_json_Value_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    mov x0, x14
    bl lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Reference_0g1_json_Value_release, .-lb_interop_Reference_0g1_json_Value_release

    .p2align 2
    .weak lb_interop_Reservation_0g1_json_Value_init
    .type lb_interop_Reservation_0g1_json_Value_init, %function
lb_interop_Reservation_0g1_json_Value_init:
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
    bl memcpy
    sub x9, x29, #104
    ldr x20, [x9]
    sub x19, x29, #144
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, .L28_4
    b .L28_10
.L28_10:
    mov w15, w14
    b .L28_5
.L28_4:
    bl lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L28_5:
    and w14, w15, #255
    cbnz w14, .L28_1
    b .L28_2
.L28_1:
    sub x19, x29, #96
    adrp x14, lb_interop_12wrong_thread
    add x14, x14, :lo12:lb_interop_12wrong_thread
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_62
    add x14, x14, :lo12:.Ltext_62
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L28_6:
    b .L28_3
.L28_2:
.L28_3:
    sub x21, x29, #216
    sub x22, x29, #272
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    movz x9, #200
    str x9, [x14]
    adrp x14, :got:lb_interop_Owner_0g1_json_Value_12finish_owner
    ldr x14, [x14, :got_lo12:lb_interop_Owner_0g1_json_Value_12finish_owner]
    add x15, x22, #24
    str x14, [x15]
    adrp x14, :got:lb_interop_Owner_0g1_json_Value_10drop_owner
    ldr x14, [x14, :got_lo12:lb_interop_Owner_0g1_json_Value_10drop_owner]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, :got:lb_interop_Owner_0g1_json_Value_11trace_owner
    ldr x14, [x14, :got_lo12:lb_interop_Owner_0g1_json_Value_11trace_owner]
    add x15, x22, #40
    str x14, [x15]
    add x14, x22, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    movz x1, #200
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #328
    bl lb_ownership_reserve
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L28_8
    b .L28_7
.L28_8:
    add x14, x15, #8
    sub x19, x29, #96
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
    bl memcpy
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
.L28_9:
.L28_7:
    ldr x22, [x15]
    add x23, x22, #64
    mov x10, x21
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x22, #16
    str x23, [x14]
    add x14, x22, #120
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    str x22, [x20]
    sub x14, x29, #96
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
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

    .size lb_interop_Reservation_0g1_json_Value_init, .-lb_interop_Reservation_0g1_json_Value_init

    .p2align 2
    .weak lb_interop_Reservation_0g1_json_Value_publish
    .type lb_interop_Reservation_0g1_json_Value_publish, %function
lb_interop_Reservation_0g1_json_Value_publish:
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
    cbnz x20, .L29_1
    b .L29_2
.L29_1:
    b .L29_3
.L29_2:
    adrp x14, .Ltext_63
    add x14, x14, :lo12:.Ltext_63
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    adrp x14, .Ltext_64
    add x14, x14, :lo12:.Ltext_64
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_64
    add x0, x0, :lo12:.Ltext_64
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L29_3:
    add x14, x20, #160
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    add x21, x20, #168
    sub x15, x29, #96
    ldr x14, [x15]
    cbnz x14, .L29_4
    b .L29_5
.L29_4:
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L29_6
.L29_5:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x15, x29, #128
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L29_6:
    sub x14, x29, #128
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x22, x29, #136
    mov x11, x22
    str xzr, [x11, #0]
    sub x10, x29, #152
    str x20, [x10]
    mov x0, x20
    bl lb_ownership_11check_alive
    str x20, [x22]
.L29_8:
    sub x19, x29, #56
    mov x10, x22
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L29_7:
    adrp x0, .Ltext_65
    add x0, x0, :lo12:.Ltext_65
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at

    .size lb_interop_Reservation_0g1_json_Value_publish, .-lb_interop_Reservation_0g1_json_Value_publish

    .p2align 2
    .weak lb_interop_Owner_0g1_json_Value_12finish_owner
    .type lb_interop_Owner_0g1_json_Value_12finish_owner, %function
lb_interop_Owner_0g1_json_Value_12finish_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl lb_interop_11close_owner_0g1_json_Value
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Owner_0g1_json_Value_12finish_owner, .-lb_interop_Owner_0g1_json_Value_12finish_owner

    .p2align 2
    .weak lb_interop_Owner_0g1_json_Value_10drop_owner
    .type lb_interop_Owner_0g1_json_Value_10drop_owner, %function
lb_interop_Owner_0g1_json_Value_10drop_owner:
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
    cbnz x20, .L31_4
    b .L31_2
.L31_4:
.L31_1:
    sub x22, x29, #88
    add x15, x14, #168
    ldr x21, [x15]
    cbnz x21, .L31_5
    b .L31_6
.L31_5:
    sub x23, x29, #104
    mov x10, x15
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L31_7
.L31_6:
    adrp x14, .Ltext_66
    add x14, x14, :lo12:.Ltext_66
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
    adrp x1, .Ltext_13
    add x1, x1, :lo12:.Ltext_13
    bl lb_core_7trap_at
.L31_7:
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #72
    str x9, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, .L31_9
    b .L31_8
.L31_9:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L31_8:
    b .L31_3
.L31_2:
.L31_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Owner_0g1_json_Value_10drop_owner, .-lb_interop_Owner_0g1_json_Value_10drop_owner

    .p2align 2
    .weak lb_interop_Owner_0g1_json_Value_11trace_owner
    .type lb_interop_Owner_0g1_json_Value_11trace_owner, %function
lb_interop_Owner_0g1_json_Value_11trace_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w15, [x15]
    cbnz w15, .L32_1
    b .L32_2
.L32_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L32_4:
    b .L32_3
.L32_2:
.L32_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, .L32_8
    b .L32_6
.L32_8:
.L32_5:
    add x12, x14, #120
    add x12, x12, #24
    ldr x12, [x12]
    cbnz x12, .L32_12
    b .L32_10
.L32_12:
.L32_9:
    sub x14, x29, #48
    ldr x14, [x14]
    sub x13, x29, #64
    ldr x13, [x13]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x14
    mov x2, x13
    ldr x17, [sp], #16
    blr x17
    b .L32_11
.L32_10:
.L32_11:
    b .L32_7
.L32_6:
.L32_7:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Owner_0g1_json_Value_11trace_owner, .-lb_interop_Owner_0g1_json_Value_11trace_owner

    .p2align 2
    .weak lb_interop_Reference_0g1_json_Value_init
    .type lb_interop_Reference_0g1_json_Value_init, %function
lb_interop_Reference_0g1_json_Value_init:
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
    bl lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Reference_0g1_json_Value_init, .-lb_interop_Reference_0g1_json_Value_init

    .p2align 2
    .weak lb_interop_11close_owner_0g1_json_Value
    .type lb_interop_11close_owner_0g1_json_Value, %function
lb_interop_11close_owner_0g1_json_Value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    add x14, x19, #184
    ldrb w15, [x14]
    cbnz w15, .L34_1
    b .L34_2
.L34_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L34_4:
    b .L34_3
.L34_2:
.L34_3:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #192
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne .L34_6
.L34_5:
    mov x0, x19
    bl lb_interop_13dispose_owner_0g1_json_Value
    b .L34_7
.L34_6:
.L34_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_11close_owner_0g1_json_Value, .-lb_interop_11close_owner_0g1_json_Value

    .p2align 2
    .weak lb_interop_13dispose_owner_0g1_json_Value
    .type lb_interop_13dispose_owner_0g1_json_Value, %function
lb_interop_13dispose_owner_0g1_json_Value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w12, [x15]
    cbnz w12, .L35_1
    b .L35_2
.L35_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L35_4:
    b .L35_3
.L35_2:
.L35_3:
    movz x9, #1
    strb w9, [x15]
    add x12, x14, #160
    ldr x12, [x12]
    cbnz x12, .L35_8
    b .L35_6
.L35_8:
.L35_5:
    add x15, x14, #120
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x12
    ldr x17, [sp], #16
    blr x17
    b .L35_7
.L35_6:
.L35_7:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_13dispose_owner_0g1_json_Value, .-lb_interop_13dispose_owner_0g1_json_Value

    .section .init_array,"aw"
    .p2align 3
    .quad lb_json_0init

    .section .rodata
.Ltext_0:
    .asciz "JSON value"
.Ltext_1:
    .asciz "JSON exceeds its configured byte limit"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/json.lucb:23:13"
.Ltext_4:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_5:
    .asciz "memory.unset"
.Ltext_6:
    .asciz "src/std/json.lucb:26:9"
.Ltext_7:
    .asciz "memory.exhausted"
.Ltext_8:
    .asciz "src/std/json.lucb:29:13"
.Ltext_9:
    .asciz "JSON size overflow"
.Ltext_10:
    .asciz "src/std/json.lucb:35:9"
.Ltext_11:
    .asciz "index out of bounds"
.Ltext_12:
    .asciz "src/std/json.lucb:39:9"
.Ltext_13:
    .asciz "unreachable"
.Ltext_14:
    .asciz "src/std/json.lucb:43:13"
.Ltext_15:
    .asciz "\""
.Ltext_16:
    .asciz "0123456789abcdef"
.Ltext_17:
    .asciz "shift count out of range"
.Ltext_18:
    .asciz "src/std/json.lucb:60:13"
.Ltext_19:
    .asciz "JSON byte limit must be between 2 and 64 MiB"
.Ltext_20:
    .asciz "{}"
.Ltext_21:
    .asciz "src/std/json.lucb:87:9"
.Ltext_22:
    .asciz "src/std/json.lucb:90:9"
.Ltext_23:
    .asciz "src/std/json.lucb:92:9"
.Ltext_24:
    .asciz "src/std/json.lucb:93:9"
.Ltext_25:
    .asciz "src/std/json.lucb:94:9"
.Ltext_26:
    .asciz "src/std/json.lucb:97:9"
.Ltext_27:
    .asciz "src/std/json.lucb:104:9"
.Ltext_28:
    .asciz "src/std/json.lucb:110:9"
.Ltext_29:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_30:
    .asciz "src/std/json.lucb:114:9"
.Ltext_31:
    .asciz "JSON numbers must be finite"
.Ltext_32:
    .asciz "src/std/json.lucb:120:9"
.Ltext_33:
    .asciz "true"
.Ltext_34:
    .asciz "false"
.Ltext_35:
    .asciz "src/std/json.lucb:123:9"
.Ltext_36:
    .asciz "null"
.Ltext_37:
    .asciz "src/std/json.lucb:126:9"
.Ltext_38:
    .asciz "src/std/json.lucb:130:9"
.Ltext_39:
    .asciz "JSON operation does not match the container type"
.Ltext_40:
    .asciz "src/std/json.lucb:141:17"
.Ltext_41:
    .asciz "src/std/json.lucb:142:21"
.Ltext_42:
    .asciz "JSON object already contains this key"
.Ltext_43:
    .asciz "src/std/json.lucb:144:21"
.Ltext_44:
    .asciz ","
.Ltext_45:
    .asciz ":"
.Ltext_46:
    .asciz "JSON key size overflow"
.Ltext_47:
    .asciz "src/std/json.lucb:161:9"
.Ltext_48:
    .asciz "src/std/json.lucb:162:9"
.Ltext_49:
    .asciz "src/std/json.lucb:164:9"
.Ltext_50:
    .asciz "src/std/json.lucb:166:13"
.Ltext_51:
    .asciz "src/std/json.lucb:167:13"
.Ltext_52:
    .asciz "src/std/json.lucb:168:13"
.Ltext_53:
    .asciz "src/std/json.lucb:169:13"
.Ltext_54:
    .asciz "src/std/json.lucb:170:9"
.Ltext_55:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_56:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_57:
    .asciz "null_foreign"
.Ltext_58:
    .asciz "src/std/interop/reference.lucb:17:9"
.Ltext_59:
    .asciz "a native object is closed"
.Ltext_60:
    .asciz "a native object has not been initialized"
.Ltext_61:
    .asciz "src/std/interop/reference.lucb:30:9"
.Ltext_62:
    .asciz "this native type requires the process main thread"
.Ltext_63:
    .asciz "native ownership has already been published or cancelled"
.Ltext_64:
    .asciz "src/std/interop/object.lucb:82:9"
.Ltext_65:
    .asciz "src/std/interop/object.lucb:86:9"
.Ltext_66:
    .asciz "native storage has no allocator"
.Ltext_67:
    .asciz "src/std/interop/object.lucb:37:13"
.Ltext_68:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_json_invalid
    .type lb_json_invalid, %object
    .p2align 2
lb_json_invalid:
    .zero 4

    .bss
    .globl lb_json_14limit_exceeded
    .type lb_json_14limit_exceeded, %object
    .p2align 2
lb_json_14limit_exceeded:
    .zero 4

    .bss
    .globl lb_json_10value_type
    .type lb_json_10value_type, %object
    .p2align 3
lb_json_10value_type:
    .zero 40


    .section .note.GNU-stack,"",%progbits
