    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_module_0init
_lb_process_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
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
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w15, [x14]
    cbnz w15, L0_1
    b L0_2
L0_1:
    movz x9, #4
    mov w15, w9
    b L0_3
L0_2:
    movz x9, #2048
    mov w15, w9
L0_3:
    adrp x19, _lb_process_12non_blocking@PAGE
    add x19, x19, _lb_process_12non_blocking@PAGEOFF
    str w15, [x19]
    ldrb w19, [x14]
    cbnz w19, L0_4
    b L0_5
L0_4:
    movz x9, #35
    mov w14, w9
    b L0_6
L0_5:
    movz x9, #11
    mov w14, w9
L0_6:
    adrp x15, _lb_process_11would_block@PAGE
    add x15, x15, _lb_process_11would_block@PAGEOFF
    str w14, [x15]
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    movz x9, #8
    movk x9, #3178, lsl #16
    str w9, [x15]
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Capture_pull
_lb_process_Capture_pull:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    str x22, [sp, #216]
    str x23, [sp, #208]
    str x24, [sp, #200]
    str x25, [sp, #192]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
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
    sub x23, x29, #168
L1_8:
    ldr x15, [x14]
    add x24, x14, #8
    ldr x24, [x24]
    cbnz x24, L1_10
    b L1_11
L1_11:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_10:
    ldr x14, [x24]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x1, #1024
    movz x2, #1
    sub x8, x29, #192
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #192
    add x14, x25, #16
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
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L1_9
L1_13:
    ldr x14, [x25]
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
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x8, x29, #240
    bl _lb_memory_grow
    sub x23, x29, #240
    add x15, x23, #40
    ldrb w15, [x15]
    cbnz w15, L1_18
    b L1_17
L1_18:
    add x14, x23, #16
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L1_6:
    b L1_3
L1_2:
L1_3:
    ldrsw x14, [x22]
    ldr x23, [x19]
    ldr x24, [x20]
    ldr x25, [x21]
    add x15, x24, #1
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x24
    b.ls L1_20
L1_21:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
L1_20:
    add x15, x23, x25
    sub x19, x24, x25
    sub x20, x29, #256
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
    adrp x15, _lb_c_interrupted@PAGE
    add x15, x15, _lb_c_interrupted@PAGEOFF
    ldrsw x15, [x15]
    cmp w14, w15
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
    adrp x15, _lb_process_11would_block@PAGE
    add x15, x15, _lb_process_11would_block@PAGEOFF
    ldrsw x15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_32:
    and w14, w15, #255
    cbnz w14, L1_28
    b L1_29
L1_28:
    sub x19, x29, #112
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
L1_30:
L1_27:
L1_24:
    sub x14, x29, #112
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Capture_take
_lb_process_Capture_take:
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
    sub x16, x29, #160
    str x0, [x16]
    sub x9, x29, #160
    ldr x22, [x9]
    sub x19, x29, #176
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
    sub x21, x29, #192
    ldr x22, [x20]
    str x22, [x21]
    add x22, x21, #8
    str x14, [x22]
    ldr x22, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L2_8
    b L2_7
L2_8:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_7:
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_6
L2_5:
L2_6:
    sub x14, x29, #208
    mov x9, #0
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    sub x19, x29, #152
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
L2_9:
    b L2_3
L2_2:
L2_3:
    sub x23, x29, #224
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    sub x25, x29, #272
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
    add x21, x14, #8
    str x15, [x21]
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
    ldr x26, [x15]
    mov x17, x26
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #1
    sub x8, x29, #296
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #296
    add x26, x28, #16
    ldrb w26, [x26]
    mov x10, #0
    cmp x21, x10
    cset w27, ne
    mov x10, #0
    cmp w26, w10
    cset w26, eq
    and w26, w27, w26
    cbnz w26, L2_15
    b L2_16
L2_15:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_12
L2_16:
    ldr x14, [x28]
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
L2_19:
L2_17:
    mov x10, x25
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x14, x29, #312
    ldr x15, [x21]
    add x26, x21, #8
    ldr x26, [x26]
    str x15, [x14]
    add x15, x14, #8
    str x26, [x15]
    ldr x15, [x24]
    add x26, x24, #8
    ldr x26, [x26]
    cbnz x26, L2_21
    b L2_20
L2_21:
    add x20, x26, #16
    ldr x20, [x20]
    mov x17, x20
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    sub x20, x29, #328
    str x14, [x20]
    add x14, x20, #8
    str x15, [x14]
    sub x22, x29, #152
    mov x10, x20
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
    str x21, [sp, #40]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
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
    sub x20, x29, #64
    ldr x21, [x19]
    str x21, [x20]
    add x21, x20, #8
    str x14, [x21]
    ldr x21, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L3_5
    b L3_4
L3_5:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L3_4:
    sub x20, x29, #80
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_3
L3_2:
L3_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
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
    str x20, [sp, #216]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #160
    str x3, [x16]
    sub x16, x29, #184
    str x4, [x16]
    sub x0, x29, #184
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x14, x29, #128
    ldr x14, [x14]
    sub x15, x29, #144
    sub x19, x29, #160
    ldr x19, [x19]
    sub x20, x29, #184
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x19
    mov x9, x20
    mov x4, x9
    mov x5, #0
    sub x8, x29, #256
    bl _lb_process_14run_controlled
    sub x15, x29, #256
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #40
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x20, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    sub x19, x29, #112
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
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
    ldr x20, [sp, #216]
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
    sub sp, sp, #1552
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1520]
    str x20, [sp, #1512]
    str x21, [sp, #1504]
    str x22, [sp, #1496]
    str x23, [sp, #1488]
    str x24, [sp, #1480]
    str x25, [sp, #1472]
    str x26, [sp, #1464]
    str x27, [sp, #1456]
    str x28, [sp, #1448]
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
    str x0, [sp, #168]
    sub x9, x29, #280
    str x9, [sp, #160]
    ldr x11, [sp, #160]
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L5_1:
    ldr x9, [sp, #168]
    ldr x14, [x9]
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
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
    mov x10, x15
    ldr x11, [sp, #160]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L5_3
L5_2:
L5_3:
    sub x23, x29, #360
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #16]
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
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L5_10
L5_9:
    lsl x27, x25, #3
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    add x15, x9, #8
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
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #432
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #432
    add x28, x24, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w19, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w19, w19, w28
    cbnz w19, L5_13
    b L5_14
L5_13:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L5_10
L5_14:
    ldr x14, [x24]
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_15:
    mov x10, x26
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [x23]
    add x14, x23, #8
    ldr x24, [x14]
    mov x9, #0
    cmp x9, x24
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    sub x14, x29, #192
    ldr x25, [x14]
    str x25, [x19]
    ldr x14, [x21]
    mov x9, #0
    mov x15, x9
L5_18:
    cmp x15, x22
    b.hs L5_20
L5_19:
    add x21, x15, #1
    cmp x21, x24
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x23, x21, #3
    add x23, x19, x23
    lsl x26, x15, #3
    add x26, x14, x26
    ldr x26, [x26]
    str x26, [x23]
    mov x15, x21
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
    cmp x14, x24
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x19, x14
    mov x9, #0
    str x9, [x14]
    sub x9, x29, #440
    str x9, [sp, #152]
    ldr x11, [sp, #152]
    str xzr, [x11, #0]
    sub x9, x29, #448
    str x9, [sp, #144]
    ldr x11, [sp, #144]
    str xzr, [x11, #0]
    ldr x0, [sp, #152]
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
    mov x9, x24
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
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L5_25
    b L5_24
L5_25:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
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
    sub x21, x29, #480
    str x15, [x21]
    add x15, x21, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_22:
L5_23:
    ldr x0, [sp, #144]
    bl _pipe
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_28
L5_27:
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x14, x29, #496
    mov x9, x24
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
    str x19, [x14]
    add x22, x14, #8
    str x15, [x22]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L5_31
    b L5_30
L5_31:
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
L5_30:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x21, x29, #512
    str x15, [x21]
    add x15, x21, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_28:
L5_29:
    bl _fork
    str w0, [sp, #136]
    ldr w9, [sp, #136]
    mov x10, #0
    cmp w9, w10
    b.ge L5_34
L5_33:
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #144]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x14, x29, #528
    mov x9, x24
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
    str x19, [x14]
    add x22, x14, #8
    str x15, [x22]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L5_37
    b L5_36
L5_37:
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
L5_36:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x21, x29, #544
    str x15, [x21]
    add x15, x21, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_34:
L5_35:
    ldr w9, [sp, #136]
    mov x10, #0
    cmp w9, w10
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
    cbnz w14, L5_153
    b L5_51
L5_153:
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    add x26, x9, #4
    ldrsw x14, [x26]
    mov x0, x14
    movz x1, #1
    bl _dup2
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L5_154
    b L5_59
L5_154:
    mov w15, w14
    b L5_60
L5_59:
    ldr x9, [sp, #144]
    add x14, x9, #4
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
    ldr x9, [sp, #144]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x14, x29, #224
    ldr x27, [x14]
    mov x0, x27
    bl _strlen
    mov x14, x0
    sub x15, x29, #560
    str x27, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x10, #0
    cmp x14, x10
    cset w14, hi
    cbnz w14, L5_64
    b L5_155
L5_155:
    mov w15, w14
    b L5_65
L5_64:
    mov x0, x27
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
    ldr x9, [sp, #160]
    add x14, x9, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L5_67
L5_66:
    ldr x9, [sp, #160]
    ldr x14, [x9]
    ldr x10, [sp, #168]
    str x14, [x10]
    b L5_68
L5_67:
L5_68:
    mov x0, x25
    mov x1, x19
    bl _execvp
    mov w14, w0
    movz x0, #127
    bl __exit
    b L5_41
L5_40:
L5_41:
    sub x14, x29, #264
    ldr x25, [x14]
    mov x10, #0
    cmp x25, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_70
L5_69:
    ldr x0, [sp, #136]
    ldr x1, [sp, #136]
    bl _setpgid
    mov w14, w0
    b L5_71
L5_70:
L5_71:
    sub x14, x29, #576
    mov x9, x24
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
    str x19, [x14]
    add x26, x14, #8
    str x15, [x26]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x26, x9, #8
    ldr x26, [x26]
    cbnz x26, L5_73
    b L5_72
L5_73:
    add x19, x26, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_72:
    ldr x9, [sp, #152]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #144]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    sub x19, x29, #592
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x24, x29, #632
    sub x26, x29, #672
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    str w14, [x26]
    add x14, x26, #8
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x26, #24
    mov x9, #0
    str x9, [x14]
    add x14, x26, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x26
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x26, x29, #712
    sub x27, x29, #752
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    str w14, [x27]
    add x14, x27, #8
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x27, #24
    mov x9, #0
    str x9, [x14]
    add x14, x27, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    cbnz x25, L5_77
    b L5_75
L5_77:
L5_74:
    ldr x0, [sp, #136]
    mov x1, x24
    mov x2, x26
    mov x3, x25
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
    add x22, x19, #40
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_78:
    ldrsw x14, [x15]
    mov w19, w14
    b L5_76
L5_75:
    ldr w9, [sp, #136]
    sub x10, x29, #1136
    str w9, [x10]
    sub x10, x29, #1152
    str x24, [x10]
    sub x10, x29, #1168
    str x26, [x10]
    ldrsw x14, [x24]
    adrp x19, _lb_process_9set_flags@PAGE
    add x19, x19, _lb_process_9set_flags@PAGEOFF
    ldrsw x15, [x19]
    adrp x25, _lb_process_12non_blocking@PAGE
    add x25, x25, _lb_process_12non_blocking@PAGEOFF
    ldrsw x27, [x25]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w27
    str x9, [sp, #0]
    mov x0, x14
    mov x1, x15
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L5_156
    b L5_105
L5_156:
    mov w15, w14
    b L5_106
L5_105:
    ldrsw x14, [x26]
    ldrsw x15, [x19]
    ldrsw x27, [x25]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w27
    str x9, [sp, #0]
    mov x0, x14
    mov x1, x15
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L5_106:
    and w14, w15, #255
    cbnz w14, L5_102
    b L5_103
L5_102:
    sub x19, x29, #1120
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #1184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #136]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_143
L5_103:
L5_104:
    add x19, x24, #32
    add x9, x26, #32
    str x9, [sp, #128]
    sub x27, x29, #1200
    sub x22, x29, #1208
    adrp x28, _lb_process_7poll_in@PAGE
    add x28, x28, _lb_process_7poll_in@PAGEOFF
    add x20, x22, #4
    add x9, x22, #6
    str x9, [sp, #120]
    add x23, x27, #8
    sub x9, x29, #1216
    str x9, [sp, #8]
    add x9, x26, #32
    str x9, [sp, #112]
    ldr x9, [sp, #8]
    add x9, x9, #4
    str x9, [sp, #104]
    ldr x9, [sp, #8]
    add x9, x9, #6
    str x9, [sp, #96]
    add x9, x27, #6
    str x9, [sp, #80]
    adrp x9, _lb_process_12poll_hang_up@PAGE
    add x9, x9, _lb_process_12poll_hang_up@PAGEOFF
    str x9, [sp, #72]
    adrp x9, _lb_process_10poll_error@PAGE
    add x9, x9, _lb_process_10poll_error@PAGEOFF
    str x9, [sp, #64]
    sub x9, x29, #1264
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #56]
    add x9, x23, #6
    str x9, [sp, #48]
    adrp x9, _lb_process_12poll_hang_up@PAGE
    add x9, x9, _lb_process_12poll_hang_up@PAGEOFF
    str x9, [sp, #40]
    adrp x9, _lb_process_10poll_error@PAGE
    add x9, x9, _lb_process_10poll_error@PAGEOFF
    str x9, [sp, #32]
    sub x21, x29, #1296
    add x9, x21, #24
    str x9, [sp, #24]
    adrp x9, _lb_c_interrupted@PAGE
    add x9, x9, _lb_c_interrupted@PAGEOFF
    str x9, [sp, #88]
L5_108:
    ldrb w14, [x19]
    cbnz w14, L5_157
    b L5_111
L5_157:
    mov w15, w14
    b L5_112
L5_111:
    ldr x9, [sp, #128]
    ldrb w15, [x9]
L5_112:
    and w14, w15, #255
    cbnz w14, L5_109
    b L5_110
L5_109:
    mov x11, x22
    str xzr, [x11, #0]
    ldrb w14, [x19]
    cbnz w14, L5_113
    b L5_114
L5_113:
    ldrsw x14, [x24]
    b L5_115
L5_114:
    movn x9, #0
    mov w14, w9
L5_115:
    str w14, [x22]
    ldrsh w25, [x28]
    strh w25, [x20]
    mov x9, #0
    ldr x10, [sp, #120]
    strh w9, [x10]
    mov x10, x22
    mov x11, x27
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x11, [sp, #8]
    str xzr, [x11, #0]
    ldr x9, [sp, #112]
    ldrb w15, [x9]
    cbnz w15, L5_116
    b L5_117
L5_116:
    ldrsw x14, [x26]
    b L5_118
L5_117:
    movn x9, #0
    mov w14, w9
L5_118:
    ldr x10, [sp, #8]
    str w14, [x10]
    ldr x10, [sp, #104]
    strh w25, [x10]
    mov x9, #0
    ldr x10, [sp, #96]
    strh w9, [x10]
    ldr x10, [sp, #8]
    mov x11, x23
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x27
    movz x1, #2
    movn x2, #0
    bl _poll
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge L5_120
L5_119:
    bl _lb_c_errno
    mov w14, w0
    ldr x9, [sp, #88]
    ldrsw x15, [x9]
    cmp w14, w15
    b.ne L5_123
L5_122:
    b L5_108
L5_123:
L5_124:
    sub x19, x29, #1120
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #1232
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #136]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_143
L5_120:
L5_121:
    ldrb w14, [x19]
    cbnz w14, L5_130
    b L5_158
L5_158:
    mov w15, w14
    b L5_131
L5_130:
    ldr x9, [sp, #80]
    ldrsh w14, [x9]
    ldrsh w15, [x28]
    ldr x9, [sp, #72]
    ldrsh w25, [x9]
    orr w15, w15, w25
    ldr x9, [sp, #64]
    ldrsh w25, [x9]
    orr w15, w15, w25
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_131:
    and w14, w15, #255
    cbnz w14, L5_127
    b L5_128
L5_127:
    mov x0, x24
    sub x8, x29, #1264
    bl _lb_process_Capture_pull
    ldr x9, [sp, #56]
    ldrb w14, [x9]
    cbnz w14, L5_133
    b L5_132
L5_133:
    sub x19, x29, #1120
    ldr x10, [sp, #0]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #136]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_143
L5_132:
    b L5_129
L5_128:
L5_129:
    ldr x9, [sp, #112]
    ldrb w14, [x9]
    cbnz w14, L5_138
    b L5_159
L5_159:
    mov w15, w14
    b L5_139
L5_138:
    ldr x9, [sp, #48]
    ldrsh w14, [x9]
    ldrsh w15, [x28]
    ldr x9, [sp, #40]
    ldrsh w25, [x9]
    orr w15, w15, w25
    ldr x9, [sp, #32]
    ldrsh w25, [x9]
    orr w15, w15, w25
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_139:
    and w14, w15, #255
    cbnz w14, L5_135
    b L5_136
L5_135:
    mov x0, x26
    sub x8, x29, #1296
    bl _lb_process_Capture_pull
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, L5_141
    b L5_140
L5_141:
    sub x19, x29, #1120
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #136]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_143
L5_140:
    b L5_137
L5_136:
L5_137:
    b L5_108
L5_110:
    sub x14, x29, #1120
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L5_143:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_81:
    ldr w9, [sp, #136]
    sub x10, x29, #1352
    str w9, [x10]
    sub x19, x29, #1356
    mov x9, #0
    str w9, [x19]
    adrp x20, _lb_c_interrupted@PAGE
    add x20, x20, _lb_c_interrupted@PAGEOFF
L5_144:
    ldr x0, [sp, #136]
    mov x1, x19
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ge L5_146
L5_145:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_148
L5_147:
    sub x19, x29, #1336
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x20, x29, #1376
    str x15, [x20]
    add x15, x20, #8
    movz x9, #3
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #864
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L5_152
L5_148:
L5_149:
    b L5_144
L5_146:
    ldrsw x14, [x19]
    sub x15, x29, #1336
    str w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x15
    sub x11, x29, #864
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
L5_152:
    sub x15, x29, #864
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_85
    b L5_84
L5_85:
    add x14, x15, #8
    sub x19, x29, #176
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
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
    sub x20, x29, #880
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_88:
L5_89:
    sub x20, x29, #896
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
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
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
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_91:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #960
    mov x0, x26
    sub x8, x29, #1048
    bl _lb_process_Capture_take
    sub x22, x29, #1048
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L5_97
    b L5_96
L5_97:
    add x14, x22, #16
    sub x19, x29, #1000
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_94
L5_96:
    sub x23, x29, #976
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L5_95
L5_94:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_release
    sub x21, x29, #176
    add x14, x21, #40
    ldr w15, [x19]
    str w15, [x14]
    add x15, x19, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_95:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #1088
L5_100:
    asr w14, w19, #8
    movz x10, #255
    and w14, w14, w10
    str w14, [x22]
    add x14, x22, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #176
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
    mov x0, x26
    bl _lb_process_Capture_drop
    mov x0, x24
    bl _lb_process_Capture_drop
    ldr x9, [sp, #144]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_5c_str_0o
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1520]
    ldr x20, [sp, #1512]
    ldr x21, [sp, #1504]
    ldr x22, [sp, #1496]
    ldr x23, [sp, #1488]
    ldr x24, [sp, #1480]
    ldr x25, [sp, #1472]
    ldr x26, [sp, #1464]
    ldr x27, [sp, #1456]
    ldr x28, [sp, #1448]
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
    str x21, [sp, #24]
    sub x16, x29, #56
    str w0, [x16]
    sub x14, x29, #56
    ldrsw x19, [x14]
    mov x0, x19
    movz x1, #9
    bl _kill
    mov w14, w0
    sub x20, x29, #60
    mov x9, #0
    str w9, [x20]
    adrp x21, _lb_c_interrupted@PAGE
    add x21, x21, _lb_c_interrupted@PAGEOFF
L6_1:
    mov x0, x19
    mov x1, x20
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L6_4
    b L6_7
L6_7:
    mov w15, w14
    b L6_5
L6_4:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x21]
    cmp w14, w15
    cset w15, eq
L6_5:
    and w14, w15, #255
    cbnz w14, L6_2
    b L6_3
L6_2:
    b L6_1
L6_6:
    b L6_1
L6_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_release
    .no_dead_strip _lb_process_release
_lb_process_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #56
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L7_2
L7_1:
    ldr x19, [x14]
    sub x20, x29, #72
    str x19, [x20]
    add x20, x20, #8
    str x15, [x20]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    sub x21, x29, #88
    str x19, [x21]
    add x19, x21, #8
    str x15, [x19]
    ldr x19, [x20]
    add x20, x20, #8
    ldr x20, [x20]
    cbnz x20, L7_5
    b L7_4
L7_5:
    add x14, x20, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_4:
    b L7_3
L7_2:
L7_3:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
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
    cbnz w14, L9_11
    b L9_4
L9_11:
    mov w15, w14
    b L9_5
L9_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L9_5:
    and w14, w15, #255
    cbnz w14, L9_1
    b L9_2
L9_1:
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
    b L9_3
L9_2:
L9_3:
    mov x10, #0
    cmp x19, x10
    b.ls L9_7
L9_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L9_9
    b L9_10
L9_10:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L9_9:
    b L9_8
L9_7:
L9_8:
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
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #64
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L10_2
L10_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x20, x29, #80
    ldr x21, [x14]
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
    mov x22, x9
    str x21, [x20]
    add x21, x20, #8
    str x22, [x21]
    ldr x21, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L10_5
    b L10_4
L10_5:
    add x14, x19, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_4:
    b L10_3
L10_2:
L10_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/process/module.lucb:43:9"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/process/module.lucb:45:17"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "src/std/process/module.lucb:47:17"
l_text_6:
    .asciz "src/std/process/module.lucb:48:9"
l_text_7:
    .asciz "index out of bounds"
l_text_8:
    .asciz "src/std/process/module.lucb:52:13"
l_text_9:
    .asciz "the program's output cannot be read"
l_text_10:
    .asciz "src/std/process/module.lucb:62:17"
l_text_11:
    .asciz "src/std/process/module.lucb:65:9"
l_text_12:
    .asciz "src/std/process/module.lucb:67:9"
l_text_13:
    .asciz "unreachable"
l_text_14:
    .asciz "src/std/process/module.lucb:69:9"
l_text_15:
    .asciz "src/std/process/module.lucb:73:13"
l_text_16:
    .asciz "src/std/process/module.lucb:89:5"
l_text_17:
    .asciz "src/std/process/module.lucb:99:5"
l_text_18:
    .asciz "src/std/process/module.lucb:100:5"
l_text_19:
    .asciz "src/std/process/module.lucb:103:9"
l_text_20:
    .asciz "src/std/process/module.lucb:104:9"
l_text_21:
    .asciz "src/std/process/module.lucb:105:5"
l_text_22:
    .asciz "src/std/process/module.lucb:109:9"
l_text_23:
    .asciz "run"
l_text_24:
    .asciz "src/std/process/module.lucb:112:9"
l_text_25:
    .asciz "src/std/process/module.lucb:113:9"
l_text_26:
    .asciz "src/std/process/module.lucb:114:9"
l_text_27:
    .asciz "src/std/process/module.lucb:118:9"
l_text_28:
    .asciz "src/std/process/module.lucb:119:9"
l_text_29:
    .asciz "src/std/process/module.lucb:120:9"
l_text_30:
    .asciz "src/std/process/module.lucb:121:9"
l_text_31:
    .asciz "src/std/process/module.lucb:122:9"
l_text_32:
    .asciz "/dev/null"
l_text_33:
    .asciz "src/std/process/module.lucb:133:9"
l_text_34:
    .asciz "src/std/process/module.lucb:134:9"
l_text_35:
    .asciz "src/std/process/module.lucb:135:9"
l_text_36:
    .asciz "src/std/process/module.lucb:137:9"
l_text_37:
    .asciz "src/std/process/module.lucb:138:9"
l_text_38:
    .asciz "src/std/process/module.lucb:147:5"
l_text_39:
    .asciz "src/std/process/module.lucb:148:5"
l_text_40:
    .asciz "src/std/process/module.lucb:149:5"
l_text_41:
    .asciz "src/std/process/module.lucb:151:5"
l_text_42:
    .asciz "src/std/process/module.lucb:152:5"
l_text_43:
    .asciz "src/std/process/module.lucb:159:9"
l_text_44:
    .asciz "src/std/process/module.lucb:161:9"
l_text_45:
    .asciz "src/std/process/module.lucb:162:9"
l_text_46:
    .asciz "the program was stopped by a signal"
l_text_47:
    .asciz "src/std/process/module.lucb:164:9"
l_text_48:
    .asciz "src/std/process/module.lucb:165:5"
l_text_49:
    .asciz "src/std/process/module.lucb:168:9"
l_text_50:
    .asciz "shift count out of range"
l_text_51:
    .asciz "src/std/process/module.lucb:169:5"
l_text_52:
    .asciz "src/std/process/module.lucb:184:9"
l_text_53:
    .asciz "src/std/process/module.lucb:185:9"
l_text_54:
    .asciz "src/std/process/module.lucb:190:9"
l_text_55:
    .asciz "src/std/process/module.lucb:192:9"
l_text_56:
    .asciz "src/std/process/module.lucb:201:5"
l_text_57:
    .asciz "src/std/process/module.lucb:213:9"
l_text_58:
    .asciz "src/std/memory.lucb:326:9"
l_text_59:
    .asciz "src/std/memory.lucb:328:9"
l_text_60:
    .asciz "null_foreign"
l_text_61:
    .asciz "src/std/process/module.lucb:174:9"
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
