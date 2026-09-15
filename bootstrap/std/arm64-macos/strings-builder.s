    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_strings_builder_0init
_lb_strings_builder_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_Builder_create
    .no_dead_strip _lb_strings_Builder_create
_lb_strings_Builder_create:
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
    sub x16, x29, #152
    str x0, [x16]
    sub x14, x29, #152
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L1_2
L1_1:
    mov x15, x14
    b L1_3
L1_2:
    movz x9, #64
    mov x15, x9
L1_3:
    sub x19, x29, #160
    mov x0, x15
    movz x1, #1
    movz x2, #64
    mov x3, x19
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #176
    ldr x19, [x19]
    str x19, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, L1_4
    b L1_5
L1_4:
    b L1_6
L1_5:
    sub x19, x29, #136
    add x14, x19, #40
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x12, x29, #192
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
L1_6:
    sub x20, x29, #232
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    sub x22, x29, #280
    movz x10, #16384, lsl #48
    cmp x19, x10
    b.ls L1_9
L1_8:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L1_10
L1_9:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, L1_11
    b L1_12
L1_12:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_11:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #1
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #304
    add x12, x23, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x19, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L1_13
    b L1_14
L1_13:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L1_10
L1_14:
    ldr x14, [x23]
    str x14, [x22]
    add x14, x22, #8
    str x19, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L1_10:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L1_16
    b L1_15
L1_16:
    add x14, x22, #16
    sub x19, x29, #136
    add x15, x19, #40
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
L1_15:
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    mov x9, #0
    str x9, [x14]
    add x14, x20, #24
    mov x10, x21
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #136
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x19, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_Builder_capacity
    .no_dead_strip _lb_strings_Builder_capacity
_lb_strings_Builder_capacity:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L2_2
L2_1:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    b L2_3
L2_2:
    mov x9, #0
    mov x15, x9
L2_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_Builder_length
    .no_dead_strip _lb_strings_Builder_length
_lb_strings_Builder_length:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #16
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_Builder_reserve
    .no_dead_strip _lb_strings_Builder_reserve
_lb_strings_Builder_reserve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    add x19, x20, #8
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L4_2
L4_1:
    sub x19, x29, #88
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
L4_4:
    b L4_3
L4_2:
L4_3:
    add x14, x20, #16
    ldr x14, [x14]
    sub x15, x29, #112
    ldr x15, [x15]
    sub x21, x29, #136
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #152
    ldr x15, [x21]
    str x15, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, L4_5
    b L4_6
L4_5:
    b L4_7
L4_6:
    sub x19, x29, #88
    adrp x14, _lb_memory_exhausted@PAGE
    add x14, x14, _lb_memory_exhausted@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
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
L4_8:
L4_7:
    sub x21, x29, #176
    mov x0, x15
    movz x1, #1
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #192
    ldr x21, [x21]
    str x21, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, L4_9
    b L4_10
L4_9:
    b L4_11
L4_10:
    sub x19, x29, #88
    adrp x14, _lb_memory_exhausted@PAGE
    add x14, x14, _lb_memory_exhausted@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
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
L4_12:
L4_11:
    ldr x14, [x19]
    cmp x21, x14
    b.hi L4_14
L4_13:
    sub x14, x29, #88
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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
L4_16:
    b L4_15
L4_14:
L4_15:
    sub x19, x29, #216
    mov x0, x14
    movz x1, #2
    movz x2, #64
    mov x3, x19
    bl _lb_core_6qmul_u
    mov w15, w0
    sub x13, x29, #232
    ldr x12, [x19]
    str x12, [x13]
    add x13, x13, #8
    strb w15, [x13]
    ldrb w15, [x13]
    cbnz w15, L4_17
    b L4_18
L4_17:
    mov x14, x12
    b L4_19
L4_18:
    mov x14, x21
L4_19:
    cmp x14, x21
    b.hs L4_21
L4_20:
    mov x19, x21
    b L4_22
L4_21:
    mov x19, x14
L4_22:
    sub x21, x29, #248
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    sub x8, x29, #296
    bl _lb_memory_grow
    sub x15, x29, #296
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L4_24
    b L4_23
L4_24:
    add x14, x15, #16
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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
L4_25:
L4_23:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #88
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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

    .p2align 2
    .globl _lb_strings_Builder_write
    .no_dead_strip _lb_strings_Builder_write
