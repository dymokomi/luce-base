    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_paths_0init
_lb_paths_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_paths_separator
_lb_paths_separator:
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
    cbnz w15, L1_6
    b L1_1
L1_6:
    mov w14, w15
    b L1_2
L1_1:
    adrp x15, _lb_platform_windows@PAGE
    add x15, x15, _lb_platform_windows@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L1_3
    b L1_7
L1_7:
    mov w14, w15
    b L1_4
L1_3:
    movz x10, #92
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L1_4:
    and w15, w14, #255
    mov w14, w15
L1_2:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_5:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_paths_14last_separator
_lb_paths_14last_separator:
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
L2_1:
    mov x10, #0
    cmp x14, x10
    b.ls L2_3
L2_2:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x15, [x19]
    cmp x21, x20
    b.lo 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x21, x15
    ldrb w15, [x15]
    mov x0, x15
    bl _lb_paths_separator
    mov w15, w0
    cbnz w15, L2_4
    b L2_5
L2_4:
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
L2_7:
    b L2_6
L2_5:
L2_6:
    mov x14, x21
    b L2_1
L2_3:
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
L2_8:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_paths_root
_lb_paths_root:
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
L3_22:
L3_2:
L3_3:
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, L3_23
    b L3_15
L3_23:
    mov w14, w15
    b L3_16
L3_15:
    ldr x15, [x19]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w15, [x15]
    mov x0, x15
    bl _lb_paths_separator
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L3_16:
    and w15, w14, #255
    cbnz w15, L3_12
    b L3_13
L3_12:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
L3_13:
L3_14:
    ldr x15, [x19]
    ldr x14, [x20]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #1
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
L3_18:
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

    .p2align 2
    .globl _lb_paths_9is_rooted
_lb_paths_9is_rooted:
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
    bl _lb_paths_root
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
L4_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_paths_directory
_lb_paths_directory:
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
    bl _lb_paths_root
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
    bl _lb_paths_14last_separator
    sub x16, x29, #112
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #112
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L5_1
    b L5_2
L5_1:
    ldr x14, [x15]
    b L5_3
L5_2:
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L5_5
L5_4:
    sub x14, x29, #128
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L5_6
L5_5:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
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
L5_6:
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
L5_7:
L5_3:
    add x15, x19, #8
    ldr x15, [x15]
    cmp x14, x15
    b.hs L5_9
L5_8:
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
L5_11:
    b L5_10
L5_9:
L5_10:
    ldr x19, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L5_12
L5_13:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L5_12:
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
L5_14:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_paths_base
_lb_paths_base:
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
    bl _lb_paths_root
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
    b.ne L6_2
L6_1:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
L6_4:
    b L6_3
L6_2:
L6_3:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_14last_separator
    sub x16, x29, #152
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #152
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L6_5
    b L6_6
L6_5:
    ldr x14, [x15]
    b L6_7
L6_6:
    ldr x15, [x20]
    ldr x22, [x21]
    add x14, x22, #1
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x22
    b.ls L6_8
L6_9:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L6_8:
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
L6_10:
L6_7:
    ldr x19, [x20]
    ldr x22, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    add x15, x22, #1
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x15
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x22
    b.ls L6_11
