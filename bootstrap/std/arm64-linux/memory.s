    .text

    .p2align 2
    .globl lb_memory_0init
    .type lb_memory_0init, %function
lb_memory_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    ldrb w14, [x14]
    cbnz w14, .L0_1
    b .L0_2
.L0_1:
    movz x9, #4098
    mov w14, w9
    b .L0_3
.L0_2:
    movz x9, #34
    mov w14, w9
.L0_3:
    adrp x15, lb_memory_17private_anonymous
    add x15, x15, :lo12:lb_memory_17private_anonymous
    str w14, [x15]
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, lb_memory_unset
    add x15, x15, :lo12:lb_memory_unset
    movz x9, #2
    movk x9, #3178, lsl #16
    str w9, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_0init, .-lb_memory_0init

    .p2align 2
    .globl lb_memory_FixedBuffer_over
    .type lb_memory_FixedBuffer_over, %function
lb_memory_FixedBuffer_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_FixedBuffer_over, .-lb_memory_FixedBuffer_over

    .p2align 2
    .globl lb_memory_FixedBuffer_allocate
    .type lb_memory_FixedBuffer_allocate, %function
lb_memory_FixedBuffer_allocate:
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
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne .L2_2
.L2_1:
    ldr x15, [x20]
    add x14, x20, #8
    ldr x14, [x14]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
.L2_4:
    sub x14, x29, #144
    str x15, [x14]
    add x12, x14, #8
    mov x9, #0
    str x9, [x12]
    sub x19, x29, #168
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_2:
.L2_3:
    sub x14, x29, #128
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L2_8
.L2_7:
    mov x21, x14
    b .L2_9
.L2_8:
    movz x9, #1
    mov x21, x9
.L2_9:
    add x22, x20, #16
    ldr x14, [x22]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x21
    bl lb_memory_14aligned_offset
    sub x16, x29, #184
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #184
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L2_10
    b .L2_11
.L2_10:
    ldr x14, [x15]
    b .L2_12
.L2_11:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_12:
    add x15, x20, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w12, hi
    cbnz w12, .L2_23
    b .L2_17
.L2_23:
    mov w13, w12
    b .L2_18
.L2_17:
    sub x12, x15, x14
    cmp x19, x12
    cset w13, hi
.L2_18:
    and w12, w13, #255
    cbnz w12, .L2_14
    b .L2_15
.L2_14:
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #12
    str x9, [x14]
    ldr x14, [x22]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    mov x3, x21
    mov x4, x14
    bl lb_memory_12note_refusal
    sub x20, x29, #248
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x23, x29, #88
    mov x10, x20
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_15:
.L2_16:
    mov x9, x19
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x22]
    ldr x21, [x20]
    add x13, x15, #1
    cmp x14, x13
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    cmp x12, x13
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    cmp x14, x12
    b.ls .L2_20
.L2_21:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
.L2_20:
    add x15, x14, x21
    sub x13, x12, x14
    sub x19, x29, #264
    str x15, [x19]
    add x15, x19, #8
    str x13, [x15]
    sub x20, x29, #288
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x20, #16
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #88
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_FixedBuffer_allocate, .-lb_memory_FixedBuffer_allocate

    .p2align 2
    .globl lb_memory_FixedBuffer_resize
    .type lb_memory_FixedBuffer_resize, %function
lb_memory_FixedBuffer_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #88
    str x3, [x16]
    sub x9, x29, #56
    ldr x21, [x9]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x14, x29, #72
    add x15, x14, #8
    ldr x20, [x15]
    cmp x19, x20
    b.ne .L3_2
.L3_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    b .L3_3
.L3_2:
.L3_3:
    mov x10, #0
    cmp x20, x10
    b.ne .L3_6
.L3_5:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_8:
    b .L3_7
.L3_6:
.L3_7:
    ldr x15, [x14]
    ldr x12, [x21]
    sub x22, x29, #96
    mov x0, x15
    mov x1, x12
    movz x2, #64
    mov x3, x22
    bl lb_core_6qsub_u
    mov w15, w0
    sub x13, x29, #112
    ldr x12, [x22]
    str x12, [x13]
    add x13, x13, #8
    strb w15, [x13]
    ldrb w15, [x13]
    cbnz w15, .L3_9
    b .L3_10
.L3_9:
    b .L3_11
.L3_10:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_12:
.L3_11:
    add x14, x21, #16
    ldr x15, [x14]
    cmp x12, x15
    cset w13, hi
    cbnz w13, .L3_26
    b .L3_16
.L3_26:
    mov w15, w13
    b .L3_17
.L3_16:
    sub x13, x15, x12
    cmp x20, x13
    cset w13, eq
    mov x10, #0
    cmp w13, w10
    cset w13, eq
    mov w15, w13
.L3_17:
    and w13, w15, #255
    cbnz w13, .L3_13
    b .L3_14
.L3_13:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_18:
    b .L3_15
.L3_14:
.L3_15:
    add x15, x21, #8
    ldr x15, [x15]
    cmp x12, x15
    cset w13, hi
    cbnz w13, .L3_27
    b .L3_22
.L3_27:
    mov w15, w13
    b .L3_23
.L3_22:
    sub x13, x15, x12
    cmp x19, x13
    cset w13, hi
    mov w15, w13
.L3_23:
    and w13, w15, #255
    cbnz w13, .L3_19
    b .L3_20
.L3_19:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_24:
    b .L3_21
.L3_20:
.L3_21:
    mov x9, x19
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_25:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_FixedBuffer_resize, .-lb_memory_FixedBuffer_resize

    .p2align 2
    .globl lb_memory_FixedBuffer_release
    .type lb_memory_FixedBuffer_release, %function
