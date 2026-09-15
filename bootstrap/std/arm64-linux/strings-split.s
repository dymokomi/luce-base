    .text

    .p2align 2
    .globl lb_strings_split_0init
    .type lb_strings_split_0init, %function
lb_strings_split_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_strings_split_0init, .-lb_strings_split_0init

    .p2align 2
    .globl lb_strings_split
    .type lb_strings_split, %function
lb_strings_split:
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
    str x24, [sp, #360]
    str x25, [sp, #352]
    str x26, [sp, #344]
    str x27, [sp, #336]
    str x28, [sp, #328]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str w2, [x16]
    sub x19, x29, #168
    ldr x20, [x19]
    add x14, x19, #8
    ldr x21, [x14]
    sub x22, x29, #184
    sub x23, x29, #192
    sub x27, x29, #208
    add x24, x27, #8
    movz x9, #1
    mov x25, x9
    mov x9, #0
    mov x26, x9
.L1_1:
    cmp x26, x21
    b.hs .L1_4
.L1_2:
    add x14, x20, x26
    ldrb w14, [x14]
    and w14, w14, #255
    ldrb w15, [x22]
    cmp w14, w15
    b.ne .L1_6
.L1_5:
    mov x0, x25
    movz x1, #1
    movz x2, #64
    mov x3, x23
    bl lb_core_6qadd_u
    mov w14, w0
    ldr x15, [x23]
    str x15, [x27]
    strb w14, [x24]
    ldrb w14, [x24]
    cbnz w14, .L1_8
    b .L1_9
.L1_8:
    b .L1_10
.L1_9:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #224
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_11:
.L1_10:
    mov x14, x15
    b .L1_7
.L1_6:
    mov x14, x25
.L1_7:
.L1_3:
    add x15, x26, #1
    mov x25, x14
    mov x26, x15
    b .L1_1
.L1_4:
    sub x22, x29, #240
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    sub x23, x29, #288
    movz x10, #1024, lsl #48
    cmp x25, x10
    b.ls .L1_13
.L1_12:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_14
.L1_13:
    lsl x24, x25, #4
    ldr x14, [x15]
    add x12, x15, #8
    ldr x12, [x12]
    cbnz x12, .L1_15
    b .L1_16
.L1_16:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L1_15:
    ldr x15, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #312
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #312
    add x15, x26, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x24, x10
    cset w13, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w13, w15
    cbnz w15, .L1_17
    b .L1_18
.L1_17:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_14
.L1_18:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    str x25, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L1_14:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L1_20
    b .L1_19
.L1_20:
    add x14, x23, #16
    sub x19, x29, #152
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_21:
.L1_19:
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #328
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x24, x29, #184
    add x25, x22, #8
    add x26, x21, #1
    sub x9, x29, #344
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #24]
    sub x9, x29, #360
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #8]
    mov x9, #0
    mov x28, x9
    mov x9, #0
    mov x14, x9
    mov x9, #0
    mov x27, x9
.L1_22:
    cmp x27, x21
    b.hs .L1_24
.L1_23:
    add x15, x20, x27
    ldrb w15, [x15]
    ldrb w12, [x24]
    cmp w15, w12
    b.ne .L1_26
.L1_25:
    ldr x15, [x22]
    ldr x12, [x25]
    cmp x28, x12
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    lsl x12, x28, #4
    add x12, x15, x12
    cmp x14, x26
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x27, x26
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x14, x27
    b.ls .L1_28
.L1_29:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L1_28:
    add x15, x20, x14
    sub x13, x27, x14
    ldr x10, [sp, #32]
    str x15, [x10]
    ldr x10, [sp, #24]
    str x13, [x10]
    ldr x10, [sp, #16]
    str x15, [x10]
    ldr x10, [sp, #8]
    str x13, [x10]
    ldr x10, [sp, #16]
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x28, #1
    add x13, x27, #1
    b .L1_27
.L1_26:
    mov x15, x28
    mov x13, x14
.L1_27:
    add x12, x27, #1
    mov x28, x15
    mov x14, x13
    mov x27, x12
    b .L1_22
.L1_24:
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cmp x28, x12
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    lsl x12, x28, #4
    add x12, x15, x12
    add x15, x21, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x21, x15
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x14, x21
    b.ls .L1_30
.L1_31:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L1_30:
    add x15, x20, x14
    sub x13, x21, x14
    sub x19, x29, #376
    str x15, [x19]
    add x19, x19, #8
    str x13, [x19]
    sub x19, x29, #392
    str x15, [x19]
    add x15, x19, #8
    str x13, [x15]
    mov x10, x19
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #152
    mov x10, x22
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #40
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_32:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_strings_split, .-lb_strings_split

    .p2align 2
    .globl lb_strings_SplitIterator_over
    .type lb_strings_SplitIterator_over, %function
lb_strings_SplitIterator_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #184
    str x4, [x16]
    sub x19, x29, #168
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L2_2
.L2_1:
    sub x19, x29, #136
    add x14, x19, #56
    adrp x15, lb_strings_17invalid_separator
    add x15, x15, :lo12:lb_strings_17invalid_separator
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_14
    add x15, x15, :lo12:.Ltext_14
    sub x12, x29, #200
    str x15, [x12]
    add x15, x12, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #80
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    sub x20, x29, #256
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    sub x14, x29, #152
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #184
    ldr x14, [x14]
    add x15, x20, #40
    str x14, [x15]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #136
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x21, #80
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_5:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_strings_SplitIterator_over, .-lb_strings_SplitIterator_over

    .p2align 2
    .globl lb_strings_SplitIterator_next
    .type lb_strings_SplitIterator_next, %function
lb_strings_SplitIterator_next:
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
    str x24, [sp, #264]
    sub x16, x29, #104
    str x0, [x16]
    sub x9, x29, #104
    ldr x20, [x9]
    add x19, x20, #48
    ldrb w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne .L3_2
.L3_1:
    sub x19, x29, #128
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    b .L3_3
.L3_2:
.L3_3:
    add x21, x20, #40
    ldr x14, [x21]
    movz x10, #1
    cmp x14, x10
    b.ne .L3_6
.L3_5:
    mov x9, #0
    strb w9, [x19]
    ldr x15, [x20]
    add x14, x20, #8
    ldr x12, [x14]
    add x14, x20, #32
    ldr x13, [x14]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x13, x12
    b.ls .L3_8
.L3_9:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L3_8:
    add x14, x15, x13
    sub x19, x12, x13
    sub x20, x29, #144
    str x14, [x20]
    add x20, x20, #8
    str x19, [x20]
    sub x20, x29, #160
    str x14, [x20]
    add x14, x20, #8
    str x19, [x14]
    sub x19, x29, #184
    mov x10, x20
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_10:
    b .L3_7
.L3_6:
.L3_7:
    sub x22, x29, #200
    add x23, x20, #16
    add x24, x20, #32
    ldr x14, [x24]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_strings_9find_from
    sub x16, x29, #216
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #216
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #8
    ldrb w14, [x14]
    cbnz w14, .L3_14
    b .L3_12
.L3_14:
    ldr x14, [x22]
.L3_11:
    ldr x15, [x24]
    add x12, x23, #8
    ldr x12, [x12]
    mov x9, x14
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x24]
    ldr x12, [x21]
    movz x10, #1
    cmp x12, x10
    b.ls .L3_16
.L3_15:
    sub x13, x12, #1
    str x13, [x21]
    b .L3_17
.L3_16:
.L3_17:
    ldr x13, [x20]
    add x12, x20, #8
    ldr x12, [x12]
    add x12, x12, #1
    cmp x15, x12
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x14, x12
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x15, x14
    b.ls .L3_18
.L3_19:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L3_18:
    add x12, x15, x13
    sub x19, x14, x15
    sub x20, x29, #232
    str x12, [x20]
    add x20, x20, #8
    str x19, [x20]
    sub x20, x29, #248
    str x12, [x20]
    add x12, x20, #8
    str x19, [x12]
    sub x19, x29, #272
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x12, x19, #16
    movz x9, #1
    strb w9, [x12]
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_20:
    b .L3_13
.L3_12:
.L3_13:
    mov x9, #0
    strb w9, [x19]
    ldr x15, [x20]
    add x14, x20, #8
    ldr x12, [x14]
    ldr x13, [x24]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x13, x12
    b.ls .L3_21
.L3_22:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L3_21:
    add x14, x15, x13
    sub x19, x12, x13
    sub x20, x29, #288
    str x14, [x20]
    add x20, x20, #8
    str x19, [x20]
    sub x20, x29, #304
    str x14, [x20]
    add x14, x20, #8
    str x19, [x14]
    sub x19, x29, #328
    mov x10, x20
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_23:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_strings_SplitIterator_next, .-lb_strings_SplitIterator_next

    .p2align 2
    .globl lb_strings_8split_by
    .type lb_strings_8split_by, %function
lb_strings_8split_by:
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
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #176
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #192
    str x4, [x16]
    sub x19, x29, #248
    sub x14, x29, #160
    sub x15, x29, #176
    sub x12, x29, #192
    ldr x12, [x12]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x12
    sub x8, x29, #336
    bl lb_strings_SplitIterator_over
    sub x15, x29, #336
    add x14, x15, #80
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #56
    sub x19, x29, #144
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    sub x20, x29, #392
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    sub x14, x29, #416
    add x21, x14, #16
    sub x22, x29, #424
    sub x25, x29, #440
    add x23, x25, #8
    mov x9, #0
    mov x24, x9
.L4_4:
    mov x0, x20
    sub x8, x29, #416
    bl lb_strings_SplitIterator_next
    ldrb w14, [x21]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L4_6
.L4_5:
    mov x0, x24
    movz x1, #1
    movz x2, #64
    mov x3, x22
    bl lb_core_6qadd_u
    mov w14, w0
    ldr x15, [x22]
    str x15, [x25]
    strb w14, [x23]
    ldrb w14, [x23]
    cbnz w14, .L4_7
    b .L4_8
.L4_7:
    b .L4_9
.L4_8:
    sub x19, x29, #144
    add x14, x19, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #456
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_10:
.L4_9:
    mov x24, x15
    b .L4_4
.L4_6:
    sub x20, x29, #472
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    sub x21, x29, #520
    movz x10, #1024, lsl #48
    cmp x24, x10
    b.ls .L4_12
.L4_11:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L4_13
.L4_12:
    lsl x22, x24, #4
    ldr x14, [x15]
    add x12, x15, #8
    ldr x12, [x12]
    cbnz x12, .L4_14
    b .L4_15
.L4_15:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L4_14:
    ldr x15, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #8
    sub x8, x29, #544
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #544
    add x15, x23, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x22, x10
    cset w13, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w13, w15
    cbnz w15, .L4_16
    b .L4_17
.L4_16:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L4_13
.L4_17:
    ldr x14, [x23]
    str x14, [x21]
    add x14, x21, #8
    str x24, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
.L4_13:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, .L4_19
    b .L4_18
.L4_19:
    add x14, x21, #16
    sub x19, x29, #144
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_20:
.L4_18:
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #600
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    sub x27, x29, #624
    add x23, x27, #16
    sub x24, x29, #640
    add x25, x20, #8
    mov x9, #0
    mov x26, x9
.L4_21:
    mov x0, x22
    sub x8, x29, #624
    bl lb_strings_SplitIterator_next
    ldrb w14, [x23]
    cbnz w14, .L4_24
    b .L4_23
.L4_24:
    mov x10, x27
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L4_22:
    ldr x14, [x20]
    ldr x15, [x25]
    cmp x26, x15
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    lsl x15, x26, #4
    add x14, x14, x15
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x26, #1
    mov x26, x14
    b .L4_21
.L4_23:
    sub x19, x29, #144
    mov x10, x20
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_25:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_strings_8split_by, .-lb_strings_8split_by

    .p2align 2
    .globl lb_strings_10split_once
    .type lb_strings_10split_once, %function
lb_strings_10split_once:
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
    str x25, [sp, #272]
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #152
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #136
    sub x20, x29, #152
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_strings_find
    sub x16, x29, #168
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #168
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L5_1
    b .L5_2
.L5_1:
    ldr x21, [x15]
    b .L5_3
.L5_2:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x1, x20
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_4:
.L5_3:
    sub x24, x29, #240
    ldr x25, [x19]
    add x14, x19, #8
    ldr x22, [x14]
    add x23, x22, #1
    mov x9, #0
    cmp x9, x23
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x21, x23
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls .L5_5
.L5_6:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L5_5:
    sub x14, x29, #256
    str x25, [x14]
    add x14, x14, #8
    str x21, [x14]
    sub x14, x29, #272
    str x25, [x14]
    add x15, x14, #8
    str x21, [x15]
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #8
    ldr x14, [x14]
    mov x9, x21
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x23
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x22, x23
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x15, x22
    b.ls .L5_7
.L5_8:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L5_7:
    add x14, x25, x15
    sub x12, x22, x15
    sub x13, x29, #288
    str x14, [x13]
    add x13, x13, #8
    str x12, [x13]
    sub x13, x29, #304
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    add x14, x24, #16
    mov x10, x13
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #344
    mov x10, x24
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x1, x20
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_9:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_strings_10split_once, .-lb_strings_10split_once

    .p2align 2
    .globl lb_strings_10split_last
    .type lb_strings_10split_last, %function
lb_strings_10split_last:
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
    str x25, [sp, #272]
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #152
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #136
    sub x20, x29, #152
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_strings_9find_last
    sub x16, x29, #168
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #168
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L6_1
    b .L6_2
.L6_1:
    ldr x21, [x15]
    b .L6_3
.L6_2:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x1, x20
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_4:
.L6_3:
    sub x24, x29, #240
    ldr x25, [x19]
    add x14, x19, #8
    ldr x22, [x14]
    add x23, x22, #1
    mov x9, #0
    cmp x9, x23
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x21, x23
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls .L6_5
.L6_6:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L6_5:
    sub x14, x29, #256
    str x25, [x14]
    add x14, x14, #8
    str x21, [x14]
    sub x14, x29, #272
    str x25, [x14]
    add x15, x14, #8
    str x21, [x15]
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #8
    ldr x14, [x14]
    mov x9, x21
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x23
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x22, x23
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    cmp x15, x22
    b.ls .L6_7
.L6_8:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L6_7:
    add x14, x25, x15
    sub x12, x22, x15
    sub x13, x29, #288
    str x14, [x13]
    add x13, x13, #8
    str x12, [x13]
    sub x13, x29, #304
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    add x14, x24, #16
    mov x10, x13
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #344
    mov x10, x24
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x1, x20
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_9:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at

    .size lb_strings_10split_last, .-lb_strings_10split_last

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_split_0init

    .section .rodata
.Ltext_0:
    .asciz "the split result is too large"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/strings/split.lucb:8:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "src/std/strings/split.lucb:14:9"
.Ltext_6:
    .asciz "src/std/strings/split.lucb:15:13"
.Ltext_7:
    .asciz "index out of bounds"
.Ltext_8:
    .asciz "src/std/strings/split.lucb:16:13"
.Ltext_9:
    .asciz "src/std/strings/split.lucb:17:13"
.Ltext_10:
    .asciz "src/std/strings/split.lucb:18:9"
.Ltext_11:
    .asciz "src/std/strings/split.lucb:19:5"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "src/std/strings/split.lucb:20:5"
.Ltext_14:
    .asciz "a split iterator requires a nonempty separator"
.Ltext_15:
    .asciz "src/std/strings/split.lucb:37:9"
.Ltext_16:
    .asciz "src/std/strings/split.lucb:45:13"
.Ltext_17:
    .asciz "src/std/strings/split.lucb:49:13"
.Ltext_18:
    .asciz "src/std/strings/split.lucb:51:17"
.Ltext_19:
    .asciz "src/std/strings/split.lucb:52:13"
.Ltext_20:
    .asciz "src/std/strings/split.lucb:54:9"
.Ltext_21:
    .asciz "src/std/strings/split.lucb:65:5"
.Ltext_22:
    .asciz "src/std/strings/split.lucb:69:9"
.Ltext_23:
    .asciz "src/std/strings/split.lucb:70:9"
.Ltext_24:
    .asciz "src/std/strings/split.lucb:71:5"
.Ltext_25:
    .asciz "src/std/strings/split.lucb:77:5"
.Ltext_26:
    .asciz "src/std/strings/split.lucb:83:5"
.Ltext_27:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
