    .text

    .p2align 2
    .globl lb_paths_0init
    .type lb_paths_0init, %function
lb_paths_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_paths_0init, .-lb_paths_0init

    .p2align 2
    .globl lb_paths_separator
    .type lb_paths_separator, %function
lb_paths_separator:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrb w14, [x14]
    movz x10, #47
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_6
    b .L1_1
.L1_6:
    mov w14, w15
    b .L1_2
.L1_1:
    adrp x15, lb_platform_windows
    add x15, x15, :lo12:lb_platform_windows
    ldrb w15, [x15]
    cbnz w15, .L1_3
    b .L1_7
.L1_7:
    mov w14, w15
    b .L1_4
.L1_3:
    movz x10, #92
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L1_4:
    and w15, w14, #255
    mov w14, w15
.L1_2:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_5:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_separator, .-lb_paths_separator

    .p2align 2
    .globl lb_paths_14last_separator
    .type lb_paths_14last_separator, %function
lb_paths_14last_separator:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #72
    add x14, x19, #8
    ldr x20, [x14]
    mov x14, x20
.L2_1:
    mov x10, #0
    cmp x14, x10
    b.ls .L2_3
.L2_2:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x21, x9
    ldr x15, [x19]
    cmp x21, x20
    b.lo 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x21, x15
    ldrb w15, [x15]
    mov x0, x15
    bl lb_paths_separator
    mov w15, w0
    cbnz w15, .L2_4
    b .L2_5
.L2_4:
    sub x14, x29, #88
    str x21, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #56
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_7:
    b .L2_6
.L2_5:
.L2_6:
    mov x14, x21
    b .L2_1
.L2_3:
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_14last_separator, .-lb_paths_14last_separator

    .p2align 2
    .globl lb_paths_root
    .type lb_paths_root, %function
lb_paths_root:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #64
    mov x10, x19
    sub x11, x29, #128
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #136
    str w9, [x10]
.L3_22:
.L3_2:
.L3_3:
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L3_23
    b .L3_15
.L3_23:
    mov w14, w15
    b .L3_16
.L3_15:
    ldr x15, [x19]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldrb w15, [x15]
    mov x0, x15
    bl lb_paths_separator
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L3_16:
    and w15, w14, #255
    cbnz w15, .L3_12
    b .L3_13
.L3_12:
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #48
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_13:
.L3_14:
    ldr x15, [x19]
    ldr x14, [x20]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    movz x9, #1
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
.L3_18:
    sub x14, x29, #96
    str x15, [x14]
    add x14, x14, #8
    movz x9, #1
    str x9, [x14]
    sub x14, x29, #112
    str x15, [x14]
    add x19, x14, #8
    movz x9, #1
    str x9, [x19]
    sub x19, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_paths_root, .-lb_paths_root

    .p2align 2
    .globl lb_paths_9is_rooted
    .type lb_paths_9is_rooted, %function
lb_paths_9is_rooted:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #32
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_root
    sub x16, x29, #48
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #48
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, hi
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_9is_rooted, .-lb_paths_9is_rooted

    .p2align 2
    .globl lb_paths_11is_absolute
    .type lb_paths_11is_absolute, %function
lb_paths_11is_absolute:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #40
    mov x10, x19
    sub x11, x29, #56
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #64
    str w9, [x10]
.L5_15:
.L5_2:
.L5_3:
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L5_16
    b .L5_10
.L5_16:
    mov w14, w15
    b .L5_11
.L5_10:
    ldr x15, [x19]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldrb w15, [x15]
    mov x0, x15
    bl lb_paths_separator
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L5_11:
    and w15, w14, #255
    cbnz w15, .L5_7
    b .L5_8
.L5_7:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_8:
.L5_9:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_paths_11is_absolute, .-lb_paths_11is_absolute

    .p2align 2
    .globl lb_paths_directory
    .type lb_paths_directory, %function
lb_paths_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #80
    sub x20, x29, #64
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_root
    sub x16, x29, #96
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_14last_separator
    sub x16, x29, #112
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #112
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L6_1
    b .L6_2