lb_memory_FixedBuffer_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #48
    ldr x21, [x9]
    sub x19, x29, #64
    add x14, x19, #8
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ne .L4_2
.L4_1:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    adrp x14, lb_memory_diagnostic
    add x14, x14, :lo12:lb_memory_diagnostic
    ldrb w14, [x14]
    cbnz w14, .L4_5
    b .L4_6
.L4_5:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #221
    mov x2, x20
    bl memset
    mov x14, x0
    cbnz x14, .L4_8
    b .L4_9
.L4_9:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L4_8:
    b .L4_7
.L4_6:
.L4_7:
    ldr x14, [x19]
    ldr x15, [x21]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x20
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x15, x9
    add x12, x21, #16
    ldr x13, [x12]
    cmp x15, x13
    b.ne .L4_11
.L4_10:
    str x14, [x12]
    b .L4_12
.L4_11:
.L4_12:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_FixedBuffer_release, .-lb_memory_FixedBuffer_release

    .p2align 2
    .globl lb_memory_14aligned_offset
    .type lb_memory_14aligned_offset, %function
lb_memory_14aligned_offset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #88
    str x2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x14, x29, #72
    add x15, x14, #8
    ldr x20, [x15]
    cmp x19, x20
    b.ls .L5_2
.L5_1:
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_4:
    b .L5_3
.L5_2:
.L5_3:
    ldr x15, [x14]
    sub x21, x29, #128
    mov x0, x15
    mov x1, x19
    movz x2, #64
    mov x3, x21
    bl lb_core_6qadd_u
    mov w15, w0
    sub x13, x29, #144
    ldr x12, [x21]
    str x12, [x13]
    add x13, x13, #8
    strb w15, [x13]
    ldrb w15, [x13]
    cbnz w15, .L5_5
    b .L5_6
.L5_5:
    b .L5_7
.L5_6:
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_8:
.L5_7:
    sub x14, x29, #104
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    b.ne .L5_10
.L5_9:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
.L5_10:
    udiv x11, x12, x15
    msub x14, x11, x15, x12
    mov x10, #0
    cmp x14, x10
    b.ne .L5_12
.L5_11:
    mov x9, #0
    mov x14, x9
    b .L5_13
.L5_12:
    mov x9, x15
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x14, x12
.L5_13:
    sub x15, x20, x19
    cmp x14, x15
    b.ls .L5_15
.L5_14:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_17:
    b .L5_16
.L5_15:
.L5_16:
    mov x9, x19
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x15, x9
    sub x12, x29, #192
    str x15, [x12]
    add x15, x12, #8
    movz x9, #1
    strb w9, [x15]
    sub x20, x29, #56
    mov x10, x12
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_18:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_14aligned_offset, .-lb_memory_14aligned_offset

    .p2align 2
    .globl lb_memory_CAllocator_allocate
    .type lb_memory_CAllocator_allocate, %function
lb_memory_CAllocator_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x16, x29, #120
    str x2, [x16]
    sub x14, x29, #104
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne .L6_2
.L6_1:
    sub x14, x29, #136
    movz x9, #8
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #160
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_4:
    b .L6_3
.L6_2:
.L6_3:
    sub x14, x29, #120
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L6_8
    b .L6_23
.L6_23:
    mov w12, w15
    b .L6_9
.L6_8:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x15, x9
    and x15, x14, x15
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
.L6_9:
    and w15, w12, #255
    cbnz w15, .L6_5
    b .L6_6
.L6_5:
    sub x19, x29, #184
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_10:
    b .L6_7
.L6_6:
.L6_7:
    movz x10, #8
    cmp x14, x10
    b.ls .L6_12
.L6_11:
    mov x20, x14
    b .L6_13
.L6_12:
    movz x9, #8
    mov x20, x9
.L6_13:
    sub x21, x29, #192
    mov x9, #0
    str x9, [x21]
    mov x0, x21
    mov x1, x20
    mov x2, x19
    bl posix_memalign
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L6_15
.L6_14:
    adrp x14, .Ltext_22
    add x14, x14, :lo12:.Ltext_22
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    mov x3, x20
    mov x4, #0
    bl lb_memory_12note_refusal
    sub x21, x29, #232
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x22, x29, #80
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_17:
    b .L6_16
.L6_15:
.L6_16:
    ldr x14, [x21]
    cbnz x14, .L6_18
    b .L6_19
.L6_18:
    b .L6_20
.L6_19:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_21:
.L6_20:
    sub x15, x29, #272
    str x14, [x15]
    add x12, x15, #8
    str x19, [x12]
    sub x20, x29, #296
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x20, #16
    movz x9, #1
    strb w9, [x15]
    sub x21, x29, #80
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_22:
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_CAllocator_allocate, .-lb_memory_CAllocator_allocate

    .p2align 2
    .globl lb_memory_CAllocator_resize
    .type lb_memory_CAllocator_resize, %function
lb_memory_CAllocator_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #24
    str x0, [x16]
    sub x16, x29, #40
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #56
    str x3, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #40
    add x15, x15, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w14, ls
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_1:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_CAllocator_resize, .-lb_memory_CAllocator_resize

    .p2align 2
    .globl lb_memory_CAllocator_release
    .type lb_memory_CAllocator_release, %function
lb_memory_CAllocator_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #80
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L8_2
.L8_1:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_2:
.L8_3:
    adrp x15, lb_memory_diagnostic
    add x15, x15, :lo12:lb_memory_diagnostic
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne .L8_6
.L8_5:
    ldr x14, [x19]
    sub x10, x29, #136
    str x14, [x10]
    mov x0, x14
    bl free