_lb_strings_Builder_write:
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
    str x25, [sp, #256]
    str x26, [sp, #248]
    str x27, [sp, #240]
    str x28, [sp, #232]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    ldr x21, [x9]
    add x19, x21, #8
    ldr x20, [x19]
    mov x10, #0
    cmp x20, x10
    b.ne L5_2
L5_1:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
    b L5_3
L5_2:
L5_3:
    sub x22, x29, #168
    add x23, x22, #8
    ldr x24, [x23]
    mov x10, #0
    cmp x24, x10
    b.ne L5_6
L5_5:
    sub x14, x29, #144
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
    b L5_7
L5_6:
L5_7:
    ldr x25, [x21]
    ldr x26, [x22]
    sub x27, x29, #200
    sub x28, x29, #216
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    mov x10, x28
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cmp x26, x25
    cset w14, hs
    cbnz w14, L5_12
    b L5_34
L5_34:
    mov w15, w14
    b L5_13
L5_12:
    sub x14, x26, x25
    cmp x14, x20
    cset w15, lo
L5_13:
    and w14, w15, #255
    cbnz w14, L5_9
    b L5_10
L5_9:
    mov x9, x26
    mov x10, x25
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    add x14, x21, #16
    ldr x14, [x14]
    cmp x20, x14
    cset w15, hi
    cbnz w15, L5_35
    b L5_17
L5_35:
    mov w14, w15
    b L5_18
L5_17:
    sub x15, x14, x20
    cmp x24, x15
    cset w15, hi
    mov w14, w15
L5_18:
    and w15, w14, #255
    cbnz w15, L5_14
    b L5_15
L5_14:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_io_14invalid_buffer@PAGE
    add x15, x15, _lb_io_14invalid_buffer@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x12, x29, #232
    str x15, [x12]
    add x15, x12, #8
    movz x9, #49
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_19:
    b L5_16
L5_15:
L5_16:
    sub x14, x29, #248
    str x20, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x25, x20
    b L5_11
L5_10:
    mov x9, #0
    mov x25, x9
L5_11:
    mov x0, x21
    mov x1, x24
    sub x8, x29, #280
    bl _lb_strings_Builder_reserve
    sub x15, x29, #280
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_21
    b L5_20
L5_21:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_22:
L5_20:
    add x14, x27, #8
    ldrb w14, [x14]
    cbnz w14, L5_26
    b L5_24
L5_26:
L5_23:
    ldr x15, [x21]
    ldr x12, [x19]
    add x14, x21, #16
    ldr x13, [x14]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x12
    b.ls L5_27
L5_28:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L5_27:
    add x14, x15, x13
    sub x20, x12, x13
    sub x22, x29, #296
    str x14, [x22]
    add x14, x22, #8
    str x20, [x14]
    ldr x20, [x21]
    ldr x24, [x19]
    add x14, x24, #1
    cmp x25, x14
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x14
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x24
    b.ls L5_29
L5_30:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L5_29:
    add x14, x20, x25
    sub x15, x24, x25
    sub x12, x29, #312
    str x14, [x12]
    add x14, x12, #8
    str x15, [x14]
    ldr x14, [x23]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x12
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_move_0g1_u8
    b L5_25
L5_24:
    ldr x15, [x21]
    ldr x12, [x19]
    add x14, x21, #16
    ldr x13, [x14]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x12
    b.ls L5_31
L5_32:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L5_31:
    add x14, x15, x13
    sub x19, x12, x13
    sub x20, x29, #328
    str x14, [x20]
    add x14, x20, #8
    str x19, [x14]
    ldr x14, [x23]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_move_0g1_u8
L5_25:
    add x14, x21, #16
    ldr x15, [x14]
    ldr x12, [x23]
    mov x9, x15
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x14, [x23]
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_33:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_Builder_put
    .no_dead_strip _lb_strings_Builder_put
_lb_strings_Builder_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #72
    ldr x15, [x9]
    sub x14, x29, #88
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #128
    bl _lb_strings_Builder_write
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    add x14, x15, #8
    sub x19, x29, #64
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_Builder_view
    .no_dead_strip _lb_strings_Builder_view
_lb_strings_Builder_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    add x14, x19, #16
    ldr x15, [x14]
    add x12, x19, #8
    ldr x13, [x12]
    cmp x15, x13
    b.hs L7_2
L7_1:
    ldr x13, [x19]
    add x13, x15, x13
    mov x9, #0
    strb w9, [x13]
    b L7_3
L7_2:
L7_3:
    ldr x13, [x19]
    ldr x15, [x12]
    ldr x20, [x14]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L7_4
L7_5:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L7_4:
    sub x14, x29, #72
    str x13, [x14]
    add x14, x14, #8
    str x20, [x14]
    sub x14, x29, #88
    str x13, [x14]
    add x15, x14, #8
    str x20, [x15]
    sub x19, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_6:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_Builder_clear
    .no_dead_strip _lb_strings_Builder_clear
_lb_strings_Builder_clear:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #16
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_Builder_truncate
    .no_dead_strip _lb_strings_Builder_truncate
_lb_strings_Builder_truncate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x9, x29, #80
    ldr x12, [x9]
    add x14, x12, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L9_2
L9_1:
    sub x19, x29, #72
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
    b L9_3
L9_2:
L9_3:
    sub x15, x29, #96
    ldr x15, [x15]
    add x13, x12, #16
    ldr x19, [x13]
    cmp x15, x19
    b.ls L9_6
L9_5:
    sub x19, x29, #72
    adrp x14, _lb_io_14invalid_buffer@PAGE
    add x14, x14, _lb_io_14invalid_buffer@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_8:
    b L9_7
L9_6:
L9_7:
    str x15, [x13]
    ldr x19, [x12]
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x15, x19
    mov x9, #0
    strb w9, [x19]
    sub x19, x29, #72
    add x20, x19, #24
    mov x9, #0
    strb w9, [x20]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_Builder_destroy
    .no_dead_strip _lb_strings_Builder_destroy
_lb_strings_Builder_destroy:
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
    b.ls L10_2
L10_1:
    add x15, x19, #24
    sub x12, x29, #56
    ldr x13, [x19]
    str x13, [x12]
    add x13, x12, #8
    str x14, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L10_5
    b L10_4
L10_5:
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
L10_4:
    b L10_3
L10_2:
L10_3:
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

    .p2align 2
    .globl _lb_memory_move_0g1_u8
    .weak_definition _lb_memory_move_0g1_u8
    .no_dead_strip _lb_memory_move_0g1_u8
_lb_memory_move_0g1_u8:
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
    cbnz w14, L11_11
    b L11_4
L11_11:
    mov w15, w14
    b L11_5
L11_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L11_5:
    and w14, w15, #255
    cbnz w14, L11_1
    b L11_2
L11_1:
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L11_3
L11_2:
L11_3:
    mov x10, #0
    cmp x19, x10
    b.ls L11_7
L11_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memmove
    mov x14, x0
    cbnz x14, L11_9
    b L11_10
L11_10:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
L11_9:
    b L11_8
L11_7:
L11_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_strings_builder_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the builder capacity is too large"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/strings/builder.lucb:15:9"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "unreachable"
l_text_6:
    .asciz "src/std/strings/builder.lucb:19:9"
l_text_7:
    .asciz "src/std/strings/builder.lucb:23:9"
l_text_8:
    .asciz "the string builder is destroyed"
l_text_9:
    .asciz "the builder size overflows"
l_text_10:
    .asciz "src/std/strings/builder.lucb:52:9"
l_text_11:
    .asciz "src/std/strings/builder.lucb:53:13"
l_text_12:
    .asciz "src/std/strings/builder.lucb:54:13"
l_text_13:
    .asciz "the builder input is outside its initialized text"
l_text_14:
    .asciz "src/std/strings/builder.lucb:59:13"
l_text_15:
    .asciz "index out of bounds"
l_text_16:
    .asciz "src/std/strings/builder.lucb:61:13"
l_text_17:
    .asciz "src/std/strings/builder.lucb:62:9"
l_text_18:
    .asciz "src/std/strings/builder.lucb:63:9"
l_text_19:
    .asciz "src/std/strings/builder.lucb:72:13"
l_text_20:
    .asciz "src/std/strings/builder.lucb:73:9"
l_text_21:
    .asciz "truncation cannot extend the builder"
l_text_22:
    .asciz "src/std/strings/builder.lucb:87:9"
l_text_23:
    .asciz "src/std/strings/builder.lucb:92:13"
l_text_24:
    .asciz "src/std/memory.lucb:334:9"
l_text_25:
    .asciz "src/std/memory.lucb:336:9"
l_text_26:
    .asciz "null_foreign"
l_text_27:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
