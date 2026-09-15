    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_strings_search_0init
_lb_strings_search_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_11starts_with
    .no_dead_strip _lb_strings_11starts_with
_lb_strings_11starts_with:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #80
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #64
    add x20, x19, #8
    ldr x20, [x20]
    cmp x15, x20
    b.ls L1_2
L1_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_2:
L1_3:
    ldr x22, [x19]
    add x21, x20, #1
    mov x9, #0
    cmp x9, x21
    b.lo 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x21
    b.lo 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L1_5
L1_6:
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_5:
    sub x19, x29, #96
    str x22, [x19]
    add x19, x19, #8
    str x15, [x19]
    sub x19, x29, #112
    str x22, [x19]
    add x19, x19, #8
    str x15, [x19]
L1_7:
    ldr x19, [x14]
    mov x0, x22
    mov x1, x19
    mov x2, x15
    bl _memcmp
    mov w19, w0
    mov x10, #0
    cmp w19, w10
    cset w19, eq
L1_8:
    and w14, w19, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_9ends_with
    .no_dead_strip _lb_strings_9ends_with
_lb_strings_9ends_with:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #96
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #80
    add x20, x19, #8
    ldr x20, [x20]
    cmp x15, x20
    b.ls L2_2
L2_1:
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
L2_4:
    b L2_3
L2_2:
L2_3:
    ldr x22, [x19]
    sub x23, x20, x15
    add x21, x20, #1
    cmp x23, x21
    b.lo 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x20
    b.ls L2_5
L2_6:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L2_5:
    add x19, x22, x23
    sub x21, x20, x23
    sub x24, x29, #112
    str x19, [x24]
    add x24, x24, #8
    str x21, [x24]
    sub x24, x29, #128
    str x19, [x24]
    add x24, x24, #8
    str x21, [x24]
    cmp x15, x21
    cset w24, eq
    cbnz w24, L2_7
    b L2_10
L2_10:
    mov w14, w24
    b L2_8
L2_7:
    ldr x15, [x14]
    mov x0, x19
    mov x1, x15
    mov x2, x21
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L2_8:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
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
L2_9:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_find
    .no_dead_strip _lb_strings_find
_lb_strings_find:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #56
    sub x15, x29, #72
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_strings_12search_bytes
    sub x16, x29, #88
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #88
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_9find_from
    .no_dead_strip _lb_strings_9find_from
_lb_strings_9find_from:
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
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #112
    str x4, [x16]
    sub x14, x29, #112
    ldr x19, [x14]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    cmp x19, x15
    b.ls L4_2
L4_1:
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
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    ldr x21, [x14]
    add x20, x15, #1
    cmp x19, x20
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x15
    b.ls L4_5
L4_6:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L4_5:
    add x14, x19, x21
    sub x20, x15, x19
    sub x22, x29, #144
    str x14, [x22]
    add x14, x22, #8
    str x20, [x14]
    sub x14, x29, #96
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_strings_12search_bytes
    sub x16, x29, #160
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x20, x29, #160
    add x14, x20, #8
    ldrb w14, [x14]
    cbnz w14, L4_7
    b L4_8
L4_7:
    ldr x14, [x20]
    b L4_9
L4_8:
    sub x19, x29, #176
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
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
L4_9:
    mov x9, x19
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    sub x20, x29, #192
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
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_11:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_9find_last
    .no_dead_strip _lb_strings_9find_last
_lb_strings_9find_last:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #80
    sub x20, x29, #96
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #1
    bl _lb_strings_12search_bytes
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
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
L5_3:
    add x15, x19, #8
    ldr x15, [x15]
    add x21, x20, #8
    ldr x21, [x21]
    mov x9, x15
    mov x10, x21
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    sub x21, x29, #144
    str x15, [x21]
    add x15, x21, #8
    movz x9, #1
    strb w9, [x15]
    sub x22, x29, #64
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x22
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_last
    .no_dead_strip _lb_strings_last
_lb_strings_last:
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
    sub x16, x29, #96
    str w2, [x16]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    ldr x14, [x14]
    sub x19, x29, #96
    ldrb w19, [x19]
    mov x20, x15