.L8_17:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_6:
.L8_7:
    ldr x15, [x19]
    mov x0, x15
    movz x1, #221
    mov x2, x14
    bl memset
    mov x15, x0
    cbnz x15, .L8_9
    b .L8_10
.L8_10:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L8_9:
    adrp x20, lb_memory_12records_lock
    add x20, x20, :lo12:lb_memory_12records_lock
    mov x0, x20
    bl lb_memory_lock
    adrp x21, lb_memory_15quarantine_next
    add x21, x21, :lo12:lb_memory_15quarantine_next
    ldr x14, [x21]
.L8_12:
    movz x10, #64
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    adrp x12, lb_memory_quarantine
    add x12, x12, :lo12:lb_memory_quarantine
    movz x10, #64
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x15, x15, x10
    add x22, x12, x15
    add x15, x22, #16
    ldrb w15, [x15]
    cbnz w15, .L8_16
    b .L8_14
.L8_16:
    sub x23, x29, #96
    mov x10, x22
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L8_13:
    ldr x14, [x23]
    sub x10, x29, #136
    str x14, [x10]
    mov x0, x14
    bl free
.L8_18:
    b .L8_15
.L8_14:
.L8_15:
    sub x23, x29, #120
    mov x10, x19
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x14, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    mov x0, x20
    bl lb_memory_unlock
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_CAllocator_release, .-lb_memory_CAllocator_release

    .p2align 2
    .globl lb_memory_Arena_over
    .type lb_memory_Arena_over, %function
lb_memory_Arena_over:
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
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    sub x20, x29, #184
    sub x19, x29, #152
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x15, [x15]
    sub x12, x29, #168
    ldr x12, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x12
    movz x2, #16
    sub x8, x29, #208
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #208
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, .L9_1
    b .L9_2
.L9_1:
    sub x21, x29, #224
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L9_3
.L9_2:
    sub x19, x29, #136
    add x14, x19, #40
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_30
    add x15, x15, :lo12:.Ltext_30
    sub x12, x29, #240
    str x15, [x12]
    add x15, x12, #8
    movz x9, #16
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_4:
.L9_3:
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #280
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    mov x10, x20
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #32
    mov x9, #0
    str x9, [x14]
    sub x23, x29, #136
    mov x10, x22
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x23, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_5:
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_Arena_over, .-lb_memory_Arena_over

    .p2align 2
    .globl lb_memory_Arena_allocate
    .type lb_memory_Arena_allocate, %function
lb_memory_Arena_allocate:
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
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x16, x29, #136
    str x2, [x16]
    sub x9, x29, #104
    ldr x15, [x9]
    sub x14, x29, #120
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne .L10_2
.L10_1:
    add x14, x15, #16
    ldr x12, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
.L10_4:
    sub x14, x29, #152
    str x12, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #176
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
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
.L10_2:
.L10_3:
    sub x14, x29, #136
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L10_8
.L10_7:
    mov x20, x14
    b .L10_9
.L10_8:
    movz x9, #1
    mov x20, x9
.L10_9:
    add x21, x15, #16
    add x22, x15, #32
    ldr x14, [x22]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x20
    bl lb_memory_14aligned_offset
    sub x16, x29, #192
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x12, x29, #192
    add x14, x12, #8
    ldrb w14, [x14]
    cbnz w14, .L10_10
    b .L10_11
.L10_10:
    ldr x23, [x12]
    b .L10_12
.L10_11:
    sub x19, x29, #216
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
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
.L10_12:
    sub x24, x29, #224
    mov x0, x23
    mov x1, x19
    movz x2, #64
    mov x3, x24
    bl lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #240
    ldr x15, [x24]
    str x15, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, .L10_14
    b .L10_15
.L10_14:
    b .L10_16
.L10_15:
    sub x19, x29, #264
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
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
.L10_16:
    add x14, x21, #8
    ldr x14, [x14]
    cmp x15, x14
    b.ls .L10_19
.L10_18:
    adrp x14, .Ltext_33
    add x14, x14, :lo12:.Ltext_33
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #5
    str x9, [x14]
    ldr x14, [x22]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    mov x3, x20
    mov x4, x14
    bl lb_memory_12note_refusal
    sub x21, x29, #304
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x23, x29, #96
    mov x10, x21
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
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
.L10_19:
.L10_20:
    str x15, [x22]
    ldr x13, [x21]
    add x12, x14, #1
    cmp x23, x12
    b.lo 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    cmp x15, x12
    b.lo 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    cmp x23, x15
    b.ls .L10_22
.L10_23:
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
.L10_22:
    add x14, x23, x13
    sub x12, x15, x23
    sub x19, x29, #320
    str x14, [x19]
    add x14, x19, #8
    str x12, [x14]
    sub x20, x29, #344
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #96
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
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

    .size lb_memory_Arena_allocate, .-lb_memory_Arena_allocate

    .p2align 2
    .globl lb_memory_Arena_resize
    .type lb_memory_Arena_resize, %function
lb_memory_Arena_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #96
    str x3, [x16]
    sub x9, x29, #64
    ldr x21, [x9]
    sub x14, x29, #96
    ldr x19, [x14]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x20, [x15]
    cmp x19, x20
    b.ne .L11_2
.L11_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_4:
    b .L11_3
.L11_2:
.L11_3:
    mov x10, #0
    cmp x20, x10
    b.ne .L11_6
.L11_5:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_8:
    b .L11_7
