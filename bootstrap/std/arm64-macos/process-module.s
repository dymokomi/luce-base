    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_module_0init
_lb_process_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_process_7poll_in@PAGE
    add x14, x14, _lb_process_7poll_in@PAGEOFF
    movz x9, #1
    strh w9, [x14]
    adrp x14, _lb_process_12poll_hang_up@PAGE
    add x14, x14, _lb_process_12poll_hang_up@PAGEOFF
    movz x9, #16
    strh w9, [x14]
    adrp x14, _lb_process_10poll_error@PAGE
    add x14, x14, _lb_process_10poll_error@PAGEOFF
    movz x9, #8
    strh w9, [x14]
    adrp x14, _lb_process_9set_flags@PAGE
    add x14, x14, _lb_process_9set_flags@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_process_12non_blocking@PAGE
    add x14, x14, _lb_process_12non_blocking@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_process_11would_block@PAGE
    add x14, x14, _lb_process_11would_block@PAGEOFF
    movz x9, #35
    str w9, [x14]
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    movz x9, #8
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Capture_pull
_lb_process_Capture_pull:
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
    sub x16, x29, #104
    str x0, [x16]
    sub x9, x29, #104
    ldr x22, [x9]
    add x19, x22, #8
    add x20, x19, #8
    ldr x14, [x20]
    add x21, x22, #24
    ldr x15, [x21]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #256
    cmp x15, x10
    b.hs L1_2
L1_1:
    mov x10, #0
    cmp x14, x10
    b.ne L1_5
L1_4:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #152
L1_8:
    ldr x15, [x14]
    add x12, x14, #8
    ldr x12, [x12]
    cbnz x12, L1_10
    b L1_11
L1_11:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_10:
    ldr x14, [x12]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x1, #1024
    movz x2, #1
    sub x8, x29, #176
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #176
    add x14, x13, #16
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    movz x10, #1
    and w14, w14, w10
    cbnz w14, L1_12
    b L1_13
L1_12:
    add x14, x23, #16
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
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L1_9
L1_13:
    ldr x14, [x13]
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L1_9:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L1_15
    b L1_14
L1_15:
    add x14, x23, #16
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
    mov x10, x23
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_6
L1_5:
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    sub x8, x29, #224
    bl _lb_memory_grow
    sub x12, x29, #224
    add x15, x12, #40
    ldrb w15, [x15]
    cbnz w15, L1_18
    b L1_17
L1_18:
    add x14, x12, #16
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L1_6:
    b L1_3
L1_2:
L1_3:
    ldrsw x14, [x22]
    ldr x12, [x19]
    ldr x13, [x20]
    ldr x23, [x21]
    add x15, x13, #1
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x15
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x13
    b.ls L1_20
L1_21:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
L1_20:
    add x15, x12, x23
    sub x19, x13, x23
    sub x20, x29, #240
    str x15, [x20]
    add x20, x20, #8
    str x19, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _read
    mov x15, x0
    mov x10, #0
    cmp x15, x10
    b.ne L1_23
L1_22:
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    b L1_24
L1_23:
    mov x10, #0
    cmp x15, x10
    b.le L1_26
L1_25:
    ldr x14, [x21]
    mov x9, x15
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    b L1_27
L1_26:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L1_31
    b L1_34
L1_34:
    mov w15, w14
    b L1_32
L1_31:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #35
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_32:
    and w14, w15, #255
    cbnz w14, L1_28
    b L1_29