L6_1:
    mov x10, #0
    cmp x20, x10
    b.ls L6_3
L6_2:
    mov x9, x20
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    cmp x21, x15
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x21, x14
    ldrb w22, [x22]
    cmp w22, w19
    b.ne L6_5
L6_4:
    sub x14, x29, #112
    str x21, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #64
    mov x10, x14
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
L6_7:
    b L6_6
L6_5:
L6_6:
    mov x20, x21
    b L6_1
L6_3:
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
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_8:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_contains
    .no_dead_strip _lb_strings_contains
_lb_strings_contains:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #56
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #40
    sub x19, x29, #56
    mov x10, x14
    sub x11, x29, #104
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x19
    sub x11, x29, #120
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #104
    sub x15, x29, #120
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_strings_12search_bytes
    sub x16, x29, #136
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #136
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x19
    sub x11, x29, #72
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L7_3
L7_2:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L7_3:
    sub x14, x29, #72
    add x14, x14, #8
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_1:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_12search_bytes
_lb_strings_12search_bytes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    str x19, [sp, #248]
    str x20, [sp, #240]
    str x21, [sp, #232]
    str x22, [sp, #224]
    str x23, [sp, #216]
    str x24, [sp, #208]
    str x25, [sp, #200]
    str x26, [sp, #192]
    str x27, [sp, #184]
    str x28, [sp, #176]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #160
    str w4, [x16]
    sub x19, x29, #144
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L8_2
L8_1:
    sub x14, x29, #176
    mov x9, #0
    str x9, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    ldr x27, [sp, #184]
    ldr x28, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_4:
    b L8_3
L8_2:
L8_3:
    sub x21, x29, #128
    add x9, x21, #8
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    cmp x14, x15
    b.ls L8_6
L8_5:
    sub x19, x29, #192
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    ldr x27, [sp, #184]
    ldr x28, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_8:
    b L8_7
L8_6:
L8_7:
    sub x14, x29, #160
    ldrb w23, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    mov x3, #0
    bl _lb_strings_14maximal_suffix
    sub x16, x29, #208
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #208
    ldr x24, [x14]
    add x14, x14, #8
    ldr x25, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    movz x3, #1
    bl _lb_strings_14maximal_suffix
    sub x16, x29, #224
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #224
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x15, x24
    b.ls L8_10
L8_9:
    mov x24, x15
    mov x25, x14
    b L8_11
L8_10:
L8_11:
    ldr x14, [x20]
    mov x9, x14
    mov x10, x25
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x24, x14
    cset w14, ls
    mov w26, w14
    mov x9, #0
    mov x27, x9
L8_12:
    and w14, w26, #255
    cbnz w14, L8_15
    b L8_51
L8_51:
    mov w15, w14
    b L8_16
L8_15:
    cmp x27, x24
    cset w15, lo
L8_16:
    and w28, w15, #255
    cbnz w28, L8_13
    b L8_14
L8_13:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x27
    mov x3, x23
    bl _lb_strings_11search_byte
    mov w28, w0
    mov x9, x25
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x23
    bl _lb_strings_11search_byte
    mov w14, w0
    cmp w28, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L8_18
L8_17:
    mov x9, #0
    mov w26, w9
    b L8_19
L8_18:
L8_19:
    mov x9, x27
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x27, x14
    b L8_12
L8_14:
    cbnz w14, L8_20
    b L8_21
L8_20:
    ldr x14, [x20]
    mov x9, x14
    mov x10, x25
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x26, x25
    mov x9, x14
    str x9, [sp, #0]
    b L8_22
L8_21:
    ldr x14, [x20]
    mov x9, x14
    mov x10, x24
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x24, x14
    b.ls L8_24
L8_23:
    mov x14, x24
    b L8_25
L8_24:
L8_25:
    mov x26, x14
    mov x9, #0
    str x9, [sp, #0]
L8_22:
    mov x9, #0
    mov x25, x9
    mov x9, #0
    mov x28, x9
L8_26:
    ldr x14, [x20]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x9, x15
    mov x10, x25
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x14, x15
    b.hi L8_28
L8_27:
    cmp x24, x28
    b.ls L8_30
L8_29:
    mov x14, x24
    b L8_31
L8_30:
    mov x14, x28
L8_31:
    mov x22, x14
L8_32:
    ldr x14, [x20]
    cmp x22, x14
    cset w14, lo
    cbnz w14, L8_35
    b L8_52
L8_52:
    mov w15, w14
    b L8_36
L8_35:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x22
    mov x3, x23
    bl _lb_strings_11search_byte
    mov w27, w0
    mov x9, x25
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x23
    bl _lb_strings_11search_byte
    mov w14, w0
    cmp w27, w14
    cset w15, eq
L8_36:
    and w14, w15, #255
    cbnz w14, L8_33
    b L8_34
L8_33:
    mov x9, x22
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x22, x14
    b L8_32
L8_34:
    ldr x14, [x20]
    cmp x22, x14
    b.hs L8_38
L8_37:
    mov x9, x22
    mov x10, x24
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x10, x25
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    mov x9, #0
    mov x28, x9
    b L8_26
L8_40:
    b L8_39
L8_38:
L8_39:
    mov x22, x24
L8_41:
    cmp x22, x28
    cset w14, hi
    cbnz w14, L8_44
    b L8_53
L8_53:
    mov w15, w14
    b L8_45
L8_44:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x23
    bl _lb_strings_11search_byte
    mov w27, w0
    mov x9, x25
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x23
    bl _lb_strings_11search_byte
    mov w14, w0
    cmp w27, w14
    cset w15, eq
L8_45:
    and w14, w15, #255
    cbnz w14, L8_42
    b L8_43
L8_42:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x22, x14
    b L8_41
L8_43:
    cmp x22, x28
    b.hi L8_47
L8_46:
    sub x14, x29, #240
    str x25, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    ldr x27, [sp, #184]
    ldr x28, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_49:
    b L8_48
L8_47:
L8_48:
    mov x9, x26
    mov x10, x25
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    ldr x9, [sp, #0]
    mov x28, x9
    b L8_26
L8_28:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    ldr x27, [sp, #184]
    ldr x28, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_50:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_14maximal_suffix
_lb_strings_14maximal_suffix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    str x25, [sp, #104]
    str x26, [sp, #96]
    str x27, [sp, #88]
    str x28, [sp, #80]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str w2, [x16]
    sub x16, x29, #160
    str w3, [x16]
    sub x19, x29, #128
    add x20, x19, #8
    sub x21, x29, #144
    sub x22, x29, #160
    mov x9, #0
    mov x23, x9
    movz x9, #1
    mov x24, x9
    mov x9, #0
    mov x25, x9
    movz x9, #1
    mov x26, x9
L9_1:
    ldr x14, [x20]
    cmp x24, x14
    cset w15, lo
    cbnz w15, L9_4
    b L9_16
L9_16:
    mov w14, w15
    b L9_5
L9_4:
    sub x15, x14, x24
    cmp x25, x15
    cset w15, lo
    mov w14, w15
L9_5:
    and w15, w14, #255
    cbnz w15, L9_2
    b L9_3
L9_2:
    mov x9, x24
    mov x10, x25
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldrb w27, [x21]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x27
    bl _lb_strings_11search_byte
    mov w28, w0
    mov x9, x23
    mov x10, x25
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x27
    bl _lb_strings_11search_byte
    mov w14, w0
    and w15, w28, #255
    and w14, w14, #255
    cmp w15, w14
    b.ne L9_7
L9_6:
    mov x9, x25
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x26
    b.ne L9_10
L9_9:
    mov x9, x24
    mov x10, x26
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x15, x14
    mov x9, #0
    mov x14, x9
    b L9_11
L9_10:
    mov x15, x24
L9_11:
    mov x24, x23
    mov x25, x15
    mov x27, x14
    mov x28, x26
    b L9_8
L9_7:
    cmp w15, w14
    cset w26, lo
    ldrb w27, [x22]
    cmp w26, w27
    cset w26, eq
    mov x10, #0
    cmp w26, w10
    b.ne L9_13
L9_12:
    mov x9, x25
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x10, x23
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x26, x23
    b L9_14
L9_13:
    mov x9, x24
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x26, x24
    movz x9, #1
    mov x15, x9
L9_14:
    mov x24, x26
    mov x25, x14
    mov x9, #0
    mov x27, x9
    mov x28, x15
L9_8:
    mov x23, x24
    mov x24, x25
    mov x25, x27
    mov x26, x28
    b L9_1
L9_3:
    sub x14, x29, #176
    str x23, [x14]
    add x15, x14, #8
    str x26, [x15]
    sub x19, x29, #112
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
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    ldr x25, [sp, #104]
    ldr x26, [sp, #96]
    ldr x27, [sp, #88]
    ldr x28, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_15:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_11search_byte
_lb_strings_11search_byte:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #56
    str x2, [x16]
    sub x16, x29, #72
    str w3, [x16]
    sub x14, x29, #72
    ldrb w14, [x14]
    cbnz w14, L10_1
    b L10_2
L10_1:
    sub x14, x29, #40
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #56
    ldr x19, [x19]
    mov x9, x15
    mov x10, x19
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x9, x19
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    ldr x14, [x14]
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x19, x14
    ldrb w14, [x14]
    b L10_3
L10_2:
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #40
    ldr x19, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x19
    ldrb w14, [x14]
L10_3:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_strings_search_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/strings/search.lucb:4:5"
l_text_1:
    .asciz "index out of bounds"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/strings/search.lucb:9:5"
l_text_4:
    .asciz "src/std/strings/search.lucb:15:5"
l_text_5:
    .asciz "src/std/strings/search.lucb:22:5"
l_text_6:
    .asciz "src/std/strings/search.lucb:23:5"
l_text_7:
    .asciz "src/std/strings/search.lucb:29:5"
l_text_8:
    .asciz "src/std/strings/search.lucb:35:9"
l_text_9:
    .asciz "src/std/strings/search.lucb:36:9"
l_text_10:
    .asciz "src/std/strings/search.lucb:38:5"
l_text_11:
    .asciz "src/std/strings/search.lucb:41:5"
l_text_12:
    .asciz "src/std/strings/search.lucb:58:5"
l_text_13:
    .asciz "src/std/strings/search.lucb:61:9"
l_text_14:
    .asciz "src/std/strings/search.lucb:63:9"
l_text_15:
    .asciz "src/std/strings/search.lucb:66:9"
l_text_16:
    .asciz "src/std/strings/search.lucb:68:9"
l_text_17:
    .asciz "src/std/strings/search.lucb:72:5"
l_text_18:
    .asciz "src/std/strings/search.lucb:74:9"
l_text_19:
    .asciz "src/std/strings/search.lucb:75:13"
l_text_20:
    .asciz "src/std/strings/search.lucb:77:13"
l_text_21:
    .asciz "src/std/strings/search.lucb:81:9"
l_text_22:
    .asciz "src/std/strings/search.lucb:82:13"
l_text_23:
    .asciz "src/std/strings/search.lucb:85:9"
l_text_24:
    .asciz "src/std/strings/search.lucb:87:5"
l_text_25:
    .asciz "src/std/strings/search.lucb:96:5"
l_text_26:
    .asciz "src/std/strings/search.lucb:97:9"
l_text_27:
    .asciz "src/std/strings/search.lucb:98:9"
l_text_28:
    .asciz "src/std/strings/search.lucb:100:13"
l_text_29:
    .asciz "src/std/strings/search.lucb:101:17"
l_text_30:
    .asciz "src/std/strings/search.lucb:104:17"
l_text_31:
    .asciz "src/std/strings/search.lucb:106:13"
l_text_32:
    .asciz "src/std/strings/search.lucb:108:13"
l_text_33:
    .asciz "src/std/strings/search.lucb:111:13"
l_text_34:
    .asciz "src/std/strings/search.lucb:114:5"
l_text_35:
    .asciz "src/std/strings/search.lucb:117:5"
l_text_36:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