.L6_1:
    ldr x14, [x15]
    b .L6_3
.L6_2:
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L6_5
.L6_4:
    sub x14, x29, #128
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L6_6
.L6_5:
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
.L6_6:
    sub x14, x29, #128
    sub x19, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_7:
.L6_3:
    add x15, x19, #8
    ldr x15, [x15]
    cmp x14, x15
    b.hs .L6_9
.L6_8:
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_11:
    b .L6_10
.L6_9:
.L6_10:
    ldr x19, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L6_12
.L6_13:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L6_12:
    sub x15, x29, #160
    str x19, [x15]
    add x15, x15, #8
    str x14, [x15]
    sub x15, x29, #176
    str x19, [x15]
    add x20, x15, #8
    str x14, [x20]
    sub x20, x29, #48
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_14:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_directory, .-lb_paths_directory

    .p2align 2
    .globl lb_paths_base
    .type lb_paths_base, %function
lb_paths_base:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    str x23, [sp, #168]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    sub x20, x29, #88
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_root
    sub x16, x29, #120
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #8
    ldr x19, [x14]
    add x21, x20, #8
    ldr x14, [x21]
    cmp x19, x14
    b.ne .L7_2
.L7_1:
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #72
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_14last_separator
    sub x16, x29, #152
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #152
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L7_5
    b .L7_6
.L7_5:
    ldr x14, [x15]
    b .L7_7
.L7_6:
    ldr x15, [x20]
    ldr x22, [x21]
    add x14, x22, #1
    cmp x19, x14
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x22, x14
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x19, x22
    b.ls .L7_8
.L7_9:
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L7_8:
    add x14, x19, x15
    sub x20, x22, x19
    sub x21, x29, #168
    str x14, [x21]
    add x21, x21, #8
    str x20, [x21]
    sub x21, x29, #184
    str x14, [x21]
    add x14, x21, #8
    str x20, [x14]
    sub x20, x29, #72
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_10:
.L7_7:
    ldr x19, [x20]
    ldr x22, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x23, x9
    add x15, x22, #1
    cmp x23, x15
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x22, x15
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x23, x22
    b.ls .L7_11
.L7_12:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L7_11:
    add x14, x19, x23
    sub x15, x22, x23
    sub x20, x29, #200
    str x14, [x20]
    add x20, x20, #8
    str x15, [x20]
    sub x20, x29, #216
    str x14, [x20]
    add x14, x20, #8
    str x15, [x14]
    sub x21, x29, #72
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_13:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_base, .-lb_paths_base

    .p2align 2
    .globl lb_paths_extension
    .type lb_paths_extension, %function
lb_paths_extension:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #96
    sub x14, x29, #80
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_base
    sub x16, x29, #112
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #46
    bl lb_strings_last
    sub x16, x29, #128
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #128
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    ldr x14, [x15]
    b .L8_3
.L8_2:
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #64
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_4:
.L8_3:
    mov x10, #0
    cmp x14, x10
    b.ne .L8_6
.L8_5:
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #64
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_8:
    b .L8_7
.L8_6:
.L8_7:
    ldr x20, [x19]
    add x15, x19, #8
    ldr x21, [x15]
    add x15, x21, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x21, x15
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x14, x21
    b.ls .L8_9
.L8_10:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L8_9:
    add x15, x14, x20
    sub x19, x21, x14
    sub x22, x29, #176
    str x15, [x22]
    add x22, x22, #8
    str x19, [x22]
    sub x22, x29, #192
    str x15, [x22]
    add x15, x22, #8
    str x19, [x15]
    sub x19, x29, #64
    mov x10, x22
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_11:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_extension, .-lb_paths_extension

    .p2align 2
    .globl lb_paths_stem
    .type lb_paths_stem, %function
lb_paths_stem:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #88
    sub x14, x29, #72
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_base
    sub x16, x29, #104
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #104
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #120
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_extension
    sub x16, x29, #136
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x19]
    add x14, x19, #8
    ldr x14, [x14]
    add x15, x20, #8
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x15, x9
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x15, x14
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls .L9_1
.L9_2:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L9_1:
    sub x14, x29, #152
    str x21, [x14]
    add x14, x14, #8
    str x15, [x14]
    sub x14, x29, #168
    str x21, [x14]
    add x19, x14, #8
    str x15, [x19]
    sub x19, x29, #56
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_3:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_paths_stem, .-lb_paths_stem

    .p2align 2
    .globl lb_paths_join
    .type lb_paths_join, %function
