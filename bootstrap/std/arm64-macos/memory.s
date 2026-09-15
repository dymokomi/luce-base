    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_memory_0init
_lb_memory_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_1
    b L0_2
L0_1:
    movz x9, #4098
    mov w14, w9
    b L0_3
L0_2:
    movz x9, #34
    mov w14, w9
L0_3:
    adrp x15, _lb_memory_17private_anonymous@PAGE
    add x15, x15, _lb_memory_17private_anonymous@PAGEOFF
    str w14, [x15]
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_memory_unset@PAGE
    add x15, x15, _lb_memory_unset@PAGEOFF
    movz x9, #2
    movk x9, #3178, lsl #16
    str w9, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_FixedBuffer_over
    .no_dead_strip _lb_memory_FixedBuffer_over
_lb_memory_FixedBuffer_over:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L1_1:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_FixedBuffer_allocate
    .no_dead_strip _lb_memory_FixedBuffer_allocate
_lb_memory_FixedBuffer_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    str x23, [sp, #240]
    str x24, [sp, #232]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x16, x29, #136
    str x2, [x16]
    sub x9, x29, #104
    ldr x20, [x9]
    sub x14, x29, #120
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne L2_2
L2_1:
    ldr x15, [x20]
    add x14, x20, #8
    ldr x14, [x14]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
L2_4:
    sub x14, x29, #152
    str x15, [x14]
    add x19, x14, #8
    mov x9, #0
    str x9, [x19]
    sub x19, x29, #176
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_2:
L2_3:
    sub x14, x29, #136
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L2_8
L2_7:
    mov x21, x14
    b L2_9
L2_8:
    movz x9, #1
    mov x21, x9
L2_9:
    add x22, x20, #16
    ldr x14, [x22]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x21
    bl _lb_memory_14aligned_offset
    sub x16, x29, #192
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #192
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L2_10
    b L2_11
L2_10:
    ldr x14, [x15]
    b L2_12
L2_11:
    sub x19, x29, #216
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
    add x15, x20, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w23, hi
    cbnz w23, L2_23
    b L2_17
L2_23:
    mov w24, w23
    b L2_18
L2_17:
    sub x23, x15, x14
    cmp x19, x23
    cset w24, hi
L2_18:
    and w23, w24, #255
    cbnz w23, L2_14
    b L2_15
L2_14:
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #232
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
    bl _lb_memory_12note_refusal
    sub x20, x29, #256
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x23, x29, #96
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x23
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
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
L2_16:
    mov x9, x19
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x21, [x22]
    ldr x24, [x20]
    add x23, x15, #1
    cmp x14, x23
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x23
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x21
    b.ls L2_20
L2_21:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L2_20:
    add x15, x14, x24
    sub x19, x21, x14
    sub x20, x29, #272
    str x15, [x20]
    add x15, x20, #8
    str x19, [x15]
    sub x19, x29, #296
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #16
    movz x9, #1
    strb w9, [x15]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_FixedBuffer_resize
    .no_dead_strip _lb_memory_FixedBuffer_resize
_lb_memory_FixedBuffer_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #104
    str x3, [x16]
    sub x9, x29, #72
    ldr x21, [x9]
    sub x14, x29, #104
    ldr x19, [x14]
    sub x14, x29, #88
    add x15, x14, #8
    ldr x20, [x15]
    cmp x19, x20
    b.ne L3_2
L3_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    mov x10, #0
    cmp x20, x10
    b.ne L3_6
L3_5:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    b L3_7
L3_6:
L3_7:
    ldr x15, [x14]
    ldr x22, [x21]
    sub x23, x29, #112
    mov x0, x15
    mov x1, x22
    movz x2, #64
    mov x3, x23
    bl _lb_core_6qsub_u
    mov w15, w0
    sub x24, x29, #128
    ldr x22, [x23]
    str x22, [x24]
    add x23, x24, #8
    strb w15, [x23]
    ldrb w15, [x23]
    cbnz w15, L3_9
    b L3_10
L3_9:
    b L3_11
L3_10:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_12:
L3_11:
    add x14, x21, #16
    ldr x15, [x14]
    cmp x22, x15
    cset w23, hi
    cbnz w23, L3_26
    b L3_16
L3_26:
    mov w15, w23
    b L3_17
L3_16:
    sub x23, x15, x22
    cmp x20, x23
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w15, w23
L3_17:
    and w20, w15, #255
    cbnz w20, L3_13
    b L3_14
L3_13:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_18:
    b L3_15
L3_14:
L3_15:
    add x15, x21, #8
    ldr x15, [x15]
    cmp x22, x15
    cset w20, hi
    cbnz w20, L3_27
    b L3_22
L3_27:
    mov w15, w20
    b L3_23
L3_22:
    sub x20, x15, x22
    cmp x19, x20
    cset w20, hi
    mov w15, w20
L3_23:
    and w20, w15, #255
    cbnz w20, L3_19
    b L3_20
L3_19:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_24:
    b L3_21
L3_20:
L3_21:
    mov x9, x19
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
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
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_25:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_FixedBuffer_release
    .no_dead_strip _lb_memory_FixedBuffer_release
_lb_memory_FixedBuffer_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #64
    ldr x21, [x9]
    sub x19, x29, #80
    add x14, x19, #8
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ne L4_2
L4_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    adrp x14, _lb_memory_diagnostic@PAGE
    add x14, x14, _lb_memory_diagnostic@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_6
L4_5:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #221
    mov x2, x20
    bl _memset
    mov x14, x0
    cbnz x14, L4_8
    b L4_9
L4_9:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L4_8:
    b L4_7
L4_6:
L4_7:
    ldr x14, [x19]
    ldr x15, [x21]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x20
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x22, x21, #16
    ldr x23, [x22]
    cmp x15, x23
    b.ne L4_11
L4_10:
    str x14, [x22]
    b L4_12
L4_11:
L4_12:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_14aligned_offset
_lb_memory_14aligned_offset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    str x22, [sp, #160]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    sub x16, x29, #112
    str x3, [x16]
    sub x14, x29, #96
    ldr x19, [x14]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x20, [x15]
    cmp x19, x20
    b.ls L5_2
L5_1:
    sub x19, x29, #128
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
    b L5_3
L5_2:
L5_3:
    ldr x15, [x14]
    sub x21, x29, #136
    mov x0, x15
    mov x1, x19
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w15, w0
    sub x22, x29, #152
    ldr x21, [x21]
    str x21, [x22]
    add x22, x22, #8
    strb w15, [x22]
    ldrb w15, [x22]
    cbnz w15, L5_5
    b L5_6
L5_5:
    b L5_7
L5_6:
    sub x19, x29, #168
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
L5_7:
    sub x14, x29, #112
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    b.ne L5_10
L5_9:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
L5_10:
    udiv x11, x21, x15
    msub x14, x11, x15, x21
    mov x10, #0
    cmp x14, x10
    b.ne L5_12
L5_11:
    mov x9, #0
    mov x14, x9
    b L5_13
L5_12:
    mov x9, x15
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x14, x21
L5_13:
    sub x15, x20, x19
    cmp x14, x15
    b.ls L5_15
L5_14:
    sub x19, x29, #184
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_17:
    b L5_16
L5_15:
L5_16:
    mov x9, x19
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    sub x20, x29, #200
    str x15, [x20]
    add x15, x20, #8
    movz x9, #1
    strb w9, [x15]
    sub x21, x29, #64
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_18:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_CAllocator_allocate
    .no_dead_strip _lb_memory_CAllocator_allocate
_lb_memory_CAllocator_allocate:
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
    b.ne L6_2
L6_1:
    sub x14, x29, #136
    movz x9, #8
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #160
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L6_4:
    b L6_3
L6_2:
L6_3:
    sub x14, x29, #120
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L6_8
    b L6_23
L6_23:
    mov w20, w15
    b L6_9
L6_8:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    and x15, x14, x15
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w20, eq
L6_9:
    and w15, w20, #255
    cbnz w15, L6_5
    b L6_6
L6_5:
    sub x19, x29, #184
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L6_10:
    b L6_7
L6_6:
L6_7:
    movz x10, #8
    cmp x14, x10
    b.ls L6_12
L6_11:
    mov x20, x14
    b L6_13
L6_12:
    movz x9, #8
    mov x20, x9
L6_13:
    sub x21, x29, #192
    mov x9, #0
    str x9, [x21]
    mov x0, x21
    mov x1, x20
    mov x2, x19
    bl _posix_memalign
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_15
L6_14:
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
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
    bl _lb_memory_12note_refusal
    sub x21, x29, #232
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x22, x29, #80
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L6_17:
    b L6_16
L6_15:
L6_16:
    ldr x14, [x21]
    cbnz x14, L6_18
    b L6_19
L6_18:
    b L6_20
L6_19:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L6_21:
L6_20:
    sub x15, x29, #272
    str x14, [x15]
    add x20, x15, #8
    str x19, [x20]
    sub x20, x29, #296
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #16
    movz x9, #1
    strb w9, [x15]
    sub x21, x29, #80
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L6_22:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_CAllocator_resize
    .no_dead_strip _lb_memory_CAllocator_resize
_lb_memory_CAllocator_resize:
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
L7_1:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_CAllocator_release
    .no_dead_strip _lb_memory_CAllocator_release
_lb_memory_CAllocator_release:
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
    b.ne L8_2
L8_1:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_2:
L8_3:
    adrp x15, _lb_memory_diagnostic@PAGE
    add x15, x15, _lb_memory_diagnostic@PAGEOFF
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne L8_6
L8_5:
    ldr x14, [x19]
    sub x10, x29, #136
    str x14, [x10]
    mov x0, x14
    bl _free
L8_17:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_6:
L8_7:
    ldr x15, [x19]
    mov x0, x15
    movz x1, #221
    mov x2, x14
    bl _memset
    mov x15, x0
    cbnz x15, L8_9
    b L8_10
L8_10:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L8_9:
    adrp x20, _lb_memory_12records_lock@PAGE
    add x20, x20, _lb_memory_12records_lock@PAGEOFF
    mov x0, x20
    bl _lb_memory_lock
    adrp x21, _lb_memory_15quarantine_next@PAGE
    add x21, x21, _lb_memory_15quarantine_next@PAGEOFF
    ldr x14, [x21]
L8_12:
    movz x10, #64
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    adrp x22, _lb_memory_quarantine@PAGE
    add x22, x22, _lb_memory_quarantine@PAGEOFF
    movz x10, #64
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x15, x15, x10
    add x22, x22, x15
    add x15, x22, #16
    ldrb w15, [x15]
    cbnz w15, L8_16
    b L8_14
L8_16:
    sub x23, x29, #96
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L8_13:
    ldr x14, [x23]
    sub x10, x29, #136
    str x14, [x10]
    mov x0, x14
    bl _free
L8_18:
    b L8_15
L8_14:
L8_15:
    sub x23, x29, #120
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x14, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    mov x0, x20
    bl _lb_memory_unlock
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_Arena_over
    .no_dead_strip _lb_memory_Arena_over
_lb_memory_Arena_over:
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
    sub x21, x29, #184
    sub x19, x29, #152
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x15, [x15]
    sub x20, x29, #168
    ldr x20, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x20
    movz x2, #16
    sub x8, x29, #208
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #208
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L9_1
    b L9_2
L9_1:
    sub x20, x29, #224
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L9_3
L9_2:
    sub x19, x29, #136
    add x14, x19, #40
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_30@PAGE
    add x15, x15, l_text_30@PAGEOFF
    sub x20, x29, #240
    str x15, [x20]
    add x15, x20, #8
    movz x9, #16
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
L9_3:
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #280
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #16
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    mov x9, #0
    str x9, [x14]
    sub x23, x29, #136
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
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
L9_5:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_Arena_allocate
    .no_dead_strip _lb_memory_Arena_allocate
_lb_memory_Arena_allocate:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    sub x9, x29, #112
    ldr x15, [x9]
    sub x14, x29, #128
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne L10_2
L10_1:
    add x14, x15, #16
    ldr x19, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
L10_4:
    sub x14, x29, #160
    str x19, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x20, x29, #184
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #104
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x21
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_2:
L10_3:
    sub x14, x29, #144
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L10_8
L10_7:
    mov x20, x14
    b L10_9
L10_8:
    movz x9, #1
    mov x20, x9
L10_9:
    add x21, x15, #16
    add x22, x15, #32
    ldr x14, [x22]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x20
    bl _lb_memory_14aligned_offset
    sub x16, x29, #200
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x23, x29, #200
    add x14, x23, #8
    ldrb w14, [x14]
    cbnz w14, L10_10
    b L10_11
L10_10:
    ldr x24, [x23]
    b L10_12
L10_11:
    sub x19, x29, #224
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_12:
    sub x23, x29, #232
    mov x0, x24
    mov x1, x19
    movz x2, #64
    mov x3, x23
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x25, x29, #248
    ldr x15, [x23]
    str x15, [x25]
    add x23, x25, #8
    strb w14, [x23]
    ldrb w14, [x23]
    cbnz w14, L10_14
    b L10_15
L10_14:
    b L10_16
L10_15:
    sub x19, x29, #272
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_16:
    add x14, x21, #8
    ldr x14, [x14]
    cmp x15, x14
    b.ls L10_19
L10_18:
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    sub x15, x29, #288
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
    bl _lb_memory_12note_refusal
    sub x21, x29, #312
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x23, x29, #104
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_19:
L10_20:
    str x15, [x22]
    ldr x20, [x21]
    add x19, x14, #1
    cmp x24, x19
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x19
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x15
    b.ls L10_22
L10_23:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L10_22:
    add x14, x24, x20
    sub x19, x15, x24
    sub x21, x29, #328
    str x14, [x21]
    add x14, x21, #8
    str x19, [x14]
    sub x19, x29, #352
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #104
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x21
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
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_Arena_resize
    .no_dead_strip _lb_memory_Arena_resize
_lb_memory_Arena_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    str x24, [sp, #80]
    str x25, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str x3, [x16]
    sub x9, x29, #80
    ldr x21, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    sub x14, x29, #96
    add x15, x14, #8
    ldr x20, [x15]
    cmp x19, x20
    b.ne L11_2
L11_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
    b L11_3
L11_2:
L11_3:
    mov x10, #0
    cmp x20, x10
    b.ne L11_6
L11_5:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_8:
    b L11_7
L11_6:
L11_7:
    ldr x15, [x14]
    add x22, x21, #16
    ldr x23, [x22]
    sub x24, x29, #120
    mov x0, x15
    mov x1, x23
    movz x2, #64
    mov x3, x24
    bl _lb_core_6qsub_u
    mov w15, w0
    sub x25, x29, #136
    ldr x23, [x24]
    str x23, [x25]
    add x24, x25, #8
    strb w15, [x24]
    ldrb w15, [x24]
    cbnz w15, L11_9
    b L11_10
L11_9:
    b L11_11
L11_10:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_12:
L11_11:
    add x14, x21, #32
    ldr x15, [x14]
    cmp x23, x15
    cset w24, hi
    cbnz w24, L11_26
    b L11_16
L11_26:
    mov w15, w24
    b L11_17
L11_16:
    sub x21, x15, x23
    cmp x20, x21
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    mov w15, w21
L11_17:
    and w20, w15, #255
    cbnz w20, L11_13
    b L11_14
L11_13:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_18:
    b L11_15
L11_14:
L11_15:
    add x15, x22, #8
    ldr x15, [x15]
    cmp x23, x15
    cset w20, hi
    cbnz w20, L11_27
    b L11_22
L11_27:
    mov w15, w20
    b L11_23
L11_22:
    sub x20, x15, x23
    cmp x19, x20
    cset w20, hi
    mov w15, w20
L11_23:
    and w20, w15, #255
    cbnz w20, L11_19
    b L11_20
L11_19:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_24:
    b L11_21
L11_20:
L11_21:
    mov x9, x19
    mov x10, x23
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_25:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_Arena_release
    .no_dead_strip _lb_memory_Arena_release
_lb_memory_Arena_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x16, x29, #40
    str x1, [x16]
    str x2, [x16, #8]
    adrp x14, _lb_memory_diagnostic@PAGE
    add x14, x14, _lb_memory_diagnostic@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L12_4
    b L12_8
L12_8:
    mov w15, w14
    b L12_5
L12_4:
    sub x14, x29, #40
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, hi
L12_5:
    and w14, w15, #255
    cbnz w14, L12_1
    b L12_2
L12_1:
    sub x14, x29, #40
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x15
    movz x1, #221
    mov x2, x14
    bl _memset
    mov x14, x0
    cbnz x14, L12_6
    b L12_7
L12_7:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L12_6:
    b L12_3
L12_2:
L12_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_Arena_6in_use
    .no_dead_strip _lb_memory_Arena_6in_use
_lb_memory_Arena_6in_use:
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
L13_1:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_Arena_capacity
    .no_dead_strip _lb_memory_Arena_capacity
_lb_memory_Arena_capacity:
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
L14_1:
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_Arena_reset
    .no_dead_strip _lb_memory_Arena_reset
_lb_memory_Arena_reset:
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

    .p2align 2
    .globl _lb_memory_Arena_destroy
    .no_dead_strip _lb_memory_Arena_destroy
_lb_memory_Arena_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
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
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
L16_1:
    sub x14, x29, #64
    str x15, [x14]
    add x21, x14, #8
    mov x9, #0
    str x9, [x21]
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_PageAllocator_allocate
    .no_dead_strip _lb_memory_PageAllocator_allocate
_lb_memory_PageAllocator_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ne L17_2
L17_1:
    sub x14, x29, #144
    movz x9, #8
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #168
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_4:
    b L17_3
L17_2:
L17_3:
    bl _getpagesize
    mov w14, w0
    sxtw x20, w14
    b L17_31
L17_30:
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_31:
    sub x14, x29, #128
    ldr x21, [x14]
    cmp x21, x20
    cset w14, hi
    cbnz w14, L17_34
    b L17_8
L17_34:
    mov w15, w14
    b L17_9
L17_8:
    mov x10, #0
    cmp x21, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L17_10
    b L17_35
L17_35:
    mov w14, w15
    b L17_11
L17_10:
    cbnz w14, L17_12
    b L17_13
L17_12:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
L17_13:
    udiv x11, x20, x21
    msub x14, x11, x21, x20
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L17_11:
    and w15, w14, #255
L17_9:
    and w14, w15, #255
    cbnz w14, L17_5
    b L17_6
L17_5:
    adrp x14, l_text_44@PAGE
    add x14, x14, l_text_44@PAGEOFF
    sub x15, x29, #184
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
    bl _lb_memory_12note_refusal
    sub x20, x29, #208
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x22, x29, #88
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_14:
    b L17_7
L17_6:
L17_7:
    mov x9, x20
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    sub x22, x29, #216
    mov x0, x19
    mov x1, x14
    movz x2, #64
    mov x3, x22
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x23, x29, #232
    ldr x15, [x22]
    str x15, [x23]
    add x22, x23, #8
    strb w14, [x22]
    ldrb w14, [x22]
    cbnz w14, L17_15
    b L17_16
L17_15:
    b L17_17
L17_16:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_18:
L17_17:
    mov x10, #0
    cmp x20, x10
    b.ne L17_20
L17_19:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
L17_20:
    udiv x14, x15, x20
    mov x9, x14
    mov x10, x20
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    sub x10, x29, #376
    str x22, [x10]
    adrp x14, _lb_memory_17private_anonymous@PAGE
    add x14, x14, _lb_memory_17private_anonymous@PAGEOFF
    ldrsw x14, [x14]
    mov x0, #0
    mov x1, x22
    movz x2, #3
    mov x3, x14
    movn x4, #0
    mov x5, #0
    bl _mmap
    mov x14, x0
    b L17_33
L17_32:
    adrp x0, l_text_55@PAGE
    add x0, x0, l_text_55@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L17_33:
    cbnz x14, L17_21
    b L17_22
L17_21:
    b L17_23
L17_22:
    sub x19, x29, #280
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_24:
L17_23:
    movn x10, #0
    cmp x14, x10
    b.ne L17_26
L17_25:
    adrp x14, l_text_44@PAGE
    add x14, x14, l_text_44@PAGEOFF
    sub x15, x29, #296
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
    bl _lb_memory_12note_refusal
    sub x20, x29, #320
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x22, x29, #88
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_28:
    b L17_27
L17_26:
L17_27:
    sub x15, x29, #336
    str x14, [x15]
    add x19, x15, #8
    str x22, [x19]
    sub x19, x29, #360
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #16
    movz x9, #1
    strb w9, [x15]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_29:
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_PageAllocator_resize
    .no_dead_strip _lb_memory_PageAllocator_resize
_lb_memory_PageAllocator_resize:
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
L18_1:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_PageAllocator_release
    .no_dead_strip _lb_memory_PageAllocator_release
_lb_memory_PageAllocator_release:
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
    b.ne L19_2
L19_1:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_2:
L19_3:
    adrp x14, _lb_memory_diagnostic@PAGE
    add x14, x14, _lb_memory_diagnostic@PAGEOFF
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L19_6
L19_5:
    mov x10, x19
    sub x11, x29, #136
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x14
    mov x1, x20
    bl _munmap
    mov w14, w0
L19_17:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_6:
L19_7:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #221
    mov x2, x20
    bl _memset
    mov x14, x0
    cbnz x14, L19_9
    b L19_10
L19_10:
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L19_9:
    adrp x20, _lb_memory_12records_lock@PAGE
    add x20, x20, _lb_memory_12records_lock@PAGEOFF
    mov x0, x20
    bl _lb_memory_lock
    adrp x21, _lb_memory_9held_next@PAGE
    add x21, x21, _lb_memory_9held_next@PAGEOFF
    ldr x14, [x21]
L19_12:
    movz x10, #8
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    adrp x22, _lb_memory_10held_pages@PAGE
    add x22, x22, _lb_memory_10held_pages@PAGEOFF
    movz x10, #8
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x15, x15, x10
    add x22, x22, x15
    add x15, x22, #16
    ldrb w15, [x15]
    cbnz w15, L19_16
    b L19_14
L19_16:
    sub x23, x29, #96
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L19_13:
    mov x10, x23
    sub x11, x29, #136
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #136
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x15
    mov x1, x14
    bl _munmap
    mov w14, w0
L19_18:
    b L19_15
L19_14:
L19_15:
    sub x23, x29, #120
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x14, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    mov x0, x20
    bl _lb_memory_unlock
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_12note_refusal
_lb_memory_12note_refusal:
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
    adrp x14, l_text_56@PAGE
    add x14, x14, l_text_56@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #12
    bl _lb_core_10format_put
    mov w14, w0
    sub x14, x29, #72
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_57@PAGE
    add x14, x14, l_text_57@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #9
    bl _lb_core_10format_put
    mov w14, w0
    sub x14, x29, #88
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #20
    bl _lb_core_10format_put
    mov w14, w0
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_59@PAGE
    add x14, x14, l_text_59@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #7
    bl _lb_core_10format_put
    mov w14, w0
    sub x14, x29, #120
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_60@PAGE
    add x14, x14, l_text_60@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    sub x23, x29, #424
    ldr x14, [x21]
    ldr x15, [x19]
    cmp x14, x15
    b.ls L20_4
L20_3:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L20_5
L20_4:
    mov x0, x20
    bl _lb_core_13format_finish
    sub x16, x29, #440
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #440
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L20_5:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L20_7
    b L20_6
L20_7:
    add x14, x23, #16
    sub x15, x29, #336
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L20_1
L20_6:
    sub x19, x29, #312
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L20_2
L20_1:
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_8:
L20_2:
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    movz x0, #2
    mov x1, x14
    mov x2, x15
    bl _write
    mov x14, x0
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_lock
_lb_memory_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    sub x15, x29, #58
    add x19, x15, #1
L21_1:
L21_2:
    ldr x20, [x14]
    mov x10, #0
    movz x11, #1
    mov x12, x20
1:
    ldaxrb w9, [x12]
    cmp w9, w10
    b.ne 2f
    stlxrb w13, w11, [x12]
    cbnz w13, 1b
2:
    clrex
    mov w20, w9
    mov x10, #0
    cmp w20, w10
    cset w21, eq
    strb w21, [x15]
    strb w20, [x19]
    ldrb w20, [x15]
    ldrb w21, [x19]
    and w20, w20, #255
    cbnz w20, L21_4
    b L21_5
L21_4:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_5:
L21_6:
    b L21_1

    .p2align 2
    .globl _lb_memory_unlock
_lb_memory_unlock:
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

    .p2align 2
    .globl _lb_memory_9note_site
    .no_dead_strip _lb_memory_9note_site
_lb_memory_9note_site:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    str x22, [sp, #160]
    str x23, [sp, #152]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x16, x29, #104
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #120
    str w4, [x16]
    adrp x19, _lb_memory_12records_lock@PAGE
    add x19, x19, _lb_memory_12records_lock@PAGEOFF
    mov x0, x19
    bl _lb_memory_lock
    adrp x20, _lb_memory_9site_next@PAGE
    add x20, x20, _lb_memory_9site_next@PAGEOFF
    ldr x14, [x20]
    movz x10, #256
    cmp x14, x10
    b.hs L23_2
L23_1:
    adrp x15, _lb_memory_sites@PAGE
    add x15, x15, _lb_memory_sites@PAGEOFF
    movz x10, #40
    mul x21, x14, x10
    add x21, x15, x21
    sub x22, x29, #160
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x15, x29, #72
    ldr x15, [x15]
    str x15, [x22]
    sub x15, x29, #88
    ldr x15, [x15]
    add x23, x22, #8
    str x15, [x23]
    sub x15, x29, #104
    add x23, x22, #16
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x15, x29, #120
    ldr w15, [x15]
    add x23, x22, #32
    str w15, [x23]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L23_3
L23_2:
    adrp x21, _lb_memory_sites@PAGE
    add x21, x21, _lb_memory_sites@PAGEOFF
    movz x9, #1
    mov x22, x9
L23_4:
    movz x10, #256
    cmp x22, x10
    b.hs L23_6
L23_5:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #256
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #40
    mul x14, x14, x10
    add x14, x21, x14
    movz x10, #40
    mul x15, x22, x10
    add x15, x21, x15
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x22, #1
    mov x22, x14
    b L23_4
L23_6:
    adrp x14, _lb_memory_sites@PAGE
    add x14, x14, _lb_memory_sites@PAGEOFF
    movz x10, #10200
    add x21, x14, x10
    sub x22, x29, #200
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x14, x29, #72
    ldr x14, [x14]
    str x14, [x22]
    sub x14, x29, #88
    ldr x14, [x14]
    add x15, x22, #8
    str x14, [x15]
    sub x14, x29, #104
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #120
    ldr w14, [x14]
    add x15, x22, #32
    str w14, [x15]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
L23_3:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_71@PAGE
    add x1, x1, l_text_71@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    mov x0, x19
    bl _lb_memory_unlock
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_16allocation_sites
    .no_dead_strip _lb_memory_16allocation_sites
_lb_memory_16allocation_sites:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    adrp x14, _lb_memory_9site_next@PAGE
    add x14, x14, _lb_memory_9site_next@PAGEOFF
    ldr x14, [x14]
    movz x10, #256
    cmp x14, x10
    b.hs L24_2
L24_1:
    mov x15, x14
    b L24_3
L24_2:
    movz x9, #256
    mov x15, x9
L24_3:
    adrp x19, _lb_memory_sites@PAGE
    add x19, x19, _lb_memory_sites@PAGEOFF
    movz x10, #257
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L24_4
L24_5:
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L24_4:
    sub x14, x29, #64
    str x19, [x14]
    add x20, x14, #8
    str x15, [x20]
    sub x20, x29, #48
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_6:
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_startup
    .no_dead_strip _lb_memory_startup
_lb_memory_startup:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    adrp x19, _lb_memory_heap@PAGE
    add x19, x19, _lb_memory_heap@PAGEOFF
    adrp x14, _lb_memory_11c_allocator@PAGE
    add x14, x14, _lb_memory_11c_allocator@PAGEOFF
    sub x15, x29, #48
    str x14, [x15]
    adrp x14, _lb_vt_memory_CAllocator_Allocator@PAGE
    add x14, x14, _lb_vt_memory_CAllocator_Allocator@PAGEOFF
    add x20, x15, #8
    str x14, [x20]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_set
    .no_dead_strip _lb_memory_set
_lb_memory_set:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str w2, [x16]
    sub x14, x29, #48
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L26_2
L26_1:
    ldr x19, [x14]
    sub x20, x29, #64
    ldrb w20, [x20]
    mov w20, w20
    mov x0, x19
    mov x1, x20
    mov x2, x15
    bl _memset
    mov x19, x0
    cbnz x19, L26_4
    b L26_5
L26_5:
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L26_4:
    b L26_3
L26_2:
L26_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_grow
    .no_dead_strip _lb_memory_grow
_lb_memory_grow:
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
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    add x20, x19, #8
    ldr x15, [x20]
    add x15, x15, #8
    ldr x15, [x15]
    sub x21, x29, #136
    sub x22, x29, #152
    ldr x22, [x22]
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
    cbnz w14, L27_1
    b L27_2
L27_1:
    ldr x14, [x21]
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    str x22, [x14]
    sub x19, x29, #120
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_4:
    b L27_3
L27_2:
L27_3:
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
    cbnz w14, L27_5
    b L27_6
L27_5:
    sub x24, x29, #224
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L27_7
L27_6:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_30@PAGE
    add x15, x15, l_text_30@PAGEOFF
    sub x20, x29, #240
    str x15, [x20]
    add x15, x20, #8
    movz x9, #16
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
    ldr x24, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_8:
L27_7:
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #8
    ldr x14, [x14]
    cmp x14, x22
    b.hs L27_10
L27_9:
    mov x15, x14
    b L27_11
L27_10:
    mov x15, x22
L27_11:
    mov x10, #0
    cmp x15, x10
    b.ls L27_13
L27_12:
    ldr x14, [x23]
    ldr x22, [x21]
    mov x0, x14
    mov x1, x22
    mov x2, x15
    bl _memcpy
    mov x14, x0
    cbnz x14, L27_15
    b L27_16
L27_16:
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L27_15:
    b L27_14
L27_13:
L27_14:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L27_17:
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_memory_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/memory.lucb:30:9"
l_text_2:
    .asciz "src/std/memory.lucb:34:13"
l_text_3:
    .asciz "index out of bounds"
l_text_4:
    .asciz "src/std/memory.lucb:37:9"
l_text_5:
    .asciz "fixed buffer"
l_text_6:
    .asciz "src/std/memory.lucb:40:9"
l_text_7:
    .asciz "src/std/memory.lucb:41:9"
l_text_8:
    .asciz "src/std/memory.lucb:49:9"
l_text_9:
    .asciz "src/std/memory.lucb:51:9"
l_text_10:
    .asciz "src/std/memory.lucb:53:9"
l_text_11:
    .asciz "src/std/memory.lucb:54:9"
l_text_12:
    .asciz "null_foreign"
l_text_13:
    .asciz "src/std/memory.lucb:60:13"
l_text_14:
    .asciz "src/std/memory.lucb:61:9"
l_text_15:
    .asciz "src/std/memory.lucb:62:9"
l_text_16:
    .asciz "division by zero"
l_text_17:
    .asciz "src/std/memory.lucb:71:5"
l_text_18:
    .asciz "src/std/memory.lucb:72:5"
l_text_19:
    .asciz "src/std/memory.lucb:73:5"
l_text_20:
    .asciz "src/std/memory.lucb:75:5"
l_text_21:
    .asciz "src/std/memory.lucb:84:9"
l_text_22:
    .asciz "heap"
l_text_23:
    .asciz "src/std/memory.lucb:94:9"
l_text_24:
    .asciz "src/std/memory.lucb:97:9"
l_text_25:
    .asciz "src/std/memory.lucb:107:9"
l_text_26:
    .asciz "src/std/memory.lucb:109:9"
l_text_27:
    .asciz "src/std/memory.lucb:110:9"
l_text_28:
    .asciz "src/std/memory.lucb:112:9"
l_text_29:
    .asciz "src/std/memory.lucb:113:9"
l_text_30:
    .asciz "memory.exhausted"
l_text_31:
    .asciz "src/std/memory.lucb:131:9"
l_text_32:
    .asciz "src/std/memory.lucb:135:13"
l_text_33:
    .asciz "arena"
l_text_34:
    .asciz "src/std/memory.lucb:143:9"
l_text_35:
    .asciz "src/std/memory.lucb:152:9"
l_text_36:
    .asciz "src/std/memory.lucb:154:9"
l_text_37:
    .asciz "src/std/memory.lucb:156:9"
l_text_38:
    .asciz "src/std/memory.lucb:157:9"
l_text_39:
    .asciz "src/std/memory.lucb:161:13"
l_text_40:
    .asciz "src/std/memory.lucb:165:9"
l_text_41:
    .asciz "src/std/memory.lucb:167:9"
l_text_42:
    .asciz "src/std/memory.lucb:176:9"
l_text_43:
    .asciz "src/std/memory.lucb:187:9"
l_text_44:
    .asciz "page allocator"
l_text_45:
    .asciz "src/std/memory.lucb:190:9"
l_text_46:
    .asciz "src/std/memory.lucb:191:9"
l_text_47:
    .asciz "src/std/memory.lucb:196:9"
l_text_48:
    .asciz "src/std/memory.lucb:199:9"
l_text_49:
    .asciz "src/std/memory.lucb:209:9"
l_text_50:
    .asciz "src/std/memory.lucb:211:9"
l_text_51:
    .asciz "src/std/memory.lucb:212:9"
l_text_52:
    .asciz "src/std/memory.lucb:214:9"
l_text_53:
    .asciz "src/std/memory.lucb:215:9"
l_text_54:
    .asciz "src/std/memory.lucb:232:5"
l_text_55:
    .asciz "src/std/memory.lucb:237:5"
l_text_56:
    .asciz "memory: the "
l_text_57:
    .asciz " refused "
l_text_58:
    .asciz " bytes at alignment "
l_text_59:
    .asciz " (used "
l_text_60:
    .asciz ")\n"
l_text_61:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
l_text_62:
    .asciz "src/std/memory.lucb:289:9"
l_text_63:
    .asciz "src/std/memory.lucb:293:13"
l_text_64:
    .asciz "src/std/memory.lucb:294:13"
l_text_65:
    .asciz "src/std/memory.lucb:295:9"
l_text_66:
    .asciz "src/std/memory.lucb:296:5"
l_text_67:
    .asciz "src/std/memory.lucb:303:5"
l_text_68:
    .asciz "src/std/memory.lucb:338:9"
l_text_69:
    .asciz "src/std/memory.lucb:357:9"
l_text_70:
    .asciz "src/std/memory.lucb:359:5"
l_text_71:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_memory_CAllocator_Allocator
    .weak_definition _lb_vt_memory_CAllocator_Allocator
_lb_vt_memory_CAllocator_Allocator:
    .quad _lb_memory_CAllocator_allocate
    .quad _lb_memory_CAllocator_resize
    .quad _lb_memory_CAllocator_release
    .section __DATA,__data
    .p2align 2
    .globl _lb_memory_17private_anonymous
    .weak_definition _lb_memory_17private_anonymous
_lb_memory_17private_anonymous:
    .zero 4
    .globl _lb_memory_diagnostic
    .no_dead_strip _lb_memory_diagnostic
    .zerofill __DATA,__bss,_lb_memory_diagnostic,1,0
    .globl _lb_memory_sites
    .zerofill __DATA,__bss,_lb_memory_sites,10240,3
    .globl _lb_memory_9site_next
    .zerofill __DATA,__bss,_lb_memory_9site_next,8,3
    .globl _lb_memory_12records_lock
    .zerofill __DATA,__bss,_lb_memory_12records_lock,1,0
    .globl _lb_memory_quarantine
    .zerofill __DATA,__bss,_lb_memory_quarantine,1536,3
    .globl _lb_memory_15quarantine_next
    .zerofill __DATA,__bss,_lb_memory_15quarantine_next,8,3
    .globl _lb_memory_10held_pages
    .zerofill __DATA,__bss,_lb_memory_10held_pages,192,3
    .globl _lb_memory_9held_next
    .zerofill __DATA,__bss,_lb_memory_9held_next,8,3
    .section __DATA,__data
    .p2align 2
    .globl _lb_memory_exhausted
    .weak_definition _lb_memory_exhausted
    .no_dead_strip _lb_memory_exhausted
_lb_memory_exhausted:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_memory_unset
    .weak_definition _lb_memory_unset
    .no_dead_strip _lb_memory_unset
_lb_memory_unset:
    .zero 4
    .globl _lb_memory_11c_allocator
    .zerofill __DATA,__bss,_lb_memory_11c_allocator,1,0

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_memory_allocator$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_memory_allocator
_lb_memory_allocator:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_memory_allocator$tlv$init
    .globl _lb_memory_heap
    .no_dead_strip _lb_memory_heap
    .zerofill __DATA,__bss,_lb_memory_heap,16,3

.subsections_via_symbols