L6_12:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L6_11:
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
L6_13:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_paths_stem
_lb_paths_stem:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str x19, [sp, #328]
    str x20, [sp, #320]
    str x21, [sp, #312]
    str x22, [sp, #304]
    str x23, [sp, #296]
    str x24, [sp, #288]
    str x25, [sp, #280]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    sub x14, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_base
    sub x16, x29, #136
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #152
    mov x10, x19
    sub x11, x29, #232
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #248
    sub x14, x29, #232
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_base
    sub x16, x29, #264
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #264
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #46
    bl _lb_strings_last
    sub x16, x29, #280
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #280
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L7_4
    b L7_5
L7_4:
    ldr x14, [x15]
    b L7_6
L7_5:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #216
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    sub x11, x29, #168
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x20, x9
    b L7_15
L7_7:
L7_6:
    mov x10, #0
    cmp x14, x10
    b.ne L7_9
L7_8:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #216
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    sub x11, x29, #168
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x20, x9
    b L7_15
L7_11:
    b L7_10
L7_9:
L7_10:
    ldr x22, [x20]
    add x15, x20, #8
    ldr x23, [x15]
    add x15, x23, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x23
    b.ls L7_12
L7_13:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L7_12:
    add x15, x14, x22
    sub x20, x23, x14
    sub x24, x29, #328
    str x15, [x24]
    add x24, x24, #8
    str x20, [x24]
    sub x24, x29, #344
    str x15, [x24]
    add x15, x24, #8
    str x20, [x15]
    sub x25, x29, #216
    mov x10, x24
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x25
    sub x11, x29, #168
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L7_15
L7_14:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L7_15:
    sub x14, x29, #168
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x15, [x19]
    add x14, x19, #8
    ldr x14, [x14]
    mov x9, x14
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x22
    b.ls L7_1
L7_2:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L7_1:
    sub x14, x29, #184
    str x15, [x14]
    add x14, x14, #8
    str x22, [x14]
    sub x14, x29, #200
    str x15, [x14]
    add x19, x14, #8
    str x22, [x19]
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_paths_join
_lb_paths_join:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #144
    mov x10, x19
    sub x11, x29, #400
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #400
    mov x10, x20
    sub x11, x29, #416
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #424
    str w9, [x10]
L8_37:
L8_24:
L8_25:
    add x14, x20, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, L8_43
    b L8_32
L8_43:
    mov w14, w15
    b L8_33
L8_32:
    ldr x15, [x20]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w15, [x15]
    mov x0, x15
    bl _lb_paths_separator
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L8_33:
    and w15, w14, #255
    cbnz w15, L8_29
    b L8_30
L8_29:
    mov x9, #0
    sub x10, x29, #432
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L8_38
L8_30:
L8_31:
    movz x9, #1
    sub x10, x29, #432
    str w9, [x10]
    movz x9, #1
    mov w14, w9
L8_38:
    cbnz w14, L8_44
    b L8_4
L8_44:
    mov w15, w14
    b L8_5
L8_4:
    mov x10, x19
    sub x11, x29, #448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #456
    str w9, [x10]
L8_40:
    mov x9, #0
    mov w15, w9
L8_5:
    and w14, w15, #255
    cbnz w14, L8_45
    b L8_6
L8_45:
    mov w15, w14
    b L8_7
L8_6:
    sub x14, x29, #128
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L8_7:
    and w14, w15, #255
    cbnz w14, L8_1
    b L8_2
L8_1:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_strings_copy
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L8_9
    b L8_8
L8_9:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_8:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_2:
L8_3:
    sub x20, x29, #128
    mov x10, x20
    sub x11, x29, #448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #464
    str w9, [x10]
L8_42:
L8_13:
    sub x22, x29, #208
    add x14, x20, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x21, [x20]
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x15, x21
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_paths_separator
    mov w14, w0
    cbnz w14, L8_46
    b L8_17
L8_46:
    mov w15, w14
    b L8_18
L8_17:
    mov x9, #0
    mov w15, w9
L8_18:
    and w14, w15, #255
    cbnz w14, L8_14
    b L8_15
L8_14:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
    b L8_16
L8_15:
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
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
L8_16:
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
    bl _lb_strings_join
    sub x15, x29, #384
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L8_20
    b L8_19
L8_20:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_19:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_paths_normalize
_lb_paths_normalize:
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
    bl _lb_paths_root
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
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
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
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    sub x25, x29, #264
    movz x10, #16384, lsl #48
    cmp x24, x10
    b.ls L9_2
L9_1:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_26@PAGE
    add x15, x15, l_text_26@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L9_3
L9_2:
    ldr x9, [sp, #64]
    ldr x14, [x9]
    ldr x9, [sp, #64]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L9_4
    b L9_5
L9_5:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
L9_4:
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
    cbnz w26, L9_6
    b L9_7
L9_6:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_28@PAGE
    add x15, x15, l_text_28@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L9_3
L9_7:
    ldr x14, [x28]
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L9_3:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L9_9
    b L9_8
L9_9:
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
L9_8:
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
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    sub x27, x29, #352
    movz x10, #2048, lsl #48
    cmp x26, x10
    b.ls L9_12
L9_11:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_26@PAGE
    add x15, x15, l_text_26@PAGEOFF
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L9_13
L9_12:
    lsl x25, x26, #3
    ldr x9, [sp, #64]
    ldr x14, [x9]
    ldr x9, [sp, #64]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L9_14
    b L9_15
L9_15:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
L9_14:
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
    cbnz w21, L9_16
    b L9_17
L9_16:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_28@PAGE
    add x15, x15, l_text_28@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L9_13
L9_17:
    ldr x14, [x20]
    str x14, [x27]
    add x14, x27, #8
    str x26, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
L9_13:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, L9_19
    b L9_18
L9_19:
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
    cbnz x20, L9_21
    b L9_20
L9_21:
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
L9_20:
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
L9_18:
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
L9_23:
    cmp x25, x20
    b.hs L9_26
L9_24:
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x14, x25
    add x26, x21, x25
    ldrb w26, [x26]
    strb w26, [x19]
L9_25:
    add x19, x25, #1
    mov x25, x19
    b L9_23
L9_26:
    mov x10, #0
    cmp x20, x10
    cset w14, hi
    cbnz w14, L9_27
    b L9_129
L9_129:
    mov w15, w14
    b L9_28
L9_27:
    ldr x10, [sp, #240]
    sub x11, x29, #808
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #816
    str w9, [x10]
L9_126:
L9_30:
    movz x9, #1
    mov w15, w9
L9_28:
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
    adrp x9, l_text_16@PAGE
    add x9, x9, l_text_16@PAGEOFF
    str x9, [sp, #200]
    sub x28, x29, #456
    add x9, x28, #8
    str x9, [sp, #192]
    adrp x9, l_text_34@PAGE
    add x9, x9, l_text_34@PAGEOFF
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
L9_31:
    ldr x9, [sp, #232]
    ldr x15, [x9]
    cmp x14, x15
    b.hs L9_33
L9_32:
    mov x20, x14
L9_34:
    ldr x9, [sp, #232]
    ldr x14, [x9]
    cmp x20, x14
    cset w14, lo
    cbnz w14, L9_37
    b L9_130
L9_130:
    mov w15, w14
    b L9_38
L9_37:
    ldr x9, [sp, #240]
    ldr x14, [x9]
    add x14, x14, x20
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_paths_separator
    mov w15, w0
L9_38:
    and w14, w15, #255
    cbnz w14, L9_35
    b L9_36
L9_35:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x20, x14
    b L9_34
L9_36:
    mov x27, x20
L9_39:
    ldr x9, [sp, #232]
    ldr x14, [x9]
    cmp x27, x14
    cset w14, lo
    cbnz w14, L9_42
    b L9_131
L9_131:
    mov w15, w14
    b L9_43
L9_42:
    ldr x9, [sp, #240]
    ldr x14, [x9]
    add x14, x14, x27
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_paths_separator
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L9_43:
    and w14, w15, #255
    cbnz w14, L9_40
    b L9_41
L9_40:
    mov x9, x27
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x27, x14
    b L9_39
L9_41:
    ldr x9, [sp, #240]
    ldr x15, [x9]
    ldr x9, [sp, #232]
    ldr x14, [x9]
    add x14, x14, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x27, x14
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x27
    b.ls L9_44
L9_45:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L9_44:
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
    cbnz w14, L9_132
    b L9_49
L9_132:
    mov w15, w14
    b L9_50
L9_49:
    ldr x9, [sp, #200]
    str x9, [x28]
    movz x9, #1
    ldr x10, [sp, #192]
    str x9, [x10]
    movz x10, #1
    cmp x24, x10
    cset w14, eq
    cbnz w14, L9_51
    b L9_133
L9_133:
    mov w15, w14
    b L9_52
L9_51:
    mov x0, x22
    ldr x1, [sp, #200]
    mov x2, x24
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L9_52:
    and w14, w15, #255
    mov w15, w14
L9_50:
    and w14, w15, #255
    cbnz w14, L9_46
    b L9_47
L9_46:
    mov x14, x27
    b L9_31
L9_47:
L9_48:
    ldr x9, [sp, #184]
    ldr x10, [sp, #24]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #176]
    str x9, [x10]
    movz x10, #2
    cmp x24, x10
    cset w14, eq
    cbnz w14, L9_57
    b L9_134
L9_134:
    mov w15, w14
    b L9_58
L9_57:
    mov x0, x22
    ldr x1, [sp, #184]
    mov x2, x24
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L9_58:
    and w14, w15, #255
    cbnz w14, L9_54
    b L9_55
L9_54:
    ldr x9, [sp, #40]
    mov x10, #0
    cmp x9, x10
    b.ls L9_60
L9_59:
    ldr x9, [sp, #40]
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #168]
    ldr x15, [x9]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x19, x14, x15
    ldr x21, [x19]
    ldr x10, [sp, #48]
    cmp x21, x10
    cset w14, lo
    cbnz w14, L9_65
    b L9_135
L9_135:
    mov w15, w14
    b L9_66
L9_65:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    ldr x9, [sp, #160]
    ldr x15, [x9]
    cmp x21, x15
    b.lo 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x21, x14
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_paths_separator
    mov w15, w0
L9_66:
    and w14, w15, #255
    cbnz w14, L9_62
    b L9_63
L9_62:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L9_64
L9_63:
    mov x14, x21
L9_64:
    ldr x9, [sp, #72]
    ldr x21, [x9]
    ldr x9, [sp, #152]
    ldr x15, [x9]
    add x15, x15, #1
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #48]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #48]
    cmp x14, x10
    b.ls L9_70
L9_71:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L9_70:
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
    cbnz w25, L9_72
    b L9_136
L9_136:
    mov w14, w25
    b L9_73
L9_72:
    mov x0, x15
    ldr x1, [sp, #184]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L9_73:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L9_68
L9_67:
    ldr x14, [x19]
    mov x9, x14
    str x9, [sp, #48]
    mov x9, x20
    str x9, [sp, #40]
    mov x14, x27
    b L9_31
L9_68:
L9_69:
    b L9_61
L9_60:
    ldr w9, [sp, #112]
    cbnz w9, L9_75
    b L9_76
L9_75:
    mov x14, x27
    b L9_31
L9_76:
L9_77:
L9_61:
    b L9_56
L9_55:
L9_56:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
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
    cbnz w14, L9_82
    b L9_137
L9_137:
    mov w15, w14
    b L9_83
L9_82:
    ldr x9, [sp, #48]
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #96]
    ldr x20, [x9]
    cmp x14, x20
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x15
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_paths_separator
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L9_83:
    and w14, w15, #255
    cbnz w14, L9_84
    b L9_138
L9_138:
    mov w15, w14
    b L9_85
L9_84:
    ldr x9, [sp, #48]
    movz x10, #2
    cmp x9, x10
    cset w14, eq
    cbnz w14, L9_86
    b L9_139
L9_139:
    mov w15, w14
    b L9_87
L9_86:
    ldr x10, [sp, #240]
    sub x11, x29, #808
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    sub x10, x29, #824
    str w9, [x10]
L9_128:
    mov x9, #0
    mov w15, w9
L9_87:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
L9_85:
    and w14, w15, #255
    cbnz w14, L9_79
    b L9_80
L9_79:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    ldr x9, [sp, #88]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #48]
    add x14, x14, x10
    movz x9, #47
    strb w9, [x14]
    ldr x9, [sp, #48]
    add x14, x9, #1
    b L9_81
L9_80:
    ldr x9, [sp, #48]
    mov x14, x9
L9_81:
    ldr x9, [sp, #72]
    ldr x15, [x9]
    ldr x9, [sp, #80]
    ldr x20, [x9]
    mov x21, x14
    mov x9, #0
    mov x23, x9
L9_88:
    cmp x23, x24
    b.hs L9_91
L9_89:
    add x14, x22, x23
    ldrb w14, [x14]
    cmp x21, x20
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x25, x15, x21
    and w14, w14, #255
    strb w14, [x25]
    add x14, x21, #1
L9_90:
    add x25, x23, #1
    mov x21, x14
    mov x23, x25
    b L9_88
L9_91:
    mov x9, x21
    str x9, [sp, #48]
    mov x9, x19
    str x9, [sp, #40]
    mov x14, x27
    b L9_31
L9_33:
    ldr x9, [sp, #48]
    mov x10, #0
    cmp x9, x10
    b.ne L9_93
L9_92:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #536
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #584
    bl _lb_strings_copy
    sub x15, x29, #584
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L9_96
    b L9_95
L9_96:
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
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
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
    cbnz x22, L9_98
    b L9_97
L9_98:
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
L9_97:
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
    cbnz x20, L9_100
    b L9_99
L9_100:
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
L9_99:
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
L9_95:
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
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
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
    cbnz x22, L9_103
    b L9_102
L9_103:
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
L9_102:
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
    cbnz x20, L9_105
    b L9_104
L9_105:
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
L9_104:
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
L9_93:
L9_94:
    ldr x9, [sp, #72]
    ldr x20, [x9]
    ldr x9, [sp, #72]
    add x14, x9, #8
    ldr x19, [x14]
    add x14, x19, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #48]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #48]
    cmp x9, x10
    b.ls L9_107
L9_108:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L9_107:
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
    bl _lb_strings_copy
    sub x15, x29, #728
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L9_110
    b L9_109
L9_110:
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
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
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
    cbnz x24, L9_112
    b L9_111
L9_112:
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
L9_111:
    sub x14, x29, #760
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x22, [x23]
    cbnz x22, L9_114
    b L9_113
L9_114:
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
L9_113:
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
L9_109:
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
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
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
    cbnz x24, L9_117
    b L9_116
L9_117:
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
L9_116:
    sub x14, x29, #792
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #64]
    ldr x15, [x9]
    ldr x22, [x23]
    cbnz x22, L9_119
    b L9_118
L9_119:
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
L9_118:
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

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_paths_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/paths.lucb:8:5"
l_text_2:
    .asciz "src/std/paths.lucb:13:9"
l_text_3:
    .asciz "src/std/paths.lucb:14:9"
l_text_4:
    .asciz "src/std/paths.lucb:16:5"
l_text_5:
    .asciz "src/std/paths.lucb:20:9"
l_text_6:
    .asciz "src/std/paths.lucb:28:9"
l_text_7:
    .asciz "src/std/paths.lucb:29:9"
l_text_8:
    .asciz "index out of bounds"
l_text_9:
    .asciz "src/std/paths.lucb:30:5"
l_text_10:
    .asciz ""
l_text_11:
    .asciz "src/std/paths.lucb:33:9"
l_text_12:
    .asciz "src/std/paths.lucb:57:5"
l_text_13:
    .asciz "src/std/paths.lucb:61:9"
l_text_14:
    .asciz "src/std/paths.lucb:62:5"
l_text_15:
    .asciz "src/std/paths.lucb:65:9"
l_text_16:
    .asciz "."
l_text_17:
    .asciz "src/std/paths.lucb:80:5"
l_text_18:
    .asciz "src/std/paths.lucb:87:5"
l_text_19:
    .asciz "src/std/paths.lucb:88:5"
l_text_20:
    .asciz "src/std/paths.lucb:96:5"
l_text_21:
    .asciz "src/std/paths.lucb:102:5"
l_text_22:
    .asciz "src/std/paths.lucb:118:5"
l_text_23:
    .asciz "/"
l_text_24:
    .asciz "src/std/paths.lucb:120:5"
l_text_25:
    .asciz "src/std/paths.lucb:128:5"
l_text_26:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_27:
    .asciz "memory.unset"
l_text_28:
    .asciz "memory.exhausted"
l_text_29:
    .asciz "src/std/paths.lucb:130:5"
l_text_30:
    .asciz "src/std/paths.lucb:133:5"
l_text_31:
    .asciz "src/std/paths.lucb:138:9"
l_text_32:
    .asciz "src/std/paths.lucb:140:9"
l_text_33:
    .asciz "src/std/paths.lucb:141:9"
l_text_34:
    .asciz ".."
l_text_35:
    .asciz "src/std/paths.lucb:145:17"
l_text_36:
    .asciz "src/std/paths.lucb:146:17"
l_text_37:
    .asciz "src/std/paths.lucb:147:17"
l_text_38:
    .asciz "src/std/paths.lucb:148:21"
l_text_39:
    .asciz "src/std/paths.lucb:149:21"
l_text_40:
    .asciz "src/std/paths.lucb:153:9"
l_text_41:
    .asciz "src/std/paths.lucb:154:9"
l_text_42:
    .asciz "src/std/paths.lucb:155:9"
l_text_43:
    .asciz "src/std/paths.lucb:156:13"
l_text_44:
    .asciz "src/std/paths.lucb:157:13"
l_text_45:
    .asciz "src/std/paths.lucb:159:13"
l_text_46:
    .asciz "src/std/paths.lucb:160:13"
l_text_47:
    .asciz "src/std/paths.lucb:161:5"
l_text_48:
    .asciz "src/std/paths.lucb:162:5"
l_text_49:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

