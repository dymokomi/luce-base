    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_14command_module_0init
_lb_process_14command_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x19, x29, #64
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #7
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, _lb_process_Command_close@GOTPAGE
    ldr x14, [x14, _lb_process_Command_close@GOTPAGEOFF]
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
    adrp x14, _lb_process_12command_type@PAGE
    add x14, x14, _lb_process_12command_type@PAGEOFF
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

    .p2align 2
    .globl _lb_process_12command_text
_lb_process_12command_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #112
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x12, x29, #128
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    mov x9, #0
    mov x12, x9
L1_5:
    cmp x12, x15
    b.hs L1_8
L1_6:
    add x13, x14, x12
    ldrb w13, [x13]
    and w13, w13, #255
    mov x10, #0
    cmp w13, w10
    b.ne L1_10
L1_9:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #37
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
    b L1_11
L1_10:
L1_11:
L1_7:
    add x13, x12, #1
    mov x12, x13
    b L1_5
L1_8:
    sub x20, x29, #160
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #208
    bl _lb_strings_copy
    sub x15, x29, #208
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_14
    b L1_13
L1_14:
    add x14, x15, #16
    sub x19, x29, #96
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
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_15:
L1_13:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
    sub x14, x29, #160
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_init
    .no_dead_strip _lb_process_Command_init
