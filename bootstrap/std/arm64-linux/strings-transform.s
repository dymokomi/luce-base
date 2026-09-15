    .text

    .p2align 2
    .globl lb_strings_transform_0init
    .type lb_strings_transform_0init, %function
lb_strings_transform_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_transform_0init, .-lb_strings_transform_0init

    .p2align 2
    .globl lb_strings_8is_space
    .type lb_strings_8is_space, %function
lb_strings_8is_space:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldrb w14, [x14]
    movz x10, #32
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_8
    b .L1_1
.L1_8:
    mov w19, w15
    b .L1_2
.L1_1:
    movz x10, #10
    cmp w14, w10
    cset w19, eq
.L1_2:
    and w15, w19, #255
    cbnz w15, .L1_9
    b .L1_3
.L1_9:
    mov w19, w15
    b .L1_4
.L1_3:
    movz x10, #9
    cmp w14, w10
    cset w19, eq
.L1_4:
    and w15, w19, #255
    cbnz w15, .L1_10
    b .L1_5
.L1_10:
    mov w14, w15
    b .L1_6
.L1_5:
    movz x10, #13
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L1_6:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_7:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_8is_space, .-lb_strings_8is_space

    .p2align 2
    .globl lb_strings_trim
    .type lb_strings_trim, %function
lb_strings_trim:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x19, [x15]
    sub x20, x29, #96
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x21, x9
.L2_1:
    cmp x21, x19
    cset w14, lo
    cbnz w14, .L2_4
    b .L2_14
.L2_14:
    mov w15, w14
    b .L2_5
.L2_4:
    ldr x14, [x20]
    add x14, x14, x21
    ldrb w14, [x14]
    mov x0, x14
    bl lb_strings_8is_space
    mov w15, w0
.L2_5:
    and w14, w15, #255
    cbnz w14, .L2_2
    b .L2_3
.L2_2:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x21, x14
    b .L2_1
.L2_3:
    mov x22, x19
.L2_6:
    cmp x22, x21
    cset w14, hi
    cbnz w14, .L2_9
    b .L2_15
.L2_15:
    mov w15, w14
    b .L2_10
.L2_9:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x15, [x20]
    cmp x14, x19
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x14, x14, x15
    ldrb w14, [x14]
    mov x0, x14
    bl lb_strings_8is_space
    mov w15, w0
.L2_10:
    and w14, w15, #255
    cbnz w14, .L2_7
    b .L2_8
.L2_7:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x22, x14
    b .L2_6
.L2_8:
    ldr x15, [x20]
    add x14, x19, #1
    cmp x21, x14
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x22, x14
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x21, x22
    b.ls .L2_11
.L2_12:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L2_11:
    add x14, x21, x15
    sub x19, x22, x21
    sub x20, x29, #112
    str x14, [x20]
    add x20, x20, #8
    str x19, [x20]
    sub x20, x29, #128
    str x14, [x20]
    add x14, x20, #8
    str x19, [x14]
    sub x19, x29, #64
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_13:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_trim, .-lb_strings_trim

    .p2align 2
    .globl lb_strings_join
    .type lb_strings_join, %function