.L11_6:
.L11_7:
    ldr x15, [x14]
    add x22, x21, #16
    ldr x12, [x22]
    sub x23, x29, #104
    mov x0, x15
    mov x1, x12
    movz x2, #64
    mov x3, x23
    bl lb_core_6qsub_u
    mov w15, w0
    sub x13, x29, #120
    ldr x12, [x23]
    str x12, [x13]
    add x13, x13, #8
    strb w15, [x13]
    ldrb w15, [x13]
    cbnz w15, .L11_9
    b .L11_10
.L11_9:
    b .L11_11
.L11_10:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_12:
.L11_11:
    add x14, x21, #32
    ldr x15, [x14]
    cmp x12, x15
    cset w13, hi
    cbnz w13, .L11_26
    b .L11_16
.L11_26:
    mov w15, w13
    b .L11_17
.L11_16:
    sub x13, x15, x12
    cmp x20, x13
    cset w13, eq
    mov x10, #0
    cmp w13, w10
    cset w13, eq
    mov w15, w13
.L11_17:
    and w13, w15, #255
    cbnz w13, .L11_13
    b .L11_14
.L11_13:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_18:
    b .L11_15
.L11_14:
.L11_15:
    add x15, x22, #8
    ldr x15, [x15]
    cmp x12, x15
    cset w13, hi
    cbnz w13, .L11_27
    b .L11_22
.L11_27:
    mov w15, w13
    b .L11_23
.L11_22:
    sub x13, x15, x12
    cmp x19, x13
    cset w13, hi
    mov w15, w13
.L11_23:
    and w13, w15, #255
    cbnz w13, .L11_19
    b .L11_20
.L11_19:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_24:
    b .L11_21
.L11_20:
.L11_21:
    mov x9, x19
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_25:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_Arena_resize, .-lb_memory_Arena_resize

    .p2align 2
    .globl lb_memory_Arena_release
    .type lb_memory_Arena_release, %function