L1_28:
    sub x19, x29, #96
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
L1_30:
L1_27:
L1_24:
    sub x14, x29, #96
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Capture_take
_lb_process_Capture_take:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    str x25, [sp, #240]
    str x26, [sp, #232]
    sub x16, x29, #144
    str x0, [x16]
    sub x9, x29, #144
    ldr x22, [x9]
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    add x20, x22, #24
    ldr x21, [x20]
    mov x10, #0
    cmp x21, x10
    b.ne L2_2
L2_1:
    add x20, x22, #8
    add x14, x20, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L2_5
L2_4:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x12, x29, #176
    ldr x13, [x20]
    str x13, [x12]
    add x13, x12, #8
    str x14, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L2_8
    b L2_7
L2_8:
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
L2_7:
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L2_6
L2_5:
L2_6:
    sub x14, x29, #192
    mov x9, #0
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #136
    mov x10, x14
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_3
L2_2:
L2_3:
    sub x23, x29, #208
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    sub x25, x29, #256
    movz x10, #16384, lsl #48
    cmp x21, x10
    b.ls L2_11
L2_10:
    add x14, x25, #16
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
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_12
L2_11:
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L2_13
    b L2_14
L2_14:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L2_13:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #1
    sub x8, x29, #280
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #280
    add x12, x26, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x21, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L2_15
    b L2_16
L2_15:
    add x14, x25, #16
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
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_12
L2_16:
    ldr x14, [x26]
    str x14, [x25]
    add x14, x25, #8
    str x21, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L2_12:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L2_18
    b L2_17
L2_18:
    add x14, x25, #16
    sub x19, x29, #136
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_19:
L2_17:
    mov x10, x25
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x21, x22, #8
    ldr x14, [x20]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    sub x14, x29, #296
    ldr x15, [x21]
    add x12, x21, #8
    ldr x12, [x12]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, L2_21
    b L2_20
L2_21:
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
L2_20:
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    sub x12, x29, #312
    str x14, [x12]
    add x14, x12, #8
    str x15, [x14]
    sub x20, x29, #136
    mov x10, x12
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_22:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Capture_drop
_lb_process_Capture_drop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    add x19, x14, #8
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L3_2
L3_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x12, x29, #56
    ldr x13, [x19]
    str x13, [x12]
    add x13, x12, #8
    str x14, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L3_5
    b L3_4
L3_5:
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
L3_4:
    sub x20, x29, #72
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L3_3
L3_2:
L3_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_run
    .no_dead_strip _lb_process_run
_lb_process_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #152
    str x3, [x16]
    sub x16, x29, #176
    str x4, [x16]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x14, x29, #120
    ldr x14, [x14]
    sub x15, x29, #136
    sub x12, x29, #152
    ldr x12, [x12]
    sub x13, x29, #176
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x12
    mov x9, x13
    mov x4, x9
    mov x5, #0
    sub x8, x29, #248
    bl _lb_process_14run_controlled
    sub x15, x29, #248
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #40
    sub x19, x29, #104
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
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
    ldr x19, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    sub x19, x29, #104
    mov x10, x15
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
    ldr x19, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_14run_controlled
    .no_dead_strip _lb_process_14run_controlled
_lb_process_14run_controlled:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1184
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1152]
    str x20, [sp, #1144]
    str x21, [sp, #1136]
    str x22, [sp, #1128]
    str x23, [sp, #1120]
    str x24, [sp, #1112]
    str x25, [sp, #1104]
    str x26, [sp, #1096]
    str x27, [sp, #1088]
    str x28, [sp, #1080]
    sub x16, x29, #192
    str x0, [x16]
    sub x16, x29, #208
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #224
    str x3, [x16]
    sub x16, x29, #248
    str x4, [x16]
    sub x16, x29, #264
    str x5, [x16]
    sub x0, x29, #248
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    bl _lb_process_19environment_address
    mov x19, x0
    sub x20, x29, #280
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x15, x29, #248
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L5_4
    b L5_2
L5_4:
    sub x21, x29, #296
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L5_1:
    ldr x14, [x19]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #344
    bl _lb_process_17environment_posix
    sub x15, x29, #344
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L5_6
    b L5_5
L5_6:
    add x14, x15, #16
    sub x19, x29, #176
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
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
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L5_3
L5_2:
L5_3:
    sub x23, x29, #360
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    sub x21, x29, #208
    add x14, x21, #8
    ldr x22, [x14]
    mov x9, x22
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    sub x26, x29, #408
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls L5_9
L5_8:
    add x14, x26, #16
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
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L5_10
L5_9:
    lsl x27, x25, #3
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L5_11
    b L5_12
L5_12:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L5_11:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #432
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #432
    add x12, x28, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L5_13
    b L5_14
L5_13:
    add x14, x26, #16
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
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L5_10
L5_14:
    ldr x14, [x28]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L5_10:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L5_16
    b L5_15
L5_16:
    add x14, x26, #16
    sub x19, x29, #176
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
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_15:
    mov x10, x26
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x25, [x23]
    add x14, x23, #8
    ldr x27, [x14]
    mov x9, #0
    cmp x9, x27
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    sub x14, x29, #192
    ldr x28, [x14]
    str x28, [x25]
    ldr x14, [x21]
    mov x9, #0
    mov x15, x9
L5_18:
    cmp x15, x22
    b.hs L5_20
L5_19:
    add x12, x15, #1
    cmp x12, x27
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x13, x12, #3
    add x13, x25, x13
    lsl x21, x15, #3
    add x21, x14, x21
    ldr x21, [x21]
    str x21, [x13]
    mov x15, x12
    b L5_18
L5_20:
    mov x9, x22
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x27
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x25, x14
    mov x9, #0
    str x9, [x14]
    sub x9, x29, #440
    str x9, [sp, #8]
    ldr x11, [sp, #8]
    str xzr, [x11, #0]
    sub x23, x29, #448
    mov x11, x23
    str xzr, [x11, #0]
    ldr x0, [sp, #8]
    bl _pipe
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_22
L5_21:
    sub x14, x29, #464
    mov x9, x27
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x25, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, L5_25
    b L5_24
L5_25:
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
L5_24:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #480
    str x15, [x12]
    add x15, x12, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_22:
L5_23:
    mov x0, x23
    bl _pipe
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_28
L5_27:
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x14, x29, #496
    mov x9, x27
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x25, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, L5_31
    b L5_30
L5_31:
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
L5_30:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #512
    str x15, [x12]
    add x15, x12, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_28:
L5_29:
    bl _fork
    mov w22, w0
    mov x10, #0
    cmp w22, w10
    b.ge L5_34
L5_33:
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    add x14, x23, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x14, x29, #528
    mov x9, x27
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x25, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, L5_37
    b L5_36
L5_37:
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
L5_36:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #544
    str x15, [x12]
    add x15, x12, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_34:
L5_35:
    mov x10, #0
    cmp w22, w10
    b.ne L5_40
L5_39:
    sub x14, x29, #264
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_43
L5_42:
    mov x0, #0
    mov x1, #0
    bl _setpgid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_46
L5_45:
    movz x0, #127
    bl __exit
    b L5_47
L5_46:
L5_47:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    mov x1, #0
    bl _open
    mov w26, w0
    mov x10, #0
    cmp w26, w10
    cset w14, lt
    cbnz w14, L5_111
    b L5_51
L5_111:
    mov w15, w14
    b L5_52
L5_51:
    mov x0, x26
    mov x1, #0
    bl _dup2
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L5_52:
    and w14, w15, #255
    cbnz w14, L5_48
    b L5_49
L5_48:
    movz x0, #127
    bl __exit
    b L5_50
L5_49:
L5_50:
    movz x10, #2
    cmp w26, w10
    b.le L5_54
L5_53:
    mov x0, x26
    bl _close
    mov w14, w0
    b L5_55
L5_54:
L5_55:
    b L5_44
L5_43:
L5_44:
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    add x26, x9, #4
    ldrsw x14, [x26]
    mov x0, x14
    movz x1, #1
    bl _dup2
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L5_112
    b L5_59
L5_112:
    mov w15, w14
    b L5_60
L5_59:
    add x14, x23, #4
    ldrsw x14, [x14]
    mov x0, x14
    movz x1, #2
    bl _dup2
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L5_60:
    and w14, w15, #255
    cbnz w14, L5_56
    b L5_57
L5_56:
    movz x0, #127
    bl __exit
    b L5_58
L5_57:
L5_58:
    ldrsw x14, [x26]
    mov x0, x14
    bl _close
    mov w14, w0
    add x14, x23, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x14, x29, #224
    ldr x21, [x14]
    mov x0, x21
    bl _strlen
    mov x14, x0
    sub x15, x29, #560
    str x21, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x10, #0
    cmp x14, x10
    cset w14, hi
    cbnz w14, L5_64
    b L5_113
L5_113:
    mov w15, w14
    b L5_65
L5_64:
    mov x0, x21
    bl _chdir
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_65:
    and w14, w15, #255
    cbnz w14, L5_61
    b L5_62
L5_61:
    movz x0, #127
    bl __exit
    b L5_63
L5_62:
L5_63:
    add x14, x20, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L5_67
L5_66:
    ldr x14, [x20]
    str x14, [x19]
    b L5_68
L5_67:
L5_68:
    mov x0, x28
    mov x1, x25
    bl _execvp
    mov w14, w0
    movz x0, #127
    bl __exit
    b L5_41
L5_40:
L5_41:
    sub x14, x29, #264
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_70
L5_69:
    mov x0, x22
    mov x1, x22
    bl _setpgid
    mov w14, w0
    b L5_71
L5_70:
L5_71:
    sub x14, x29, #576
    mov x9, x27
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x25, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, L5_73
    b L5_72
L5_73:
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
L5_72:
    ldr x9, [sp, #8]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    add x14, x23, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x21, x29, #592
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    sub x24, x29, #632
    sub x25, x29, #672
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    str w14, [x25]
    add x14, x25, #8
    mov x10, x21
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x25, #24
    mov x9, #0
    str x9, [x14]
    add x14, x25, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x25
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    sub x25, x29, #712
    sub x26, x29, #752
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldrsw x14, [x23]
    str w14, [x26]
    add x14, x26, #8
    mov x10, x21
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x26, #24
    mov x9, #0
    str x9, [x14]
    add x14, x26, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x26
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    cbnz x19, L5_77
    b L5_75
L5_77:
L5_74:
    mov x0, x22
    mov x1, x24
    mov x2, x25
    mov x3, x19
    sub x8, x29, #792
    bl _lb_process_15capture_command
    sub x15, x29, #792
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_79
    b L5_78
L5_79:
    add x14, x15, #8
    sub x19, x29, #176
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_78:
    ldrsw x14, [x15]
    mov w19, w14
    b L5_76
L5_75:
    mov x0, x22
    mov x1, x24
    mov x2, x25
    sub x8, x29, #824
    bl _lb_process_capture
    sub x15, x29, #824
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_82
    b L5_81
L5_82:
    sub x19, x29, #176
    add x14, x19, #40
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_81:
    sub x10, x29, #1144
    str w22, [x10]
    sub x19, x29, #1148
    mov x9, #0
    str w9, [x19]
L5_102:
    mov x0, x22
    mov x1, x19
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ge L5_104
L5_103:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_106
L5_105:
    sub x19, x29, #1128
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #1168
    str x15, [x12]
    add x15, x12, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #864
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L5_110
L5_106:
L5_107:
    b L5_102
L5_104:
    ldrsw x14, [x19]
    sub x15, x29, #1128
    str w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x15
    sub x11, x29, #864
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
L5_110:
    sub x15, x29, #864
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_85
    b L5_84
L5_85:
    add x14, x15, #8
    sub x19, x29, #176
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_84:
    ldrsw x19, [x15]
L5_76:
    movz x10, #127
    and w14, w19, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_88
L5_87:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_46@PAGE
    add x15, x15, l_text_46@PAGEOFF
    sub x12, x29, #880
    str x15, [x12]
    add x15, x12, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_88:
L5_89:
    sub x21, x29, #896
    mov x0, x24
    sub x8, x29, #944
    bl _lb_process_Capture_take
    sub x15, x29, #944
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L5_92
    b L5_91
L5_92:
    add x14, x15, #16
    sub x19, x29, #176
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_91:
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #960
    mov x0, x25
    sub x8, x29, #1048
    bl _lb_process_Capture_take
    sub x12, x29, #1048
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, L5_97
    b L5_96
L5_97:
    add x14, x12, #16
    sub x19, x29, #1000
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L5_94
L5_96:
    sub x26, x29, #976
    mov x10, x12
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L5_95
L5_94:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_release
    sub x22, x29, #176
    add x14, x22, #40
    ldr w15, [x19]
    str w15, [x14]
    add x15, x19, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_95:
    mov x10, x26
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x27, x29, #1088
L5_100:
    asr w14, w19, #8
    movz x10, #255
    and w14, w14, w10
    str w14, [x27]
    add x14, x27, #8
    mov x10, x21
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x27, #24
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x26, x29, #176
    mov x10, x27
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x26, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x25
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldrsw x14, [x23]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #8]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x26
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_capture
_lb_process_capture:
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
    str x24, [sp, #344]
    str x25, [sp, #336]
    str x26, [sp, #328]
    str x27, [sp, #320]
    str x28, [sp, #312]
    sub x16, x29, #152
    str w0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x14, x29, #168
    ldr x19, [x14]
    ldrsw x14, [x19]
    movz x16, #16
    sub sp, sp, x16
    movz x9, #4
    str x9, [sp, #0]
    mov x0, x14
    movz x1, #4
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L6_70
    b L6_4
L6_70:
    mov w15, w14
    b L6_5
L6_4:
    sub x14, x29, #184
    ldr x14, [x14]
    ldrsw x14, [x14]
    movz x16, #16
    sub sp, sp, x16
    movz x9, #4
    str x9, [sp, #0]
    mov x0, x14
    movz x1, #4
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L6_5:
    and w14, w15, #255
    cbnz w14, L6_1
    b L6_2
L6_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #152
    ldrsw x20, [x14]
    sub x10, x29, #328
    str w20, [x10]
    mov x0, x20
    movz x1, #9
    bl _kill
    mov w14, w0
    sub x21, x29, #332
    mov x9, #0
    str w9, [x21]
L6_42:
    mov x0, x20
    mov x1, x21
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L6_45
    b L6_71
L6_71:
    mov w15, w14
    b L6_46
L6_45:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L6_46:
    and w14, w15, #255
    cbnz w14, L6_43
    b L6_44
L6_43:
    b L6_42
L6_47:
    b L6_42
L6_44:
L6_48:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
    b L6_3
L6_2:
L6_3:
    add x20, x19, #32
    sub x9, x29, #184
    str x9, [sp, #72]
    sub x22, x29, #216
    sub x28, x29, #224
    add x23, x28, #4
    add x24, x28, #6
    add x27, x22, #8
    sub x26, x29, #232
    sub x9, x29, #184
    str x9, [sp, #64]
    add x9, x26, #4
    str x9, [sp, #56]
    add x9, x26, #6
    str x9, [sp, #48]
    add x9, x22, #6
    str x9, [sp, #40]
    sub x9, x29, #280
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #32]
    add x9, x27, #6
    str x9, [sp, #24]
    sub x9, x29, #312
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #16]
L6_7:
    ldrb w14, [x20]
    cbnz w14, L6_72
    b L6_10
L6_72:
    mov w15, w14
    b L6_11
L6_10:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    add x14, x14, #32
    ldrb w15, [x14]
L6_11:
    and w14, w15, #255
    cbnz w14, L6_8
    b L6_9
L6_8:
    mov x11, x28
    str xzr, [x11, #0]
    ldrb w14, [x20]
    cbnz w14, L6_12
    b L6_13
L6_12:
    ldrsw x14, [x19]
    b L6_14
L6_13:
    movn x9, #0
    mov w14, w9
L6_14:
    str w14, [x28]
    movz x9, #1
    strh w9, [x23]
    mov x9, #0
    strh w9, [x24]
    mov x10, x28
    mov x11, x22
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x11, x26
    str xzr, [x11, #0]
    ldr x9, [sp, #64]
    ldr x21, [x9]
    add x25, x21, #32
    ldrb w15, [x25]
    cbnz w15, L6_15
    b L6_16
L6_15:
    ldrsw x14, [x21]
    b L6_17
L6_16:
    movn x9, #0
    mov w14, w9
L6_17:
    str w14, [x26]
    movz x9, #1
    ldr x10, [sp, #56]
    strh w9, [x10]
    mov x9, #0
    ldr x10, [sp, #48]
    strh w9, [x10]
    mov x10, x26
    mov x11, x27
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x0, x22
    movz x1, #2
    movn x2, #0
    bl _poll
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge L6_19
L6_18:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    b.ne L6_22
L6_21:
    b L6_7
L6_24:
    b L6_23
L6_22:
L6_23:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #152
    ldrsw x20, [x14]
    sub x10, x29, #328
    str w20, [x10]
    mov x0, x20
    movz x1, #9
    bl _kill
    mov w14, w0
    sub x21, x29, #332
    mov x9, #0
    str w9, [x21]
L6_49:
    mov x0, x20
    mov x1, x21
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L6_52
    b L6_73
L6_73:
    mov w15, w14
    b L6_53
L6_52:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L6_53:
    and w14, w15, #255
    cbnz w14, L6_50
    b L6_51
L6_50:
    b L6_49
L6_54:
    b L6_49
L6_51:
L6_55:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_25:
    b L6_20
L6_19:
L6_20:
    ldrb w14, [x20]
    cbnz w14, L6_29
    b L6_74
L6_74:
    mov w15, w14
    b L6_30
L6_29:
    ldr x9, [sp, #40]
    ldrsh w14, [x9]
    movz x10, #25
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L6_30:
    and w14, w15, #255
    cbnz w14, L6_26
    b L6_27
L6_26:
    mov x0, x19
    sub x8, x29, #280
    bl _lb_process_Capture_pull
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L6_32
    b L6_31
L6_32:
    sub x19, x29, #136
    ldr x10, [sp, #8]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #152
    ldrsw x20, [x14]
    sub x10, x29, #328
    str w20, [x10]
    mov x0, x20
    movz x1, #9
    bl _kill
    mov w14, w0
    sub x21, x29, #332
    mov x9, #0
    str w9, [x21]
L6_56:
    mov x0, x20
    mov x1, x21
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L6_59
    b L6_75
L6_75:
    mov w15, w14
    b L6_60
L6_59:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L6_60:
    and w14, w15, #255
    cbnz w14, L6_57
    b L6_58
L6_57:
    b L6_56
L6_61:
    b L6_56
L6_58:
L6_62:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_33:
L6_31:
    b L6_28
L6_27:
L6_28:
    ldrb w14, [x25]
    cbnz w14, L6_37
    b L6_76
L6_76:
    mov w15, w14
    b L6_38
L6_37:
    ldr x9, [sp, #24]
    ldrsh w14, [x9]
    movz x10, #25
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L6_38:
    and w14, w15, #255
    cbnz w14, L6_34
    b L6_35
L6_34:
    mov x0, x21
    sub x8, x29, #312
    bl _lb_process_Capture_pull
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    cbnz w14, L6_40
    b L6_39
L6_40:
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
    sub x14, x29, #152
    ldrsw x20, [x14]
    sub x10, x29, #328
    str w20, [x10]
    mov x0, x20
    movz x1, #9
    bl _kill
    mov w14, w0
    sub x21, x29, #332
    mov x9, #0
    str w9, [x21]
L6_63:
    mov x0, x20
    mov x1, x21
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L6_66
    b L6_77
L6_77:
    mov w15, w14
    b L6_67
L6_66:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L6_67:
    and w14, w15, #255
    cbnz w14, L6_64
    b L6_65
L6_64:
    b L6_63
L6_68:
    b L6_63
L6_65:
L6_69:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_41:
L6_39:
    b L6_36
L6_35:
L6_36:
    b L6_7
L6_9:
    sub x14, x29, #136
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_terminate
    .no_dead_strip _lb_process_terminate
_lb_process_terminate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x19, [x14]
    mov x0, x19
    movz x1, #9
    bl _kill
    mov w14, w0
    sub x20, x29, #52
    mov x9, #0
    str w9, [x20]
L7_1:
    mov x0, x19
    mov x1, x20
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L7_4
    b L7_7
L7_7:
    mov w15, w14
    b L7_5
L7_4:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L7_5:
    and w14, w15, #255
    cbnz w14, L7_2
    b L7_3
L7_2:
    b L7_1
L7_6:
    b L7_1
L7_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_release
    .no_dead_strip _lb_process_release
_lb_process_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #40
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L8_2
L8_1:
    ldr x12, [x14]
    sub x13, x29, #56
    str x12, [x13]
    add x13, x13, #8
    str x15, [x13]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x13, x0
    sub x19, x29, #72
    str x12, [x19]
    add x12, x19, #8
    str x15, [x12]
    ldr x12, [x13]
    add x13, x13, #8
    ldr x13, [x13]
    cbnz x13, L8_5
    b L8_4
L8_5:
    add x14, x13, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L8_4:
    b L8_3
L8_2:
L8_3:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_exit
    .no_dead_strip _lb_process_exit
_lb_process_exit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl _lb_core_exit
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

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
    cbnz w14, L10_11
    b L10_4
L10_11:
    mov w15, w14
    b L10_5
L10_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L10_5:
    and w14, w15, #255
    cbnz w14, L10_1
    b L10_2
L10_1:
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L10_3
L10_2:
L10_3:
    mov x10, #0
    cmp x19, x10
    b.ls L10_7
L10_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L10_9
    b L10_10
L10_10:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L10_9:
    b L10_8
L10_7:
L10_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15release_storage_0g1_5c_str_0o
    .weak_definition _lb_process_15release_storage_0g1_5c_str_0o
_lb_process_15release_storage_0g1_5c_str_0o:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #48
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L11_2
L11_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x12, x0
    sub x13, x29, #64
    ldr x19, [x14]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_62@PAGE
    add x1, x1, l_text_62@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x19, [x13]
    add x19, x13, #8
    str x20, [x19]
    ldr x19, [x12]
    add x12, x12, #8
    ldr x12, [x12]
    cbnz x12, L11_5
    b L11_4
L11_5:
    add x14, x12, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x13
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L11_4:
    b L11_3
L11_2:
L11_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/process/module.lucb:41:9"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/process/module.lucb:43:17"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "src/std/process/module.lucb:45:17"
l_text_6:
    .asciz "src/std/process/module.lucb:46:9"
l_text_7:
    .asciz "index out of bounds"
l_text_8:
    .asciz "src/std/process/module.lucb:50:13"
l_text_9:
    .asciz "the program's output cannot be read"
l_text_10:
    .asciz "src/std/process/module.lucb:60:17"
l_text_11:
    .asciz "src/std/process/module.lucb:63:9"
l_text_12:
    .asciz "src/std/process/module.lucb:65:9"
l_text_13:
    .asciz "unreachable"
l_text_14:
    .asciz "src/std/process/module.lucb:67:9"
l_text_15:
    .asciz "src/std/process/module.lucb:71:13"
l_text_16:
    .asciz "src/std/process/module.lucb:87:5"
l_text_17:
    .asciz "src/std/process/module.lucb:97:5"
l_text_18:
    .asciz "src/std/process/module.lucb:98:5"
l_text_19:
    .asciz "src/std/process/module.lucb:101:9"
l_text_20:
    .asciz "src/std/process/module.lucb:102:9"
l_text_21:
    .asciz "src/std/process/module.lucb:103:5"
l_text_22:
    .asciz "src/std/process/module.lucb:107:9"
l_text_23:
    .asciz "run"
l_text_24:
    .asciz "src/std/process/module.lucb:110:9"
l_text_25:
    .asciz "src/std/process/module.lucb:111:9"
l_text_26:
    .asciz "src/std/process/module.lucb:112:9"
l_text_27:
    .asciz "src/std/process/module.lucb:116:9"
l_text_28:
    .asciz "src/std/process/module.lucb:117:9"
l_text_29:
    .asciz "src/std/process/module.lucb:118:9"
l_text_30:
    .asciz "src/std/process/module.lucb:119:9"
l_text_31:
    .asciz "src/std/process/module.lucb:120:9"
l_text_32:
    .asciz "/dev/null"
l_text_33:
    .asciz "src/std/process/module.lucb:131:9"
l_text_34:
    .asciz "src/std/process/module.lucb:132:9"
l_text_35:
    .asciz "src/std/process/module.lucb:133:9"
l_text_36:
    .asciz "src/std/process/module.lucb:135:9"
l_text_37:
    .asciz "src/std/process/module.lucb:136:9"
l_text_38:
    .asciz "src/std/process/module.lucb:145:5"
l_text_39:
    .asciz "src/std/process/module.lucb:146:5"
l_text_40:
    .asciz "src/std/process/module.lucb:147:5"
l_text_41:
    .asciz "src/std/process/module.lucb:149:5"
l_text_42:
    .asciz "src/std/process/module.lucb:150:5"
l_text_43:
    .asciz "src/std/process/module.lucb:157:9"
l_text_44:
    .asciz "src/std/process/module.lucb:159:9"
l_text_45:
    .asciz "src/std/process/module.lucb:160:9"
l_text_46:
    .asciz "the program was stopped by a signal"
l_text_47:
    .asciz "src/std/process/module.lucb:162:9"
l_text_48:
    .asciz "src/std/process/module.lucb:163:5"
l_text_49:
    .asciz "src/std/process/module.lucb:166:9"
l_text_50:
    .asciz "shift count out of range"
l_text_51:
    .asciz "src/std/process/module.lucb:167:5"
l_text_52:
    .asciz "src/std/process/module.lucb:182:9"
l_text_53:
    .asciz "src/std/process/module.lucb:183:9"
l_text_54:
    .asciz "src/std/process/module.lucb:188:9"
l_text_55:
    .asciz "src/std/process/module.lucb:190:9"
l_text_56:
    .asciz "src/std/process/module.lucb:199:5"
l_text_57:
    .asciz "src/std/process/module.lucb:211:9"
l_text_58:
    .asciz "src/std/memory.lucb:328:9"
l_text_59:
    .asciz "src/std/memory.lucb:330:9"
l_text_60:
    .asciz "null_foreign"
l_text_61:
    .asciz "src/std/process/module.lucb:172:9"
l_text_62:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_process_7poll_in
    .no_dead_strip _lb_process_7poll_in
    .zerofill __DATA,__bss,_lb_process_7poll_in,2,1
    .globl _lb_process_12poll_hang_up
    .zerofill __DATA,__bss,_lb_process_12poll_hang_up,2,1
    .globl _lb_process_10poll_error
    .zerofill __DATA,__bss,_lb_process_10poll_error,2,1
    .globl _lb_process_9set_flags
    .no_dead_strip _lb_process_9set_flags
    .zerofill __DATA,__bss,_lb_process_9set_flags,4,2
    .globl _lb_process_12non_blocking
    .no_dead_strip _lb_process_12non_blocking
    .zerofill __DATA,__bss,_lb_process_12non_blocking,4,2
    .globl _lb_process_11would_block
    .no_dead_strip _lb_process_11would_block
    .zerofill __DATA,__bss,_lb_process_11would_block,4,2
    .globl _lb_process_failed
    .no_dead_strip _lb_process_failed
    .zerofill __DATA,__bss,_lb_process_failed,4,2

.subsections_via_symbols