lb_strings_join:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #480
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #448]
    str x20, [sp, #440]
    str x21, [sp, #432]
    str x22, [sp, #424]
    str x23, [sp, #416]
    str x24, [sp, #408]
    str x25, [sp, #400]
    str x26, [sp, #392]
    str x27, [sp, #384]
    str x28, [sp, #376]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #168
    add x9, x19, #8
    str x9, [sp, #80]
    sub x9, x29, #192
    str x9, [sp, #64]
    sub x27, x29, #208
    add x22, x27, #8
    sub x14, x29, #184
    add x23, x14, #8
    sub x24, x29, #232
    sub x28, x29, #248
    add x9, x28, #8
    str x9, [sp, #56]
    mov x9, #0
    mov x14, x9
    mov x9, #0
    mov x26, x9
.L3_1:
    ldr x9, [sp, #80]
    ldr x9, [x9]
    str x9, [sp, #72]
    ldr x10, [sp, #72]
    cmp x26, x10
    b.hs .L3_3
.L3_2:
    ldr x15, [x19]
    lsl x20, x26, #4
    add x15, x15, x20
    add x15, x15, #8
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    movz x2, #64
    ldr x3, [sp, #64]
    bl lb_core_6qadd_u
    mov w15, w0
    ldr x9, [sp, #64]
    ldr x20, [x9]
    str x20, [x27]
    strb w15, [x22]
    ldrb w15, [x22]
    cbnz w15, .L3_4
    b .L3_5
.L3_4:
    b .L3_6
.L3_5:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    sub x20, x29, #224
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_7:
.L3_6:
    add x21, x26, #1
    ldr x10, [sp, #72]
    cmp x21, x10
    b.hs .L3_9
.L3_8:
    ldr x14, [x23]
    mov x0, x20
    mov x1, x14
    movz x2, #64
    mov x3, x24
    bl lb_core_6qadd_u
    mov w14, w0
    ldr x15, [x24]
    str x15, [x28]
    ldr x10, [sp, #56]
    strb w14, [x10]
    ldr x9, [sp, #56]
    ldrb w14, [x9]
    cbnz w14, .L3_11
    b .L3_12
.L3_11:
    b .L3_13
.L3_12:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    sub x20, x29, #264
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_14:
.L3_13:
    mov x14, x15
    b .L3_10
.L3_9:
    mov x14, x20
.L3_10:
    mov x26, x21
    b .L3_1
.L3_3:
    sub x9, x29, #280
    str x9, [sp, #8]
    mov x0, x14
    sub x8, x29, #328
    bl lb_strings_17terminated_buffer
    sub x21, x29, #328
    add x15, x21, #40
    ldrb w15, [x15]
    cbnz w15, .L3_16
    b .L3_15
.L3_16:
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_17:
.L3_15:
    mov x10, x21
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x23, x29, #344
    add x24, x23, #8
    sub x9, x29, #360
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #32]
    sub x9, x29, #184
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #16]
    mov x9, #0
    mov x28, x9
    mov x9, #0
    mov x27, x9
.L3_18:
    ldr x10, [sp, #72]
    cmp x28, x10
    b.hs .L3_20
.L3_19:
    ldr x9, [sp, #8]
    ldr x26, [x9]
    ldr x9, [sp, #48]
    ldr x25, [x9]
    add x21, x25, #1
    cmp x27, x21
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x25, x21
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x27, x25
    b.ls .L3_21
.L3_22:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L3_21:
    add x14, x27, x26
    sub x15, x25, x27
    str x14, [x23]
    str x15, [x24]
    ldr x14, [x19]
    lsl x15, x28, #4
    add x14, x14, x15
    add x22, x14, #8
    ldr x15, [x22]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x15
    bl lb_memory_copy_0g1_u8
    ldr x14, [x22]
    mov x9, x14
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
1:
    mov x22, x9
    add x20, x28, #1
    ldr x10, [sp, #72]
    cmp x20, x10
    b.hs .L3_24
.L3_23:
    cmp x22, x21
    b.lo 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x22, x25
    b.ls .L3_26
.L3_27:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L3_26:
    add x14, x22, x26
    sub x15, x25, x22
    ldr x10, [sp, #40]
    str x14, [x10]
    ldr x10, [sp, #32]
    str x15, [x10]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #24]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_u8
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x9, x22
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
1:
    mov x14, x9
    b .L3_25
.L3_24:
    mov x14, x22
.L3_25:
    mov x28, x20
    mov x27, x14
    b .L3_18
.L3_20:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cmp x27, x15
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x19, x14, x27
    mov x9, #0
    strb w9, [x19]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x27, x15
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x27
    b.ls .L3_28
.L3_29:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L3_28:
    sub x15, x29, #376
    str x14, [x15]
    add x15, x15, #8
    str x27, [x15]
    sub x15, x29, #392
    str x14, [x15]
    add x19, x15, #8
    str x27, [x19]
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
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_30:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_join, .-lb_strings_join

    .p2align 2
    .globl lb_strings_copy
    .type lb_strings_copy, %function
lb_strings_copy:
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
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x21, x29, #152
    sub x19, x29, #136
    add x20, x19, #8
    ldr x14, [x20]
    mov x0, x14
    sub x8, x29, #200
    bl lb_strings_17terminated_buffer
    sub x15, x29, #200
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #16
    sub x19, x29, #120
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x20]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_u8
    ldr x14, [x20]
    ldr x22, [x21]
    add x23, x21, #8
    ldr x24, [x23]
    cmp x14, x24
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x14, x14, x22
    mov x9, #0
    strb w9, [x14]
    ldr x22, [x21]
    ldr x14, [x23]
    ldr x23, [x20]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x23, x14
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x23
    b.ls .L4_4
.L4_5:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L4_4:
    sub x14, x29, #216
    str x22, [x14]
    add x14, x14, #8
    str x23, [x14]
    sub x14, x29, #232
    str x22, [x14]
    add x15, x14, #8
    str x23, [x15]
    sub x19, x29, #120
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_6:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_copy, .-lb_strings_copy

    .p2align 2
    .globl lb_strings_8to_upper
    .type lb_strings_8to_upper, %function
lb_strings_8to_upper:
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
    str x27, [sp, #160]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x21, x29, #176
    sub x19, x29, #160
    add x14, x19, #8
    ldr x20, [x14]
    mov x0, x20
    sub x8, x29, #224
    bl lb_strings_17terminated_buffer
    sub x15, x29, #224
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L5_2
    b .L5_1
.L5_2:
    add x14, x15, #16
    sub x19, x29, #144
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    ldr x27, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
.L5_1:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x22, [x21]
    add x23, x21, #8
    ldr x23, [x23]
    mov x9, #0
    mov x24, x9
    mov x9, #0
    mov x25, x9
.L5_4:
    cmp x25, x20
    b.hs .L5_7
.L5_5:
    add x15, x14, x25
    ldrb w15, [x15]
    cmp x24, x23
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x26, x22, x24
    and w15, w15, #255
    movz x10, #97
    cmp w15, w10
    cset w19, hs
    cbnz w19, .L5_11
    b .L5_18
.L5_18:
    mov w27, w19
    b .L5_12
.L5_11:
    movz x10, #122
    cmp w15, w10
    cset w27, ls
.L5_12:
    and w19, w27, #255
    cbnz w19, .L5_8
    b .L5_9
.L5_8:
    sub w27, w15, #32
    and w19, w27, #255
    cmp w19, w27
    b.eq .L5_13
.L5_14:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
.L5_13:
    mov w15, w27
    b .L5_10
.L5_9:
.L5_10:
    and w19, w15, #255
    strb w19, [x26]
    add x19, x24, #1
.L5_6:
    add x15, x25, #1
    mov x24, x19
    mov x25, x15
    b .L5_4
.L5_7:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cmp x24, x15
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x19, x14, x24
    mov x9, #0
    strb w9, [x19]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x24, x15
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x24
    b.ls .L5_15
.L5_16:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L5_15:
    sub x15, x29, #240
    str x14, [x15]
    add x15, x15, #8
    str x24, [x15]
    sub x15, x29, #256
    str x14, [x15]
    add x19, x15, #8
    str x24, [x19]
    sub x19, x29, #144
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    ldr x27, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_17:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_8to_upper, .-lb_strings_8to_upper

    .p2align 2
    .globl lb_strings_8to_lower
    .type lb_strings_8to_lower, %function
lb_strings_8to_lower:
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
    str x27, [sp, #160]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x21, x29, #176
    sub x19, x29, #160
    add x14, x19, #8
    ldr x20, [x14]
    mov x0, x20
    sub x8, x29, #224
    bl lb_strings_17terminated_buffer
    sub x15, x29, #224
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L6_2
    b .L6_1
.L6_2:
    add x14, x15, #16
    sub x19, x29, #144
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    ldr x27, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_3:
.L6_1:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x22, [x21]
    add x23, x21, #8
    ldr x23, [x23]
    mov x9, #0
    mov x24, x9
    mov x9, #0
    mov x25, x9
.L6_4:
    cmp x25, x20
    b.hs .L6_7
.L6_5:
    add x15, x14, x25
    ldrb w15, [x15]
    cmp x24, x23
    b.lo 1f
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x26, x22, x24
    and w15, w15, #255
    movz x10, #65
    cmp w15, w10
    cset w19, hs
    cbnz w19, .L6_11
    b .L6_18
.L6_18:
    mov w27, w19
    b .L6_12
.L6_11:
    movz x10, #90
    cmp w15, w10
    cset w27, ls
.L6_12:
    and w19, w27, #255
    cbnz w19, .L6_8
    b .L6_9
.L6_8:
    add w27, w15, #32
    and w19, w27, #255
    cmp w19, w27
    b.eq .L6_13
.L6_14:
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
.L6_13:
    mov w15, w27
    b .L6_10
.L6_9:
.L6_10:
    and w19, w15, #255
    strb w19, [x26]
    add x19, x24, #1
.L6_6:
    add x15, x25, #1
    mov x24, x19
    mov x25, x15
    b .L6_4
.L6_7:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cmp x24, x15
    b.lo 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    add x19, x14, x24
    mov x9, #0
    strb w9, [x19]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x24, x15
    b.lo 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x24
    b.ls .L6_15
.L6_16:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L6_15:
    sub x15, x29, #240
    str x14, [x15]
    add x15, x15, #8
    str x24, [x15]
    sub x15, x29, #256
    str x14, [x15]
    add x19, x15, #8
    str x24, [x19]
    sub x19, x29, #144
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    ldr x24, [sp, #184]
    ldr x25, [sp, #176]
    ldr x26, [sp, #168]
    ldr x27, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_17:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_8to_lower, .-lb_strings_8to_lower

    .p2align 2
    .globl lb_strings_release
    .type lb_strings_release, %function
lb_strings_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #48
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_23
    add x1, x1, :lo12:.Ltext_23
    bl lb_core_7trap_at
1:
    mov x14, x9
    sub x19, x29, #64
    str x15, [x19]
    add x19, x19, #8
    str x14, [x19]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x19, x0
    sub x20, x29, #80
    str x15, [x20]
    add x15, x20, #8
    str x14, [x15]
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cbnz x15, .L7_2
    b .L7_1
.L7_2:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L7_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_release, .-lb_strings_release

    .p2align 2
    .globl lb_strings_17terminated_buffer
    .type lb_strings_17terminated_buffer, %function
lb_strings_17terminated_buffer:
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
    sub x16, x29, #128
    str x0, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    sub x19, x29, #136
    mov x0, x14
    movz x1, #1
    movz x2, #64
    mov x3, x19
    bl lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #152
    ldr x19, [x19]
    str x19, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    b .L8_3
.L8_2:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_32
    add x15, x15, :lo12:.Ltext_32
    sub x20, x29, #168
    str x15, [x20]
    add x15, x20, #8
    movz x9, #21
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_4:
.L8_3:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    sub x20, x29, #216
    movz x10, #16384, lsl #48
    cmp x19, x10
    b.ls .L8_6
.L8_5:
    add x14, x20, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_33
    add x15, x15, :lo12:.Ltext_33
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    b .L8_7
.L8_6:
    ldr x14, [x15]
    add x21, x15, #8
    ldr x21, [x21]
    cbnz x21, .L8_8
    b .L8_9
.L8_9:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L8_8:
    ldr x15, [x21]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #1
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #240
    add x15, x23, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x19, x10
    cset w22, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w22, w15
    cbnz w15, .L8_10
    b .L8_11
.L8_10:
    add x14, x20, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_36
    add x15, x15, :lo12:.Ltext_36
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    b .L8_7
.L8_11:
    ldr x14, [x23]
    str x14, [x20]
    add x14, x20, #8
    str x19, [x14]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
.L8_7:
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, .L8_13
    b .L8_12
.L8_13:
    add x14, x20, #16
    sub x19, x29, #112
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_14:
.L8_12:
    sub x19, x29, #112
    mov x10, x20
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_15:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_strings_17terminated_buffer, .-lb_strings_17terminated_buffer

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
    cbnz w14, .L9_11
    b .L9_4
.L9_11:
    mov w15, w14
    b .L9_5
.L9_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L9_5:
    and w14, w15, #255
    cbnz w14, .L9_1
    b .L9_2
.L9_1:
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_37
    add x14, x14, :lo12:.Ltext_37
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L9_3
.L9_2:
.L9_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L9_7
.L9_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L9_9
    b .L9_10
.L9_10:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_39
    add x1, x1, :lo12:.Ltext_39
    bl lb_core_7trap_at
.L9_9:
    b .L9_8
.L9_7:
.L9_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_transform_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/strings/transform.lucb:2:5"
.Ltext_2:
    .asciz "src/std/strings/transform.lucb:9:5"
.Ltext_3:
    .asciz "src/std/strings/transform.lucb:10:9"
.Ltext_4:
    .asciz "src/std/strings/transform.lucb:11:5"
.Ltext_5:
    .asciz "src/std/strings/transform.lucb:12:9"
.Ltext_6:
    .asciz "src/std/strings/transform.lucb:13:5"
.Ltext_7:
    .asciz "index out of bounds"
.Ltext_8:
    .asciz "src/std/strings/transform.lucb:21:9"
.Ltext_9:
    .asciz "the joined text is too large"
.Ltext_10:
    .asciz "src/std/strings/transform.lucb:22:9"
.Ltext_11:
    .asciz "src/std/strings/transform.lucb:24:9"
.Ltext_12:
    .asciz "src/std/strings/transform.lucb:29:9"
.Ltext_13:
    .asciz "src/std/strings/transform.lucb:30:9"
.Ltext_14:
    .asciz "src/std/strings/transform.lucb:31:9"
.Ltext_15:
    .asciz "src/std/strings/transform.lucb:32:13"
.Ltext_16:
    .asciz "src/std/strings/transform.lucb:33:13"
.Ltext_17:
    .asciz "src/std/strings/transform.lucb:34:9"
.Ltext_18:
    .asciz "src/std/strings/transform.lucb:35:5"
.Ltext_19:
    .asciz "src/std/strings/transform.lucb:36:5"
.Ltext_20:
    .asciz "src/std/strings/transform.lucb:43:5"
.Ltext_21:
    .asciz "src/std/strings/transform.lucb:44:5"
.Ltext_22:
    .asciz "src/std/strings/transform.lucb:52:9"
.Ltext_23:
    .asciz "integer overflow"
.Ltext_24:
    .asciz "src/std/strings/transform.lucb:53:9"
.Ltext_25:
    .asciz "src/std/strings/transform.lucb:54:5"
.Ltext_26:
    .asciz "src/std/strings/transform.lucb:55:5"
.Ltext_27:
    .asciz "src/std/strings/transform.lucb:63:9"
.Ltext_28:
    .asciz "src/std/strings/transform.lucb:64:9"
.Ltext_29:
    .asciz "src/std/strings/transform.lucb:65:5"
.Ltext_30:
    .asciz "src/std/strings/transform.lucb:66:5"
.Ltext_31:
    .asciz "src/std/strings/transform.lucb:71:5"
.Ltext_32:
    .asciz "the text is too large"
.Ltext_33:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_34:
    .asciz "memory.unset"
.Ltext_35:
    .asciz "src/std/strings/transform.lucb:77:5"
.Ltext_36:
    .asciz "memory.exhausted"
.Ltext_37:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_39:
    .asciz "null_foreign"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