lb_memory_Arena_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x16, x29, #40
    str x1, [x16]
    str x2, [x16, #8]
    adrp x14, lb_memory_diagnostic
    add x14, x14, :lo12:lb_memory_diagnostic
    ldrb w14, [x14]
    cbnz w14, .L12_4
    b .L12_8
.L12_8:
    mov w15, w14
    b .L12_5
.L12_4:
    sub x14, x29, #40
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, hi
.L12_5:
    and w14, w15, #255
    cbnz w14, .L12_1
    b .L12_2
.L12_1:
    sub x14, x29, #40
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x15
    movz x1, #221
    mov x2, x14
    bl memset
    mov x14, x0
    cbnz x14, .L12_6
    b .L12_7
.L12_7:
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L12_6:
    b .L12_3
.L12_2:
.L12_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_Arena_release, .-lb_memory_Arena_release

    .p2align 2
    .globl lb_memory_Arena_6in_use
    .type lb_memory_Arena_6in_use, %function
lb_memory_Arena_6in_use:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #32
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_1:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_Arena_6in_use, .-lb_memory_Arena_6in_use

    .p2align 2
    .globl lb_memory_Arena_capacity
    .type lb_memory_Arena_capacity, %function
lb_memory_Arena_capacity:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #16
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_1:
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_Arena_capacity, .-lb_memory_Arena_capacity

    .p2align 2
    .globl lb_memory_Arena_reset
    .type lb_memory_Arena_reset, %function
lb_memory_Arena_reset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #32
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_Arena_reset, .-lb_memory_Arena_reset

    .p2align 2
    .globl lb_memory_Arena_destroy
    .type lb_memory_Arena_destroy, %function
lb_memory_Arena_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    add x15, x15, #16
    ldr x15, [x15]
    add x19, x20, #16
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
    ldr x15, [x19]
    add x14, x19, #8
    ldr x14, [x14]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
.L16_1:
    sub x14, x29, #56
    str x15, [x14]
    add x12, x14, #8
    mov x9, #0
    str x9, [x12]
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_Arena_destroy, .-lb_memory_Arena_destroy

    .p2align 2
    .globl lb_memory_PageAllocator_allocate
    .type lb_memory_PageAllocator_allocate, %function
lb_memory_PageAllocator_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x16, x29, #120
    str x2, [x16]
    sub x14, x29, #104
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne .L17_2
.L17_1:
    sub x14, x29, #136
    movz x9, #8
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #160
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_4:
    b .L17_3
.L17_2:
.L17_3:
    bl getpagesize
    mov w14, w0
    sxtw x20, w14
    b .L17_31
.L17_30:
    adrp x0, .Ltext_54
    add x0, x0, :lo12:.Ltext_54
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L17_31:
    sub x14, x29, #120
    ldr x21, [x14]
    cmp x21, x20
    cset w14, hi
    cbnz w14, .L17_34
    b .L17_8
.L17_34:
    mov w15, w14
    b .L17_9
.L17_8:
    mov x10, #0
    cmp x21, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L17_10
    b .L17_35
.L17_35:
    mov w14, w15
    b .L17_11
.L17_10:
    cbnz w14, .L17_12
    b .L17_13
.L17_12:
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
.L17_13:
    udiv x11, x20, x21
    msub x14, x11, x21, x20
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L17_11:
    and w15, w14, #255
.L17_9:
    and w14, w15, #255
    cbnz w14, .L17_5
    b .L17_6
.L17_5:
    adrp x14, .Ltext_44
    add x14, x14, :lo12:.Ltext_44
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #14
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    mov x3, x21
    mov x4, #0
    bl lb_memory_12note_refusal
    sub x20, x29, #200
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x22, x29, #80
    mov x10, x20
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_14:
    b .L17_7
.L17_6:
.L17_7:
    mov x9, x20
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x14, x9
    sub x22, x29, #208
    mov x0, x19
    mov x1, x14
    movz x2, #64
    mov x3, x22
    bl lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #224
    ldr x15, [x22]
    str x15, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, .L17_15
    b .L17_16
.L17_15:
    b .L17_17
.L17_16:
    sub x19, x29, #248
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_18:
.L17_17:
    mov x10, #0
    cmp x20, x10
    b.ne .L17_20
.L17_19:
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
.L17_20:
    udiv x14, x15, x20
    mov x9, x14
    mov x10, x20
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x22, x9
    sub x10, x29, #368
    str x22, [x10]
    adrp x14, lb_memory_17private_anonymous
    add x14, x14, :lo12:lb_memory_17private_anonymous
    ldrsw x14, [x14]
    mov x0, #0
    mov x1, x22
    movz x2, #3
    mov x3, x14
    movn x4, #0
    mov x5, #0
    bl mmap
    mov x14, x0
    b .L17_33
.L17_32:
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L17_33:
    cbnz x14, .L17_21
    b .L17_22
.L17_21:
    b .L17_23
.L17_22:
    sub x19, x29, #272
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_24:
.L17_23:
    movn x10, #0
    cmp x14, x10
    b.ne .L17_26
.L17_25:
    adrp x14, .Ltext_44
    add x14, x14, :lo12:.Ltext_44
    sub x15, x29, #288
    str x14, [x15]
    add x14, x15, #8
    movz x9, #14
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    mov x3, x21
    mov x4, #0
    bl lb_memory_12note_refusal
    sub x20, x29, #312
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x22, x29, #80
    mov x10, x20
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_28:
    b .L17_27
.L17_26:
.L17_27:
    sub x15, x29, #328
    str x14, [x15]
    add x12, x15, #8
    str x22, [x12]
    sub x19, x29, #352
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #16
    movz x9, #1
    strb w9, [x15]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_29:
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_PageAllocator_allocate, .-lb_memory_PageAllocator_allocate

    .p2align 2
    .globl lb_memory_PageAllocator_resize
    .type lb_memory_PageAllocator_resize, %function
lb_memory_PageAllocator_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #24
    str x0, [x16]
    sub x16, x29, #40
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #56
    str x3, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #40
    add x15, x15, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w14, ls
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_1:
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_PageAllocator_resize, .-lb_memory_PageAllocator_resize

    .p2align 2
    .globl lb_memory_PageAllocator_release
    .type lb_memory_PageAllocator_release, %function
lb_memory_PageAllocator_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #80
    add x14, x19, #8
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ne .L19_2
.L19_1:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_2:
.L19_3:
    adrp x14, lb_memory_diagnostic
    add x14, x14, :lo12:lb_memory_diagnostic
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L19_6
.L19_5:
    mov x10, x19
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x14
    mov x1, x20
    bl munmap
    mov w14, w0
.L19_17:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_6:
.L19_7:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #221
    mov x2, x20
    bl memset
    mov x14, x0
    cbnz x14, .L19_9
    b .L19_10
.L19_10:
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L19_9:
    adrp x20, lb_memory_12records_lock
    add x20, x20, :lo12:lb_memory_12records_lock
    mov x0, x20
    bl lb_memory_lock
    adrp x21, lb_memory_9held_next
    add x21, x21, :lo12:lb_memory_9held_next
    ldr x14, [x21]
.L19_12:
    movz x10, #8
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    adrp x12, lb_memory_10held_pages
    add x12, x12, :lo12:lb_memory_10held_pages
    movz x10, #8
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x15, x15, x10
    add x22, x12, x15
    add x15, x22, #16
    ldrb w15, [x15]
    cbnz w15, .L19_16
    b .L19_14
.L19_16:
    sub x23, x29, #96
    mov x10, x22
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L19_13:
    mov x10, x23
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #136
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x15
    mov x1, x14
    bl munmap
    mov w14, w0
.L19_18:
    b .L19_15
.L19_14:
.L19_15:
    sub x23, x29, #120
    mov x10, x19
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x14, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    mov x0, x20
    bl lb_memory_unlock
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_PageAllocator_release, .-lb_memory_PageAllocator_release

    .p2align 2
    .globl lb_memory_12note_refusal
    .type lb_memory_12note_refusal, %function
lb_memory_12note_refusal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    str x19, [sp, #424]
    str x20, [sp, #416]
    str x21, [sp, #408]
    str x22, [sp, #400]
    str x23, [sp, #392]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #88
    str x2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x16, x29, #120
    str x4, [x16]
    sub x19, x29, #280
    mov x0, x19
    mov x1, #0
    movz x2, #160
    bl _memset
    sub x22, x29, #296
    sub x14, x29, #352
    str x19, [x14]
    add x14, x14, #8
    movz x9, #160
    str x9, [x14]
    sub x20, x29, #376
    str x19, [x20]
    add x19, x20, #8
    movz x9, #160
    str x9, [x19]
    add x21, x20, #16
    mov x9, #0
    str x9, [x21]
    adrp x14, .Ltext_56
    add x14, x14, :lo12:.Ltext_56
    mov x0, x20
    mov x1, x14
    movz x2, #12
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #72
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_57
    add x14, x14, :lo12:.Ltext_57
    mov x0, x20
    mov x1, x14
    movz x2, #9
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #88
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_58
    add x14, x14, :lo12:.Ltext_58
    mov x0, x20
    mov x1, x14
    movz x2, #20
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_59
    add x14, x14, :lo12:.Ltext_59
    mov x0, x20
    mov x1, x14
    movz x2, #7
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #120
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_60
    add x14, x14, :lo12:.Ltext_60
    mov x0, x20
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    sub x23, x29, #424
    ldr x14, [x21]
    ldr x15, [x19]
    cmp x14, x15
    b.ls .L20_4
.L20_3:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_61
    add x15, x15, :lo12:.Ltext_61
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L20_5
.L20_4:
    mov x0, x20
    bl lb_core_13format_finish
    sub x16, x29, #440
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #440
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L20_5:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L20_7
    b .L20_6
.L20_7:
    add x14, x23, #16
    sub x15, x29, #336
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L20_1
.L20_6:
    sub x19, x29, #312
    mov x10, x23
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L20_2
.L20_1:
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_8:
.L20_2:
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    movz x0, #2
    mov x1, x14
    mov x2, x15
    bl write
    mov x14, x0
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_12note_refusal, .-lb_memory_12note_refusal

    .p2align 2
    .globl lb_memory_lock
    .type lb_memory_lock, %function
lb_memory_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    sub x15, x29, #42
    add x12, x15, #1
.L21_1:
.L21_2:
    ldr x13, [x14]
    mov x10, #0
    movz x11, #1
    mov x17, x13
1:
    ldaxrb w9, [x17]
    cmp w9, w10
    b.ne 2f
    stlxrb w16, w11, [x17]
    cbnz w16, 1b
2:
    clrex
    mov w13, w9
    mov x10, #0
    cmp w13, w10
    cset w19, eq
    strb w19, [x15]
    strb w13, [x12]
    ldrb w13, [x15]
    ldrb w19, [x12]
    and w13, w13, #255
    cbnz w13, .L21_4
    b .L21_5
.L21_4:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_5:
.L21_6:
    b .L21_1

    .size lb_memory_lock, .-lb_memory_lock

    .p2align 2
    .globl lb_memory_unlock
    .type lb_memory_unlock, %function
lb_memory_unlock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x9, #0
    mov x10, x14
    stlrb w9, [x10]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_unlock, .-lb_memory_unlock

    .p2align 2
    .globl lb_memory_9note_site
    .type lb_memory_9note_site, %function
lb_memory_9note_site:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #112
    str w4, [x16]
    adrp x19, lb_memory_12records_lock
    add x19, x19, :lo12:lb_memory_12records_lock
    mov x0, x19
    bl lb_memory_lock
    adrp x20, lb_memory_9site_next
    add x20, x20, :lo12:lb_memory_9site_next
    ldr x14, [x20]
    movz x10, #256
    cmp x14, x10
    b.hs .L23_2
.L23_1:
    adrp x15, lb_memory_sites
    add x15, x15, :lo12:lb_memory_sites
    movz x10, #40
    mul x12, x14, x10
    add x21, x15, x12
    sub x22, x29, #152
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x15, x29, #64
    ldr x15, [x15]
    str x15, [x22]
    sub x15, x29, #80
    ldr x15, [x15]
    add x12, x22, #8
    str x15, [x12]
    sub x15, x29, #96
    add x12, x22, #16
    mov x10, x15
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x15, x29, #112
    ldr w15, [x15]
    add x12, x22, #32
    str w15, [x12]
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b .L23_3
.L23_2:
    adrp x21, lb_memory_sites
    add x21, x21, :lo12:lb_memory_sites
    movz x9, #1
    mov x22, x9
.L23_4:
    movz x10, #256
    cmp x22, x10
    b.hs .L23_6
.L23_5:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #256
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    movz x10, #40
    mul x14, x14, x10
    add x14, x21, x14
    movz x10, #40
    mul x15, x22, x10
    add x15, x21, x15
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x22, #1
    mov x22, x14
    b .L23_4
.L23_6:
    adrp x14, lb_memory_sites
    add x14, x14, :lo12:lb_memory_sites
    movz x10, #10200
    add x21, x14, x10
    sub x22, x29, #192
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x14, x29, #64
    ldr x14, [x14]
    str x14, [x22]
    sub x14, x29, #80
    ldr x14, [x14]
    add x15, x22, #8
    str x14, [x15]
    sub x14, x29, #96
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #112
    ldr w14, [x14]
    add x15, x22, #32
    str w14, [x15]
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
.L23_3:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_66
    add x0, x0, :lo12:.Ltext_66
    adrp x1, .Ltext_71
    add x1, x1, :lo12:.Ltext_71
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    mov x0, x19
    bl lb_memory_unlock
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_9note_site, .-lb_memory_9note_site

    .p2align 2
    .globl lb_memory_16allocation_sites
    .type lb_memory_16allocation_sites, %function
lb_memory_16allocation_sites:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    adrp x14, lb_memory_9site_next
    add x14, x14, :lo12:lb_memory_9site_next
    ldr x14, [x14]
    movz x10, #256
    cmp x14, x10
    b.hs .L24_2
.L24_1:
    mov x15, x14
    b .L24_3
.L24_2:
    movz x9, #256
    mov x15, x9
.L24_3:
    adrp x12, lb_memory_sites
    add x12, x12, :lo12:lb_memory_sites
    movz x10, #257
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_67
    add x0, x0, :lo12:.Ltext_67
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls .L24_4
.L24_5:
    adrp x0, .Ltext_67
    add x0, x0, :lo12:.Ltext_67
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
.L24_4:
    sub x14, x29, #56
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
.L24_6:
    adrp x0, .Ltext_67
    add x0, x0, :lo12:.Ltext_67
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_16allocation_sites, .-lb_memory_16allocation_sites

    .p2align 2
    .globl lb_memory_startup
    .type lb_memory_startup, %function
lb_memory_startup:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    adrp x19, lb_memory_heap
    add x19, x19, :lo12:lb_memory_heap
    adrp x14, lb_memory_11c_allocator
    add x14, x14, :lo12:lb_memory_11c_allocator
    sub x15, x29, #40
    str x14, [x15]
    adrp x14, lb_vt_memory_CAllocator_Allocator
    add x14, x14, :lo12:lb_vt_memory_CAllocator_Allocator
    add x12, x15, #8
    str x14, [x12]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_startup, .-lb_memory_startup

    .p2align 2
    .globl lb_memory_set
    .type lb_memory_set, %function
lb_memory_set:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #48
    str w2, [x16]
    sub x14, x29, #32
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls .L26_2
.L26_1:
    ldr x12, [x14]
    sub x13, x29, #48
    ldrb w13, [x13]
    mov w13, w13
    mov x0, x12
    mov x1, x13
    mov x2, x15
    bl memset
    mov x12, x0
    cbnz x12, .L26_4
    b .L26_5
.L26_5:
    adrp x0, .Ltext_68
    add x0, x0, :lo12:.Ltext_68
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L26_4:
    b .L26_3
.L26_2:
.L26_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_set, .-lb_memory_set

    .p2align 2
    .globl lb_memory_grow
    .type lb_memory_grow, %function
lb_memory_grow:
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
    sub x16, x29, #152
    str x2, [x16]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x19, x0
    ldr x14, [x19]
    add x20, x19, #8
    ldr x15, [x20]
    add x15, x15, #8
    ldr x15, [x15]
    sub x21, x29, #136
    sub x12, x29, #152
    ldr x22, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x22
    ldr x17, [sp], #16
    blr x17
    mov w14, w0
    cbnz w14, .L27_1
    b .L27_2
.L27_1:
    ldr x14, [x21]
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    str x22, [x14]
    sub x19, x29, #120
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
.L27_4:
    b .L27_3
.L27_2:
.L27_3:
    sub x23, x29, #184
    ldr x14, [x19]
    ldr x15, [x20]
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #8
    sub x8, x29, #208
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #208
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, .L27_5
    b .L27_6
.L27_5:
    sub x24, x29, #224
    mov x10, x15
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L27_7
.L27_6:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_30
    add x15, x15, :lo12:.Ltext_30
    sub x12, x29, #240
    str x15, [x12]
    add x15, x12, #8
    movz x9, #16
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
.L27_8:
.L27_7:
    mov x10, x24
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #8
    ldr x14, [x14]
    cmp x14, x22
    b.hs .L27_10
.L27_9:
    mov x15, x14
    b .L27_11
.L27_10:
    mov x15, x22
.L27_11:
    mov x10, #0
    cmp x15, x10
    b.ls .L27_13
.L27_12:
    ldr x14, [x23]
    ldr x12, [x21]
    mov x0, x14
    mov x1, x12
    mov x2, x15
    bl memcpy
    mov x14, x0
    cbnz x14, .L27_15
    b .L27_16
.L27_16:
    adrp x0, .Ltext_69
    add x0, x0, :lo12:.Ltext_69
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L27_15:
    b .L27_14
.L27_13:
.L27_14:
    ldr x14, [x19]
    ldr x15, [x20]
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #120
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
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
.L27_17:
    adrp x0, .Ltext_70
    add x0, x0, :lo12:.Ltext_70
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_memory_grow, .-lb_memory_grow

    .section .init_array,"aw"
    .p2align 3
    .quad lb_memory_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/memory.lucb:31:9"
.Ltext_2:
    .asciz "src/std/memory.lucb:35:13"
.Ltext_3:
    .asciz "index out of bounds"
.Ltext_4:
    .asciz "src/std/memory.lucb:38:9"
.Ltext_5:
    .asciz "fixed buffer"
.Ltext_6:
    .asciz "src/std/memory.lucb:41:9"
.Ltext_7:
    .asciz "src/std/memory.lucb:42:9"
.Ltext_8:
    .asciz "src/std/memory.lucb:50:9"
.Ltext_9:
    .asciz "src/std/memory.lucb:52:9"
.Ltext_10:
    .asciz "src/std/memory.lucb:54:9"
.Ltext_11:
    .asciz "src/std/memory.lucb:55:9"
.Ltext_12:
    .asciz "null_foreign"
.Ltext_13:
    .asciz "src/std/memory.lucb:61:13"
.Ltext_14:
    .asciz "src/std/memory.lucb:62:9"
.Ltext_15:
    .asciz "src/std/memory.lucb:63:9"
.Ltext_16:
    .asciz "division by zero"
.Ltext_17:
    .asciz "src/std/memory.lucb:72:5"
.Ltext_18:
    .asciz "src/std/memory.lucb:73:5"
.Ltext_19:
    .asciz "src/std/memory.lucb:74:5"
.Ltext_20:
    .asciz "src/std/memory.lucb:76:5"
.Ltext_21:
    .asciz "src/std/memory.lucb:85:9"
.Ltext_22:
    .asciz "heap"
.Ltext_23:
    .asciz "src/std/memory.lucb:95:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:98:9"
.Ltext_25:
    .asciz "src/std/memory.lucb:108:9"
.Ltext_26:
    .asciz "src/std/memory.lucb:110:9"
.Ltext_27:
    .asciz "src/std/memory.lucb:111:9"
.Ltext_28:
    .asciz "src/std/memory.lucb:113:9"
.Ltext_29:
    .asciz "src/std/memory.lucb:114:9"
.Ltext_30:
    .asciz "memory.exhausted"
.Ltext_31:
    .asciz "src/std/memory.lucb:132:9"
.Ltext_32:
    .asciz "src/std/memory.lucb:136:13"
.Ltext_33:
    .asciz "arena"
.Ltext_34:
    .asciz "src/std/memory.lucb:144:9"
.Ltext_35:
    .asciz "src/std/memory.lucb:153:9"
.Ltext_36:
    .asciz "src/std/memory.lucb:155:9"
.Ltext_37:
    .asciz "src/std/memory.lucb:157:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:158:9"
.Ltext_39:
    .asciz "src/std/memory.lucb:162:13"
.Ltext_40:
    .asciz "src/std/memory.lucb:166:9"
.Ltext_41:
    .asciz "src/std/memory.lucb:169:9"
.Ltext_42:
    .asciz "src/std/memory.lucb:178:9"
.Ltext_43:
    .asciz "src/std/memory.lucb:189:9"
.Ltext_44:
    .asciz "page allocator"
.Ltext_45:
    .asciz "src/std/memory.lucb:192:9"
.Ltext_46:
    .asciz "src/std/memory.lucb:193:9"
.Ltext_47:
    .asciz "src/std/memory.lucb:198:9"
.Ltext_48:
    .asciz "src/std/memory.lucb:201:9"
.Ltext_49:
    .asciz "src/std/memory.lucb:211:9"
.Ltext_50:
    .asciz "src/std/memory.lucb:213:9"
.Ltext_51:
    .asciz "src/std/memory.lucb:214:9"
.Ltext_52:
    .asciz "src/std/memory.lucb:216:9"
.Ltext_53:
    .asciz "src/std/memory.lucb:217:9"
.Ltext_54:
    .asciz "src/std/memory.lucb:234:5"
.Ltext_55:
    .asciz "src/std/memory.lucb:239:5"
.Ltext_56:
    .asciz "memory: the "
.Ltext_57:
    .asciz " refused "
.Ltext_58:
    .asciz " bytes at alignment "
.Ltext_59:
    .asciz " (used "
.Ltext_60:
    .asciz ")\n"
.Ltext_61:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_62:
    .asciz "src/std/memory.lucb:291:9"
.Ltext_63:
    .asciz "src/std/memory.lucb:295:13"
.Ltext_64:
    .asciz "src/std/memory.lucb:296:13"
.Ltext_65:
    .asciz "src/std/memory.lucb:297:9"
.Ltext_66:
    .asciz "src/std/memory.lucb:298:5"
.Ltext_67:
    .asciz "src/std/memory.lucb:305:5"
.Ltext_68:
    .asciz "src/std/memory.lucb:340:9"
.Ltext_69:
    .asciz "src/std/memory.lucb:359:9"
.Ltext_70:
    .asciz "src/std/memory.lucb:361:5"
.Ltext_71:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_memory_CAllocator_Allocator
lb_vt_memory_CAllocator_Allocator:
    .quad lb_memory_CAllocator_allocate
    .quad lb_memory_CAllocator_resize
    .quad lb_memory_CAllocator_release

    .bss
    .globl lb_memory_17private_anonymous
    .type lb_memory_17private_anonymous, %object
    .p2align 2
lb_memory_17private_anonymous:
    .zero 4

    .bss
    .globl lb_memory_diagnostic
    .type lb_memory_diagnostic, %object
    .p2align 0
lb_memory_diagnostic:
    .zero 1

    .bss
    .globl lb_memory_sites
    .type lb_memory_sites, %object
    .p2align 3
lb_memory_sites:
    .zero 10240

    .bss
    .globl lb_memory_9site_next
    .type lb_memory_9site_next, %object
    .p2align 3
lb_memory_9site_next:
    .zero 8

    .bss
    .globl lb_memory_12records_lock
    .type lb_memory_12records_lock, %object
    .p2align 0
lb_memory_12records_lock:
    .zero 1

    .bss
    .globl lb_memory_quarantine
    .type lb_memory_quarantine, %object
    .p2align 3
lb_memory_quarantine:
    .zero 1536

    .bss
    .globl lb_memory_15quarantine_next
    .type lb_memory_15quarantine_next, %object
    .p2align 3
lb_memory_15quarantine_next:
    .zero 8

    .bss
    .globl lb_memory_10held_pages
    .type lb_memory_10held_pages, %object
    .p2align 3
lb_memory_10held_pages:
    .zero 192

    .bss
    .globl lb_memory_9held_next
    .type lb_memory_9held_next, %object
    .p2align 3
lb_memory_9held_next:
    .zero 8

    .bss
    .globl lb_memory_exhausted
    .type lb_memory_exhausted, %object
    .p2align 2
lb_memory_exhausted:
    .zero 4

    .bss
    .globl lb_memory_unset
    .type lb_memory_unset, %object
    .p2align 2
lb_memory_unset:
    .zero 4

    .bss
    .globl lb_memory_11c_allocator
    .type lb_memory_11c_allocator, %object
    .p2align 0
lb_memory_11c_allocator:
    .zero 1

    .section .tbss,"awT",%nobits
    .globl lb_memory_allocator
    .type lb_memory_allocator, %object
    .p2align 3
lb_memory_allocator:
    .zero 16

    .bss
    .globl lb_memory_heap
    .type lb_memory_heap, %object
    .p2align 3
lb_memory_heap:
    .zero 16


    .section .note.GNU-stack,"",%progbits