lb_paths_join:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #384]
    str x20, [sp, #376]
    str x21, [sp, #368]
    str x22, [sp, #360]
    str x23, [sp, #352]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #144
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_11is_absolute
    mov w14, w0
    cbnz w14, .L10_27
    b .L10_4
.L10_27:
    mov w15, w14
    b .L10_5
.L10_4:
    mov x10, x19
    sub x11, x29, #400
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #408
    str w9, [x10]
.L10_24:
    mov x9, #0
    mov w15, w9
.L10_5:
    and w14, w15, #255
    cbnz w14, .L10_28
    b .L10_6
.L10_28:
    mov w15, w14
    b .L10_7
.L10_6:
    sub x14, x29, #128
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
.L10_7:
    and w14, w15, #255
    cbnz w14, .L10_1
    b .L10_2
.L10_1:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl lb_strings_copy
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L10_9
    b .L10_8
.L10_9:
    add x14, x15, #16
    sub x19, x29, #112
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_8:
    sub x19, x29, #112
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_2:
.L10_3:
    sub x20, x29, #128
    mov x10, x20
    sub x11, x29, #400
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #416
    str w9, [x10]
.L10_26:
.L10_13:
    sub x22, x29, #208
    add x14, x20, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x15, x9
    ldr x21, [x20]
    cmp x15, x14
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x15, x21
    ldrb w14, [x14]
    mov x0, x14
    bl lb_paths_separator
    mov w14, w0
    cbnz w14, .L10_29
    b .L10_17
.L10_29:
    mov w15, w14
    b .L10_18
.L10_17:
    mov x9, #0
    mov w15, w9
.L10_18:
    and w14, w15, #255
    cbnz w14, .L10_14
    b .L10_15
.L10_14:
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L10_16
.L10_15:
    adrp x14, .Ltext_23
    add x14, x14, :lo12:.Ltext_23
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
.L10_16:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #288
    sub x23, x29, #320
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x14, x29, #336
    str x21, [x14]
    add x15, x14, #8
    movz x9, #2
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #384
    bl lb_strings_join
    sub x15, x29, #384
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L10_20
    b .L10_19
.L10_20:
    add x14, x15, #16
    sub x19, x29, #112
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_19:
    sub x19, x29, #112
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_paths_join, .-lb_paths_join

    .p2align 2
    .globl lb_paths_normalize
    .type lb_paths_normalize, %function
lb_paths_normalize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1072
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1040]
    str x20, [sp, #1032]
    str x21, [sp, #1024]
    str x22, [sp, #1016]
    str x23, [sp, #1008]
    str x24, [sp, #1000]
    str x25, [sp, #992]
    str x26, [sp, #984]
    str x27, [sp, #976]
    str x28, [sp, #968]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #184
    sub x9, x29, #168
    str x9, [sp, #240]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_paths_root
    sub x16, x29, #200
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #200
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #216
    str x9, [sp, #72]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    str x0, [sp, #64]
    ldr x9, [sp, #240]
    add x9, x9, #8
    str x9, [sp, #232]
    ldr x9, [sp, #232]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x24, x9
    sub x25, x29, #264
    movz x10, #16384, lsl #48
    cmp x24, x10
    b.ls .L11_2
.L11_1:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_26
    add x15, x15, :lo12:.Ltext_26
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_3
.L11_2:
    ldr x9, [sp, #64]
    ldr x14, [x9]
    ldr x9, [sp, #64]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, .L11_4
    b .L11_5
.L11_5:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
.L11_4:
    ldr x26, [x15]
    mov x17, x26
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #1
    sub x8, x29, #288
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #288
    add x26, x28, #16
    ldrb w26, [x26]
    mov x10, #0
    cmp x24, x10
    cset w27, ne
    mov x10, #0
    cmp w26, w10
    cset w26, eq
    and w26, w27, w26
    cbnz w26, .L11_6
    b .L11_7
.L11_6:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_28
    add x15, x15, :lo12:.Ltext_28
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_3
.L11_7:
    ldr x14, [x28]
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
.L11_3:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, .L11_9
    b .L11_8
.L11_9:
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
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_8:
    mov x10, x25
    ldr x11, [sp, #72]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #304
    str x9, [sp, #56]
    ldr x9, [sp, #232]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x26, x9
    sub x27, x29, #352
    movz x10, #2048, lsl #48
    cmp x26, x10
    b.ls .L11_12
.L11_11:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_26
    add x15, x15, :lo12:.Ltext_26
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_13
.L11_12:
    lsl x25, x26, #3
    ldr x9, [sp, #64]
    ldr x14, [x9]
    ldr x9, [sp, #64]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, .L11_14
    b .L11_15
.L11_15:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
.L11_14:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #8
    sub x8, x29, #376
    ldr x17, [sp], #16
    blr x17
    sub x20, x29, #376
    add x28, x20, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x25, x10
    cset w21, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w21, w21, w28
    cbnz w21, .L11_16
    b .L11_17
.L11_16:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_28
    add x15, x15, :lo12:.Ltext_28
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_13
.L11_17:
    ldr x14, [x20]
    str x14, [x27]
    add x14, x27, #8
    str x26, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
.L11_13:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, .L11_19
    b .L11_18
.L11_19:
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
    sub x14, x29, #392
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #72]
    add x20, x9, #8
    ldr x20, [x20]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x9, [sp, #64]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, .L11_21
    b .L11_20
.L11_21:
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
.L11_20:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_18:
    mov x10, x27
    ldr x11, [sp, #56]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #8
    ldr x20, [x14]
    ldr x9, [sp, #72]
    ldr x14, [x9]
    ldr x9, [sp, #72]
    add x15, x9, #8
    ldr x15, [x15]
    ldr x21, [x19]
    mov x9, #0
    mov x25, x9
.L11_23:
    cmp x25, x20
    b.hs .L11_26
.L11_24:
    cmp x25, x15
    b.lo 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x19, x14, x25
    add x26, x21, x25
    ldrb w26, [x26]
    strb w26, [x19]
.L11_25:
    add x19, x25, #1
    mov x25, x19
    b .L11_23
.L11_26:
    mov x10, #0
    cmp x20, x10
    cset w14, hi
    cbnz w14, .L11_27
    b .L11_129
.L11_129:
    mov w15, w14
    b .L11_28
.L11_27:
    ldr x10, [sp, #240]
    sub x11, x29, #808
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #816
    str w9, [x10]
.L11_126:
.L11_30:
    movz x9, #1
    mov w15, w9
.L11_28:
    and w14, w15, #255
    sub x9, x29, #408
    str x9, [sp, #32]
    sub x9, x29, #424
    str x9, [sp, #224]
    ldr x9, [sp, #224]
    add x9, x9, #8
    str x9, [sp, #216]
    sub x9, x29, #440
    str x9, [sp, #208]
    ldr x9, [sp, #208]
    add x26, x9, #8
    adrp x9, .Ltext_16
    add x9, x9, :lo12:.Ltext_16
    str x9, [sp, #200]
    sub x28, x29, #456
    add x9, x28, #8
    str x9, [sp, #192]
    adrp x9, .Ltext_34
    add x9, x9, :lo12:.Ltext_34
    str x9, [sp, #184]
    sub x9, x29, #472
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #176]
    and w9, w14, #255
    str w9, [sp, #112]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #168]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #160]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #152]
    sub x9, x29, #488
    str x9, [sp, #144]
    ldr x9, [sp, #144]
    add x9, x9, #8
    str x9, [sp, #136]
    sub x9, x29, #504
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #128]
    sub x9, x29, #520
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #120]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #104]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #96]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #88]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #80]
    mov x9, x20
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #40]
    mov x14, x20
.L11_31:
    ldr x9, [sp, #232]
    ldr x15, [x9]
    cmp x14, x15
    b.hs .L11_33
.L11_32:
    mov x20, x14
.L11_34:
    ldr x9, [sp, #232]
    ldr x14, [x9]
    cmp x20, x14
    cset w14, lo
    cbnz w14, .L11_37
    b .L11_130
.L11_130:
    mov w15, w14
    b .L11_38
.L11_37:
    ldr x9, [sp, #240]
    ldr x14, [x9]
    add x14, x14, x20
    ldrb w14, [x14]
    mov x0, x14
    bl lb_paths_separator
    mov w15, w0
.L11_38:
    and w14, w15, #255
    cbnz w14, .L11_35
    b .L11_36
.L11_35:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x20, x14
    b .L11_34
.L11_36:
    mov x27, x20
.L11_39:
    ldr x9, [sp, #232]
    ldr x14, [x9]
    cmp x27, x14
    cset w14, lo
    cbnz w14, .L11_42
    b .L11_131
.L11_131:
    mov w15, w14
    b .L11_43
.L11_42:
    ldr x9, [sp, #240]
    ldr x14, [x9]
    add x14, x14, x27
    ldrb w14, [x14]
    mov x0, x14
    bl lb_paths_separator
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L11_43:
    and w14, w15, #255
    cbnz w14, .L11_40
    b .L11_41
.L11_40:
    mov x9, x27
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x27, x14
    b .L11_39
.L11_41:
    ldr x9, [sp, #240]
    ldr x15, [x9]
    ldr x9, [sp, #232]
    ldr x14, [x9]
    add x14, x14, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x27, x14
    b.lo 1f
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x20, x27
    b.ls .L11_44
.L11_45:
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L11_44:
    add x22, x20, x15
    sub x24, x27, x20
    ldr x10, [sp, #224]
    str x22, [x10]
    ldr x10, [sp, #216]
    str x24, [x10]
    ldr x10, [sp, #208]
    str x22, [x10]
    str x24, [x26]
    ldr x10, [sp, #208]
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, #0
    cmp x24, x10
    cset w14, eq
    cbnz w14, .L11_132
    b .L11_49
.L11_132:
    mov w15, w14
    b .L11_50
.L11_49:
    ldr x9, [sp, #200]
    str x9, [x28]
    movz x9, #1
    ldr x10, [sp, #192]
    str x9, [x10]
    movz x10, #1
    cmp x24, x10
    cset w14, eq
    cbnz w14, .L11_51
    b .L11_133
.L11_133:
    mov w15, w14
    b .L11_52
.L11_51:
    mov x0, x22
    ldr x1, [sp, #200]
    mov x2, x24
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L11_52:
    and w14, w15, #255
    mov w15, w14
.L11_50:
    and w14, w15, #255
    cbnz w14, .L11_46
    b .L11_47
.L11_46:
    mov x14, x27
    b .L11_31
.L11_47:
.L11_48:
    ldr x9, [sp, #184]
    ldr x10, [sp, #24]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #176]
    str x9, [x10]
    movz x10, #2
    cmp x24, x10
    cset w14, eq
    cbnz w14, .L11_57
    b .L11_134
.L11_134:
    mov w15, w14
    b .L11_58
.L11_57:
    mov x0, x22
    ldr x1, [sp, #184]
    mov x2, x24
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L11_58:
    and w14, w15, #255
    cbnz w14, .L11_54
    b .L11_55
.L11_54:
    ldr x9, [sp, #40]
    mov x10, #0
    cmp x9, x10
    b.ls .L11_60
.L11_59:
    ldr x9, [sp, #40]
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x20, x9
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #168]
    ldr x15, [x9]
    cmp x20, x15
    b.lo 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x19, x14, x15
    ldr x21, [x19]
    ldr x10, [sp, #48]
    cmp x21, x10
    cset w14, lo
    cbnz w14, .L11_65
    b .L11_135
.L11_135:
    mov w15, w14
    b .L11_66
.L11_65:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    ldr x9, [sp, #160]
    ldr x15, [x9]
    cmp x21, x15
    b.lo 1f
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x21, x14
    ldrb w14, [x14]
    mov x0, x14
    bl lb_paths_separator
    mov w15, w0
.L11_66:
    and w14, w15, #255
    cbnz w14, .L11_62
    b .L11_63
.L11_62:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x14, x9
    b .L11_64
.L11_63:
    mov x14, x21
.L11_64:
    ldr x9, [sp, #72]
    ldr x21, [x9]
    ldr x9, [sp, #152]
    ldr x15, [x9]
    add x15, x15, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #48]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x10, [sp, #48]
    cmp x14, x10
    b.ls .L11_70
.L11_71:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L11_70:
    add x15, x14, x21
    ldr x9, [sp, #48]
    sub x23, x9, x14
    ldr x10, [sp, #144]
    str x15, [x10]
    ldr x10, [sp, #136]
    str x23, [x10]
    ldr x10, [sp, #16]
    str x15, [x10]
    ldr x10, [sp, #128]
    str x23, [x10]
    ldr x9, [sp, #184]
    ldr x10, [sp, #8]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #120]
    str x9, [x10]
    movz x10, #2
    cmp x23, x10
    cset w25, eq
    cbnz w25, .L11_72
    b .L11_136
.L11_136:
    mov w14, w25
    b .L11_73
.L11_72:
    mov x0, x15
    ldr x1, [sp, #184]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L11_73:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne .L11_68
.L11_67:
    ldr x14, [x19]
    mov x9, x14
    str x9, [sp, #48]
    mov x9, x20
    str x9, [sp, #40]
    mov x14, x27
    b .L11_31
.L11_68:
.L11_69:
    b .L11_61
.L11_60:
    ldr w9, [sp, #112]
    cbnz w9, .L11_75
    b .L11_76
.L11_75:
    mov x14, x27
    b .L11_31
.L11_76:
.L11_77:
.L11_61:
    b .L11_56
.L11_55:
.L11_56:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #40]
    lsl x15, x9, #3
    add x14, x14, x15
    ldr x9, [sp, #48]
    str x9, [x14]
    ldr x9, [sp, #40]
    add x19, x9, #1
    ldr x9, [sp, #48]
    mov x10, #0
    cmp x9, x10
    cset w14, hi
    cbnz w14, .L11_82
    b .L11_137
.L11_137:
    mov w15, w14
    b .L11_83
.L11_82:
    ldr x9, [sp, #48]
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #96]
    ldr x20, [x9]
    cmp x14, x20
    b.lo 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x14, x15
    ldrb w14, [x14]
    mov x0, x14
    bl lb_paths_separator
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L11_83:
    and w14, w15, #255
    cbnz w14, .L11_84
    b .L11_138
.L11_138:
    mov w15, w14
    b .L11_85
.L11_84:
    ldr x9, [sp, #48]
    movz x10, #2
    cmp x9, x10
    cset w14, eq
    cbnz w14, .L11_86
    b .L11_139
.L11_139:
    mov w15, w14
    b .L11_87
.L11_86:
    ldr x10, [sp, #240]
    sub x11, x29, #808
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #824
    str w9, [x10]
.L11_128:
    mov x9, #0
    mov w15, w9
.L11_87:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L11_85:
    and w14, w15, #255
    cbnz w14, .L11_79
    b .L11_80
.L11_79:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    ldr x9, [sp, #88]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x10, [sp, #48]
    add x14, x14, x10
    movz x9, #47
    strb w9, [x14]
    ldr x9, [sp, #48]
    add x14, x9, #1
    b .L11_81
.L11_80:
    ldr x9, [sp, #48]
    mov x14, x9
.L11_81:
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #80]
    ldr x20, [x9]
    mov x21, x14
    mov x9, #0
    mov x23, x9
.L11_88:
    cmp x23, x24
    b.hs .L11_91
.L11_89:
    add x14, x22, x23
    ldrb w14, [x14]
    cmp x21, x20
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x25, x15, x21
    and w14, w14, #255
    strb w14, [x25]
    add x14, x21, #1
.L11_90:
    add x25, x23, #1
    mov x21, x14
    mov x23, x25
    b .L11_88
.L11_91:
    mov x9, x21
    str x9, [sp, #48]
    mov x9, x19
    str x9, [sp, #40]
    mov x14, x27
    b .L11_31
.L11_33:
    ldr x9, [sp, #48]
    mov x10, #0
    cmp x9, x10
    b.ne .L11_93
.L11_92:
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    sub x15, x29, #536
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #584
    bl lb_strings_copy
    sub x15, x29, #584
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L11_96
    b .L11_95
.L11_96:
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
    sub x14, x29, #600
    ldr x9, [sp, #56]
    ldr x20, [x9]
    ldr x9, [sp, #56]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x14]
    add x20, x14, #8
    str x21, [x20]
    ldr x9, [sp, #64]
    ldr x20, [x9]
    ldr x9, [sp, #64]
    add x21, x9, #8
    ldr x22, [x21]
    cbnz x22, .L11_98
    b .L11_97
.L11_98:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_97:
    sub x14, x29, #616
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #72]
    add x20, x9, #8
    ldr x20, [x20]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x20, [x21]
    cbnz x20, .L11_100
    b .L11_99
.L11_100:
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
.L11_99:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_95:
    sub x19, x29, #152
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #632
    ldr x9, [sp, #56]
    ldr x20, [x9]
    ldr x9, [sp, #56]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_47
    add x0, x0, :lo12:.Ltext_47
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x14]
    add x20, x14, #8
    str x21, [x20]
    ldr x9, [sp, #64]
    ldr x20, [x9]
    ldr x9, [sp, #64]
    add x21, x9, #8
    ldr x22, [x21]
    cbnz x22, .L11_103
    b .L11_102
.L11_103:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_102:
    sub x14, x29, #648
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #72]
    add x20, x9, #8
    ldr x20, [x20]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x20, [x21]
    cbnz x20, .L11_105
    b .L11_104
.L11_105:
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
.L11_104:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_93:
.L11_94:
    ldr x9, [sp, #72]
    ldr x20, [x9]
    ldr x9, [sp, #72]
    add x14, x9, #8
    ldr x19, [x14]
    add x14, x19, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #48]
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #48]
    cmp x9, x10
    b.ls .L11_107
.L11_108:
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L11_107:
    sub x14, x29, #664
    str x20, [x14]
    add x14, x14, #8
    ldr x9, [sp, #48]
    str x9, [x14]
    sub x14, x29, #680
    str x20, [x14]
    add x15, x14, #8
    ldr x9, [sp, #48]
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #728
    bl lb_strings_copy
    sub x15, x29, #728
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L11_110
    b .L11_109
.L11_110:
    add x14, x15, #16
    sub x21, x29, #152
    add x22, x21, #16
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #744
    ldr x9, [sp, #56]
    ldr x22, [x9]
    ldr x9, [sp, #56]
    add x23, x9, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x23, x9
    str x22, [x14]
    add x22, x14, #8
    str x23, [x22]
    ldr x9, [sp, #64]
    ldr x22, [x9]
    ldr x9, [sp, #64]
    add x23, x9, #8
    ldr x24, [x23]
    cbnz x24, .L11_112
    b .L11_111
.L11_112:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_111:
    sub x14, x29, #760
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x22, [x23]
    cbnz x22, .L11_114
    b .L11_113
.L11_114:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_113:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_109:
    sub x21, x29, #152
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #776
    ldr x9, [sp, #56]
    ldr x22, [x9]
    ldr x9, [sp, #56]
    add x23, x9, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x23, x9
    str x22, [x14]
    add x22, x14, #8
    str x23, [x22]
    ldr x9, [sp, #64]
    ldr x22, [x9]
    ldr x9, [sp, #64]
    add x23, x9, #8
    ldr x24, [x23]
    cbnz x24, .L11_117
    b .L11_116
.L11_117:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_116:
    sub x14, x29, #792
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x22, [x23]
    cbnz x22, .L11_119
    b .L11_118
.L11_119:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_118:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    ldr x27, [sp, #976]
    ldr x28, [sp, #968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_paths_normalize, .-lb_paths_normalize

    .section .init_array,"aw"
    .p2align 3
    .quad lb_paths_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/paths.lucb:8:5"
.Ltext_2:
    .asciz "src/std/paths.lucb:13:9"
.Ltext_3:
    .asciz "src/std/paths.lucb:14:9"
.Ltext_4:
    .asciz "src/std/paths.lucb:16:5"
.Ltext_5:
    .asciz "src/std/paths.lucb:20:9"
.Ltext_6:
    .asciz "src/std/paths.lucb:28:9"
.Ltext_7:
    .asciz "src/std/paths.lucb:29:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/paths.lucb:30:5"
.Ltext_10:
    .asciz ""
.Ltext_11:
    .asciz "src/std/paths.lucb:33:9"
.Ltext_12:
    .asciz "src/std/paths.lucb:57:5"
.Ltext_13:
    .asciz "src/std/paths.lucb:61:9"
.Ltext_14:
    .asciz "src/std/paths.lucb:62:5"
.Ltext_15:
    .asciz "src/std/paths.lucb:65:9"
.Ltext_16:
    .asciz "."
.Ltext_17:
    .asciz "src/std/paths.lucb:80:5"
.Ltext_18:
    .asciz "src/std/paths.lucb:87:5"
.Ltext_19:
    .asciz "src/std/paths.lucb:88:5"
.Ltext_20:
    .asciz "src/std/paths.lucb:96:5"
.Ltext_21:
    .asciz "src/std/paths.lucb:102:5"
.Ltext_22:
    .asciz "src/std/paths.lucb:118:5"
.Ltext_23:
    .asciz "/"
.Ltext_24:
    .asciz "src/std/paths.lucb:120:5"
.Ltext_25:
    .asciz "src/std/paths.lucb:128:5"
.Ltext_26:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_27:
    .asciz "memory.unset"
.Ltext_28:
    .asciz "memory.exhausted"
.Ltext_29:
    .asciz "src/std/paths.lucb:130:5"
.Ltext_30:
    .asciz "src/std/paths.lucb:133:5"
.Ltext_31:
    .asciz "src/std/paths.lucb:138:9"
.Ltext_32:
    .asciz "src/std/paths.lucb:140:9"
.Ltext_33:
    .asciz "src/std/paths.lucb:141:9"
.Ltext_34:
    .asciz ".."
.Ltext_35:
    .asciz "src/std/paths.lucb:145:17"
.Ltext_36:
    .asciz "src/std/paths.lucb:146:17"
.Ltext_37:
    .asciz "src/std/paths.lucb:147:17"
.Ltext_38:
    .asciz "src/std/paths.lucb:148:21"
.Ltext_39:
    .asciz "src/std/paths.lucb:149:21"
.Ltext_40:
    .asciz "src/std/paths.lucb:153:9"
.Ltext_41:
    .asciz "src/std/paths.lucb:154:9"
.Ltext_42:
    .asciz "src/std/paths.lucb:155:9"
.Ltext_43:
    .asciz "src/std/paths.lucb:156:13"
.Ltext_44:
    .asciz "src/std/paths.lucb:157:13"
.Ltext_45:
    .asciz "src/std/paths.lucb:159:13"
.Ltext_46:
    .asciz "src/std/paths.lucb:160:13"
.Ltext_47:
    .asciz "src/std/paths.lucb:161:5"
.Ltext_48:
    .asciz "src/std/paths.lucb:162:5"
.Ltext_49:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