_lb_process_Command_init:
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
    sub x16, x29, #160
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #176
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #192
    str x5, [x16]
    str x6, [x16, #8]
    sub x16, x29, #208
    str x7, [x16]
    ldr x9, [x29, #16]
    sub x16, x29, #232
    str x9, [x16]
    sub x0, x29, #232
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x9, x29, #144
    ldr x9, [x9]
    str x9, [sp, #8]
    sub x19, x29, #160
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L2_64
    b L2_4
L2_64:
    mov w15, w14
    b L2_5
L2_4:
    sub x14, x29, #208
    ldr x14, [x14]
    movz x10, #1
    cmp x14, x10
    cset w15, lo
L2_5:
    and w14, w15, #255
    cbnz w14, L2_65
    b L2_6
L2_65:
    mov w15, w14
    b L2_7
L2_6:
    sub x14, x29, #208
    ldr x14, [x14]
    movz x10, #256, lsl #16
    cmp x14, x10
    cset w15, hi
L2_7:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
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
L2_8:
    b L2_3
L2_2:
L2_3:
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #16]
    sub x22, x29, #264
    ldr x10, [sp, #16]
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #304
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L2_9
    b L2_10
L2_10:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L2_9:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #160
    movz x2, #8
    sub x8, x29, #328
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #328
    add x12, x13, #16
    ldrb w12, [x12]
    cbnz w12, L2_11
    b L2_12
L2_12:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L2_13
L2_11:
    ldr x22, [x13]
    sub x24, x29, #488
    mov x0, x24
    mov x1, #0
    movz x2, #160
    bl _memset
    sub x14, x29, #208
    ldr x14, [x14]
    add x15, x24, #48
    str x14, [x15]
    add x14, x24, #136
    movn x9, #0
    str x9, [x14]
    mov x0, x22
    mov x1, x24
    movz x2, #160
    bl _memcpy
    str x22, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L2_13:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L2_15
    b L2_14
L2_15:
    add x14, x23, #8
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
    bl _memcpy
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
L2_16:
L2_14:
    ldr x22, [x23]
    add x24, x22, #56
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #536
    bl _lb_process_12command_text
    sub x15, x29, #536
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L2_18
    b L2_17
L2_18:
    add x14, x15, #16
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_19:
L2_17:
    mov x10, x15
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x19, x22, #72
    sub x14, x29, #192
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #584
    bl _lb_process_12command_text
    sub x12, x29, #584
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, L2_21
    b L2_20
L2_21:
    add x14, x12, #16
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_22:
L2_20:
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x24, x22, #88
    sub x23, x29, #176
    add x14, x23, #8
    ldr x25, [x14]
    sub x26, x29, #632
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls L2_24
L2_23:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L2_25
L2_24:
    lsl x19, x25, #3
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L2_26
    b L2_27
L2_27:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L2_26:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #8
    sub x8, x29, #656
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #656
    add x12, x27, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x19, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L2_28
    b L2_29
L2_28:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L2_25
L2_29:
    ldr x14, [x27]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L2_25:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L2_31
    b L2_30
L2_31:
    add x14, x26, #16
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_32:
L2_30:
    mov x10, x26
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x19, x24, #8
    sub x21, x29, #704
    add x27, x21, #40
    add x28, x22, #104
    mov x9, #0
    mov x20, x9
L2_33:
    cmp x20, x25
    b.hs L2_36
L2_34:
    ldr x14, [x24]
    ldr x15, [x19]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x26, x14, x15
    ldr x14, [x23]
    lsl x15, x20, #4
    add x14, x14, x15
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #704
    bl _lb_process_12command_text
    ldrb w14, [x27]
    cbnz w14, L2_38
    b L2_37
L2_38:
    add x14, x21, #16
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_39:
L2_37:
    ldr x14, [x21]
    str x14, [x26]
    ldr x14, [x28]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x28]
L2_35:
    add x14, x20, #1
    mov x20, x14
    b L2_33
L2_36:
    sub x15, x29, #232
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L2_43
    b L2_41
L2_43:
    sub x19, x29, #720
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L2_40:
    add x20, x22, #112
    add x14, x19, #8
    ldr x21, [x14]
    sub x23, x29, #768
    movz x10, #2048, lsl #48
    cmp x21, x10
    b.ls L2_45
L2_44:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L2_46
L2_45:
    lsl x24, x21, #3
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L2_47
    b L2_48
L2_48:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L2_47:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #792
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #792
    add x12, x25, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x24, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L2_49
    b L2_50
L2_49:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L2_46
L2_50:
    ldr x14, [x25]
    str x14, [x23]
    add x14, x23, #8
    str x21, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L2_46:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L2_52
    b L2_51
L2_52:
    add x14, x23, #16
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_53:
L2_51:
    mov x10, x23
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x24, x20, #8
    sub x28, x29, #840
    add x25, x28, #40
    add x26, x22, #128
    mov x9, #0
    mov x27, x9
L2_54:
    cmp x27, x21
    b.hs L2_57
L2_55:
    ldr x14, [x20]
    ldr x15, [x24]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x27, #3
    add x23, x14, x15
    ldr x14, [x19]
    lsl x15, x27, #4
    add x14, x14, x15
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #840
    bl _lb_process_12command_text
    ldrb w14, [x25]
    cbnz w14, L2_59
    b L2_58
L2_59:
    add x14, x28, #16
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_60:
L2_58:
    ldr x14, [x28]
    str x14, [x23]
    ldr x14, [x26]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x26]
L2_56:
    add x14, x27, #1
    mov x27, x14
    b L2_54
L2_57:
    b L2_42
L2_41:
L2_42:
    sub x19, x29, #848
    adrp x14, _lb_process_13command_entry@GOTPAGE
    ldr x14, [x14, _lb_process_13command_entry@GOTPAGEOFF]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    sub x12, x29, #864
    str x15, [x12]
    add x15, x12, #8
    movz x9, #7
    str x9, [x15]
    mov x0, x14
    mov x1, x22
    mov x2, #0
    mov x9, x12
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #904
    bl _lb_thread_spawn
    sub x15, x29, #904
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_62
    b L2_61
L2_62:
    add x14, x15, #8
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
    mov x0, x22
    bl _lb_process_15command_dispose
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
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
L2_63:
L2_61:
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr x10, [sp, #8]
    str x22, [x10]
    ldr x9, [sp, #8]
    add x20, x9, #8
    sub x21, x29, #920
    mov x10, x19
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x21, #8
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #136
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

    .p2align 2
    .globl _lb_process_Command_state
_lb_process_Command_state:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #40
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
    str x9, [x14]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_11is_finished
    .no_dead_strip _lb_process_Command_11is_finished
_lb_process_Command_11is_finished:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #1
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_revision
    .no_dead_strip _lb_process_Command_revision
_lb_process_Command_revision:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #8
    mov x9, x14
    ldar x9, [x9]
    mov x14, x9
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_9exit_code
    .no_dead_strip _lb_process_Command_9exit_code
_lb_process_Command_9exit_code:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    mov x0, x19
    bl _lb_process_Command_11is_finished
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L6_2
L6_1:
    sub x19, x29, #72
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    b L6_3
L6_2:
L6_3:
    mov x0, x19
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #136
    ldr x14, [x14]
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #48
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_5:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_output
    .no_dead_strip _lb_process_Command_output
_lb_process_Command_output:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #736
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #704]
    str x20, [sp, #696]
    str x21, [sp, #688]
    str x22, [sp, #680]
    str x23, [sp, #672]
    str x24, [sp, #664]
    str x25, [sp, #656]
    str x26, [sp, #648]
    str x27, [sp, #640]
    str x28, [sp, #632]
    sub x16, x29, #168
    str x0, [x16]
    sub x9, x29, #168
    ldr x9, [x9]
    str x9, [sp, #32]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_lock
    sub x9, x29, #184
    str x9, [sp, #136]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #128]
    ldr x10, [sp, #128]
    ldr x11, [sp, #136]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x9, x29, #224
    str x9, [sp, #24]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #40
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #296
    bl _lb_strings_Builder_create
    sub x15, x29, #296
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #40
    sub x22, x29, #160
    add x12, x22, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #48
    movz x9, #1
    strb w9, [x14]
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    ldr x24, [sp, #664]
    ldr x25, [sp, #656]
    ldr x26, [sp, #648]
    ldr x27, [sp, #640]
    ldr x28, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    mov x10, x15
    ldr x11, [sp, #24]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    sub x24, x29, #312
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #24
    ldr x25, [x14]
    add x14, x14, #8
    ldr x23, [x14]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #40
    ldr x12, [x14]
    add x14, x23, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x12
    b.ls L7_4
L7_5:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L7_4:
    sub x14, x29, #328
    str x25, [x14]
    add x15, x14, #8
    str x12, [x15]
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x23, x24, #8
    sub x19, x29, #352
    add x26, x19, #16
    adrp x9, l_text_24@PAGE
    add x9, x9, l_text_24@PAGEOFF
    str x9, [sp, #64]
    sub x9, x29, #488
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x9, x29, #520
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #40]
    sub x27, x29, #368
    add x9, x27, #8
    str x9, [sp, #96]
    sub x20, x29, #432
    add x9, x20, #8
    str x9, [sp, #88]
    sub x9, x29, #472
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #32
    str x9, [sp, #80]
    adrp x9, l_text_24@PAGE
    add x9, x9, l_text_24@PAGEOFF
    str x9, [sp, #120]
    sub x21, x29, #384
    add x9, x21, #8
    str x9, [sp, #112]
    sub x28, x29, #416
    add x9, x28, #24
    str x9, [sp, #104]
    add x9, x27, #8
    str x9, [sp, #72]
    mov x9, #0
    mov x22, x9
L7_6:
    ldr x14, [x23]
    cmp x22, x14
    b.hs L7_8
L7_7:
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x22
    sub x8, x29, #352
    bl _lb_utf8_decode
    ldrb w14, [x26]
    cbnz w14, L7_12
    b L7_10
L7_12:
    mov x10, x19
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L7_9:
    ldr w14, [x27]
    mov w14, w14
    mov x10, #0
    cmp w14, w10
    b.ne L7_14
L7_13:
    ldr x9, [sp, #120]
    str x9, [x21]
    movz x9, #3
    ldr x10, [sp, #112]
    str x9, [x10]
    ldr x0, [sp, #24]
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #416
    bl _lb_strings_Builder_put
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    cbnz w14, L7_17
    b L7_16
L7_17:
    sub x19, x29, #160
    add x14, x19, #24
    mov x10, x28
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    ldr x24, [sp, #664]
    ldr x25, [sp, #656]
    ldr x26, [sp, #648]
    ldr x27, [sp, #640]
    ldr x28, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_18:
L7_16:
    b L7_15
L7_14:
    ldr x12, [x24]
    ldr x14, [x23]
    ldr x9, [sp, #96]
    ldr x15, [x9]
    mov x9, x15
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x14, x14, #1
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x15
    b.ls L7_19
L7_20:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L7_19:
    add x14, x22, x12
    sub x13, x15, x22
    str x14, [x20]
    ldr x10, [sp, #88]
    str x13, [x10]
    ldr x0, [sp, #24]
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #472
    bl _lb_strings_Builder_write
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, L7_22
    b L7_21
L7_22:
    ldr x9, [sp, #8]
    add x14, x9, #8
    sub x19, x29, #160
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    ldr x24, [sp, #664]
    ldr x25, [sp, #656]
    ldr x26, [sp, #648]
    ldr x27, [sp, #640]
    ldr x28, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_23:
L7_21:
L7_15:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L7_11
L7_10:
    ldr x9, [sp, #64]
    ldr x10, [sp, #56]
    str x9, [x10]
    movz x9, #3
    ldr x10, [sp, #48]
    str x9, [x10]
    ldr x0, [sp, #24]
    ldr x9, [sp, #56]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #520
    bl _lb_strings_Builder_put
    ldr x9, [sp, #40]
    ldrb w14, [x9]
    cbnz w14, L7_25
    b L7_24
L7_25:
    sub x19, x29, #160
    add x14, x19, #24
    ldr x10, [sp, #16]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    ldr x24, [sp, #664]
    ldr x25, [sp, #656]
    ldr x26, [sp, #648]
    ldr x27, [sp, #640]
    ldr x28, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_26:
L7_24:
    add x14, x22, #1
L7_11:
    mov x22, x14
    b L7_6
L7_8:
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_view
    sub x16, x29, #536
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #536
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #592
    bl _lb_interop_9copy_text
    sub x15, x29, #592
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L7_28
    b L7_27
L7_28:
    add x14, x15, #24
    sub x19, x29, #160
    add x12, x19, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    ldr x24, [sp, #664]
    ldr x25, [sp, #656]
    ldr x26, [sp, #648]
    ldr x27, [sp, #640]
    ldr x28, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_29:
L7_27:
    sub x19, x29, #160
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x0, [sp, #32]
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    ldr x24, [sp, #664]
    ldr x25, [sp, #656]
    ldr x26, [sp, #648]
    ldr x27, [sp, #640]
    ldr x28, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_30:
    sub x14, x29, #224
    mov x0, x14
    bl _lb_strings_Builder_destroy
    sub x14, x29, #184
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x14, x19
    mov x0, x14
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_13error_message
    .no_dead_strip _lb_process_Command_13error_message
_lb_process_Command_13error_message:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x19, [x9]
    mov x0, x19
    bl _lb_process_Command_11is_finished
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L8_2
L8_1:
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #168
    bl _lb_interop_9copy_text
    sub x15, x29, #168
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L8_5
    b L8_4
L8_5:
    add x14, x15, #24
    sub x19, x29, #88
    add x12, x19, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_6:
L8_4:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    b L8_3
L8_2:
L8_3:
    mov x0, x19
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #144
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #224
    bl _lb_interop_9copy_text
    sub x15, x29, #224
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L8_9
    b L8_8
L8_9:
    add x14, x15, #24
    sub x19, x29, #88
    add x12, x19, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_10:
L8_8:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_11:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_cancel
    .no_dead_strip _lb_process_Command_cancel
_lb_process_Command_cancel:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, L9_4
    b L9_2
L9_4:
L9_1:
    movz x9, #1
    mov x10, x14
    stlrb w9, [x10]
    b L9_3
L9_2:
L9_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Command_close
    .no_dead_strip _lb_process_Command_close
_lb_process_Command_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    sub x20, x29, #64
    add x21, x19, #8
    add x14, x21, #8
    ldrb w14, [x14]
    cbnz w14, L10_1
    b L10_2
L10_1:
    sub x22, x29, #72
    mov x10, x21
    mov x11, x22
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    b L10_3
L10_2:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
L10_3:
    mov x10, x22
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x0, x19
    bl _lb_process_Command_cancel
    mov x0, x20
    sub x8, x29, #128
    bl _lb_thread_Handle_join
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_8
    b L10_7
L10_8:
    sub x14, x29, #96
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L10_5
L10_7:
    b L10_6
L10_5:
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L10_6:
    sub x20, x29, #160
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    cbnz x14, L10_9
    b L10_10
L10_9:
    b L10_11
L10_10:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_12:
L10_11:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl _lb_process_15command_dispose
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15command_dispose
_lb_process_15command_dispose:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x19, x29, #128
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #112
    ldr x21, [x14]
    add x14, x21, #56
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L11_2
L11_1:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    b L11_3
L11_2:
L11_3:
    add x14, x21, #72
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L11_5
L11_4:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    b L11_6
L11_5:
L11_6:
    add x22, x21, #88
    ldr x24, [x22]
    add x23, x22, #8
    ldr x14, [x23]
    add x15, x21, #104
    ldr x9, [x15]
    str x9, [sp, #8]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls L11_11
L11_12:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L11_11:
    sub x14, x29, #144
    str x24, [x14]
    add x14, x14, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    sub x26, x29, #160
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L11_7:
    ldr x10, [sp, #8]
    cmp x28, x10
    b.hs L11_10
L11_8:
    lsl x14, x28, #3
    add x14, x14, x24
    ldr x25, [x14]
    mov x0, x25
    bl _strlen
    mov x14, x0
    str x25, [x26]
    str x14, [x27]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
L11_9:
    add x14, x28, #1
    mov x28, x14
    b L11_7
L11_10:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_14
L11_13:
    sub x14, x29, #176
    ldr x15, [x22]
    ldr x12, [x23]
    mov x9, x12
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x20]
    add x12, x20, #8
    ldr x12, [x12]
    cbnz x12, L11_17
    b L11_16
L11_17:
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
L11_16:
    b L11_15
L11_14:
L11_15:
    add x22, x21, #112
    ldr x24, [x22]
    add x23, x22, #8
    ldr x14, [x23]
    add x15, x21, #128
    ldr x9, [x15]
    str x9, [sp, #0]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #0]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #0]
    cmp x9, x10
    b.ls L11_22
L11_23:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L11_22:
    sub x14, x29, #192
    str x24, [x14]
    add x14, x14, #8
    ldr x9, [sp, #0]
    str x9, [x14]
    sub x26, x29, #208
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L11_18:
    ldr x10, [sp, #0]
    cmp x28, x10
    b.hs L11_21
L11_19:
    lsl x14, x28, #3
    add x14, x14, x24
    ldr x25, [x14]
    mov x0, x25
    bl _strlen
    mov x14, x0
    str x25, [x26]
    str x14, [x27]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
L11_20:
    add x14, x28, #1
    mov x28, x14
    b L11_18
L11_21:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_25
L11_24:
    sub x14, x29, #224
    ldr x15, [x22]
    ldr x12, [x23]
    mov x9, x12
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x20]
    add x12, x20, #8
    ldr x12, [x12]
    cbnz x12, L11_28
    b L11_27
L11_28:
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
L11_27:
    b L11_26
L11_25:
L11_26:
    add x14, x21, #24
    add x15, x14, #8
    ldr x12, [x15]
    mov x10, #0
    cmp x12, x10
    b.ls L11_30
L11_29:
    sub x12, x29, #240
    ldr x13, [x14]
    ldr x22, [x15]
    str x13, [x12]
    add x13, x12, #8
    str x22, [x13]
    ldr x13, [x20]
    add x22, x20, #8
    ldr x22, [x22]
    cbnz x22, L11_33
    b L11_32
L11_33:
    add x14, x22, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L11_32:
    b L11_31
L11_30:
L11_31:
    add x14, x21, #144
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L11_35
L11_34:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    b L11_36
L11_35:
L11_36:
    sub x14, x29, #256
    str x21, [x14]
    add x15, x14, #8
    movz x9, #160
    str x9, [x15]
    ldr x15, [x20]
    add x12, x20, #8
    ldr x12, [x12]
    cbnz x12, L11_38
    b L11_37
L11_38:
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
L11_37:
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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

    .p2align 2
    .globl _lb_process_13command_entry
_lb_process_13command_entry:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    str x19, [sp, #408]
    str x20, [sp, #400]
    str x21, [sp, #392]
    str x22, [sp, #384]
    str x23, [sp, #376]
    str x24, [sp, #368]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    cbnz x19, L12_1
    b L12_2
L12_1:
    b L12_3
L12_2:
    ldr x19, [sp, #408]
    ldr x20, [sp, #400]
    ldr x21, [sp, #392]
    ldr x22, [sp, #384]
    ldr x23, [sp, #376]
    ldr x24, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
L12_3:
    sub x23, x29, #120
    add x14, x19, #56
    ldr x20, [x14]
    add x21, x19, #88
    add x14, x19, #72
    ldr x22, [x14]
    add x14, x19, #128
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L12_8
L12_7:
    add x14, x19, #112
    sub x24, x29, #232
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x24, #16
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #208
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L12_9
L12_8:
    sub x24, x29, #256
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #208
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
L12_9:
    sub x14, x29, #208
    mov x0, x20
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x22
    mov x9, x14
    mov x4, x9
    mov x5, x19
    sub x8, x29, #328
    bl _lb_process_14run_controlled
    sub x15, x29, #328
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L12_11
    b L12_10
L12_11:
    add x14, x15, #40
    sub x20, x29, #184
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L12_5
L12_10:
    sub x20, x29, #160
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L12_6
L12_5:
    add x21, x19, #144
    add x14, x20, #8
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #416
    bl _lb_strings_copy
    sub x15, x29, #416
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L12_15
    b L12_14
L12_15:
    add x14, x15, #16
    sub x12, x29, #368
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L12_12
L12_14:
    sub x14, x29, #344
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L12_13
L12_12:
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #432
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #344
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L12_13
L12_16:
L12_13:
    sub x14, x29, #344
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #1
    movz x9, #1
    mov x10, x14
    stlrb w9, [x10]
    ldr x19, [sp, #408]
    ldr x20, [sp, #400]
    ldr x21, [sp, #392]
    ldr x22, [sp, #384]
    ldr x23, [sp, #376]
    ldr x24, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_17:
L12_6:
    mov x10, x20
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x19, #136
    ldrsw x15, [x23]
    sxtw x15, w15
    str x15, [x14]
    add x14, x23, #8
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_release
    add x14, x23, #24
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_release
    add x14, x19, #1
    movz x9, #1
    mov x10, x14
    stlrb w9, [x10]
    ldr x19, [sp, #408]
    ldr x20, [sp, #400]
    ldr x21, [sp, #392]
    ldr x22, [sp, #384]
    ldr x23, [sp, #376]
    ldr x24, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_14command_append
    .no_dead_strip _lb_process_14command_append
_lb_process_14command_append:
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
    str x26, [sp, #280]
    str x27, [sp, #272]
    str x28, [sp, #264]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x9, [x9]
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x21, x9, #16
    mov x0, x21
    bl _lb_sync_Mutex_lock
    sub x22, x29, #168
    add x23, x22, #8
    ldr x14, [x23]
    ldr x9, [sp, #0]
    add x15, x9, #48
    ldr x12, [x15]
    ldr x9, [sp, #0]
    add x24, x9, #40
    ldr x13, [x24]
    mov x9, x12
    mov x10, x13
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    cmp x14, x12
    b.ls L13_2
L13_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_39@PAGE
    add x14, x14, l_text_39@PAGEOFF
    sub x15, x29, #184
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
    mov x0, x21
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    ldr x28, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
    b L13_3
L13_2:
L13_3:
    ldr x12, [x24]
    mov x9, x14
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    ldr x9, [sp, #0]
    add x26, x9, #24
    add x27, x26, #8
    ldr x12, [x27]
    cmp x25, x12
    b.ls L13_6
L13_5:
    ldr x28, [x15]
    ldr x14, [x27]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #4096
    mov x1, x14
    bl _lb_process_13math_max_size
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _lb_process_13math_max_size
    mov x14, x0
    sub x10, x29, #336
    str x28, [x10]
    sub x10, x29, #352
    str x14, [x10]
    cmp x28, x14
    b.hs L13_27
L13_26:
    mov x19, x28
    b L13_28
L13_27:
    mov x19, x14
L13_28:
    b L13_30
L13_29:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L13_30:
    ldr x14, [x27]
    mov x10, #0
    cmp x14, x10
    b.ne L13_9
L13_8:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x28, x29, #232
    movz x10, #16384, lsl #48
    cmp x19, x10
    b.ls L13_12
L13_11:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b L13_13
L13_12:
    ldr x14, [x15]
    add x12, x15, #8
    ldr x12, [x12]
    cbnz x12, L13_14
    b L13_15
L13_15:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L13_14:
    ldr x15, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #1
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x20, x29, #256
    add x15, x20, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x19, x10
    cset w13, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w13, w15
    cbnz w15, L13_16
    b L13_17
L13_16:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b L13_13
L13_17:
    ldr x14, [x20]
    str x14, [x28]
    add x14, x28, #8
    str x19, [x14]
    add x14, x28, #40
    mov x9, #0
    strb w9, [x14]
L13_13:
    add x14, x28, #40
    ldrb w14, [x14]
    cbnz w14, L13_19
    b L13_18
L13_19:
    add x14, x28, #16
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
    mov x0, x21
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    ldr x28, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_20:
L13_18:
    mov x10, x28
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L13_10
L13_9:
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    sub x8, x29, #304
    bl _lb_memory_grow
    sub x15, x29, #304
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L13_22
    b L13_21
L13_22:
    add x14, x15, #16
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
    mov x0, x21
    bl _lb_sync_Mutex_unlock
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    ldr x28, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_23:
L13_21:
    mov x10, x15
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L13_10:
    b L13_7
L13_6:
L13_7:
    ldr x15, [x26]
    ldr x12, [x27]
    ldr x13, [x24]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x12
    b.ls L13_24
L13_25:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L13_24:
    add x14, x15, x13
    sub x19, x12, x13
    sub x20, x29, #320
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
    bl _lb_memory_copy_0g1_u8
    str x25, [x24]
    ldr x9, [sp, #0]
    add x14, x9, #8
    movz x10, #1
    mov x17, x14
1:
    ldxr x9, [x17]
    add x11, x9, x10
    stlxr w16, x11, [x17]
    cbnz w16, 1b
    mov x14, x9
    ldr x9, [sp, #8]
    ldr x14, [x9]
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    sub x14, x29, #136
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    ldr x28, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_13math_max_size
_lb_process_13math_max_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    cmp x14, x15
    b.ls L14_2
L14_1:
    mov x15, x14
    b L14_3
L14_2:
L14_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_4:
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
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
    cbnz w14, L15_11
    b L15_4
L15_11:
    mov w15, w14
    b L15_5
L15_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L15_5:
    and w14, w15, #255
    cbnz w14, L15_1
    b L15_2
L15_1:
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L15_3
L15_2:
L15_3:
    mov x10, #0
    cmp x19, x10
    b.ls L15_7
L15_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L15_9
    b L15_10
L15_10:
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
L15_9:
    b L15_8
L15_7:
L15_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_14command_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Command"
l_text_1:
    .asciz "a command argument must be UTF-8"
l_text_2:
    .asciz "a command argument cannot contain NUL"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/process/command/module.lucb:32:9"
l_text_5:
    .asciz "a command needs a program and an output limit in 1..16 MiB"
l_text_6:
    .asciz "memory.unset"
l_text_7:
    .asciz "src/std/process/command/module.lucb:44:9"
l_text_8:
    .asciz "memory.exhausted"
l_text_9:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_10:
    .asciz "src/std/process/command/module.lucb:48:9"
l_text_11:
    .asciz "src/std/process/command/module.lucb:50:13"
l_text_12:
    .asciz "src/std/process/command/module.lucb:51:13"
l_text_13:
    .asciz "src/std/process/command/module.lucb:53:13"
l_text_14:
    .asciz "src/std/process/command/module.lucb:55:17"
l_text_15:
    .asciz "src/std/process/command/module.lucb:56:17"
l_text_16:
    .asciz "command"
l_text_17:
    .asciz "the command is closed"
l_text_18:
    .asciz "src/std/process/command/module.lucb:62:9"
l_text_19:
    .asciz "src/std/process/command/module.lucb:65:9"
l_text_20:
    .asciz "src/std/process/command/module.lucb:68:9"
l_text_21:
    .asciz "src/std/process/command/module.lucb:73:9"
l_text_22:
    .asciz "src/std/process/command/module.lucb:84:13"
l_text_23:
    .asciz "index out of bounds"
l_text_24:
    .asciz "\357\277\275"
l_text_25:
    .asciz "src/std/process/command/module.lucb:90:25"
l_text_26:
    .asciz "src/std/process/command/module.lucb:91:21"
l_text_27:
    .asciz "src/std/process/command/module.lucb:94:21"
l_text_28:
    .asciz "src/std/process/command/module.lucb:95:13"
l_text_29:
    .asciz ""
l_text_30:
    .asciz "src/std/process/command/module.lucb:100:9"
l_text_31:
    .asciz "a command worker could not be joined"
l_text_32:
    .asciz "src/std/process/command/module.lucb:110:13"
l_text_33:
    .asciz "src/std/process/command/module.lucb:125:9"
l_text_34:
    .asciz "src/std/process/command/module.lucb:128:13"
l_text_35:
    .asciz "src/std/process/command/module.lucb:129:9"
l_text_36:
    .asciz "src/std/process/command/module.lucb:132:13"
l_text_37:
    .asciz "src/std/process/command/module.lucb:134:13"
l_text_38:
    .asciz "src/std/process/command/module.lucb:153:5"
l_text_39:
    .asciz "the command exceeded its output limit"
l_text_40:
    .asciz "src/std/process/command/module.lucb:155:5"
l_text_41:
    .asciz "src/std/process/command/module.lucb:157:9"
l_text_42:
    .asciz "src/std/process/command/module.lucb:159:13"
l_text_43:
    .asciz "src/std/process/command/module.lucb:162:5"
l_text_44:
    .asciz "src/std/process/command/module.lucb:167:5"
l_text_45:
    .asciz "src/std/process/command/module.lucb:170:5"
l_text_46:
    .asciz "src/std/memory.lucb:328:9"
l_text_47:
    .asciz "src/std/memory.lucb:330:9"
l_text_48:
    .asciz "null_foreign"
l_text_49:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_process_12command_type
    .no_dead_strip _lb_process_12command_type
    .zerofill __DATA,__bss,_lb_process_12command_type,40,3

.subsections_via_symbols
