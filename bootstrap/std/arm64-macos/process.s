    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_0init
_lb_process_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
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
    adrp x15, _lb_process_16interrupt_signal@PAGE
    add x15, x15, _lb_process_16interrupt_signal@PAGEOFF
    movz x9, #2
    str w9, [x15]
    adrp x15, _lb_process_16terminate_signal@PAGE
    add x15, x15, _lb_process_16terminate_signal@PAGEOFF
    movz x9, #15
    str w9, [x15]
    adrp x15, _lb_process_17console_interrupt@PAGE
    add x15, x15, _lb_process_17console_interrupt@PAGEOFF
    mov x9, #0
    str w9, [x15]
    adrp x15, _lb_process_13console_break@PAGE
    add x15, x15, _lb_process_13console_break@PAGEOFF
    movz x9, #1
    str w9, [x15]
    adrp x15, _lb_process_13console_close@PAGE
    add x15, x15, _lb_process_13console_close@PAGEOFF
    movz x9, #2
    str w9, [x15]
    adrp x15, _lb_process_14console_logoff@PAGE
    add x15, x15, _lb_process_14console_logoff@PAGEOFF
    movz x9, #5
    str w9, [x15]
    adrp x15, _lb_process_16console_shutdown@PAGE
    add x15, x15, _lb_process_16console_shutdown@PAGEOFF
    movz x9, #6
    str w9, [x15]
    adrp x15, _lb_process_26console_acknowledgement_ms@PAGE
    add x15, x15, _lb_process_26console_acknowledgement_ms@PAGEOFF
    movz x9, #4000
    str x9, [x15]
    sub x19, x29, #72
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #88
    str x15, [x20]
    add x15, x20, #8
    movz x9, #7
    str x9, [x15]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x15, _lb_process_Command_close@GOTPAGE
    ldr x15, [x15, _lb_process_Command_close@GOTPAGEOFF]
    add x20, x19, #16
    str x15, [x20]
    add x15, x19, #32
    movz x9, #1
    strb w9, [x15]
    add x15, x19, #24
    mov x9, #0
    str x9, [x15]
    add x15, x19, #33
    mov x9, #0
    strb w9, [x15]
    adrp x15, _lb_process_12command_type@PAGE
    add x15, x15, _lb_process_12command_type@PAGEOFF
    mov x10, x19
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
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
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
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
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x24
    b.ls L1_20
L1_21:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
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
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
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
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
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
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
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
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_14run_controlled
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
    bl __NSGetEnviron
    str x0, [sp, #24]
    ldr x9, [sp, #24]
    cbnz x9, L5_102
    b L5_103
L5_103:
    adrp x0, l_text_141@PAGE
    add x0, x0, l_text_141@PAGEOFF
    adrp x1, l_text_74@PAGE
    add x1, x1, l_text_74@PAGEOFF
    bl _lb_core_7trap_at
L5_102:
L5_105:
    sub x9, x29, #280
    str x9, [sp, #168]
    ldr x11, [sp, #168]
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
    ldr x9, [sp, #24]
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
    ldr x11, [sp, #168]
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
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
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
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
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
    ldr x9, [sp, #168]
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
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
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
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
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
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x24
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x19, x14
    mov x9, #0
    str x9, [x14]
    sub x9, x29, #440
    str x9, [sp, #160]
    ldr x11, [sp, #160]
    str xzr, [x11, #0]
    sub x9, x29, #448
    str x9, [sp, #152]
    ldr x11, [sp, #152]
    str xzr, [x11, #0]
    ldr x0, [sp, #160]
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
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
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
    ldr x9, [sp, #168]
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
    ldr x0, [sp, #152]
    bl _pipe
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_28
L5_27:
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
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
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
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
    ldr x9, [sp, #168]
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
    str w0, [sp, #144]
    ldr w9, [sp, #144]
    mov x10, #0
    cmp w9, w10
    b.ge L5_34
L5_33:
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
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
    sub x14, x29, #528
    mov x9, x24
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
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
    ldr x9, [sp, #168]
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
    ldr w9, [sp, #144]
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
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    mov x0, x14
    mov x1, #0
    bl _open
    mov w26, w0
    mov x10, #0
    cmp w26, w10
    cset w14, lt
    cbnz w14, L5_157
    b L5_51
L5_157:
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
    ldr x9, [sp, #160]
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
    add x26, x9, #4
    ldrsw x14, [x26]
    mov x0, x14
    movz x1, #1
    bl _dup2
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L5_158
    b L5_59
L5_158:
    mov w15, w14
    b L5_60
L5_59:
    ldr x9, [sp, #152]
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
    ldr x9, [sp, #152]
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
    b L5_159
L5_159:
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
    ldr x9, [sp, #168]
    add x14, x9, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L5_67
L5_66:
    ldr x9, [sp, #168]
    ldr x14, [x9]
    ldr x10, [sp, #24]
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
    ldr x0, [sp, #144]
    ldr x1, [sp, #144]
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
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
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
    ldr x9, [sp, #160]
    add x14, x9, #4
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #152]
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
    ldr x9, [sp, #160]
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
    ldr x9, [sp, #152]
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
    ldr x0, [sp, #144]
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    ldr w9, [sp, #144]
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
    cbnz w14, L5_160
    b L5_109
L5_160:
    mov w15, w14
    b L5_110
L5_109:
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
L5_110:
    and w14, w15, #255
    cbnz w14, L5_106
    b L5_107
L5_106:
    sub x19, x29, #1120
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
    ldr x0, [sp, #144]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_147
L5_107:
L5_108:
    add x19, x24, #32
    add x9, x26, #32
    str x9, [sp, #136]
    sub x27, x29, #1200
    sub x22, x29, #1208
    adrp x28, _lb_process_7poll_in@PAGE
    add x28, x28, _lb_process_7poll_in@PAGEOFF
    add x20, x22, #4
    add x9, x22, #6
    str x9, [sp, #128]
    add x23, x27, #8
    sub x9, x29, #1216
    str x9, [sp, #8]
    add x9, x26, #32
    str x9, [sp, #120]
    ldr x9, [sp, #8]
    add x9, x9, #4
    str x9, [sp, #112]
    ldr x9, [sp, #8]
    add x9, x9, #6
    str x9, [sp, #104]
    add x9, x27, #6
    str x9, [sp, #88]
    adrp x9, _lb_process_12poll_hang_up@PAGE
    add x9, x9, _lb_process_12poll_hang_up@PAGEOFF
    str x9, [sp, #80]
    adrp x9, _lb_process_10poll_error@PAGE
    add x9, x9, _lb_process_10poll_error@PAGEOFF
    str x9, [sp, #72]
    sub x9, x29, #1264
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #64]
    add x9, x23, #6
    str x9, [sp, #56]
    adrp x9, _lb_process_12poll_hang_up@PAGE
    add x9, x9, _lb_process_12poll_hang_up@PAGEOFF
    str x9, [sp, #48]
    adrp x9, _lb_process_10poll_error@PAGE
    add x9, x9, _lb_process_10poll_error@PAGEOFF
    str x9, [sp, #40]
    sub x21, x29, #1296
    add x9, x21, #24
    str x9, [sp, #32]
    adrp x9, _lb_c_interrupted@PAGE
    add x9, x9, _lb_c_interrupted@PAGEOFF
    str x9, [sp, #96]
L5_112:
    ldrb w14, [x19]
    cbnz w14, L5_161
    b L5_115
L5_161:
    mov w15, w14
    b L5_116
L5_115:
    ldr x9, [sp, #136]
    ldrb w15, [x9]
L5_116:
    and w14, w15, #255
    cbnz w14, L5_113
    b L5_114
L5_113:
    mov x11, x22
    str xzr, [x11, #0]
    ldrb w14, [x19]
    cbnz w14, L5_117
    b L5_118
L5_117:
    ldrsw x14, [x24]
    b L5_119
L5_118:
    movn x9, #0
    mov w14, w9
L5_119:
    str w14, [x22]
    ldrsh w25, [x28]
    strh w25, [x20]
    mov x9, #0
    ldr x10, [sp, #128]
    strh w9, [x10]
    mov x10, x22
    mov x11, x27
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x11, [sp, #8]
    str xzr, [x11, #0]
    ldr x9, [sp, #120]
    ldrb w15, [x9]
    cbnz w15, L5_120
    b L5_121
L5_120:
    ldrsw x14, [x26]
    b L5_122
L5_121:
    movn x9, #0
    mov w14, w9
L5_122:
    ldr x10, [sp, #8]
    str w14, [x10]
    ldr x10, [sp, #112]
    strh w25, [x10]
    mov x9, #0
    ldr x10, [sp, #104]
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
    b.ge L5_124
L5_123:
    bl _lb_c_errno
    mov w14, w0
    ldr x9, [sp, #96]
    ldrsw x15, [x9]
    cmp w14, w15
    b.ne L5_127
L5_126:
    b L5_112
L5_127:
L5_128:
    sub x19, x29, #1120
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
    ldr x0, [sp, #144]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_147
L5_124:
L5_125:
    ldrb w14, [x19]
    cbnz w14, L5_134
    b L5_162
L5_162:
    mov w15, w14
    b L5_135
L5_134:
    ldr x9, [sp, #88]
    ldrsh w14, [x9]
    ldrsh w15, [x28]
    ldr x9, [sp, #80]
    ldrsh w25, [x9]
    orr w15, w15, w25
    ldr x9, [sp, #72]
    ldrsh w25, [x9]
    orr w15, w15, w25
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_135:
    and w14, w15, #255
    cbnz w14, L5_131
    b L5_132
L5_131:
    mov x0, x24
    sub x8, x29, #1264
    bl _lb_process_Capture_pull
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, L5_137
    b L5_136
L5_137:
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
    ldr x0, [sp, #144]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_147
L5_136:
    b L5_133
L5_132:
L5_133:
    ldr x9, [sp, #120]
    ldrb w14, [x9]
    cbnz w14, L5_142
    b L5_163
L5_163:
    mov w15, w14
    b L5_143
L5_142:
    ldr x9, [sp, #56]
    ldrsh w14, [x9]
    ldrsh w15, [x28]
    ldr x9, [sp, #48]
    ldrsh w25, [x9]
    orr w15, w15, w25
    ldr x9, [sp, #40]
    ldrsh w25, [x9]
    orr w15, w15, w25
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_143:
    and w14, w15, #255
    cbnz w14, L5_139
    b L5_140
L5_139:
    mov x0, x26
    sub x8, x29, #1296
    bl _lb_process_Capture_pull
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L5_145
    b L5_144
L5_145:
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
    ldr x0, [sp, #144]
    bl _lb_process_terminate
    mov x10, x19
    sub x11, x29, #824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L5_147
L5_144:
    b L5_141
L5_140:
L5_141:
    b L5_112
L5_114:
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
L5_147:
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    ldr w9, [sp, #144]
    sub x10, x29, #1352
    str w9, [x10]
    sub x19, x29, #1356
    mov x9, #0
    str w9, [x19]
    adrp x20, _lb_c_interrupted@PAGE
    add x20, x20, _lb_c_interrupted@PAGEOFF
L5_148:
    ldr x0, [sp, #144]
    mov x1, x19
    mov x2, #0
    bl _waitpid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ge L5_150
L5_149:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_152
L5_151:
    sub x19, x29, #1336
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
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
    b L5_156
L5_152:
L5_153:
    b L5_148
L5_150:
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
L5_156:
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    adrp x15, l_text_47@PAGE
    add x15, x15, l_text_47@PAGEOFF
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    ldr x9, [sp, #152]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #160]
    ldrsw x14, [x9]
    mov x0, x14
    bl _close
    mov w14, w0
    ldr x9, [sp, #168]
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
    .globl _lb_process_13quote_windows
_lb_process_13quote_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    str x25, [sp, #56]
    str x26, [sp, #48]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    sub x16, x29, #128
    str x3, [x16]
    str x4, [x16, #8]
    sub x14, x29, #128
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w19, eq
    ldr x14, [x14]
    mov x9, #0
    mov x20, x9
L9_1:
    cmp x20, x15
    b.hs L9_4
L9_2:
    add x21, x14, x20
    ldrb w21, [x21]
    and w21, w21, #255
    movz x10, #32
    cmp w21, w10
    cset w22, eq
    cbnz w22, L9_43
    b L9_8
L9_43:
    mov w23, w22
    b L9_9
L9_8:
    movz x10, #9
    cmp w21, w10
    cset w23, eq
L9_9:
    and w22, w23, #255
    cbnz w22, L9_44
    b L9_10
L9_44:
    mov w23, w22
    b L9_11
L9_10:
    movz x10, #10
    cmp w21, w10
    cset w23, eq
L9_11:
    and w22, w23, #255
    cbnz w22, L9_45
    b L9_12
L9_45:
    mov w23, w22
    b L9_13
L9_12:
    movz x10, #13
    cmp w21, w10
    cset w23, eq
L9_13:
    and w22, w23, #255
    cbnz w22, L9_46
    b L9_14
L9_46:
    mov w21, w22
    b L9_15
L9_14:
    movz x10, #34
    cmp w21, w10
    cset w22, eq
    mov w21, w22
L9_15:
    and w22, w21, #255
    cbnz w22, L9_5
    b L9_6
L9_5:
    movz x9, #1
    mov w19, w9
    b L9_7
L9_6:
L9_7:
L9_3:
    add x21, x20, #1
    mov x20, x21
    b L9_1
L9_4:
    and w20, w19, #255
    mov x10, #0
    cmp w20, w10
    b.ne L9_17
L9_16:
    sub x19, x29, #112
    ldr x19, [x19]
    sub x20, x29, #96
    ldr x21, [x20]
    add x20, x20, #8
    ldr x20, [x20]
    mov x9, #0
    mov x22, x9
L9_19:
    cmp x22, x15
    b.hs L9_22
L9_20:
    add x23, x14, x22
    ldrb w23, [x23]
    ldr x24, [x19]
    cmp x24, x20
    b.lo 1f
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x24, x21
    and w23, w23, #255
    strb w23, [x24]
    ldr x23, [x19]
    mov x9, x23
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x23, [x19]
L9_21:
    add x23, x22, #1
    mov x22, x23
    b L9_19
L9_22:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    ldr x26, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_23:
    b L9_18
L9_17:
L9_18:
    sub x19, x29, #112
    ldr x19, [x19]
    ldr x20, [x19]
    sub x21, x29, #96
    ldr x22, [x21]
    add x21, x21, #8
    ldr x21, [x21]
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x20, x22
    movz x9, #34
    strb w9, [x20]
    ldr x20, [x19]
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x19]
    mov x9, #0
    mov x20, x9
    mov x9, #0
    mov x23, x9
L9_24:
    cmp x23, x15
    b.hs L9_27
L9_25:
    add x24, x14, x23
    ldrb w24, [x24]
    and w24, w24, #255
    movz x10, #92
    cmp w24, w10
    b.ne L9_29
L9_28:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    b L9_26
L9_31:
    b L9_30
L9_29:
L9_30:
    movz x10, #34
    cmp w24, w10
    b.ne L9_33
L9_32:
    mov x9, x20
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    mov x9, x25
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    b L9_34
L9_33:
    mov x25, x20
L9_34:
    mov x9, #0
    mov x20, x9
L9_35:
    cmp x20, x25
    b.hs L9_38
L9_36:
    ldr x26, [x19]
    cmp x26, x21
    b.lo 1f
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x26, x22, x26
    movz x9, #92
    strb w9, [x26]
    ldr x26, [x19]
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    str x26, [x19]
L9_37:
    add x26, x20, #1
    mov x20, x26
    b L9_35
L9_38:
    ldr x20, [x19]
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x22, x20
    strb w24, [x20]
    ldr x20, [x19]
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x19]
    mov x9, #0
    mov x24, x9
L9_26:
    add x25, x23, #1
    mov x20, x24
    mov x23, x25
    b L9_24
L9_27:
    mov x9, x20
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, #0
    mov x15, x9
L9_39:
    cmp x15, x14
    b.hs L9_42
L9_40:
    ldr x20, [x19]
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x22, x20
    movz x9, #92
    strb w9, [x20]
    ldr x20, [x19]
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x19]
L9_41:
    add x20, x15, #1
    mov x15, x20
    b L9_39
L9_42:
    ldr x14, [x19]
    cmp x14, x21
    b.lo 1f
    adrp x0, l_text_72@PAGE
    add x0, x0, l_text_72@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x22, x14
    movz x9, #34
    strb w9, [x14]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    ldr x26, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_12inherit_file
_lb_process_12inherit_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #96
    str x0, [x16]
    sub x19, x29, #104
    mov x9, #0
    str x9, [x19]
    bl _GetCurrentProcess
    mov x20, x0
    cbnz x20, L10_1
    b L10_2
L10_2:
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_74@PAGE
    add x1, x1, l_text_74@PAGEOFF
    bl _lb_core_7trap_at
L10_1:
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl __fileno
    mov w14, w0
    mov x0, x14
    bl __get_osfhandle
    mov x14, x0
    mov x0, x20
    mov x1, x14
    mov x2, x20
    mov x3, x19
    mov x4, #0
    movz x5, #1
    movz x6, #2
    bl _DuplicateHandle
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L10_4
L10_3:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_76@PAGE
    add x15, x15, l_text_76@PAGEOFF
    sub x20, x29, #120
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_6:
    b L10_5
L10_4:
L10_5:
    ldr x14, [x19]
    cbnz x14, L10_7
    b L10_8
L10_7:
    b L10_9
L10_8:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_77@PAGE
    add x15, x15, l_text_77@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_10:
L10_9:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_11:
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_15capture_windows
_lb_process_15capture_windows:
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
    sub x16, x29, #152
    str x0, [x16]
    sub x14, x29, #152
    ldr x19, [x14]
    mov x0, x19
    mov x1, #0
    movz x2, #2
    bl __fseeki64
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_2
L11_1:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_79@PAGE
    add x15, x15, l_text_79@PAGEOFF
    sub x20, x29, #168
    str x15, [x20]
    add x15, x20, #8
    movz x9, #36
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
L11_4:
    b L11_3
L11_2:
L11_3:
    mov x0, x19
    bl __ftelli64
    mov x20, x0
    mov x10, #0
    cmp x20, x10
    cset w14, lt
    cbnz w14, L11_30
    b L11_8
L11_30:
    mov w15, w14
    b L11_9
L11_8:
    mov x0, x19
    mov x1, #0
    mov x2, #0
    bl __fseeki64
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_9:
    and w14, w15, #255
    cbnz w14, L11_5
    b L11_6
L11_5:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_80@PAGE
    add x15, x15, l_text_80@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
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
L11_10:
    b L11_7
L11_6:
L11_7:
    sub x21, x29, #200
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    sub x23, x29, #248
    movz x10, #16384, lsl #48
    cmp x20, x10
    b.ls L11_12
L11_11:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L11_13
L11_12:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L11_14
    b L11_15
L11_15:
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L11_14:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x20
    movz x2, #1
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #272
    add x24, x26, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x20, x10
    cset w25, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w25, w24
    cbnz w24, L11_16
    b L11_17
L11_16:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L11_13
L11_17:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    str x20, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L11_13:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L11_19
    b L11_18
L11_19:
    add x14, x23, #16
    sub x19, x29, #136
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
L11_20:
L11_18:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, #0
    cmp x20, x10
    cset w14, gt
    cbnz w14, L11_24
    b L11_31
L11_31:
    mov w15, w14
    b L11_25
L11_24:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x20, [x15]
    mov x0, x14
    movz x1, #1
    mov x2, x20
    mov x3, x19
    bl _fread
    mov x14, x0
    cmp x20, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_25:
    and w14, w15, #255
    cbnz w14, L11_21
    b L11_22
L11_21:
    sub x14, x29, #288
    ldr x15, [x21]
    add x19, x21, #8
    ldr x19, [x19]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x15, [x22]
    add x19, x22, #8
    ldr x19, [x19]
    cbnz x19, L11_27
    b L11_26
L11_27:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L11_26:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_80@PAGE
    add x15, x15, l_text_80@PAGEOFF
    sub x20, x29, #304
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
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
L11_28:
    b L11_23
L11_22:
L11_23:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    sub x19, x29, #320
    str x14, [x19]
    add x14, x19, #8
    str x15, [x14]
    sub x20, x29, #136
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L11_29:
    adrp x0, l_text_83@PAGE
    add x0, x0, l_text_83@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_17temporary_windows
_lb_process_17temporary_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #400
    movk x16, #1, lsl #16
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    sub x16, x29, #32
    str x19, [x16]
    sub x16, x29, #40
    str x20, [x16]
    sub x16, x29, #48
    str x21, [x16]
    sub x16, x29, #56
    str x22, [x16]
    sub x16, x29, #64
    str x23, [x16]
    sub x16, x29, #72
    str x24, [x16]
    sub x16, x29, #80
    str x25, [x16]
    sub x16, x29, #88
    str x26, [x16]
    sub x16, x29, #96
    str x27, [x16]
    sub x16, x29, #104
    str x28, [x16]
    movz x16, #144
    movk x16, #1, lsl #16
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #1, lsl #16
    bl _memset
    movz x0, #32768
    mov x1, x19
    bl _GetTempPathW
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L12_43
    b L12_4
L12_43:
    mov w20, w15
    b L12_5
L12_4:
    mov w15, w14
    add x15, x15, #33
    movz x10, #32768
    cmp x15, x10
    cset w20, hs
L12_5:
    and w15, w20, #255
    cbnz w15, L12_1
    b L12_2
L12_1:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_86@PAGE
    add x15, x15, l_text_86@PAGEOFF
    movz x16, #160
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_2:
L12_3:
    movz x16, #176
    movk x16, #1, lsl #16
    sub x9, x29, x16
    str x9, [sp, #72]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x9, x29, x16
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #56]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x9, x29, x16
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #48]
    movz x16, #240
    movk x16, #1, lsl #16
    sub x9, x29, x16
    str x9, [sp, #40]
    adrp x25, l_text_87@PAGE
    add x25, x25, l_text_87@PAGEOFF
    movz x16, #256
    movk x16, #1, lsl #16
    sub x26, x29, x16
    add x27, x26, #8
    mov w9, w14
    str x9, [sp, #32]
    mov w15, w14
    add x9, x15, #32
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    lsl x15, x9, #1
    add x9, x19, x15
    str x9, [sp, #16]
    mov x9, #0
    mov x28, x9
L12_7:
    movz x10, #128
    cmp x28, x10
    b.ge L12_10
L12_8:
    ldr x11, [sp, #72]
    stp xzr, xzr, [x11, #0]
    ldr x9, [sp, #72]
    ldr x10, [sp, #64]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #56]
    str x9, [x10]
    ldr x9, [sp, #64]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x8, x29, x16
    bl _lb_os_12random_bytes
    ldr x9, [sp, #48]
    ldrb w14, [x9]
    cbnz w14, L12_12
    b L12_11
L12_12:
    sub x19, x29, #144
    add x14, x19, #8
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_11:
    str x25, [x26]
    movz x9, #16
    str x9, [x27]
    mov x10, x26
    ldr x11, [sp, #40]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x14, x9
L12_14:
    movz x10, #16
    cmp x14, x10
    b.hs L12_17
L12_15:
    lsl x15, x14, #1
    ldr x9, [sp, #32]
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_88@PAGE
    add x0, x0, l_text_88@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #32768
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_88@PAGE
    add x0, x0, l_text_88@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x21, x15, #1
    add x22, x19, x21
    ldr x9, [sp, #72]
    add x21, x9, x14
    ldrb w23, [x21]
L12_19:
    lsr w20, w23, #4
    and w20, w20, #255
    mov w20, w20
    movz x10, #16
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_88@PAGE
    add x0, x0, l_text_88@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x25, x20
    ldrb w20, [x20]
    mov w20, w20
    and w20, w20, #65535
    strh w20, [x22]
    add x20, x15, #1
    movz x10, #32768
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_89@PAGE
    add x0, x0, l_text_89@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x20, x20, #1
    add x20, x19, x20
    ldrb w24, [x21]
    movz x10, #15
    and w24, w24, w10
    mov w24, w24
    add x24, x25, x24
    ldrb w24, [x24]
    mov w24, w24
    and w24, w24, #65535
    strh w24, [x20]
L12_16:
    add x15, x14, #1
    mov x14, x15
    b L12_14
L12_17:
    ldr x9, [sp, #24]
    movz x10, #32768
    cmp x9, x10
    b.lo 1f
    adrp x0, l_text_90@PAGE
    add x0, x0, l_text_90@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #16]
    strh w9, [x10]
    mov x0, x19
    movz x1, #49152, lsl #16
    movz x2, #7
    mov x3, #0
    movz x4, #1
    movz x5, #256
    movk x5, #1024, lsl #16
    mov x6, #0
    bl _CreateFileW
    mov x20, x0
    cbnz x20, L12_20
    b L12_21
L12_21:
    adrp x0, l_text_91@PAGE
    add x0, x0, l_text_91@PAGEOFF
    adrp x1, l_text_74@PAGE
    add x1, x1, l_text_74@PAGEOFF
    bl _lb_core_7trap_at
L12_20:
    movn x10, #0
    cmp x20, x10
    b.ne L12_23
L12_22:
    bl _GetLastError
    mov w14, w0
    movz x10, #80
    cmp w14, w10
    cset w14, eq
    cbnz w14, L12_44
    b L12_28
L12_44:
    mov w15, w14
    b L12_29
L12_28:
    bl _GetLastError
    mov w14, w0
    movz x10, #183
    cmp w14, w10
    cset w15, eq
L12_29:
    and w14, w15, #255
    cbnz w14, L12_25
    b L12_26
L12_25:
    b L12_9
L12_26:
L12_27:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_92@PAGE
    add x15, x15, l_text_92@PAGEOFF
    movz x16, #272
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_23:
L12_24:
    mov x0, x20
    movz x1, #32898
    bl __open_osfhandle
    mov w19, w0
    mov x10, #0
    cmp w19, w10
    b.ge L12_33
L12_32:
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_93@PAGE
    add x15, x15, l_text_93@PAGEOFF
    movz x16, #288
    movk x16, #1, lsl #16
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_33:
L12_34:
    adrp x14, l_text_94@PAGE
    add x14, x14, l_text_94@PAGEOFF
    mov x0, x19
    mov x1, x14
    bl __fdopen
    mov x14, x0
    cbnz x14, L12_39
    b L12_37
L12_39:
L12_36:
    sub x15, x29, #144
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_37:
L12_38:
    mov x0, x19
    bl __close
    mov w14, w0
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_95@PAGE
    add x15, x15, l_text_95@PAGEOFF
    movz x16, #304
    movk x16, #1, lsl #16
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_9:
    add x14, x28, #1
    mov x28, x14
    b L12_7
L12_10:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_96@PAGE
    add x15, x15, l_text_96@PAGEOFF
    movz x16, #320
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    sub x16, x29, #48
    ldr x21, [x16]
    sub x16, x29, #56
    ldr x22, [x16]
    sub x16, x29, #64
    ldr x23, [x16]
    sub x16, x29, #72
    ldr x24, [x16]
    sub x16, x29, #80
    ldr x25, [x16]
    sub x16, x29, #88
    ldr x26, [x16]
    sub x16, x29, #96
    ldr x27, [x16]
    sub x16, x29, #104
    ldr x28, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_11run_windows
_lb_process_11run_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2656
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2624]
    str x20, [sp, #2616]
    str x21, [sp, #2608]
    str x22, [sp, #2600]
    str x23, [sp, #2592]
    str x24, [sp, #2584]
    str x25, [sp, #2576]
    str x26, [sp, #2568]
    str x27, [sp, #2560]
    str x28, [sp, #2552]
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
    sub x9, x29, #280
    str x9, [sp, #416]
    sub x14, x29, #192
    ldr x20, [x14]
    mov x0, x20
    bl _strlen
    mov x21, x0
    sub x14, x29, #296
    str x20, [x14]
    add x15, x14, #8
    str x21, [x15]
    mov x10, x14
    ldr x11, [sp, #416]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #304
    mov x0, x21
    movz x1, #2
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qmul_u
    mov w14, w0
    sub x21, x29, #320
    ldr x15, [x20]
    str x15, [x21]
    add x20, x21, #8
    strb w14, [x20]
    ldrb w14, [x20]
    cbnz w14, L13_1
    b L13_2
L13_1:
    b L13_3
L13_2:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_98@PAGE
    add x15, x15, l_text_98@PAGEOFF
    sub x20, x29, #336
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
L13_3:
    sub x20, x29, #344
    mov x0, x15
    movz x1, #4
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x21, x29, #360
    ldr x20, [x20]
    str x20, [x21]
    add x21, x21, #8
    strb w14, [x21]
    ldrb w14, [x21]
    cbnz w14, L13_5
    b L13_6
L13_5:
    b L13_7
L13_6:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_98@PAGE
    add x15, x15, l_text_98@PAGEOFF
    sub x20, x29, #376
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
L13_7:
    sub x14, x29, #208
    ldr x21, [x14]
    add x14, x14, #8
    ldr x9, [x14]
    str x9, [sp, #408]
    sub x23, x29, #392
    add x24, x23, #8
    sub x25, x29, #400
    sub x19, x29, #416
    add x26, x19, #8
    sub x9, x29, #440
    str x9, [sp, #400]
    sub x9, x29, #456
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #392]
    sub x9, x29, #480
    str x9, [sp, #384]
    sub x27, x29, #496
    add x9, x27, #8
    str x9, [sp, #376]
    mov x9, x20
    str x9, [sp, #56]
    mov x9, #0
    mov x28, x9
L13_9:
    ldr x10, [sp, #408]
    cmp x28, x10
    b.hs L13_12
L13_10:
    lsl x14, x28, #3
    add x14, x21, x14
    ldr x20, [x14]
    mov x0, x20
    bl _strlen
    mov x14, x0
    str x20, [x23]
    str x14, [x24]
    mov x0, x14
    movz x1, #2
    movz x2, #64
    mov x3, x25
    bl _lb_core_6qmul_u
    mov w14, w0
    ldr x15, [x25]
    str x15, [x19]
    strb w14, [x26]
    ldrb w14, [x26]
    cbnz w14, L13_13
    b L13_14
L13_13:
    b L13_15
L13_14:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_98@PAGE
    add x15, x15, l_text_98@PAGEOFF
    sub x20, x29, #432
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_16:
L13_15:
    ldr x0, [sp, #56]
    mov x1, x15
    movz x2, #64
    ldr x3, [sp, #400]
    bl _lb_core_6qadd_u
    mov w14, w0
    ldr x9, [sp, #400]
    ldr x20, [x9]
    ldr x10, [sp, #8]
    str x20, [x10]
    ldr x10, [sp, #392]
    strb w14, [x10]
    ldr x9, [sp, #392]
    ldrb w14, [x9]
    cbnz w14, L13_17
    b L13_18
L13_17:
    b L13_19
L13_18:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_98@PAGE
    add x15, x15, l_text_98@PAGEOFF
    sub x20, x29, #472
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_20:
L13_19:
    mov x0, x20
    movz x1, #3
    movz x2, #64
    ldr x3, [sp, #384]
    bl _lb_core_6qadd_u
    mov w14, w0
    ldr x9, [sp, #384]
    ldr x15, [x9]
    str x15, [x27]
    ldr x10, [sp, #376]
    strb w14, [x10]
    ldr x9, [sp, #376]
    ldrb w14, [x9]
    cbnz w14, L13_21
    b L13_22
L13_21:
    b L13_23
L13_22:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_98@PAGE
    add x15, x15, l_text_98@PAGEOFF
    sub x20, x29, #512
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_24:
L13_23:
L13_11:
    add x14, x28, #1
    mov x9, x15
    str x9, [sp, #56]
    mov x28, x14
    b L13_9
L13_12:
    sub x9, x29, #528
    str x9, [sp, #48]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #40]
    sub x23, x29, #576
    ldr x9, [sp, #56]
    movz x10, #16384, lsl #48
    cmp x9, x10
    b.ls L13_26
L13_25:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L13_27
L13_26:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #40]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L13_28
    b L13_29
L13_29:
    adrp x0, l_text_99@PAGE
    add x0, x0, l_text_99@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L13_28:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x1, [sp, #72]
    movz x2, #1
    sub x8, x29, #600
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #600
    add x24, x26, #16
    ldrb w24, [x24]
    ldr x9, [sp, #56]
    mov x10, #0
    cmp x9, x10
    cset w25, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w25, w24
    cbnz w24, L13_30
    b L13_31
L13_30:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L13_27
L13_31:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    ldr x9, [sp, #56]
    str x9, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L13_27:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L13_33
    b L13_32
L13_33:
    add x14, x23, #16
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_34:
L13_32:
    mov x10, x23
    ldr x11, [sp, #48]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #608
    mov x9, #0
    str x9, [x24]
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    ldr x9, [sp, #416]
    ldr x3, [x9]
    ldr x4, [x9, #8]
    bl _lb_process_13quote_windows
    ldr x9, [sp, #48]
    add x25, x9, #8
    sub x26, x29, #624
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L13_35:
    ldr x10, [sp, #408]
    cmp x28, x10
    b.hs L13_38
L13_36:
    lsl x14, x28, #3
    add x14, x21, x14
    ldr x23, [x14]
    ldr x14, [x24]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x22, [x25]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_100@PAGE
    add x0, x0, l_text_100@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x15
    movz x9, #32
    strb w9, [x14]
    ldr x14, [x24]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_101@PAGE
    add x0, x0, l_text_101@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x24]
    mov x0, x23
    bl _strlen
    mov x14, x0
    str x23, [x26]
    str x14, [x27]
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    mov x9, x26
    ldr x3, [x9]
    ldr x4, [x9, #8]
    bl _lb_process_13quote_windows
L13_37:
    add x14, x28, #1
    mov x28, x14
    b L13_35
L13_38:
    ldr x14, [x24]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #368]
    ldr x9, [sp, #368]
    ldr x22, [x9]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x15
    mov x9, #0
    strb w9, [x14]
    sub x22, x29, #640
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x14, [x9]
    ldr x23, [x24]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_103@PAGE
    add x0, x0, l_text_103@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x14
    b.lo 1f
    adrp x0, l_text_103@PAGE
    add x0, x0, l_text_103@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x23
    b.ls L13_39
L13_40:
    adrp x0, l_text_103@PAGE
    add x0, x0, l_text_103@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L13_39:
    sub x14, x29, #656
    str x15, [x14]
    add x14, x14, #8
    str x23, [x14]
    sub x14, x29, #672
    str x15, [x14]
    add x14, x14, #8
    str x23, [x14]
    adrp x9, _lb_process_failed@PAGE
    add x9, x9, _lb_process_failed@PAGEOFF
    str x9, [sp, #360]
    ldr x9, [sp, #360]
    ldr w14, [x9]
    mov x0, x15
    mov x1, x14
    sub x8, x29, #720
    bl _lb_12windows_text_wide
    sub x25, x29, #720
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L13_42
    b L13_41
L13_42:
    add x14, x25, #16
    sub x22, x29, #176
    add x15, x22, #40
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #64
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #736
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x23, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x23, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x23, x9, #8
    ldr x23, [x23]
    cbnz x23, L13_44
    b L13_43
L13_44:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_43:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_45:
L13_41:
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #8
    ldr x9, [x14]
    str x9, [sp, #352]
    ldr x9, [sp, #352]
    movz x10, #32768
    cmp x9, x10
    b.ls L13_47
L13_46:
    sub x25, x29, #176
    add x14, x25, #40
    ldr x9, [sp, #360]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_98@PAGE
    add x15, x15, l_text_98@PAGEOFF
    sub x26, x29, #752
    str x15, [x26]
    add x15, x26, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x25, #64
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #768
    ldr x15, [x22]
    ldr x9, [sp, #352]
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_104@PAGE
    add x0, x0, l_text_104@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    str x15, [x14]
    add x15, x14, #8
    str x26, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x26, x9, #8
    ldr x27, [x26]
    cbnz x27, L13_50
    b L13_49
L13_50:
    add x22, x27, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_49:
    sub x14, x29, #784
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x22, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x22, [x26]
    cbnz x22, L13_52
    b L13_51
L13_52:
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
L13_51:
    mov x1, x25
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_53:
    b L13_48
L13_47:
L13_48:
    sub x25, x29, #800
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #224
    ldr x26, [x14]
    mov x0, x26
    bl _strlen
    mov x14, x0
    sub x15, x29, #816
    str x26, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x10, #0
    cmp x14, x10
    b.ls L13_55
L13_54:
    ldr x9, [sp, #360]
    ldr w14, [x9]
    mov x0, x26
    mov x1, x14
    sub x8, x29, #864
    bl _lb_12windows_text_wide
    sub x15, x29, #864
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L13_58
    b L13_57
L13_58:
    add x14, x15, #16
    sub x24, x29, #176
    add x25, x24, #40
    mov x10, x14
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x24, #64
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #880
    ldr x25, [x22]
    ldr x9, [sp, #352]
    lsl x26, x9, #1
    str x25, [x14]
    add x25, x14, #8
    str x26, [x25]
    ldr x9, [sp, #40]
    ldr x25, [x9]
    ldr x9, [sp, #40]
    add x26, x9, #8
    ldr x27, [x26]
    cbnz x27, L13_60
    b L13_59
L13_60:
    add x15, x27, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x25
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_59:
    sub x14, x29, #896
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x22, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x22, [x26]
    cbnz x22, L13_62
    b L13_61
L13_62:
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
L13_61:
    mov x1, x24
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_63:
L13_57:
    mov x10, x15
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L13_56
L13_55:
L13_56:
    sub x26, x29, #912
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    sub x15, x29, #248
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L13_67
    b L13_65
L13_67:
    sub x27, x29, #928
    mov x10, x15
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L13_64:
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #976
    bl _lb_process_19environment_windows
    sub x15, x29, #976
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L13_69
    b L13_68
L13_69:
    add x14, x15, #16
    sub x24, x29, #176
    add x26, x24, #40
    mov x10, x14
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x24, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #992
    ldr x26, [x22]
    ldr x9, [sp, #352]
    lsl x27, x9, #1
    str x26, [x14]
    add x26, x14, #8
    str x27, [x26]
    ldr x9, [sp, #40]
    ldr x26, [x9]
    ldr x9, [sp, #40]
    add x27, x9, #8
    ldr x28, [x27]
    cbnz x28, L13_71
    b L13_70
L13_71:
    add x15, x28, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x26
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_70:
    sub x14, x29, #1008
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x22, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x22, [x27]
    cbnz x22, L13_73
    b L13_72
L13_73:
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
L13_72:
    mov x1, x24
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_74:
L13_68:
    mov x10, x15
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L13_66
L13_65:
L13_66:
    sub x8, x29, #1048
    bl _lb_process_17temporary_windows
    sub x15, x29, #1048
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_76
    b L13_75
L13_76:
    add x14, x15, #8
    sub x9, x29, #176
    str x9, [sp, #344]
    ldr x9, [sp, #344]
    add x27, x9, #40
    mov x10, x14
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #344]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1064
    ldr x27, [x22]
    ldr x9, [sp, #352]
    lsl x28, x9, #1
    str x27, [x14]
    add x27, x14, #8
    str x28, [x27]
    ldr x9, [sp, #40]
    ldr x27, [x9]
    ldr x9, [sp, #40]
    add x28, x9, #8
    ldr x24, [x28]
    cbnz x24, L13_78
    b L13_77
L13_78:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x27
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_77:
    sub x14, x29, #1080
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x22, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x22, [x28]
    cbnz x22, L13_80
    b L13_79
L13_80:
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
L13_79:
    ldr x1, [sp, #344]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_81:
L13_75:
    ldr x9, [x15]
    str x9, [sp, #336]
    sub x8, x29, #1120
    bl _lb_process_17temporary_windows
    sub x27, x29, #1120
    add x14, x27, #32
    ldrb w14, [x14]
    cbnz w14, L13_83
    b L13_82
L13_83:
    add x14, x27, #8
    sub x9, x29, #176
    str x9, [sp, #328]
    ldr x9, [sp, #328]
    add x15, x9, #40
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #328]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1136
    ldr x15, [x22]
    ldr x9, [sp, #352]
    lsl x9, x9, #1
    str x9, [sp, #320]
    str x15, [x14]
    add x15, x14, #8
    ldr x9, [sp, #320]
    str x9, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #312]
    ldr x9, [sp, #312]
    ldr x28, [x9]
    cbnz x28, L13_85
    b L13_84
L13_85:
    add x22, x28, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_84:
    sub x14, x29, #1152
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x22, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #312]
    ldr x22, [x9]
    cbnz x22, L13_87
    b L13_86
L13_87:
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
L13_86:
    ldr x1, [sp, #328]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_88:
L13_82:
    ldr x9, [x27]
    str x9, [sp, #304]
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    adrp x15, l_text_110@PAGE
    add x15, x15, l_text_110@PAGEOFF
    mov x0, x14
    mov x1, x15
    bl _fopen
    str x0, [sp, #32]
    ldr x9, [sp, #32]
    cbnz x9, L13_89
    b L13_90
L13_89:
    b L13_91
L13_90:
    sub x9, x29, #176
    str x9, [sp, #296]
    ldr x9, [sp, #296]
    add x14, x9, #40
    ldr x9, [sp, #360]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_111@PAGE
    add x15, x15, l_text_111@PAGEOFF
    sub x27, x29, #1168
    str x15, [x27]
    add x15, x27, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x27
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #296]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1184
    ldr x15, [x22]
    ldr x9, [sp, #352]
    lsl x27, x9, #1
    str x15, [x14]
    add x15, x14, #8
    str x27, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x27, x9, #8
    ldr x21, [x27]
    cbnz x21, L13_93
    b L13_92
L13_93:
    add x22, x21, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_92:
    sub x14, x29, #1200
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x21, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x21, [x27]
    cbnz x21, L13_95
    b L13_94
L13_95:
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
L13_94:
    ldr x1, [sp, #296]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_96:
L13_91:
    ldr x0, [sp, #336]
    sub x8, x29, #1240
    bl _lb_process_12inherit_file
    sub x15, x29, #1240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_98
    b L13_97
L13_98:
    add x14, x15, #8
    sub x9, x29, #176
    str x9, [sp, #288]
    ldr x9, [sp, #288]
    add x9, x9, #40
    str x9, [sp, #280]
    mov x10, x14
    ldr x11, [sp, #280]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #288]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1256
    ldr x9, [x22]
    str x9, [sp, #272]
    ldr x9, [sp, #352]
    lsl x21, x9, #1
    ldr x9, [sp, #272]
    str x9, [x14]
    add x9, x14, #8
    str x9, [sp, #264]
    ldr x10, [sp, #264]
    str x21, [x10]
    ldr x9, [sp, #40]
    ldr x21, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #256]
    ldr x9, [sp, #256]
    ldr x27, [x9]
    cbnz x27, L13_100
    b L13_99
L13_100:
    add x15, x27, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_99:
    sub x14, x29, #1272
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x21, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #256]
    ldr x21, [x9]
    cbnz x21, L13_102
    b L13_101
L13_102:
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
L13_101:
    ldr x1, [sp, #288]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_103:
L13_97:
    ldr x21, [x15]
    ldr x0, [sp, #304]
    sub x8, x29, #1312
    bl _lb_process_12inherit_file
    sub x27, x29, #1312
    add x14, x27, #32
    ldrb w14, [x14]
    cbnz w14, L13_105
    b L13_104
L13_105:
    add x14, x27, #8
    sub x9, x29, #176
    str x9, [sp, #248]
    ldr x9, [sp, #248]
    add x15, x9, #40
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #248]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1328
    ldr x15, [x22]
    ldr x9, [sp, #352]
    lsl x9, x9, #1
    str x9, [sp, #240]
    str x15, [x14]
    add x15, x14, #8
    ldr x9, [sp, #240]
    str x9, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #232]
    ldr x9, [sp, #232]
    ldr x19, [x9]
    cbnz x19, L13_107
    b L13_106
L13_107:
    add x21, x19, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_106:
    sub x14, x29, #1344
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #232]
    ldr x19, [x9]
    cbnz x19, L13_109
    b L13_108
L13_109:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_108:
    ldr x1, [sp, #248]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_110:
L13_104:
    ldr x19, [x27]
    ldr x0, [sp, #32]
    sub x8, x29, #1384
    bl _lb_process_12inherit_file
    sub x15, x29, #1384
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_112
    b L13_111
L13_112:
    add x14, x15, #8
    sub x9, x29, #176
    str x9, [sp, #224]
    ldr x9, [sp, #224]
    add x20, x9, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #224]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1400
    ldr x20, [x22]
    ldr x9, [sp, #352]
    lsl x9, x9, #1
    str x9, [sp, #216]
    str x20, [x14]
    add x20, x14, #8
    ldr x9, [sp, #216]
    str x9, [x20]
    ldr x9, [sp, #40]
    ldr x20, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #208]
    ldr x9, [sp, #208]
    ldr x27, [x9]
    cbnz x27, L13_114
    b L13_113
L13_114:
    add x15, x27, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_113:
    sub x14, x29, #1416
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #208]
    ldr x19, [x9]
    cbnz x19, L13_116
    b L13_115
L13_116:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_115:
    ldr x1, [sp, #224]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_117:
L13_111:
    ldr x20, [x15]
    sub x27, x29, #1520
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    str xzr, [x11, #96]
    movz x9, #104
    str w9, [x27]
    add x14, x27, #60
    movz x9, #256
    str w9, [x14]
    add x14, x27, #80
    str x20, [x14]
    add x14, x27, #88
    str x21, [x14]
    add x14, x27, #96
    str x19, [x14]
    sub x23, x29, #1544
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x24, [x22]
    sub x14, x29, #264
    ldr x9, [x14]
    str x9, [sp, #200]
    ldr x9, [sp, #200]
    mov x10, #0
    cmp x9, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w9, eq
    str w9, [sp, #192]
    ldr w9, [sp, #192]
    cbnz w9, L13_121
    b L13_122
L13_121:
    movz x9, #4
    mov w14, w9
    b L13_123
L13_122:
    mov x9, #0
    mov w14, w9
L13_123:
    movz x10, #1024
    movk x10, #2048, lsl #16
    orr w15, w14, w10
    add x22, x26, #8
    ldr x22, [x22]
    mov x10, #0
    cmp x22, x10
    b.ls L13_125
L13_124:
    ldr x14, [x26]
    b L13_126
L13_125:
    mov x9, #0
    mov x14, x9
L13_126:
    add x22, x25, #8
    ldr x22, [x22]
    mov x10, #0
    cmp x22, x10
    b.ls L13_128
L13_127:
    ldr x22, [x25]
    b L13_129
L13_128:
    mov x9, #0
    mov x22, x9
L13_129:
    movz x16, #16
    sub sp, sp, x16
    mov x9, x27
    str x9, [sp, #0]
    mov x9, x23
    str x9, [sp, #8]
    mov x0, #0
    mov x1, x24
    mov x2, #0
    mov x3, #0
    movz x4, #1
    mov x5, x15
    mov x6, x14
    mov x7, x22
    bl _CreateProcessW
    movz x16, #16
    add sp, sp, x16
    mov w28, w0
    mov x10, #0
    cmp w28, w10
    b.ne L13_119
L13_118:
    sub x22, x29, #176
    add x14, x22, #40
    ldr x9, [sp, #360]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_116@PAGE
    add x15, x15, l_text_116@PAGEOFF
    sub x23, x29, #1560
    str x15, [x23]
    add x15, x23, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1576
    ldr x9, [sp, #352]
    lsl x15, x9, #1
    str x24, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x23, x9, #8
    ldr x27, [x23]
    cbnz x27, L13_131
    b L13_130
L13_131:
    add x19, x27, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_130:
    sub x14, x29, #1592
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x23]
    cbnz x19, L13_133
    b L13_132
L13_133:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_132:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_134:
    b L13_120
L13_119:
L13_120:
    ldr x22, [x23]
    cbnz x22, L13_135
    b L13_136
L13_135:
    b L13_137
L13_136:
    adrp x14, l_text_118@PAGE
    add x14, x14, l_text_118@PAGEOFF
    sub x15, x29, #1608
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_119@PAGE
    add x0, x0, l_text_119@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L13_137:
    add x14, x23, #8
    ldr x27, [x14]
    cbnz x27, L13_138
    b L13_139
L13_138:
    b L13_140
L13_139:
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    sub x15, x29, #1624
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    adrp x14, l_text_121@PAGE
    add x14, x14, l_text_121@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_121@PAGE
    add x0, x0, l_text_121@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L13_140:
    ldr x9, [sp, #200]
    cbnz x9, L13_144
    b L13_142
L13_144:
L13_141:
    mov x0, x22
    mov x1, x27
    ldr x2, [sp, #336]
    ldr x3, [sp, #304]
    ldr x4, [sp, #200]
    sub x8, x29, #1656
    bl _lb_process_15monitor_windows
    sub x15, x29, #1656
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L13_146
    b L13_145
L13_146:
    sub x9, x29, #176
    str x9, [sp, #184]
    ldr x9, [sp, #184]
    add x14, x9, #40
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #184]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1672
    ldr x9, [sp, #352]
    lsl x9, x9, #1
    str x9, [sp, #176]
    str x24, [x14]
    add x23, x14, #8
    ldr x9, [sp, #176]
    str x9, [x23]
    ldr x9, [sp, #40]
    ldr x23, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #168]
    ldr x9, [sp, #168]
    ldr x28, [x9]
    cbnz x28, L13_148
    b L13_147
L13_148:
    add x15, x28, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_147:
    sub x14, x29, #1688
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #168]
    ldr x19, [x9]
    cbnz x19, L13_150
    b L13_149
L13_150:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_149:
    ldr x1, [sp, #184]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_151:
L13_145:
    b L13_143
L13_142:
    mov x0, x22
    movz x1, #65535
    movk x1, #65535, lsl #16
    bl _WaitForSingleObject
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L13_153
L13_152:
    mov x0, x22
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x0, x22
    movz x1, #65535
    movk x1, #65535, lsl #16
    bl _WaitForSingleObject
    mov w14, w0
    sub x9, x29, #176
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x14, x9, #40
    ldr x9, [sp, #360]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_123@PAGE
    add x15, x15, l_text_123@PAGEOFF
    sub x28, x29, #1704
    str x15, [x28]
    add x15, x28, #8
    movz x9, #30
    str x9, [x15]
    add x14, x14, #8
    mov x10, x28
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #160]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1720
    ldr x9, [sp, #352]
    lsl x15, x9, #1
    str x24, [x14]
    add x28, x14, #8
    str x15, [x28]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x28, x9, #8
    ldr x23, [x28]
    cbnz x23, L13_156
    b L13_155
L13_156:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_155:
    sub x14, x29, #1736
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x28]
    cbnz x19, L13_158
    b L13_157
L13_158:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_157:
    ldr x1, [sp, #160]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_159:
    b L13_154
L13_153:
L13_154:
L13_143:
    sub x9, x29, #1740
    str x9, [sp, #152]
    mov x9, #0
    ldr x10, [sp, #152]
    str w9, [x10]
    mov x0, x22
    ldr x1, [sp, #152]
    bl _GetExitCodeProcess
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L13_161
L13_160:
    sub x9, x29, #176
    str x9, [sp, #144]
    ldr x9, [sp, #144]
    add x14, x9, #40
    ldr x9, [sp, #360]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_125@PAGE
    add x15, x15, l_text_125@PAGEOFF
    sub x28, x29, #1760
    str x15, [x28]
    add x15, x28, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x28
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #144]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1776
    ldr x9, [sp, #352]
    lsl x15, x9, #1
    str x24, [x14]
    add x28, x14, #8
    str x15, [x28]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x28, x9, #8
    ldr x23, [x28]
    cbnz x23, L13_164
    b L13_163
L13_164:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_163:
    sub x14, x29, #1792
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x28]
    cbnz x19, L13_166
    b L13_165
L13_166:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_165:
    ldr x1, [sp, #144]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_167:
    b L13_162
L13_161:
L13_162:
    ldr w9, [sp, #192]
    cbnz w9, L13_168
    b L13_169
L13_168:
    sub x23, x29, #1832
    ldr x9, [sp, #152]
    ldr w14, [x9]
    mov w14, w14
    str w14, [x23]
    adrp x9, l_text_127@PAGE
    add x9, x9, l_text_127@PAGEOFF
    str x9, [sp, #136]
    sub x14, x29, #1848
    ldr x9, [sp, #136]
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    add x15, x23, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #1864
    ldr x9, [sp, #136]
    str x9, [x14]
    add x15, x14, #8
    mov x9, #0
    str x9, [x15]
    add x15, x23, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #176
    str x9, [sp, #128]
    mov x10, x23
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x9, [sp, #128]
    add x14, x9, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1880
    ldr x9, [sp, #352]
    lsl x15, x9, #1
    str x24, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x23, x9, #8
    ldr x28, [x23]
    cbnz x28, L13_172
    b L13_171
L13_172:
    add x19, x28, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_171:
    sub x14, x29, #1896
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x23]
    cbnz x19, L13_174
    b L13_173
L13_174:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_173:
    ldr x1, [sp, #128]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_175:
    b L13_170
L13_169:
L13_170:
    sub x9, x29, #1912
    str x9, [sp, #24]
    ldr x0, [sp, #336]
    sub x8, x29, #1960
    bl _lb_process_15capture_windows
    sub x15, x29, #1960
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L13_177
    b L13_176
L13_177:
    add x14, x15, #16
    sub x9, x29, #176
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #40
    str x9, [sp, #112]
    mov x10, x14
    ldr x11, [sp, #112]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #120]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #1976
    ldr x9, [sp, #352]
    lsl x9, x9, #1
    str x9, [sp, #104]
    str x24, [x14]
    add x23, x14, #8
    ldr x9, [sp, #104]
    str x9, [x23]
    ldr x9, [sp, #40]
    ldr x23, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    ldr x28, [x9]
    cbnz x28, L13_179
    b L13_178
L13_179:
    add x15, x28, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_178:
    sub x14, x29, #1992
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #96]
    ldr x19, [x9]
    cbnz x19, L13_181
    b L13_180
L13_181:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_180:
    ldr x1, [sp, #120]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_182:
L13_176:
    mov x10, x15
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #2008
    str x9, [sp, #16]
    ldr x0, [sp, #304]
    sub x8, x29, #2096
    bl _lb_process_15capture_windows
    sub x28, x29, #2096
    add x14, x28, #40
    ldrb w14, [x14]
    cbnz w14, L13_186
    b L13_185
L13_186:
    add x14, x28, #16
    sub x9, x29, #2048
    str x9, [sp, #88]
    mov x10, x14
    ldr x11, [sp, #88]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L13_183
L13_185:
    sub x9, x29, #2024
    str x9, [sp, #80]
    mov x10, x28
    ldr x11, [sp, #80]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L13_184
L13_183:
    ldr x9, [sp, #24]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_release
    sub x9, x29, #176
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x14, x9, #40
    ldr x9, [sp, #88]
    ldr w15, [x9]
    str w15, [x14]
    ldr x9, [sp, #88]
    add x15, x9, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #72]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #2112
    ldr x9, [sp, #352]
    lsl x15, x9, #1
    str x24, [x14]
    add x28, x14, #8
    str x15, [x28]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x28, x9, #8
    ldr x23, [x28]
    cbnz x23, L13_188
    b L13_187
L13_188:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_187:
    sub x14, x29, #2128
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x28]
    cbnz x19, L13_190
    b L13_189
L13_190:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_189:
    ldr x1, [sp, #72]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_191:
L13_184:
    ldr x10, [sp, #80]
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #2168
    ldr x9, [sp, #152]
    ldr w14, [x9]
    mov w14, w14
    str w14, [x23]
    add x14, x23, #8
    ldr x10, [sp, #24]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #24
    ldr x10, [sp, #16]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #176
    str x9, [sp, #64]
    mov x10, x23
    ldr x11, [sp, #64]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x9, [sp, #64]
    add x14, x9, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x27
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x20
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    ldr x0, [sp, #32]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #304]
    bl _fclose
    mov w14, w0
    ldr x0, [sp, #336]
    bl _fclose
    mov w14, w0
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #2184
    ldr x9, [sp, #352]
    lsl x15, x9, #1
    str x24, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x23, x9, #8
    ldr x28, [x23]
    cbnz x28, L13_193
    b L13_192
L13_193:
    add x19, x28, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_192:
    sub x14, x29, #2200
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #368]
    ldr x19, [x9]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x23]
    cbnz x19, L13_195
    b L13_194
L13_195:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_194:
    ldr x1, [sp, #64]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2624]
    ldr x20, [sp, #2616]
    ldr x21, [sp, #2608]
    ldr x22, [sp, #2600]
    ldr x23, [sp, #2592]
    ldr x24, [sp, #2584]
    ldr x25, [sp, #2576]
    ldr x26, [sp, #2568]
    ldr x27, [sp, #2560]
    ldr x28, [sp, #2552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_196:
    mov x0, x14
    bl _CloseHandle
    mov w14, w0
    mov x14, x25
    mov x0, x14
    bl _CloseHandle
    mov w14, w0
    mov x14, x24
    mov x0, x14
    bl _CloseHandle
    mov w14, w0
    mov x14, x23
    mov x0, x14
    bl _CloseHandle
    mov w14, w0
    mov x14, x22
    mov x0, x14
    bl _CloseHandle
    mov w14, w0
    mov x14, x21
    mov x0, x14
    bl _fclose
    mov w14, w0
    mov x14, x20
    mov x0, x14
    bl _fclose
    mov w14, w0
    mov x14, x19
    mov x0, x14
    bl _fclose
    mov w14, w0
    sub x14, x29, #912
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #800
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_15release_storage_0g1_u16
    sub x14, x29, #640
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #2216
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_131@PAGE
    add x0, x0, l_text_131@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L13_198
    b L13_197
L13_198:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_197:
    sub x14, x29, #528
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #2232
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_131@PAGE
    add x0, x0, l_text_131@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L13_200
    b L13_199
L13_200:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_199:
    adrp x0, l_text_131@PAGE
    add x0, x0, l_text_131@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_TerminationStatus_requested
_lb_process_TerminationStatus_requested:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    adrp x14, _lb_process_22termination_generation@PAGE
    add x14, x14, _lb_process_22termination_generation@PAGEOFF
    mov x9, x14
    ldar x9, [x9]
    mov x14, x9
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_1:
    adrp x0, l_text_132@PAGE
    add x0, x0, l_text_132@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Termination_init
_lb_process_Termination_init:
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
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x20, [x9]
    adrp x19, _lb_process_16termination_lock@PAGE
    add x19, x19, _lb_process_16termination_lock@PAGEOFF
    mov x0, x19
    bl _lb_sync_Mutex_lock
    adrp x14, _lb_process_19termination_closing@PAGE
    add x14, x14, _lb_process_19termination_closing@PAGEOFF
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L15_1
    b L15_2
L15_1:
    sub x20, x29, #112
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_133@PAGE
    add x14, x14, l_text_133@PAGEOFF
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_sync_Mutex_unlock
    mov x1, x20
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_4:
    b L15_3
L15_2:
L15_3:
    sub x21, x29, #144
    mov x11, x21
    str xzr, [x11, #0]
    adrp x14, _lb_process_22termination_generation@PAGE
    add x14, x14, _lb_process_22termination_generation@PAGEOFF
    mov x9, x14
    ldar x9, [x9]
    mov x14, x9
    str x14, [x21]
    mov x10, x21
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    adrp x21, _lb_process_18termination_owners@PAGE
    add x21, x21, _lb_process_18termination_owners@PAGEOFF
    mov x9, x21
    ldr x9, [x9]
    mov x14, x9
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_134@PAGE
    add x0, x0, l_text_134@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    mov x10, x21
    stlr x9, [x10]
    mov x10, #0
    cmp x14, x10
    b.ne L15_6
L15_5:
    adrp x22, _lb_process_18previous_interrupt@PAGE
    add x22, x22, _lb_process_18previous_interrupt@PAGEOFF
    adrp x23, _lb_process_16interrupt_signal@PAGE
    add x23, x23, _lb_process_16interrupt_signal@PAGEOFF
    ldrsw x14, [x23]
    adrp x24, _lb_process_20termination_received@GOTPAGE
    ldr x24, [x24, _lb_process_20termination_received@GOTPAGEOFF]
    mov x0, x14
    mov x1, x24
    bl _signal
    mov x14, x0
    str x14, [x22]
    sub x10, x29, #344
    str x14, [x10]
    cbnz x14, L15_27
    b L15_25
L15_27:
L15_24:
    movn x10, #0
    cmp x14, x10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #352
    str w15, [x10]
    b L15_30
L15_28:
    b L15_26
L15_25:
L15_26:
    mov x9, #0
    sub x10, x29, #352
    str w9, [x10]
    mov x9, #0
    mov w15, w9
    b L15_30
L15_29:
    adrp x0, l_text_136@PAGE
    add x0, x0, l_text_136@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L15_30:
    cbnz w15, L15_16
    b L15_17
L15_16:
    sub x22, x29, #296
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    adrp x14, l_text_137@PAGE
    add x14, x14, l_text_137@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #264
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L15_38
L15_19:
    b L15_18
L15_17:
L15_18:
    adrp x25, _lb_process_18previous_terminate@PAGE
    add x25, x25, _lb_process_18previous_terminate@PAGEOFF
    adrp x14, _lb_process_16terminate_signal@PAGE
    add x14, x14, _lb_process_16terminate_signal@PAGEOFF
    ldrsw x14, [x14]
    mov x0, x14
    mov x1, x24
    bl _signal
    mov x14, x0
    str x14, [x25]
    sub x10, x29, #344
    str x14, [x10]
    cbnz x14, L15_34
    b L15_32
L15_34:
L15_31:
    movn x10, #0
    cmp x14, x10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #360
    str w15, [x10]
    b L15_37
L15_35:
    b L15_33
L15_32:
L15_33:
    mov x9, #0
    sub x10, x29, #360
    str w9, [x10]
    mov x9, #0
    mov w15, w9
    b L15_37
L15_36:
    adrp x0, l_text_136@PAGE
    add x0, x0, l_text_136@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L15_37:
    cbnz w15, L15_20
    b L15_21
L15_20:
    ldrsw x14, [x23]
    ldr x15, [x22]
    mov x0, x14
    mov x1, x15
    bl _signal
    mov x14, x0
    sub x24, x29, #296
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    adrp x14, l_text_138@PAGE
    add x14, x14, l_text_138@PAGEOFF
    sub x15, x29, #328
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x24, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x24
    sub x11, x29, #264
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L15_38
L15_23:
    b L15_22
L15_21:
L15_22:
    sub x14, x29, #296
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #264
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L15_38:
    sub x15, x29, #264
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L15_14
    b L15_13
L15_14:
    sub x22, x29, #232
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L15_39
L15_15:
L15_13:
    sub x14, x29, #232
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L15_39:
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L15_11
    b L15_10
L15_11:
    sub x20, x29, #168
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L15_8
L15_10:
    b L15_9
L15_8:
    mov x9, #0
    mov x10, x21
    stlr x9, [x10]
    sub x22, x29, #112
    ldr w14, [x20]
    str w14, [x22]
    add x14, x20, #8
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_sync_Mutex_unlock
    mov x1, x22
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_12:
L15_9:
    b L15_7
L15_6:
L15_7:
    add x14, x20, #8
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_sync_Mutex_unlock
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Termination_status
_lb_process_Termination_status:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_1:
    adrp x0, l_text_135@PAGE
    add x0, x0, l_text_135@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Termination_close
_lb_process_Termination_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    add x19, x14, #8
    ldrb w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne L17_2
L17_1:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_4:
    b L17_3
L17_2:
L17_3:
    adrp x20, _lb_process_16termination_lock@PAGE
    add x20, x20, _lb_process_16termination_lock@PAGEOFF
    mov x0, x20
    bl _lb_sync_Mutex_lock
    mov x9, #0
    strb w9, [x19]
    adrp x14, _lb_process_18termination_owners@PAGE
    add x14, x14, _lb_process_18termination_owners@PAGEOFF
    movz x10, #1
    mov x12, x14
1:
    ldaxr x9, [x12]
    sub x11, x9, x10
    stlxr w13, x11, [x12]
    cbnz w13, 1b
    mov x14, x9
    movz x10, #1
    cmp x14, x10
    b.ne L17_6
L17_5:
    adrp x14, _lb_process_16interrupt_signal@PAGE
    add x14, x14, _lb_process_16interrupt_signal@PAGEOFF
    ldrsw x14, [x14]
    adrp x15, _lb_process_18previous_interrupt@PAGE
    add x15, x15, _lb_process_18previous_interrupt@PAGEOFF
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _signal
    mov x14, x0
    adrp x14, _lb_process_16terminate_signal@PAGE
    add x14, x14, _lb_process_16terminate_signal@PAGEOFF
    ldrsw x14, [x14]
    adrp x15, _lb_process_18previous_terminate@PAGE
    add x15, x15, _lb_process_18previous_terminate@PAGEOFF
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _signal
    mov x14, x0
L17_8:
L17_9:
    b L17_7
L17_6:
L17_7:
    mov x0, x20
    bl _lb_sync_Mutex_unlock
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_20termination_received
_lb_process_20termination_received:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    adrp x14, _lb_process_22termination_generation@PAGE
    add x14, x14, _lb_process_22termination_generation@PAGEOFF
    movz x10, #1
    mov x12, x14
1:
    ldxr x9, [x12]
    add x11, x9, x10
    stlxr w13, x11, [x12]
    cbnz w13, 1b
    mov x14, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_28termination_console_received
_lb_process_28termination_console_received:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #56
    str w0, [x16]
    sub x14, x29, #56
    ldr w14, [x14]
    adrp x15, _lb_process_13console_close@PAGE
    add x15, x15, _lb_process_13console_close@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    cbnz w15, L19_25
    b L19_1
L19_25:
    mov w19, w15
    b L19_2
L19_1:
    adrp x15, _lb_process_14console_logoff@PAGE
    add x15, x15, _lb_process_14console_logoff@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w19, eq
L19_2:
    and w15, w19, #255
    cbnz w15, L19_26
    b L19_3
L19_26:
    mov w19, w15
    b L19_4
L19_3:
    adrp x15, _lb_process_16console_shutdown@PAGE
    add x15, x15, _lb_process_16console_shutdown@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w19, eq
L19_4:
    and w15, w19, #255
    and w15, w15, #255
    mov x10, #0
    cmp w15, w10
    cset w20, eq
    cbnz w20, L19_8
    b L19_27
L19_27:
    mov w19, w20
    b L19_9
L19_8:
    adrp x19, _lb_process_17console_interrupt@PAGE
    add x19, x19, _lb_process_17console_interrupt@PAGEOFF
    ldr w19, [x19]
    cmp w14, w19
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
L19_9:
    and w20, w19, #255
    cbnz w20, L19_10
    b L19_28
L19_28:
    mov w14, w20
    b L19_11
L19_10:
    adrp x19, _lb_process_13console_break@PAGE
    add x19, x19, _lb_process_13console_break@PAGEOFF
    ldr w19, [x19]
    cmp w14, w19
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov w14, w19
L19_11:
    and w19, w14, #255
    cbnz w19, L19_5
    b L19_6
L19_5:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_12:
    b L19_7
L19_6:
L19_7:
    cbnz w15, L19_13
    b L19_14
L19_13:
    adrp x14, _lb_process_19termination_closing@PAGE
    add x14, x14, _lb_process_19termination_closing@PAGEOFF
    movz x9, #1
    mov x10, x14
    stlrb w9, [x10]
    b L19_15
L19_14:
L19_15:
    adrp x14, _lb_process_22termination_generation@PAGE
    add x14, x14, _lb_process_22termination_generation@PAGEOFF
    movz x10, #1
    mov x12, x14
1:
    ldxr x9, [x12]
    add x11, x9, x10
    stlxr w13, x11, [x12]
    cbnz w13, 1b
    mov x14, x9
    cbnz w15, L19_16
    b L19_17
L19_16:
    bl _GetTickCount64
    mov x19, x0
    adrp x20, _lb_process_18termination_owners@PAGE
    add x20, x20, _lb_process_18termination_owners@PAGEOFF
    adrp x21, _lb_process_26console_acknowledgement_ms@PAGE
    add x21, x21, _lb_process_26console_acknowledgement_ms@PAGEOFF
L19_19:
    mov x9, x20
    ldar x9, [x9]
    mov x14, x9
    mov x10, #0
    cmp x14, x10
    cset w14, hi
    cbnz w14, L19_22
    b L19_29
L19_29:
    mov w15, w14
    b L19_23
L19_22:
    bl _GetTickCount64
    mov x14, x0
    sub x14, x14, x19
    ldr x15, [x21]
    cmp x14, x15
    cset w15, lo
L19_23:
    and w14, w15, #255
    cbnz w14, L19_20
    b L19_21
L19_20:
    movz x0, #1
    bl _Sleep
    b L19_19
L19_21:
    b L19_18
L19_17:
L19_18:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_24:
    adrp x0, l_text_139@PAGE
    add x0, x0, l_text_139@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_27termination_windows_install
_lb_process_27termination_windows_install:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #48]
    adrp x14, _lb_process_28termination_console_received@GOTPAGE
    ldr x14, [x14, _lb_process_28termination_console_received@GOTPAGEOFF]
    mov x0, x14
    movz x1, #1
    bl _SetConsoleCtrlHandler
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L20_2
L20_1:
    sub x19, x29, #64
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_140@PAGE
    add x14, x14, l_text_140@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #54
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
    ldr x19, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_4:
    b L20_3
L20_2:
L20_3:
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
    ldr x19, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_27termination_windows_restore
_lb_process_27termination_windows_restore:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_process_28termination_console_received@GOTPAGE
    ldr x14, [x14, _lb_process_28termination_console_received@GOTPAGEOFF]
    mov x0, x14
    mov x1, #0
    bl _SetConsoleCtrlHandler
    mov w14, w0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_16environment_name
_lb_process_16environment_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #112
    str x0, [x16]
    sub x19, x29, #128
    sub x14, x29, #112
    ldr x20, [x14]
    mov x0, x20
    bl _strlen
    mov x21, x0
    sub x14, x29, #144
    str x20, [x14]
    add x15, x14, #8
    str x21, [x15]
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x14, x9
L22_1:
    cmp x14, x21
    b.hs L22_4
L22_2:
    add x15, x20, x14
    ldrb w15, [x15]
    movz x10, #61
    cmp w15, w10
    b.ne L22_6
L22_5:
    mov x10, #0
    cmp x14, x10
    b.ne L22_9
L22_8:
    b L22_4
L22_11:
    b L22_10
L22_9:
L22_10:
    add x15, x21, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_143@PAGE
    add x0, x0, l_text_143@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_143@PAGE
    add x0, x0, l_text_143@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L22_12
L22_13:
    adrp x0, l_text_143@PAGE
    add x0, x0, l_text_143@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L22_12:
    sub x15, x29, #160
    str x20, [x15]
    add x15, x15, #8
    str x14, [x15]
    sub x15, x29, #176
    str x20, [x15]
    add x19, x15, #8
    str x14, [x19]
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #40
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_14:
    b L22_7
L22_6:
L22_7:
L22_3:
    add x15, x14, #1
    mov x14, x15
    b L22_1
L22_4:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_144@PAGE
    add x15, x15, l_text_144@PAGEOFF
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #63
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_15:
    adrp x0, l_text_145@PAGE
    add x0, x0, l_text_145@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_17environment_posix
_lb_process_17environment_posix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #848
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #816]
    str x20, [sp, #808]
    str x21, [sp, #800]
    str x22, [sp, #792]
    str x23, [sp, #784]
    str x24, [sp, #776]
    str x25, [sp, #768]
    str x26, [sp, #760]
    str x27, [sp, #752]
    str x28, [sp, #744]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    sub x9, x29, #168
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x14, x9, #8
    ldr x9, [x14]
    str x9, [sp, #152]
    sub x26, x29, #200
    sub x27, x29, #248
    add x9, x27, #40
    str x9, [sp, #136]
    sub x28, x29, #296
    add x22, x28, #40
    add x23, x26, #8
    add x24, x28, #8
    mov x9, #0
    mov x25, x9
L23_1:
    ldr x10, [sp, #152]
    cmp x25, x10
    b.hs L23_4
L23_2:
    ldr x9, [sp, #160]
    ldr x9, [x9]
    str x9, [sp, #144]
    lsl x14, x25, #3
    ldr x9, [sp, #144]
    add x14, x9, x14
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #248
    bl _lb_process_16environment_name
    ldr x9, [sp, #136]
    ldrb w14, [x9]
    cbnz w14, L23_6
    b L23_5
L23_6:
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_7:
L23_5:
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x21, x9
L23_8:
    cmp x21, x25
    b.hs L23_11
L23_9:
    lsl x14, x21, #3
    ldr x9, [sp, #144]
    add x14, x9, x14
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #296
    bl _lb_process_16environment_name
    ldrb w14, [x22]
    cbnz w14, L23_16
    b L23_15
L23_16:
    add x14, x28, #16
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_17:
L23_15:
    ldr x14, [x23]
    ldr x15, [x24]
    cmp x14, x15
    cset w15, eq
    cbnz w15, L23_18
    b L23_77
L23_77:
    mov w14, w15
    b L23_19
L23_18:
    ldr x15, [x26]
    ldr x20, [x28]
    mov x0, x15
    mov x1, x20
    mov x2, x14
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L23_19:
    and w15, w14, #255
    cbnz w15, L23_12
    b L23_13
L23_12:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_148@PAGE
    add x15, x15, l_text_148@PAGEOFF
    sub x20, x29, #312
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_20:
    b L23_14
L23_13:
L23_14:
L23_10:
    add x14, x21, #1
    mov x21, x14
    b L23_8
L23_11:
L23_3:
    add x14, x25, #1
    mov x25, x14
    b L23_1
L23_4:
    sub x14, x29, #184
    ldr x9, [x14]
    str x9, [sp, #128]
    mov x9, #0
    str x9, [sp, #32]
L23_21:
    ldr x9, [sp, #32]
    lsl x14, x9, #3
    ldr x9, [sp, #128]
    add x14, x9, x14
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L23_23
L23_22:
    ldr x9, [sp, #32]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_149@PAGE
    add x0, x0, l_text_149@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    str x9, [sp, #32]
    b L23_21
L23_23:
    sub x22, x29, #320
    ldr x0, [sp, #32]
    ldr x1, [sp, #152]
    movz x2, #64
    mov x3, x22
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x23, x29, #336
    ldr x15, [x22]
    str x15, [x23]
    add x22, x23, #8
    strb w14, [x22]
    ldrb w14, [x22]
    cbnz w14, L23_24
    b L23_25
L23_24:
    b L23_26
L23_25:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    sub x20, x29, #352
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_27:
L23_26:
    sub x22, x29, #360
    mov x0, x15
    movz x1, #1
    movz x2, #64
    mov x3, x22
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x23, x29, #376
    ldr x22, [x22]
    str x22, [x23]
    add x23, x23, #8
    strb w14, [x23]
    ldrb w14, [x23]
    cbnz w14, L23_28
    b L23_29
L23_28:
    b L23_30
L23_29:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    sub x20, x29, #392
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_31:
L23_30:
    sub x23, x29, #408
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #24]
    sub x25, x29, #456
    movz x10, #2048, lsl #48
    cmp x22, x10
    b.ls L23_33
L23_32:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L23_34
L23_33:
    lsl x26, x22, #3
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L23_35
    b L23_36
L23_36:
    adrp x0, l_text_151@PAGE
    add x0, x0, l_text_151@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L23_35:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x26
    movz x2, #8
    sub x8, x29, #480
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #480
    add x27, x24, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x26, x10
    cset w28, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w27, w28, w27
    cbnz w27, L23_37
    b L23_38
L23_37:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L23_34
L23_38:
    ldr x14, [x24]
    str x14, [x25]
    add x14, x25, #8
    str x22, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L23_34:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L23_40
    b L23_39
L23_40:
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_41:
L23_39:
    mov x10, x25
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x28, x29, #512
    sub x9, x29, #600
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x22, x9, #40
    sub x9, x29, #528
    str x9, [sp, #120]
    ldr x9, [sp, #8]
    add x24, x9, #16
    sub x26, x29, #552
    adrp x9, l_text_127@PAGE
    add x9, x9, l_text_127@PAGEOFF
    str x9, [sp, #112]
    sub x9, x29, #616
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #96]
    sub x9, x29, #528
    str x9, [sp, #88]
    sub x9, x29, #528
    str x9, [sp, #80]
    sub x27, x29, #664
    add x9, x27, #40
    str x9, [sp, #64]
    add x9, x28, #8
    str x9, [sp, #56]
    add x9, x27, #8
    str x9, [sp, #48]
    add x9, x23, #8
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    mov x19, x9
L23_42:
    ldr x10, [sp, #32]
    cmp x19, x10
    b.hs L23_45
L23_43:
    lsl x14, x19, #3
    ldr x9, [sp, #128]
    add x14, x9, x14
    ldr x25, [x14]
    cbnz x25, L23_46
    b L23_47
L23_46:
    b L23_48
L23_47:
    adrp x14, l_text_152@PAGE
    add x14, x14, l_text_152@PAGEOFF
    sub x15, x29, #496
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    adrp x14, l_text_153@PAGE
    add x14, x14, l_text_153@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_153@PAGE
    add x0, x0, l_text_153@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L23_48:
    mov x0, x25
    sub x8, x29, #600
    bl _lb_process_16environment_name
    ldrb w14, [x22]
    cbnz w14, L23_52
    b L23_51
L23_52:
    mov x10, x24
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L23_49
L23_51:
    ldr x10, [sp, #8]
    ldr x11, [sp, #120]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L23_50
L23_49:
    ldr x9, [sp, #112]
    ldr x10, [sp, #104]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #96]
    str x9, [x10]
    ldr x10, [sp, #104]
    ldr x11, [sp, #88]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L23_50
L23_53:
L23_50:
    ldr x10, [sp, #80]
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #160]
    ldr x9, [x9]
    str x9, [sp, #72]
    mov x9, #0
    mov x21, x9
L23_54:
    ldr x10, [sp, #152]
    cmp x21, x10
    b.lo L23_55
L23_78:
    mov x9, #0
    mov w14, w9
    b L23_57
L23_55:
    lsl x14, x21, #3
    ldr x9, [sp, #72]
    add x14, x9, x14
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #664
    bl _lb_process_16environment_name
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, L23_62
    b L23_61
L23_62:
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
    sub x14, x29, #680
    ldr x15, [x23]
    add x20, x23, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_154@PAGE
    add x0, x0, l_text_154@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, L23_64
    b L23_63
L23_64:
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
L23_63:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_65:
L23_61:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    cmp x14, x15
    cset w15, eq
    cbnz w15, L23_66
    b L23_79
L23_79:
    mov w14, w15
    b L23_67
L23_66:
    ldr x15, [x28]
    ldr x20, [x27]
    mov x0, x15
    mov x1, x20
    mov x2, x14
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L23_67:
    and w15, w14, #255
    cbnz w15, L23_58
    b L23_59
L23_58:
    movz x9, #1
    mov w14, w9
    b L23_57
L23_68:
    b L23_60
L23_59:
L23_60:
L23_56:
    add x14, x21, #1
    mov x21, x14
    b L23_54
L23_57:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L23_70
L23_69:
    ldr x14, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_155@PAGE
    add x0, x0, l_text_155@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    lsl x15, x9, #3
    add x14, x14, x15
    str x25, [x14]
    ldr x9, [sp, #16]
    add x14, x9, #1
    b L23_71
L23_70:
    ldr x9, [sp, #16]
    mov x14, x9
L23_71:
L23_44:
    add x15, x19, #1
    mov x9, x14
    str x9, [sp, #16]
    mov x19, x15
    b L23_42
L23_45:
    ldr x9, [sp, #160]
    ldr x14, [x9]
    ldr x15, [x23]
    add x19, x23, #8
    ldr x19, [x19]
    ldr x9, [sp, #16]
    mov x20, x9
    mov x9, #0
    mov x21, x9
L23_72:
    ldr x10, [sp, #152]
    cmp x21, x10
    b.hs L23_75
L23_73:
    lsl x22, x21, #3
    add x22, x14, x22
    ldr x22, [x22]
    cmp x20, x19
    b.lo 1f
    adrp x0, l_text_157@PAGE
    add x0, x0, l_text_157@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x20, #3
    add x24, x15, x24
    str x22, [x24]
    add x22, x20, #1
L23_74:
    add x24, x21, #1
    mov x20, x22
    mov x21, x24
    b L23_72
L23_75:
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_159@PAGE
    add x0, x0, l_text_159@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x14, x14, x15
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #152
    mov x10, x23
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
    ldr x19, [sp, #816]
    ldr x20, [sp, #808]
    ldr x21, [sp, #800]
    ldr x22, [sp, #792]
    ldr x23, [sp, #784]
    ldr x24, [sp, #776]
    ldr x25, [sp, #768]
    ldr x26, [sp, #760]
    ldr x27, [sp, #752]
    ldr x28, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_76:
    adrp x0, l_text_160@PAGE
    add x0, x0, l_text_160@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_23environment_windows_key
_lb_process_23environment_windows_key:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    ldr x19, [x14]
    movz x9, #1
    mov x20, x9
L24_1:
    cmp x20, x15
    cset w21, lo
    cbnz w21, L24_4
    b L24_9
L24_9:
    mov w22, w21
    b L24_5
L24_4:
    lsl x21, x20, #1
    add x21, x19, x21
    ldrh w21, [x21]
    movz x10, #61
    cmp w21, w10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    cset w22, eq
L24_5:
    and w21, w22, #255
    cbnz w21, L24_2
    b L24_3
L24_2:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_162@PAGE
    add x0, x0, l_text_162@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x20, x21
    b L24_1
L24_3:
    ldr x21, [x14]
    add x19, x15, #1
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_163@PAGE
    add x0, x0, l_text_163@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.lo 1f
    adrp x0, l_text_163@PAGE
    add x0, x0, l_text_163@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L24_6
L24_7:
    adrp x0, l_text_163@PAGE
    add x0, x0, l_text_163@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L24_6:
    sub x14, x29, #96
    str x21, [x14]
    add x15, x14, #8
    str x20, [x15]
    sub x19, x29, #64
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_8:
    adrp x0, l_text_163@PAGE
    add x0, x0, l_text_163@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_27environment_windows_compare
_lb_process_27environment_windows_compare:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #80
    sub x14, x29, #48
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_23environment_windows_key
    sub x16, x29, #96
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #112
    sub x14, x29, #64
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_process_23environment_windows_key
    sub x16, x29, #128
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #128
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x19, [x20]
    add x20, x20, #8
    ldr x20, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    mov x3, x20
    movz x4, #1
    bl _CompareStringOrdinal
    mov w14, w0
    mov w9, w14
    movz x10, #2
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_164@PAGE
    add x0, x0, l_text_164@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_1:
    adrp x0, l_text_164@PAGE
    add x0, x0, l_text_164@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_19environment_windows
_lb_process_19environment_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1024
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #992]
    str x20, [sp, #984]
    str x21, [sp, #976]
    str x22, [sp, #968]
    str x23, [sp, #960]
    str x24, [sp, #952]
    str x25, [sp, #944]
    str x26, [sp, #936]
    str x27, [sp, #928]
    str x28, [sp, #920]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    bl _GetEnvironmentStringsW
    str x0, [sp, #56]
    ldr x9, [sp, #56]
    cbnz x9, L26_1
    b L26_2
L26_1:
    b L26_3
L26_2:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_165@PAGE
    add x15, x15, l_text_165@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #40
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
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_4:
L26_3:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    mov x14, x9
L26_5:
    lsl x15, x14, #1
    ldr x10, [sp, #56]
    add x15, x15, x10
    ldrh w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L26_7
L26_6:
    ldr x9, [sp, #48]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_166@PAGE
    add x0, x0, l_text_166@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x21, x14
L26_8:
    lsl x14, x21, #1
    ldr x10, [sp, #56]
    add x14, x14, x10
    ldrh w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L26_10
L26_9:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_167@PAGE
    add x0, x0, l_text_167@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x21, x14
    b L26_8
L26_10:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_168@PAGE
    add x0, x0, l_text_168@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x15
    str x9, [sp, #48]
    b L26_5
L26_7:
    sub x9, x29, #200
    str x9, [sp, #40]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #32]
    sub x9, x29, #168
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x14, x9, #8
    ldr x24, [x14]
    sub x25, x29, #248
    movz x10, #1024, lsl #48
    cmp x24, x10
    b.ls L26_12
L26_11:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x26, x14, #8
    str x15, [x26]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L26_13
L26_12:
    lsl x26, x24, #4
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L26_14
    b L26_15
L26_15:
    adrp x0, l_text_169@PAGE
    add x0, x0, l_text_169@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L26_14:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x26
    movz x2, #8
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x20, x29, #272
    add x27, x20, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x26, x10
    cset w28, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w27, w28, w27
    cbnz w27, L26_16
    b L26_17
L26_16:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L26_13
L26_17:
    ldr x14, [x20]
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L26_13:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L26_19
    b L26_18
L26_19:
    add x14, x25, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_20:
L26_18:
    mov x10, x25
    ldr x11, [sp, #40]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #320
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #40
    str x9, [sp, #112]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #104]
    adrp x9, _lb_process_failed@PAGE
    add x9, x9, _lb_process_failed@PAGEOFF
    str x9, [sp, #96]
    sub x19, x29, #384
    add x9, x19, #40
    str x9, [sp, #88]
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    mov x27, x9
L26_21:
    cmp x27, x24
    b.hs L26_24
L26_22:
    ldr x9, [sp, #120]
    ldr x14, [x9]
    lsl x15, x27, #3
    add x25, x14, x15
    ldr x14, [x25]
    mov x0, x14
    sub x8, x29, #320
    bl _lb_process_16environment_name
    ldr x9, [sp, #112]
    ldrb w14, [x9]
    cbnz w14, L26_26
    b L26_25
L26_26:
    ldr x9, [sp, #0]
    add x14, x9, #16
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
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #336
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x20, x9, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_170@PAGE
    add x0, x0, l_text_170@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, L26_28
    b L26_27
L26_28:
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
L26_27:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_29:
L26_25:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_171@PAGE
    add x0, x0, l_text_171@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x20, x27, #4
    add x21, x14, x20
    ldr x14, [x25]
    ldr x9, [sp, #96]
    ldr w15, [x9]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #384
    bl _lb_12windows_text_wide
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, L26_31
    b L26_30
L26_31:
    add x14, x19, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #400
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #104]
    ldr x21, [x9]
    mov x9, x21
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_171@PAGE
    add x0, x0, l_text_171@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L26_33
    b L26_32
L26_33:
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
L26_32:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_34:
L26_30:
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_172@PAGE
    add x0, x0, l_text_172@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    mov x9, #0
    mov x26, x9
L26_35:
    cmp x26, x27
    b.hs L26_38
L26_36:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_173@PAGE
    add x0, x0, l_text_173@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, x14
    lsl x21, x26, #4
    add x14, x14, x21
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_process_27environment_windows_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L26_40
L26_39:
    sub x19, x29, #152
    add x14, x19, #16
    ldr x9, [sp, #96]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_148@PAGE
    add x15, x15, l_text_148@PAGEOFF
    sub x20, x29, #416
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x25
    bl _lb_process_27environment_windows_release
    sub x14, x29, #432
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #104]
    ldr x20, [x9]
    mov x9, x20
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_174@PAGE
    add x0, x0, l_text_174@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, L26_43
    b L26_42
L26_43:
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
L26_42:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_44:
    b L26_41
L26_40:
L26_41:
L26_37:
    add x14, x26, #1
    mov x26, x14
    b L26_35
L26_38:
L26_23:
    add x14, x27, #1
    mov x9, x25
    str x9, [sp, #24]
    mov x27, x14
    b L26_21
L26_24:
    sub x19, x29, #440
    ldr x0, [sp, #48]
    mov x1, x24
    movz x2, #64
    mov x3, x19
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #456
    ldr x19, [x19]
    str x19, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L26_45
    b L26_46
L26_45:
    b L26_47
L26_46:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    sub x20, x29, #472
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #488
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x20, x9, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_175@PAGE
    add x0, x0, l_text_175@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, L26_49
    b L26_48
L26_49:
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
L26_48:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_50:
L26_47:
    sub x20, x29, #504
    sub x21, x29, #552
    movz x10, #1024, lsl #48
    cmp x19, x10
    b.ls L26_52
L26_51:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L26_53
L26_52:
    lsl x24, x19, #4
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L26_54
    b L26_55
L26_55:
    adrp x0, l_text_176@PAGE
    add x0, x0, l_text_176@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L26_54:
    ldr x25, [x15]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #576
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #576
    add x25, x27, #16
    ldrb w25, [x25]
    mov x10, #0
    cmp x24, x10
    cset w26, ne
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    and w25, w26, w25
    cbnz w25, L26_56
    b L26_57
L26_56:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L26_53
L26_57:
    ldr x14, [x27]
    str x14, [x21]
    add x14, x21, #8
    str x19, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L26_53:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L26_59
    b L26_58
L26_59:
    add x14, x21, #16
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
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #592
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x20, x9, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_176@PAGE
    add x0, x0, l_text_176@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, L26_61
    b L26_60
L26_61:
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
L26_60:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_62:
L26_58:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #608
    sub x24, x29, #624
    add x25, x24, #8
    ldr x9, [sp, #40]
    add x26, x9, #8
    add x27, x20, #8
    mov x9, #0
    mov x14, x9
    mov x9, #0
    str x9, [sp, #16]
L26_63:
    lsl x15, x14, #1
    ldr x10, [sp, #56]
    add x15, x15, x10
    ldrh w21, [x15]
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    b.ne L26_65
L26_64:
    mov x21, x14
L26_66:
    lsl x23, x21, #1
    ldr x10, [sp, #56]
    add x23, x23, x10
    ldrh w23, [x23]
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    b.ne L26_68
L26_67:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_177@PAGE
    add x0, x0, l_text_177@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x21, x23
    b L26_66
L26_68:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_178@PAGE
    add x0, x0, l_text_178@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_179@PAGE
    add x0, x0, l_text_179@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x15, [x24]
    str x23, [x25]
    mov x10, x24
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x23, x9
L26_69:
    ldr x10, [sp, #24]
    cmp x23, x10
    b.lo L26_70
L26_139:
    mov x9, #0
    mov w14, w9
    b L26_72
L26_70:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x15, [x26]
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_180@PAGE
    add x0, x0, l_text_180@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x23, #4
    add x14, x14, x15
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_process_27environment_windows_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L26_74
L26_73:
    movz x9, #1
    mov w14, w9
    b L26_72
L26_76:
    b L26_75
L26_74:
L26_75:
L26_71:
    add x14, x23, #1
    mov x23, x14
    b L26_69
L26_72:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L26_78
L26_77:
    ldr x14, [x20]
    ldr x15, [x27]
    ldr x9, [sp, #16]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_181@PAGE
    add x0, x0, l_text_181@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    lsl x15, x9, #4
    add x14, x14, x15
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #16]
    add x14, x9, #1
    mov x15, x14
    b L26_79
L26_78:
    ldr x9, [sp, #16]
    mov x15, x9
L26_79:
    ldr x9, [sp, #80]
    mov x14, x9
    mov x9, x15
    str x9, [sp, #16]
    b L26_63
L26_65:
    add x19, x20, #8
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x9, [sp, #16]
    str x9, [sp, #8]
    mov x9, #0
    mov x24, x9
L26_80:
    ldr x10, [sp, #24]
    cmp x24, x10
    b.hs L26_83
L26_81:
    ldr x14, [x20]
    ldr x15, [x19]
    ldr x9, [sp, #8]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_183@PAGE
    add x0, x0, l_text_183@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    lsl x15, x9, #4
    add x14, x14, x15
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x25, [x21]
    cmp x24, x25
    b.lo 1f
    adrp x0, l_text_183@PAGE
    add x0, x0, l_text_183@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x25, x24, #4
    add x15, x15, x25
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #8]
    add x14, x9, #1
L26_82:
    add x15, x24, #1
    mov x9, x14
    str x9, [sp, #8]
    mov x24, x15
    b L26_80
L26_83:
    sub x19, x29, #640
    add x9, x20, #8
    str x9, [sp, #72]
    movz x9, #1
    mov x24, x9
L26_84:
    ldr x10, [sp, #8]
    cmp x24, x10
    b.hs L26_87
L26_85:
    ldr x25, [x20]
    ldr x9, [sp, #72]
    ldr x26, [x9]
    cmp x24, x26
    b.lo 1f
    adrp x0, l_text_185@PAGE
    add x0, x0, l_text_185@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x24, #4
    add x14, x25, x14
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x27, x24
L26_88:
    mov x10, #0
    cmp x27, x10
    cset w14, hi
    cbnz w14, L26_91
    b L26_140
L26_140:
    mov w15, w14
    b L26_92
L26_91:
    mov x9, x27
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_186@PAGE
    add x0, x0, l_text_186@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x26
    b.lo 1f
    adrp x0, l_text_186@PAGE
    add x0, x0, l_text_186@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #4
    add x14, x25, x14
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_process_27environment_windows_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L26_92:
    and w14, w15, #255
    cbnz w14, L26_89
    b L26_90
L26_89:
    cmp x27, x26
    b.lo 1f
    adrp x0, l_text_187@PAGE
    add x0, x0, l_text_187@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x27, #4
    add x14, x25, x14
    mov x9, x27
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_187@PAGE
    add x0, x0, l_text_187@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    cmp x21, x26
    b.lo 1f
    adrp x0, l_text_187@PAGE
    add x0, x0, l_text_187@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x21, #4
    add x15, x25, x15
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x27, x21
    b L26_88
L26_90:
    cmp x27, x26
    b.lo 1f
    adrp x0, l_text_189@PAGE
    add x0, x0, l_text_189@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x27, #4
    add x14, x25, x14
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L26_86:
    add x14, x24, #1
    mov x24, x14
    b L26_84
L26_87:
    add x19, x20, #8
    sub x21, x29, #648
    sub x26, x29, #664
    add x24, x26, #8
    movz x9, #1
    mov x14, x9
    mov x9, #0
    mov x25, x9
L26_93:
    ldr x10, [sp, #8]
    cmp x25, x10
    b.hs L26_96
L26_94:
    ldr x27, [x20]
    ldr x23, [x19]
    cmp x25, x23
    b.lo 1f
    adrp x0, l_text_190@PAGE
    add x0, x0, l_text_190@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x25, #4
    add x15, x27, x15
    add x15, x15, #8
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w15, w0
    ldr x22, [x21]
    str x22, [x26]
    strb w15, [x24]
    ldrb w15, [x24]
    cbnz w15, L26_97
    b L26_98
L26_97:
    b L26_99
L26_98:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    sub x20, x29, #680
    str x15, [x20]
    add x15, x20, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #696
    mov x9, x23
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_190@PAGE
    add x0, x0, l_text_190@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x27, [x14]
    add x20, x14, #8
    str x15, [x20]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x20, x9, #8
    ldr x21, [x20]
    cbnz x21, L26_101
    b L26_100
L26_101:
    add x22, x21, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_100:
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #712
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_190@PAGE
    add x0, x0, l_text_190@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x21, [x20]
    cbnz x21, L26_103
    b L26_102
L26_103:
    add x20, x21, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_102:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_104:
L26_99:
L26_95:
    add x15, x25, #1
    mov x14, x22
    mov x25, x15
    b L26_93
L26_96:
    sub x19, x29, #728
    ldr x9, [sp, #8]
    mov x10, #0
    cmp x9, x10
    b.ls L26_106
L26_105:
    mov x21, x14
    b L26_107
L26_106:
    movz x9, #2
    mov x21, x9
L26_107:
    sub x22, x29, #776
    movz x10, #8192, lsl #48
    cmp x21, x10
    b.ls L26_109
L26_108:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L26_110
L26_109:
    lsl x23, x21, #1
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L26_111
    b L26_112
L26_112:
    adrp x0, l_text_191@PAGE
    add x0, x0, l_text_191@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L26_111:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #2
    sub x8, x29, #800
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #800
    add x24, x26, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x23, x10
    cset w25, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w25, w24
    cbnz w24, L26_113
    b L26_114
L26_113:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L26_110
L26_114:
    ldr x14, [x26]
    str x14, [x22]
    add x14, x22, #8
    str x21, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L26_110:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L26_116
    b L26_115
L26_116:
    add x14, x22, #16
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
    sub x14, x29, #816
    ldr x15, [x20]
    add x21, x20, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_191@PAGE
    add x0, x0, l_text_191@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x21, x9, #8
    ldr x23, [x21]
    cbnz x23, L26_118
    b L26_117
L26_118:
    add x20, x23, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_117:
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #832
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x20, x9, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_191@PAGE
    add x0, x0, l_text_191@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x20, [x21]
    cbnz x20, L26_120
    b L26_119
L26_120:
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
L26_119:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_121:
L26_115:
    mov x10, x22
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    ldr x21, [x19]
    add x23, x19, #8
    ldr x23, [x23]
    mov x9, #0
    mov x24, x9
    mov x9, #0
    mov x25, x9
L26_122:
    ldr x10, [sp, #8]
    cmp x25, x10
    b.hs L26_125
L26_123:
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_192@PAGE
    add x0, x0, l_text_192@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x22, x25, #4
    add x22, x14, x22
    ldr x26, [x22]
    add x22, x22, #8
    ldr x9, [x22]
    str x9, [sp, #64]
    mov x27, x24
    mov x9, #0
    mov x28, x9
L26_126:
    ldr x10, [sp, #64]
    cmp x28, x10
    b.hs L26_129
L26_127:
    lsl x24, x28, #1
    add x24, x26, x24
    ldrh w24, [x24]
    cmp x27, x23
    b.lo 1f
    adrp x0, l_text_193@PAGE
    add x0, x0, l_text_193@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x22, x27, #1
    add x22, x21, x22
    and w24, w24, #65535
    strh w24, [x22]
    add x22, x27, #1
L26_128:
    add x24, x28, #1
    mov x27, x22
    mov x28, x24
    b L26_126
L26_129:
L26_124:
    add x22, x25, #1
    mov x24, x27
    mov x25, x22
    b L26_122
L26_125:
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_195@PAGE
    add x0, x0, l_text_195@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x24, #1
    add x14, x14, x15
    mov x9, #0
    strh w9, [x14]
    sub x21, x29, #152
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #848
    ldr x15, [x20]
    add x22, x20, #8
    ldr x22, [x22]
    mov x9, x22
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_196@PAGE
    add x0, x0, l_text_196@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x15, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #32]
    add x22, x9, #8
    ldr x23, [x22]
    cbnz x23, L26_131
    b L26_130
L26_131:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_130:
    ldr x9, [sp, #40]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    bl _lb_process_27environment_windows_release
    sub x14, x29, #864
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x19, x9, #8
    ldr x19, [x19]
    mov x9, x19
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_196@PAGE
    add x0, x0, l_text_196@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x19, [x22]
    cbnz x19, L26_133
    b L26_132
L26_133:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_132:
    ldr x0, [sp, #56]
    bl _FreeEnvironmentStringsW
    mov w14, w0
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #992]
    ldr x20, [sp, #984]
    ldr x21, [sp, #976]
    ldr x22, [sp, #968]
    ldr x23, [sp, #960]
    ldr x24, [sp, #952]
    ldr x25, [sp, #944]
    ldr x26, [sp, #936]
    ldr x27, [sp, #928]
    ldr x28, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_134:
    sub x14, x29, #504
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #880
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_196@PAGE
    add x0, x0, l_text_196@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L26_136
    b L26_135
L26_136:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_135:
    sub x14, x29, #200
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_process_27environment_windows_release
    sub x14, x29, #200
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #896
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_196@PAGE
    add x0, x0, l_text_196@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L26_138
    b L26_137
L26_138:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L26_137:
    mov x0, x14
    bl _FreeEnvironmentStringsW
    mov w14, w0
    adrp x0, l_text_196@PAGE
    add x0, x0, l_text_196@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_27environment_windows_release
_lb_process_27environment_windows_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    str x25, [sp, #56]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #104
    str x2, [x16]
    sub x14, x29, #104
    ldr x19, [x14]
    sub x20, x29, #88
    add x21, x20, #8
    sub x22, x29, #120
    add x23, x22, #8
    mov x9, #0
    mov x24, x9
L27_1:
    cmp x24, x19
    b.hs L27_4
L27_2:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_197@PAGE
    add x0, x0, l_text_197@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x24, #4
    add x14, x14, x15
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    ldr x25, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_197@PAGE
    add x0, x0, l_text_197@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x25, [x22]
    str x14, [x23]
    ldr x14, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L27_6
    b L27_5
L27_6:
    add x25, x15, #16
    ldr x25, [x25]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L27_5:
L27_3:
    add x14, x24, #1
    mov x24, x14
    b L27_1
L27_4:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_12command_text
_lb_process_12command_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L28_2
L28_1:
    sub x19, x29, #104
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_198@PAGE
    add x15, x15, l_text_198@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_4:
    b L28_3
L28_2:
L28_3:
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    mov x9, #0
    mov x20, x9
L28_5:
    cmp x20, x15
    b.hs L28_8
L28_6:
    add x21, x14, x20
    ldrb w21, [x21]
    and w21, w21, #255
    mov x10, #0
    cmp w21, w10
    b.ne L28_10
L28_9:
    sub x19, x29, #104
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_199@PAGE
    add x15, x15, l_text_199@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_12:
    b L28_11
L28_10:
L28_11:
L28_7:
    add x21, x20, #1
    mov x20, x21
    b L28_5
L28_8:
    sub x20, x29, #168
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #216
    bl _lb_strings_copy
    sub x15, x29, #216
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L28_14
    b L28_13
L28_14:
    add x14, x15, #16
    sub x19, x29, #104
    add x22, x19, #16
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_15:
L28_13:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_16:
    sub x14, x29, #168
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x0, l_text_200@PAGE
    add x0, x0, l_text_200@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_init
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
    cbnz w14, L29_64
    b L29_4
L29_64:
    mov w15, w14
    b L29_5
L29_4:
    sub x14, x29, #208
    ldr x14, [x14]
    movz x10, #1
    cmp x14, x10
    cset w15, lo
L29_5:
    and w14, w15, #255
    cbnz w14, L29_65
    b L29_6
L29_65:
    mov w15, w14
    b L29_7
L29_6:
    sub x14, x29, #208
    ldr x14, [x14]
    movz x10, #256, lsl #16
    cmp x14, x10
    cset w15, hi
L29_7:
    and w14, w15, #255
    cbnz w14, L29_1
    b L29_2
L29_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_201@PAGE
    add x14, x14, l_text_201@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
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
L29_8:
    b L29_3
L29_2:
L29_3:
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #16]
    sub x22, x29, #264
    ldr x10, [sp, #16]
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #304
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L29_9
    b L29_10
L29_10:
    adrp x0, l_text_202@PAGE
    add x0, x0, l_text_202@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L29_9:
    ldr x22, [x15]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #160
    movz x2, #8
    sub x8, x29, #328
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #328
    add x22, x24, #16
    ldrb w22, [x22]
    cbnz w22, L29_11
    b L29_12
L29_12:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L29_13
L29_11:
    ldr x22, [x24]
    sub x25, x29, #488
    mov x0, x25
    mov x1, #0
    movz x2, #160
    bl _memset
    sub x14, x29, #208
    ldr x14, [x14]
    add x15, x25, #48
    str x14, [x15]
    add x14, x25, #136
    movn x9, #0
    str x9, [x14]
    mov x0, x22
    mov x1, x25
    movz x2, #160
    bl _memcpy
    str x22, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L29_13:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L29_15
    b L29_14
L29_15:
    add x14, x23, #8
    sub x19, x29, #136
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
L29_16:
L29_14:
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
    cbnz w14, L29_18
    b L29_17
L29_18:
    add x14, x15, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_19:
L29_17:
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x19, x22, #72
    sub x14, x29, #192
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #584
    bl _lb_process_12command_text
    sub x23, x29, #584
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L29_21
    b L29_20
L29_21:
    add x14, x23, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_22:
L29_20:
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x25, x22, #88
    sub x24, x29, #176
    add x14, x24, #8
    ldr x26, [x14]
    sub x27, x29, #632
    movz x10, #2048, lsl #48
    cmp x26, x10
    b.ls L29_24
L29_23:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L29_25
L29_24:
    lsl x19, x26, #3
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L29_26
    b L29_27
L29_27:
    adrp x0, l_text_203@PAGE
    add x0, x0, l_text_203@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L29_26:
    ldr x23, [x15]
    mov x17, x23
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #8
    sub x8, x29, #656
    ldr x17, [sp], #16
    blr x17
    sub x20, x29, #656
    add x23, x20, #16
    ldrb w23, [x23]
    mov x10, #0
    cmp x19, x10
    cset w28, ne
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    and w23, w28, w23
    cbnz w23, L29_28
    b L29_29
L29_28:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L29_25
L29_29:
    ldr x14, [x20]
    str x14, [x27]
    add x14, x27, #8
    str x26, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
L29_25:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, L29_31
    b L29_30
L29_31:
    add x14, x27, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_32:
L29_30:
    mov x10, x27
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x19, x25, #8
    sub x21, x29, #704
    add x20, x21, #40
    add x23, x22, #104
    mov x9, #0
    mov x28, x9
L29_33:
    cmp x28, x26
    b.hs L29_36
L29_34:
    ldr x14, [x25]
    ldr x15, [x19]
    cmp x28, x15
    b.lo 1f
    adrp x0, l_text_204@PAGE
    add x0, x0, l_text_204@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x28, #3
    add x27, x14, x15
    ldr x14, [x24]
    lsl x15, x28, #4
    add x14, x14, x15
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #704
    bl _lb_process_12command_text
    ldrb w14, [x20]
    cbnz w14, L29_38
    b L29_37
L29_38:
    add x14, x21, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_39:
L29_37:
    ldr x14, [x21]
    str x14, [x27]
    ldr x14, [x23]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_205@PAGE
    add x0, x0, l_text_205@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x23]
L29_35:
    add x14, x28, #1
    mov x28, x14
    b L29_33
L29_36:
    sub x15, x29, #232
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L29_43
    b L29_41
L29_43:
    sub x19, x29, #720
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L29_40:
    add x20, x22, #112
    add x14, x19, #8
    ldr x21, [x14]
    sub x23, x29, #768
    movz x10, #2048, lsl #48
    cmp x21, x10
    b.ls L29_45
L29_44:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L29_46
L29_45:
    lsl x24, x21, #3
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L29_47
    b L29_48
L29_48:
    adrp x0, l_text_206@PAGE
    add x0, x0, l_text_206@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L29_47:
    ldr x25, [x15]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #792
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #792
    add x25, x27, #16
    ldrb w25, [x25]
    mov x10, #0
    cmp x24, x10
    cset w26, ne
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    and w25, w26, w25
    cbnz w25, L29_49
    b L29_50
L29_49:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L29_46
L29_50:
    ldr x14, [x27]
    str x14, [x23]
    add x14, x23, #8
    str x21, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L29_46:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L29_52
    b L29_51
L29_52:
    add x14, x23, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_53:
L29_51:
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x24, x20, #8
    sub x28, x29, #840
    add x25, x28, #40
    add x26, x22, #128
    mov x9, #0
    mov x27, x9
L29_54:
    cmp x27, x21
    b.hs L29_57
L29_55:
    ldr x14, [x20]
    ldr x15, [x24]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_207@PAGE
    add x0, x0, l_text_207@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
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
    cbnz w14, L29_59
    b L29_58
L29_59:
    add x14, x28, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_60:
L29_58:
    ldr x14, [x28]
    str x14, [x23]
    ldr x14, [x26]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_208@PAGE
    add x0, x0, l_text_208@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x26]
L29_56:
    add x14, x27, #1
    mov x27, x14
    b L29_54
L29_57:
    b L29_42
L29_41:
L29_42:
    sub x20, x29, #848
    adrp x14, _lb_process_13command_entry@GOTPAGE
    ldr x14, [x14, _lb_process_13command_entry@GOTPAGEOFF]
    adrp x15, l_text_209@PAGE
    add x15, x15, l_text_209@PAGEOFF
    sub x19, x29, #864
    str x15, [x19]
    add x15, x19, #8
    movz x9, #7
    str x9, [x15]
    mov x0, x14
    mov x1, x22
    mov x2, #0
    mov x9, x19
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #904
    bl _lb_thread_spawn
    sub x15, x29, #904
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L29_62
    b L29_61
L29_62:
    add x14, x15, #8
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L29_63:
L29_61:
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #8]
    str x22, [x10]
    ldr x9, [sp, #8]
    add x19, x9, #8
    sub x21, x29, #920
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #8
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    cbnz x14, L30_1
    b L30_2
L30_1:
    b L30_3
L30_2:
    adrp x14, l_text_210@PAGE
    add x14, x14, l_text_210@PAGEOFF
    sub x15, x29, #40
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
    str x9, [x14]
    adrp x14, l_text_211@PAGE
    add x14, x14, l_text_211@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_211@PAGE
    add x0, x0, l_text_211@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L30_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_4:
    adrp x0, l_text_211@PAGE
    add x0, x0, l_text_211@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_11is_finished
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
L31_1:
    adrp x0, l_text_212@PAGE
    add x0, x0, l_text_212@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_revision
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
L32_1:
    adrp x0, l_text_213@PAGE
    add x0, x0, l_text_213@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_9exit_code
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
    b.ne L33_2
L33_1:
    sub x19, x29, #72
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_4:
    b L33_3
L33_2:
L33_3:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_5:
    adrp x0, l_text_214@PAGE
    add x0, x0, l_text_214@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_output
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    cbnz w14, L34_2
    b L34_1
L34_2:
    add x14, x15, #40
    sub x22, x29, #160
    add x23, x22, #24
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    movz x9, #1
    strb w9, [x14]
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L34_3:
L34_1:
    mov x10, x15
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
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
    ldr x26, [x14]
    add x14, x23, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_215@PAGE
    add x0, x0, l_text_215@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x26, x14
    b.lo 1f
    adrp x0, l_text_215@PAGE
    add x0, x0, l_text_215@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x26
    b.ls L34_4
L34_5:
    adrp x0, l_text_215@PAGE
    add x0, x0, l_text_215@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L34_4:
    sub x14, x29, #328
    str x25, [x14]
    add x15, x14, #8
    str x26, [x15]
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x23, x24, #8
    sub x9, x29, #352
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x27, x9, #16
    adrp x9, l_text_216@PAGE
    add x9, x9, l_text_216@PAGEOFF
    str x9, [sp, #64]
    sub x9, x29, #488
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x9, x29, #520
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #40]
    sub x28, x29, #368
    add x9, x28, #8
    str x9, [sp, #96]
    sub x22, x29, #432
    add x9, x22, #8
    str x9, [sp, #88]
    sub x9, x29, #472
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #32
    str x9, [sp, #80]
    adrp x9, l_text_216@PAGE
    add x9, x9, l_text_216@PAGEOFF
    str x9, [sp, #120]
    sub x19, x29, #384
    add x9, x19, #8
    str x9, [sp, #112]
    sub x21, x29, #416
    add x9, x21, #24
    str x9, [sp, #104]
    add x9, x28, #8
    str x9, [sp, #72]
    mov x9, #0
    mov x20, x9
L34_6:
    ldr x14, [x23]
    cmp x20, x14
    b.hs L34_8
L34_7:
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #352
    bl _lb_utf8_decode
    ldrb w14, [x27]
    cbnz w14, L34_12
    b L34_10
L34_12:
    ldr x10, [sp, #16]
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L34_9:
    ldr w14, [x28]
    mov w14, w14
    mov x10, #0
    cmp w14, w10
    b.ne L34_14
L34_13:
    ldr x9, [sp, #120]
    str x9, [x19]
    movz x9, #3
    ldr x10, [sp, #112]
    str x9, [x10]
    ldr x0, [sp, #24]
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #416
    bl _lb_strings_Builder_put
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    cbnz w14, L34_17
    b L34_16
L34_17:
    sub x19, x29, #160
    add x14, x19, #24
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L34_18:
L34_16:
    b L34_15
L34_14:
    ldr x25, [x24]
    ldr x14, [x23]
    ldr x9, [sp, #96]
    ldr x15, [x9]
    mov x9, x15
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_217@PAGE
    add x0, x0, l_text_217@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x14, x14, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_217@PAGE
    add x0, x0, l_text_217@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_217@PAGE
    add x0, x0, l_text_217@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x15
    b.ls L34_19
L34_20:
    adrp x0, l_text_217@PAGE
    add x0, x0, l_text_217@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L34_19:
    add x14, x20, x25
    sub x26, x15, x20
    str x14, [x22]
    ldr x10, [sp, #88]
    str x26, [x10]
    ldr x0, [sp, #24]
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #472
    bl _lb_strings_Builder_write
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, L34_22
    b L34_21
L34_22:
    ldr x9, [sp, #0]
    add x14, x9, #8
    sub x19, x29, #160
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L34_23:
L34_21:
L34_15:
    ldr x9, [sp, #72]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_218@PAGE
    add x0, x0, l_text_218@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L34_11
L34_10:
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
    cbnz w14, L34_25
    b L34_24
L34_25:
    sub x19, x29, #160
    add x14, x19, #24
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L34_26:
L34_24:
    add x14, x20, #1
L34_11:
    mov x20, x14
    b L34_6
L34_8:
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
    cbnz w14, L34_28
    b L34_27
L34_28:
    add x14, x15, #24
    sub x19, x29, #160
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L34_29:
L34_27:
    sub x19, x29, #160
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _lb_strings_Builder_destroy
    ldr x10, [sp, #136]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L34_30:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x14, x19
    mov x0, x14
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    adrp x0, l_text_220@PAGE
    add x0, x0, l_text_220@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_13error_message
_lb_process_Command_13error_message:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #104
    str x0, [x16]
    sub x9, x29, #104
    ldr x19, [x9]
    mov x0, x19
    bl _lb_process_Command_11is_finished
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L35_2
L35_1:
    adrp x14, l_text_127@PAGE
    add x14, x14, l_text_127@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl _lb_interop_9copy_text
    sub x15, x29, #176
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L35_5
    b L35_4
L35_5:
    add x14, x15, #24
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_6:
L35_4:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_7:
    b L35_3
L35_2:
L35_3:
    mov x0, x19
    bl _lb_process_Command_state
    mov x14, x0
    add x14, x14, #144
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_9copy_text
    sub x15, x29, #232
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L35_9
    b L35_8
L35_9:
    add x14, x15, #24
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_10:
L35_8:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_11:
    adrp x0, l_text_221@PAGE
    add x0, x0, l_text_221@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_Command_cancel
_lb_process_Command_cancel:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, L36_4
    b L36_2
L36_4:
L36_1:
    movz x9, #1
    mov x10, x14
    stlrb w9, [x10]
    b L36_3
L36_2:
L36_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_Command_close
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
    cbnz w14, L37_1
    b L37_2
L37_1:
    sub x22, x29, #72
    mov x10, x21
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L37_3
L37_2:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_4:
L37_3:
    mov x10, x22
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x19
    bl _lb_process_Command_cancel
    mov x0, x20
    sub x8, x29, #128
    bl _lb_thread_Handle_join
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_8
    b L37_7
L37_8:
    sub x14, x29, #96
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_5
L37_7:
    b L37_6
L37_5:
    adrp x14, l_text_222@PAGE
    add x14, x14, l_text_222@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    adrp x14, l_text_223@PAGE
    add x14, x14, l_text_223@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L37_6:
    sub x20, x29, #160
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    cbnz x14, L37_9
    b L37_10
L37_9:
    b L37_11
L37_10:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_12:
L37_11:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #112
    ldr x21, [x14]
    add x14, x21, #56
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L38_2
L38_1:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    b L38_3
L38_2:
L38_3:
    add x14, x21, #72
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L38_5
L38_4:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    b L38_6
L38_5:
L38_6:
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
    adrp x0, l_text_224@PAGE
    add x0, x0, l_text_224@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_224@PAGE
    add x0, x0, l_text_224@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls L38_11
L38_12:
    adrp x0, l_text_224@PAGE
    add x0, x0, l_text_224@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L38_11:
    sub x14, x29, #144
    str x24, [x14]
    add x14, x14, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    sub x26, x29, #160
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L38_7:
    ldr x10, [sp, #8]
    cmp x28, x10
    b.hs L38_10
L38_8:
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
L38_9:
    add x14, x28, #1
    mov x28, x14
    b L38_7
L38_10:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L38_14
L38_13:
    sub x14, x29, #176
    ldr x15, [x22]
    ldr x24, [x23]
    mov x9, x24
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_225@PAGE
    add x0, x0, l_text_225@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x15, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    add x24, x20, #8
    ldr x24, [x24]
    cbnz x24, L38_17
    b L38_16
L38_17:
    add x22, x24, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L38_16:
    b L38_15
L38_14:
L38_15:
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
    adrp x0, l_text_226@PAGE
    add x0, x0, l_text_226@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #0]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_226@PAGE
    add x0, x0, l_text_226@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #0]
    cmp x9, x10
    b.ls L38_22
L38_23:
    adrp x0, l_text_226@PAGE
    add x0, x0, l_text_226@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L38_22:
    sub x14, x29, #192
    str x24, [x14]
    add x14, x14, #8
    ldr x9, [sp, #0]
    str x9, [x14]
    sub x26, x29, #208
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L38_18:
    ldr x10, [sp, #0]
    cmp x28, x10
    b.hs L38_21
L38_19:
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
L38_20:
    add x14, x28, #1
    mov x28, x14
    b L38_18
L38_21:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L38_25
L38_24:
    sub x14, x29, #224
    ldr x15, [x22]
    ldr x24, [x23]
    mov x9, x24
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_227@PAGE
    add x0, x0, l_text_227@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x15, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    add x24, x20, #8
    ldr x24, [x24]
    cbnz x24, L38_28
    b L38_27
L38_28:
    add x22, x24, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L38_27:
    b L38_26
L38_25:
L38_26:
    add x14, x21, #24
    add x15, x14, #8
    ldr x22, [x15]
    mov x10, #0
    cmp x22, x10
    b.ls L38_30
L38_29:
    sub x22, x29, #240
    ldr x23, [x14]
    ldr x24, [x15]
    str x23, [x22]
    add x23, x22, #8
    str x24, [x23]
    ldr x23, [x20]
    add x24, x20, #8
    ldr x24, [x24]
    cbnz x24, L38_33
    b L38_32
L38_33:
    add x14, x24, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L38_32:
    b L38_31
L38_30:
L38_31:
    add x14, x21, #144
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L38_35
L38_34:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    b L38_36
L38_35:
L38_36:
    sub x14, x29, #256
    str x21, [x14]
    add x15, x14, #8
    movz x9, #160
    str x9, [x15]
    ldr x15, [x20]
    add x22, x20, #8
    ldr x22, [x22]
    cbnz x22, L38_38
    b L38_37
L38_38:
    add x21, x22, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L38_37:
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    cbnz x19, L39_1
    b L39_2
L39_1:
    b L39_3
L39_2:
    ldr x19, [sp, #408]
    ldr x20, [sp, #400]
    ldr x21, [sp, #392]
    ldr x22, [sp, #384]
    ldr x23, [sp, #376]
    ldr x24, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_4:
L39_3:
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
    b.ls L39_8
L39_7:
    add x14, x19, #112
    sub x24, x29, #232
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #16
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #208
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L39_9
L39_8:
    sub x24, x29, #256
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #208
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
L39_9:
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
    cbnz w14, L39_11
    b L39_10
L39_11:
    add x14, x15, #40
    sub x20, x29, #184
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L39_5
L39_10:
    sub x20, x29, #160
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L39_6
L39_5:
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
    cbnz w14, L39_15
    b L39_14
L39_15:
    add x14, x15, #16
    sub x20, x29, #368
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L39_12
L39_14:
    sub x14, x29, #344
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L39_13
L39_12:
    adrp x14, l_text_127@PAGE
    add x14, x14, l_text_127@PAGEOFF
    sub x15, x29, #432
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #344
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L39_13
L39_16:
L39_13:
    sub x14, x29, #344
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L39_17:
L39_6:
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
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
_lb_process_14command_append:
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
    str x26, [sp, #264]
    str x27, [sp, #256]
    str x28, [sp, #248]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    ldr x9, [x9]
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x21, x9, #16
    mov x0, x21
    bl _lb_sync_Mutex_lock
    sub x9, x29, #168
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x23, x9, #8
    ldr x14, [x23]
    ldr x9, [sp, #16]
    add x15, x9, #48
    ldr x24, [x15]
    ldr x9, [sp, #16]
    add x25, x9, #40
    ldr x26, [x25]
    mov x9, x24
    mov x10, x26
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_229@PAGE
    add x0, x0, l_text_229@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    cmp x14, x24
    b.ls L40_2
L40_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_230@PAGE
    add x14, x14, l_text_230@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    ldr x27, [sp, #256]
    ldr x28, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_4:
    b L40_3
L40_2:
L40_3:
    ldr x24, [x25]
    mov x9, x14
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_231@PAGE
    add x0, x0, l_text_231@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #0]
    ldr x9, [sp, #16]
    add x26, x9, #24
    add x27, x26, #8
    ldr x28, [x27]
    ldr x9, [sp, #0]
    cmp x9, x28
    b.ls L40_6
L40_5:
    ldr x28, [x15]
    ldr x14, [x27]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_232@PAGE
    add x0, x0, l_text_232@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #4096
    mov x1, x14
    bl _lb_process_13math_max_size
    mov x14, x0
    ldr x0, [sp, #0]
    mov x1, x14
    bl _lb_process_13math_max_size
    mov x14, x0
    mov x0, x28
    mov x1, x14
    bl _lb_process_13math_min_size
    mov x28, x0
    ldr x14, [x27]
    mov x10, #0
    cmp x14, x10
    b.ne L40_9
L40_8:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #232
    movz x10, #16384, lsl #48
    cmp x28, x10
    b.ls L40_12
L40_11:
    add x14, x19, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x28, x14, #8
    str x15, [x28]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    b L40_13
L40_12:
    ldr x14, [x15]
    add x20, x15, #8
    ldr x20, [x20]
    cbnz x20, L40_14
    b L40_15
L40_15:
    adrp x0, l_text_233@PAGE
    add x0, x0, l_text_233@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L40_14:
    ldr x15, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x28
    movz x2, #1
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #256
    add x15, x22, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x28, x10
    cset w24, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w24, w15
    cbnz w15, L40_16
    b L40_17
L40_16:
    add x14, x19, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    b L40_13
L40_17:
    ldr x14, [x22]
    str x14, [x19]
    add x14, x19, #8
    str x28, [x14]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
L40_13:
    add x14, x19, #40
    ldrb w14, [x14]
    cbnz w14, L40_19
    b L40_18
L40_19:
    add x14, x19, #16
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_sync_Mutex_unlock
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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
    ldr x26, [sp, #264]
    ldr x27, [sp, #256]
    ldr x28, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_20:
L40_18:
    mov x10, x19
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L40_10
L40_9:
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x28
    sub x8, x29, #304
    bl _lb_memory_grow
    sub x15, x29, #304
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L40_22
    b L40_21
L40_22:
    add x14, x15, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    ldr x27, [sp, #256]
    ldr x28, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_23:
L40_21:
    mov x10, x15
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L40_10:
    b L40_7
L40_6:
L40_7:
    ldr x15, [x26]
    ldr x19, [x27]
    ldr x20, [x25]
    add x14, x19, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_234@PAGE
    add x0, x0, l_text_234@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_234@PAGE
    add x0, x0, l_text_234@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.ls L40_24
L40_25:
    adrp x0, l_text_234@PAGE
    add x0, x0, l_text_234@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L40_24:
    add x14, x15, x20
    sub x21, x19, x20
    sub x22, x29, #320
    str x14, [x22]
    add x14, x22, #8
    str x21, [x14]
    ldr x14, [x23]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #8]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #0]
    str x9, [x25]
    ldr x9, [sp, #16]
    add x14, x9, #8
    movz x10, #1
    mov x12, x14
1:
    ldxr x9, [x12]
    add x11, x9, x10
    stlxr w13, x11, [x12]
    cbnz w13, 1b
    mov x14, x9
    ldr x9, [sp, #24]
    ldr x14, [x9]
    add x14, x14, #16
    mov x0, x14
    bl _lb_sync_Mutex_unlock
    sub x14, x29, #136
    add x21, x14, #24
    mov x9, #0
    strb w9, [x21]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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
    ldr x26, [sp, #264]
    ldr x27, [sp, #256]
    ldr x28, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_13math_min_size
_lb_process_13math_min_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.hs L41_2
L41_1:
    mov x15, x14
    b L41_3
L41_2:
L41_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_4:
    adrp x0, l_text_235@PAGE
    add x0, x0, l_text_235@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_13math_max_size
_lb_process_13math_max_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.ls L42_2
L42_1:
    mov x15, x14
    b L42_3
L42_2:
L42_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_4:
    adrp x0, l_text_236@PAGE
    add x0, x0, l_text_236@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_15capture_command
_lb_process_15capture_command:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #496]
    str x20, [sp, #488]
    str x21, [sp, #480]
    str x22, [sp, #472]
    str x23, [sp, #464]
    str x24, [sp, #456]
    str x25, [sp, #448]
    str x26, [sp, #440]
    str x27, [sp, #432]
    str x28, [sp, #424]
    sub x16, x29, #160
    str w0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #192
    str x2, [x16]
    sub x16, x29, #208
    str x3, [x16]
    sub x9, x29, #176
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    ldr x14, [x9]
    ldrsw x14, [x14]
    adrp x20, _lb_process_9set_flags@PAGE
    add x20, x20, _lb_process_9set_flags@PAGEOFF
    ldrsw x15, [x20]
    adrp x21, _lb_process_12non_blocking@PAGE
    add x21, x21, _lb_process_12non_blocking@PAGEOFF
    ldrsw x22, [x21]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w22
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
    cbnz w14, L43_65
    b L43_4
L43_65:
    mov w15, w14
    b L43_5
L43_4:
    sub x14, x29, #192
    ldr x14, [x14]
    ldrsw x14, [x14]
    ldrsw x15, [x20]
    ldrsw x22, [x21]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w22
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
L43_5:
    and w14, w15, #255
    cbnz w14, L43_1
    b L43_2
L43_1:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_238@PAGE
    add x15, x15, l_text_238@PAGEOFF
    sub x20, x29, #224
    str x15, [x20]
    add x15, x20, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L43_59:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_2:
L43_3:
    sub x9, x29, #208
    str x9, [sp, #120]
    sub x21, x29, #256
    sub x28, x29, #264
    adrp x22, _lb_process_7poll_in@PAGE
    add x22, x22, _lb_process_7poll_in@PAGEOFF
    add x23, x28, #4
    add x24, x28, #6
    add x27, x21, #8
    sub x26, x29, #272
    sub x9, x29, #192
    str x9, [sp, #96]
    add x9, x26, #4
    str x9, [sp, #88]
    add x9, x26, #6
    str x9, [sp, #80]
    add x9, x21, #6
    str x9, [sp, #64]
    sub x9, x29, #320
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #56]
    add x9, x27, #6
    str x9, [sp, #48]
    sub x9, x29, #352
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #40]
    sub x9, x29, #356
    str x9, [sp, #32]
    sub x9, x29, #160
    str x9, [sp, #24]
    adrp x9, _lb_c_interrupted@PAGE
    add x9, x9, _lb_c_interrupted@PAGEOFF
    str x9, [sp, #16]
    adrp x9, _lb_c_interrupted@PAGE
    add x9, x9, _lb_c_interrupted@PAGEOFF
    str x9, [sp, #72]
L43_7:
L43_8:
    ldr x9, [sp, #120]
    ldr x14, [x9]
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L43_10
    b L43_11
L43_10:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_239@PAGE
    add x15, x15, l_text_239@PAGEOFF
    sub x20, x29, #240
    str x15, [x20]
    add x15, x20, #8
    movz x9, #17
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L43_60:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_11:
L43_12:
    mov x11, x28
    str xzr, [x11, #0]
    ldr x9, [sp, #128]
    ldr x9, [x9]
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    add x9, x9, #32
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    cbnz w14, L43_14
    b L43_15
L43_14:
    ldr x9, [sp, #112]
    ldrsw x14, [x9]
    b L43_16
L43_15:
    movn x9, #0
    mov w14, w9
L43_16:
    str w14, [x28]
    ldrsh w19, [x22]
    strh w19, [x23]
    mov x9, #0
    strh w9, [x24]
    mov x10, x28
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x11, x26
    str xzr, [x11, #0]
    ldr x9, [sp, #96]
    ldr x25, [x9]
    add x20, x25, #32
    ldrb w15, [x20]
    cbnz w15, L43_17
    b L43_18
L43_17:
    ldrsw x14, [x25]
    b L43_19
L43_18:
    movn x9, #0
    mov w14, w9
L43_19:
    str w14, [x26]
    ldr x10, [sp, #88]
    strh w19, [x10]
    mov x9, #0
    ldr x10, [sp, #80]
    strh w9, [x10]
    mov x10, x26
    mov x11, x27
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x21
    movz x1, #2
    movz x2, #20
    bl _poll
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge L43_21
L43_20:
    bl _lb_c_errno
    mov w14, w0
    ldr x9, [sp, #72]
    ldrsw x15, [x9]
    cmp w14, w15
    b.ne L43_24
L43_23:
    b L43_7
L43_24:
L43_25:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_238@PAGE
    add x15, x15, l_text_238@PAGEOFF
    sub x20, x29, #288
    str x15, [x20]
    add x15, x20, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L43_61:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_21:
L43_22:
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    cbnz w14, L43_31
    b L43_66
L43_66:
    mov w15, w14
    b L43_32
L43_31:
    ldr x9, [sp, #64]
    ldrsh w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L43_32:
    and w14, w15, #255
    cbnz w14, L43_28
    b L43_29
L43_28:
    ldr x9, [sp, #120]
    ldr x14, [x9]
    ldr x0, [sp, #112]
    mov x1, x14
    sub x8, x29, #320
    bl _lb_process_12pull_command
    ldr x9, [sp, #56]
    ldrb w14, [x9]
    cbnz w14, L43_34
    b L43_33
L43_34:
    sub x19, x29, #144
    add x14, x19, #8
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L43_62:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_33:
    b L43_30
L43_29:
L43_30:
    ldrb w14, [x20]
    cbnz w14, L43_39
    b L43_67
L43_67:
    mov w15, w14
    b L43_40
L43_39:
    ldr x9, [sp, #48]
    ldrsh w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L43_40:
    and w14, w15, #255
    cbnz w14, L43_36
    b L43_37
L43_36:
    ldr x9, [sp, #120]
    ldr x14, [x9]
    mov x0, x25
    mov x1, x14
    sub x8, x29, #352
    bl _lb_process_12pull_command
    ldr x9, [sp, #40]
    ldrb w14, [x9]
    cbnz w14, L43_42
    b L43_41
L43_42:
    sub x19, x29, #144
    add x14, x19, #8
    ldr x10, [sp, #0]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L43_63:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_41:
    b L43_38
L43_37:
L43_38:
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L43_47
    b L43_68
L43_68:
    mov w15, w14
    b L43_48
L43_47:
    ldrb w14, [x20]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L43_48:
    and w14, w15, #255
    cbnz w14, L43_44
    b L43_45
L43_44:
    mov x9, #0
    ldr x10, [sp, #32]
    str w9, [x10]
    ldr x9, [sp, #24]
    ldrsw x19, [x9]
    mov x0, x19
    ldr x1, [sp, #32]
    movz x2, #1
    bl _waitpid
    mov w14, w0
    cmp w19, w14
    b.ne L43_50
L43_49:
    ldr x9, [sp, #32]
    ldrsw x14, [x9]
    sub x15, x29, #144
    str w14, [x15]
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_50:
L43_51:
    mov x10, #0
    cmp w14, w10
    cset w15, lt
    cbnz w15, L43_56
    b L43_69
L43_69:
    mov w14, w15
    b L43_57
L43_56:
    bl _lb_c_errno
    mov w14, w0
    ldr x9, [sp, #16]
    ldrsw x15, [x9]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L43_57:
    and w15, w14, #255
    cbnz w15, L43_53
    b L43_54
L43_53:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_244@PAGE
    add x15, x15, l_text_244@PAGEOFF
    sub x21, x29, #376
    str x15, [x21]
    add x15, x21, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #392
    str w19, [x10]
    mov x9, #0
    mov w10, w19
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x19
    bl _lb_process_terminate
L43_64:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_54:
L43_55:
    b L43_46
L43_45:
L43_46:
    b L43_7

    .p2align 2
    .globl _lb_process_12pull_command
_lb_process_12pull_command:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4272
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4240]
    str x20, [sp, #4232]
    str x21, [sp, #4224]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    movz x16, #4208
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #4096
    bl _memset
    sub x14, x29, #96
    ldr x20, [x14]
    ldrsw x14, [x20]
    mov x0, x14
    mov x1, x19
    movz x2, #4096
    bl _read
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.ne L44_2
L44_1:
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    b L44_3
L44_2:
    mov x10, #0
    cmp x14, x10
    b.le L44_5
L44_4:
    sub x15, x29, #112
    ldr x15, [x15]
    movz x10, #4097
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_247@PAGE
    add x0, x0, l_text_247@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L44_7
L44_8:
    adrp x0, l_text_247@PAGE
    add x0, x0, l_text_247@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L44_7:
    movz x16, #4224
    sub x20, x29, x16
    str x19, [x20]
    add x21, x20, #8
    str x14, [x21]
    mov x0, x15
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4256
    sub x8, x29, x16
    bl _lb_process_14command_append
    movz x16, #4256
    sub x21, x29, x16
    add x20, x21, #24
    ldrb w20, [x20]
    cbnz w20, L44_10
    b L44_9
L44_10:
    sub x19, x29, #80
    mov x10, x21
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
    ldr x19, [sp, #4240]
    ldr x20, [sp, #4232]
    ldr x21, [sp, #4224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_11:
L44_9:
    b L44_6
L44_5:
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
    cbnz w14, L44_15
    b L44_18
L44_18:
    mov w15, w14
    b L44_16
L44_15:
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
L44_16:
    and w14, w15, #255
    cbnz w14, L44_12
    b L44_13
L44_12:
    sub x19, x29, #80
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_238@PAGE
    add x14, x14, l_text_238@PAGEOFF
    movz x16, #4272
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
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
    ldr x19, [sp, #4240]
    ldr x20, [sp, #4232]
    ldr x21, [sp, #4224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_17:
    b L44_14
L44_13:
L44_14:
L44_6:
L44_3:
    sub x14, x29, #80
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
    ldr x19, [sp, #4240]
    ldr x20, [sp, #4232]
    ldr x21, [sp, #4224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15monitor_windows
_lb_process_15monitor_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #480
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #448]
    str x20, [sp, #440]
    str x21, [sp, #432]
    str x22, [sp, #424]
    str x23, [sp, #416]
    str x24, [sp, #408]
    str x25, [sp, #400]
    str x26, [sp, #392]
    str x27, [sp, #384]
    str x28, [sp, #376]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x16, x29, #200
    str x3, [x16]
    sub x16, x29, #216
    str x4, [x16]
    mov x0, #0
    mov x1, #0
    bl _CreateJobObjectW
    mov x19, x0
    cbnz x19, L45_1
    b L45_2
L45_1:
    b L45_3
L45_2:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_248@PAGE
    add x14, x14, l_text_248@PAGEOFF
    sub x15, x29, #232
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #152
    ldr x14, [x14]
    mov x0, x14
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_3:
    sub x9, x29, #152
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    ldr x21, [x9]
    mov x0, x19
    mov x1, x21
    bl _AssignProcessToJobObject
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L45_40
    b L45_8
L45_40:
    mov w15, w14
    b L45_9
L45_8:
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    bl _ResumeThread
    mov w14, w0
    movz x10, #65535
    movk x10, #65535, lsl #16
    cmp w14, w10
    cset w15, eq
L45_9:
    and w14, w15, #255
    cbnz w14, L45_5
    b L45_6
L45_5:
    sub x20, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_249@PAGE
    add x14, x14, l_text_249@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_6:
L45_7:
    sub x14, x29, #184
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #288
    bl _lb_process_14command_reader
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L45_12
    b L45_11
L45_12:
    add x14, x15, #8
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_11:
    ldr x22, [x15]
    sub x14, x29, #200
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #328
    bl _lb_process_14command_reader
    sub x23, x29, #328
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L45_15
    b L45_14
L45_15:
    add x14, x23, #8
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_14:
    ldr x21, [x23]
    sub x24, x29, #336
    mov x9, #0
    str x9, [x24]
    sub x9, x29, #344
    str x9, [sp, #24]
    mov x9, #0
    ldr x10, [sp, #24]
    str x9, [x10]
    sub x26, x29, #216
    sub x28, x29, #408
    add x27, x28, #24
    sub x9, x29, #440
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #16]
L45_17:
L45_18:
    ldr x14, [x26]
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L45_20
    b L45_21
L45_20:
    sub x23, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    adrp x14, l_text_239@PAGE
    add x14, x14, l_text_239@PAGEOFF
    sub x15, x29, #360
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    add x14, x23, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    mov x0, x14
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_21:
L45_22:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    movz x1, #20
    bl _WaitForSingleObject
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w25, eq
    mov x10, #0
    cmp w25, w10
    cset w15, eq
    cbnz w15, L45_27
    b L45_41
L45_41:
    mov w14, w15
    b L45_28
L45_27:
    movz x10, #258
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L45_28:
    and w15, w14, #255
    cbnz w15, L45_24
    b L45_25
L45_24:
    sub x20, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_250@PAGE
    add x14, x14, l_text_250@PAGEOFF
    sub x15, x29, #376
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x23
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_25:
L45_26:
    ldr x20, [x26]
    mov x0, x22
    mov x1, x24
    mov x2, x20
    sub x8, x29, #408
    bl _lb_process_12pull_windows
    ldrb w14, [x27]
    cbnz w14, L45_31
    b L45_30
L45_31:
    sub x20, x29, #136
    mov x10, x28
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x23
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_30:
    mov x0, x21
    ldr x1, [sp, #24]
    mov x2, x20
    sub x8, x29, #440
    bl _lb_process_12pull_windows
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    cbnz w14, L45_34
    b L45_33
L45_34:
    sub x20, x29, #136
    ldr x10, [sp, #8]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x23
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_33:
    cbnz w25, L45_36
    b L45_37
L45_36:
    sub x20, x29, #136
    add x14, x20, #24
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_37:
L45_38:
    b L45_17

    .p2align 2
    .globl _lb_process_12pull_windows
_lb_process_12pull_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4448
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4416]
    str x20, [sp, #4408]
    str x21, [sp, #4400]
    str x22, [sp, #4392]
    str x23, [sp, #4384]
    str x24, [sp, #4376]
    str x25, [sp, #4368]
    str x26, [sp, #4360]
    str x27, [sp, #4352]
    str x28, [sp, #4344]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x19, x29, #192
    mov x9, #0
    str x9, [x19]
    sub x20, x29, #152
    ldr x14, [x20]
    mov x0, x14
    mov x1, x19
    bl _GetFileSizeEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L46_33
    b L46_4
L46_33:
    mov w15, w14
    b L46_5
L46_4:
    ldr x14, [x19]
    sub x15, x29, #168
    ldr x15, [x15]
    ldr x15, [x15]
    cmp x14, x15
    cset w15, lt
L46_5:
    and w14, w15, #255
    cbnz w14, L46_1
    b L46_2
L46_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_251@PAGE
    add x14, x14, l_text_251@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_6:
    b L46_3
L46_2:
L46_3:
    ldr x14, [x19]
    sub x21, x29, #168
    ldr x22, [x21]
    ldr x15, [x22]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_252@PAGE
    add x0, x0, l_text_252@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    sub x23, x29, #184
    ldr x24, [x23]
    add x15, x24, #48
    ldr x15, [x15]
    cmp x14, x15
    b.ls L46_8
L46_7:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_230@PAGE
    add x14, x14, l_text_230@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_10:
    b L46_9
L46_8:
L46_9:
    movz x16, #4320
    sub x25, x29, x16
    mov x0, x25
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #4356
    sub x26, x29, x16
    movz x16, #4392
    sub x27, x29, x16
    add x9, x27, #8
    str x9, [sp, #16]
    movz x16, #4424
    sub x28, x29, x16
    add x9, x28, #24
    str x9, [sp, #8]
    mov x14, x22
    mov x15, x24
L46_11:
    ldr x22, [x14]
    ldr x24, [x19]
    cmp x22, x24
    b.ge L46_13
L46_12:
    mov x9, x15
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L46_14
    b L46_15
L46_14:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_239@PAGE
    add x14, x14, l_text_239@PAGEOFF
    movz x16, #4336
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_17:
    b L46_16
L46_15:
L46_16:
    ldr x22, [x20]
    ldr x24, [x21]
    ldr x14, [x24]
    mov x0, x22
    mov x1, x14
    mov x2, #0
    mov x3, #0
    bl _SetFilePointerEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L46_19
L46_18:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_253@PAGE
    add x14, x14, l_text_253@PAGEOFF
    movz x16, #4352
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_21:
    b L46_20
L46_19:
L46_20:
    mov x9, #0
    str w9, [x26]
    ldr x14, [x19]
    ldr x15, [x24]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #4096
    mov x1, x14
    bl _lb_process_13math_min_size
    mov x14, x0
    mov x0, x22
    mov x1, x25
    mov x2, x14
    mov x3, x26
    mov x4, #0
    bl _ReadFile
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L46_34
    b L46_25
L46_34:
    mov w15, w14
    b L46_26
L46_25:
    ldr w14, [x26]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L46_26:
    and w14, w15, #255
    cbnz w14, L46_22
    b L46_23
L46_22:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_238@PAGE
    add x14, x14, l_text_238@PAGEOFF
    movz x16, #4376
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_27:
    b L46_24
L46_23:
L46_24:
    ldr x22, [x23]
    ldr w14, [x26]
    mov w15, w14
    movz x10, #4097
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_256@PAGE
    add x0, x0, l_text_256@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L46_28
L46_29:
    adrp x0, l_text_256@PAGE
    add x0, x0, l_text_256@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L46_28:
    str x25, [x27]
    ldr x10, [sp, #16]
    str x15, [x10]
    mov x0, x22
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4424
    sub x8, x29, x16
    bl _lb_process_14command_append
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L46_31
    b L46_30
L46_31:
    sub x19, x29, #136
    mov x10, x28
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_32:
L46_30:
    ldr x14, [x24]
    ldr w15, [x26]
    mov w15, w15
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_257@PAGE
    add x0, x0, l_text_257@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x24]
    mov x14, x24
    mov x15, x22
    b L46_11
L46_13:
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_14command_reader
_lb_process_14command_reader:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #128
    movk x16, #1, lsl #16
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    sub x16, x29, #32
    str x19, [x16]
    sub x16, x29, #40
    str x20, [x16]
    sub x16, x29, #96
    str x0, [x16]
    movz x16, #96
    movk x16, #1, lsl #16
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #1, lsl #16
    bl _memset
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl __fileno
    mov w14, w0
    mov x0, x14
    bl __get_osfhandle
    mov x14, x0
    mov x0, x14
    mov x1, x19
    movz x2, #32768
    mov x3, #0
    bl _GetFinalPathNameByHandleW
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L47_14
    b L47_4
L47_14:
    mov w14, w15
    b L47_5
L47_4:
    movz x10, #32768
    cmp w14, w10
    cset w15, hs
    mov w14, w15
L47_5:
    and w15, w14, #255
    cbnz w15, L47_1
    b L47_2
L47_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_259@PAGE
    add x15, x15, l_text_259@PAGEOFF
    movz x16, #112
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_6:
    b L47_3
L47_2:
L47_3:
    mov x0, x19
    movz x1, #32768, lsl #16
    movz x2, #7
    mov x3, #0
    movz x4, #3
    movz x5, #128
    mov x6, #0
    bl _CreateFileW
    mov x14, x0
    cbnz x14, L47_7
    b L47_8
L47_8:
    adrp x0, l_text_260@PAGE
    add x0, x0, l_text_260@PAGEOFF
    adrp x1, l_text_74@PAGE
    add x1, x1, l_text_74@PAGEOFF
    bl _lb_core_7trap_at
L47_7:
    movn x10, #0
    cmp x14, x10
    b.ne L47_10
L47_9:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_261@PAGE
    add x15, x15, l_text_261@PAGEOFF
    movz x16, #128
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_12:
    b L47_11
L47_10:
L47_11:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_13:
    adrp x0, l_text_262@PAGE
    add x0, x0, l_text_262@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
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
    cbnz w14, L48_11
    b L48_4
L48_11:
    mov w15, w14
    b L48_5
L48_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L48_5:
    and w14, w15, #255
    cbnz w14, L48_1
    b L48_2
L48_1:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_263@PAGE
    add x14, x14, l_text_263@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L48_3
L48_2:
L48_3:
    mov x10, #0
    cmp x19, x10
    b.ls L48_7
L48_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L48_9
    b L48_10
L48_10:
    adrp x0, l_text_264@PAGE
    add x0, x0, l_text_264@PAGEOFF
    adrp x1, l_text_74@PAGE
    add x1, x1, l_text_74@PAGEOFF
    bl _lb_core_7trap_at
L48_9:
    b L48_8
L48_7:
L48_8:
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
    b.ls L49_2
L49_1:
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
    adrp x0, l_text_265@PAGE
    add x0, x0, l_text_265@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x21, [x20]
    add x21, x20, #8
    str x22, [x21]
    ldr x21, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L49_5
    b L49_4
L49_5:
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
L49_4:
    b L49_3
L49_2:
L49_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15release_storage_0g1_u16
    .weak_definition _lb_process_15release_storage_0g1_u16
_lb_process_15release_storage_0g1_u16:
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
    b.ls L50_2
L50_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x20, x29, #80
    ldr x21, [x14]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_265@PAGE
    add x0, x0, l_text_265@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x21, [x20]
    add x21, x20, #8
    str x22, [x21]
    ldr x21, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L50_5
    b L50_4
L50_5:
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
L50_4:
    b L50_3
L50_2:
L50_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Command"
l_text_1:
    .asciz "src/std/process/module.lucb:43:9"
l_text_2:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_3:
    .asciz "memory.unset"
l_text_4:
    .asciz "src/std/process/module.lucb:45:17"
l_text_5:
    .asciz "memory.exhausted"
l_text_6:
    .asciz "src/std/process/module.lucb:47:17"
l_text_7:
    .asciz "src/std/process/module.lucb:48:9"
l_text_8:
    .asciz "index out of bounds"
l_text_9:
    .asciz "src/std/process/module.lucb:52:13"
l_text_10:
    .asciz "the program's output cannot be read"
l_text_11:
    .asciz "src/std/process/module.lucb:62:17"
l_text_12:
    .asciz "src/std/process/module.lucb:65:9"
l_text_13:
    .asciz "src/std/process/module.lucb:67:9"
l_text_14:
    .asciz "unreachable"
l_text_15:
    .asciz "src/std/process/module.lucb:69:9"
l_text_16:
    .asciz "src/std/process/module.lucb:73:13"
l_text_17:
    .asciz "src/std/process/module.lucb:89:5"
l_text_18:
    .asciz "src/std/process/module.lucb:99:5"
l_text_19:
    .asciz "src/std/process/module.lucb:100:5"
l_text_20:
    .asciz "src/std/process/module.lucb:103:9"
l_text_21:
    .asciz "src/std/process/module.lucb:104:9"
l_text_22:
    .asciz "src/std/process/module.lucb:105:5"
l_text_23:
    .asciz "src/std/process/module.lucb:109:9"
l_text_24:
    .asciz "run"
l_text_25:
    .asciz "src/std/process/module.lucb:112:9"
l_text_26:
    .asciz "src/std/process/module.lucb:113:9"
l_text_27:
    .asciz "src/std/process/module.lucb:114:9"
l_text_28:
    .asciz "src/std/process/module.lucb:118:9"
l_text_29:
    .asciz "src/std/process/module.lucb:119:9"
l_text_30:
    .asciz "src/std/process/module.lucb:120:9"
l_text_31:
    .asciz "src/std/process/module.lucb:121:9"
l_text_32:
    .asciz "src/std/process/module.lucb:122:9"
l_text_33:
    .asciz "/dev/null"
l_text_34:
    .asciz "src/std/process/module.lucb:133:9"
l_text_35:
    .asciz "src/std/process/module.lucb:134:9"
l_text_36:
    .asciz "src/std/process/module.lucb:135:9"
l_text_37:
    .asciz "src/std/process/module.lucb:137:9"
l_text_38:
    .asciz "src/std/process/module.lucb:138:9"
l_text_39:
    .asciz "src/std/process/module.lucb:147:5"
l_text_40:
    .asciz "src/std/process/module.lucb:148:5"
l_text_41:
    .asciz "src/std/process/module.lucb:149:5"
l_text_42:
    .asciz "src/std/process/module.lucb:151:5"
l_text_43:
    .asciz "src/std/process/module.lucb:152:5"
l_text_44:
    .asciz "src/std/process/module.lucb:159:9"
l_text_45:
    .asciz "src/std/process/module.lucb:161:9"
l_text_46:
    .asciz "src/std/process/module.lucb:162:9"
l_text_47:
    .asciz "the program was stopped by a signal"
l_text_48:
    .asciz "src/std/process/module.lucb:164:9"
l_text_49:
    .asciz "src/std/process/module.lucb:165:5"
l_text_50:
    .asciz "src/std/process/module.lucb:168:9"
l_text_51:
    .asciz "shift count out of range"
l_text_52:
    .asciz "src/std/process/module.lucb:169:5"
l_text_53:
    .asciz "src/std/process/module.lucb:184:9"
l_text_54:
    .asciz "src/std/process/module.lucb:185:9"
l_text_55:
    .asciz "src/std/process/module.lucb:190:9"
l_text_56:
    .asciz "src/std/process/module.lucb:192:9"
l_text_57:
    .asciz "src/std/process/module.lucb:201:5"
l_text_58:
    .asciz "src/std/process/module.lucb:213:9"
l_text_59:
    .asciz "src/std/process/windows.lucb:53:13"
l_text_60:
    .asciz "src/std/process/windows.lucb:54:13"
l_text_61:
    .asciz "src/std/process/windows.lucb:56:5"
l_text_62:
    .asciz "src/std/process/windows.lucb:57:5"
l_text_63:
    .asciz "src/std/process/windows.lucb:61:13"
l_text_64:
    .asciz "src/std/process/windows.lucb:63:9"
l_text_65:
    .asciz "src/std/process/windows.lucb:66:13"
l_text_66:
    .asciz "src/std/process/windows.lucb:67:13"
l_text_67:
    .asciz "src/std/process/windows.lucb:68:9"
l_text_68:
    .asciz "src/std/process/windows.lucb:69:9"
l_text_69:
    .asciz "src/std/process/windows.lucb:71:5"
l_text_70:
    .asciz "src/std/process/windows.lucb:73:9"
l_text_71:
    .asciz "src/std/process/windows.lucb:74:9"
l_text_72:
    .asciz "src/std/process/windows.lucb:75:5"
l_text_73:
    .asciz "src/std/process/windows.lucb:76:5"
l_text_74:
    .asciz "null_foreign"
l_text_75:
    .asciz "src/std/process/windows.lucb:80:5"
l_text_76:
    .asciz "a child stream could not be inherited"
l_text_77:
    .asciz "a child stream has no handle"
l_text_78:
    .asciz "src/std/process/windows.lucb:83:5"
l_text_79:
    .asciz "a child stream could not be measured"
l_text_80:
    .asciz "a child stream could not be read"
l_text_81:
    .asciz "src/std/process/windows.lucb:91:5"
l_text_82:
    .asciz "src/std/process/windows.lucb:93:9"
l_text_83:
    .asciz "src/std/process/windows.lucb:95:5"
l_text_84:
    .asciz "src/std/process/windows.lucb:100:5"
l_text_85:
    .asciz "src/std/process/windows.lucb:101:5"
l_text_86:
    .asciz "the child temporary directory is unavailable"
l_text_87:
    .asciz "0123456789abcdef"
l_text_88:
    .asciz "src/std/process/windows.lucb:109:13"
l_text_89:
    .asciz "src/std/process/windows.lucb:110:13"
l_text_90:
    .asciz "src/std/process/windows.lucb:111:9"
l_text_91:
    .asciz "src/std/process/windows.lucb:112:9"
l_text_92:
    .asciz "a child capture file could not be created"
l_text_93:
    .asciz "a child capture descriptor could not be created"
l_text_94:
    .asciz "w+b"
l_text_95:
    .asciz "a child capture stream could not be created"
l_text_96:
    .asciz "no unused child capture name was found"
l_text_97:
    .asciz "src/std/process/windows.lucb:124:5"
l_text_98:
    .asciz "the process command is too long"
l_text_99:
    .asciz "src/std/process/windows.lucb:134:5"
l_text_100:
    .asciz "src/std/process/windows.lucb:139:9"
l_text_101:
    .asciz "src/std/process/windows.lucb:140:9"
l_text_102:
    .asciz "src/std/process/windows.lucb:142:5"
l_text_103:
    .asciz "src/std/process/windows.lucb:143:5"
l_text_104:
    .asciz "src/std/process/windows.lucb:146:9"
l_text_105:
    .asciz "src/std/process/windows.lucb:149:9"
l_text_106:
    .asciz "src/std/process/windows.lucb:153:9"
l_text_107:
    .asciz "src/std/process/windows.lucb:155:5"
l_text_108:
    .asciz "src/std/process/windows.lucb:157:5"
l_text_109:
    .asciz "NUL"
l_text_110:
    .asciz "rb"
l_text_111:
    .asciz "the child input could not be opened"
l_text_112:
    .asciz "src/std/process/windows.lucb:159:5"
l_text_113:
    .asciz "src/std/process/windows.lucb:161:5"
l_text_114:
    .asciz "src/std/process/windows.lucb:163:5"
l_text_115:
    .asciz "src/std/process/windows.lucb:165:5"
l_text_116:
    .asciz "the process could not be started"
l_text_117:
    .asciz "src/std/process/windows.lucb:177:9"
l_text_118:
    .asciz "CreateProcess returned no process"
l_text_119:
    .asciz "src/std/process/windows.lucb:178:5"
l_text_120:
    .asciz "CreateProcess returned no thread"
l_text_121:
    .asciz "src/std/process/windows.lucb:179:5"
l_text_122:
    .asciz "src/std/process/windows.lucb:183:9"
l_text_123:
    .asciz "waiting for the process failed"
l_text_124:
    .asciz "src/std/process/windows.lucb:187:9"
l_text_125:
    .asciz "the process exit status is unavailable"
l_text_126:
    .asciz "src/std/process/windows.lucb:190:9"
l_text_127:
    .asciz ""
l_text_128:
    .asciz "src/std/process/windows.lucb:192:9"
l_text_129:
    .asciz "src/std/process/windows.lucb:193:5"
l_text_130:
    .asciz "src/std/process/windows.lucb:196:9"
l_text_131:
    .asciz "src/std/process/windows.lucb:197:5"
l_text_132:
    .asciz "src/std/process/termination/module.lucb:14:9"
l_text_133:
    .asciz "the process is already closing"
l_text_134:
    .asciz "src/std/process/termination/module.lucb:33:9"
l_text_135:
    .asciz "src/std/process/termination/module.lucb:41:9"
l_text_136:
    .asciz "src/std/process/termination/posix.lucb:16:5"
l_text_137:
    .asciz "SIGINT handler could not be installed"
l_text_138:
    .asciz "SIGTERM handler could not be installed"
l_text_139:
    .asciz "src/std/process/termination/windows.lucb:25:5"
l_text_140:
    .asciz "the console termination handler could not be installed"
l_text_141:
    .asciz "src/std/process/environment/posix.lucb:9:9"
l_text_142:
    .asciz "src/std/process/environment/posix.lucb:15:9"
l_text_143:
    .asciz "src/std/process/environment/posix.lucb:18:13"
l_text_144:
    .asciz "an environment override must be NAME=value with a nonempty name"
l_text_145:
    .asciz "src/std/process/environment/posix.lucb:19:5"
l_text_146:
    .asciz "src/std/process/environment/posix.lucb:23:9"
l_text_147:
    .asciz "src/std/process/environment/posix.lucb:25:13"
l_text_148:
    .asciz "an environment override repeats a name"
l_text_149:
    .asciz "src/std/process/environment/posix.lucb:29:9"
l_text_150:
    .asciz "the environment is too large"
l_text_151:
    .asciz "src/std/process/environment/posix.lucb:32:5"
l_text_152:
    .asciz "the environment changed during process creation"
l_text_153:
    .asciz "src/std/process/environment/posix.lucb:36:9"
l_text_154:
    .asciz "src/std/process/environment/posix.lucb:41:13"
l_text_155:
    .asciz "src/std/process/environment/posix.lucb:45:13"
l_text_156:
    .asciz "src/std/process/environment/posix.lucb:46:13"
l_text_157:
    .asciz "src/std/process/environment/posix.lucb:48:9"
l_text_158:
    .asciz "src/std/process/environment/posix.lucb:49:9"
l_text_159:
    .asciz "src/std/process/environment/posix.lucb:50:5"
l_text_160:
    .asciz "src/std/process/environment/posix.lucb:51:5"
l_text_161:
    .asciz "src/std/process/environment/windows.lucb:10:5"
l_text_162:
    .asciz "src/std/process/environment/windows.lucb:11:9"
l_text_163:
    .asciz "src/std/process/environment/windows.lucb:12:5"
l_text_164:
    .asciz "src/std/process/environment/windows.lucb:17:5"
l_text_165:
    .asciz "the inherited environment is unavailable"
l_text_166:
    .asciz "src/std/process/environment/windows.lucb:25:9"
l_text_167:
    .asciz "src/std/process/environment/windows.lucb:27:13"
l_text_168:
    .asciz "src/std/process/environment/windows.lucb:28:9"
l_text_169:
    .asciz "src/std/process/environment/windows.lucb:29:5"
l_text_170:
    .asciz "src/std/process/environment/windows.lucb:34:9"
l_text_171:
    .asciz "src/std/process/environment/windows.lucb:35:9"
l_text_172:
    .asciz "src/std/process/environment/windows.lucb:36:9"
l_text_173:
    .asciz "src/std/process/environment/windows.lucb:38:13"
l_text_174:
    .asciz "src/std/process/environment/windows.lucb:39:17"
l_text_175:
    .asciz "src/std/process/environment/windows.lucb:40:5"
l_text_176:
    .asciz "src/std/process/environment/windows.lucb:41:5"
l_text_177:
    .asciz "src/std/process/environment/windows.lucb:48:13"
l_text_178:
    .asciz "src/std/process/environment/windows.lucb:49:9"
l_text_179:
    .asciz "src/std/process/environment/windows.lucb:50:9"
l_text_180:
    .asciz "src/std/process/environment/windows.lucb:53:13"
l_text_181:
    .asciz "src/std/process/environment/windows.lucb:57:13"
l_text_182:
    .asciz "src/std/process/environment/windows.lucb:58:13"
l_text_183:
    .asciz "src/std/process/environment/windows.lucb:60:9"
l_text_184:
    .asciz "src/std/process/environment/windows.lucb:61:9"
l_text_185:
    .asciz "src/std/process/environment/windows.lucb:63:9"
l_text_186:
    .asciz "src/std/process/environment/windows.lucb:65:9"
l_text_187:
    .asciz "src/std/process/environment/windows.lucb:66:13"
l_text_188:
    .asciz "src/std/process/environment/windows.lucb:67:13"
l_text_189:
    .asciz "src/std/process/environment/windows.lucb:68:9"
l_text_190:
    .asciz "src/std/process/environment/windows.lucb:71:9"
l_text_191:
    .asciz "src/std/process/environment/windows.lucb:72:5"
l_text_192:
    .asciz "src/std/process/environment/windows.lucb:75:9"
l_text_193:
    .asciz "src/std/process/environment/windows.lucb:76:13"
l_text_194:
    .asciz "src/std/process/environment/windows.lucb:77:13"
l_text_195:
    .asciz "src/std/process/environment/windows.lucb:78:5"
l_text_196:
    .asciz "src/std/process/environment/windows.lucb:79:5"
l_text_197:
    .asciz "src/std/process/environment/windows.lucb:83:9"
l_text_198:
    .asciz "a command argument must be UTF-8"
l_text_199:
    .asciz "a command argument cannot contain NUL"
l_text_200:
    .asciz "src/std/process/command/module.lucb:32:9"
l_text_201:
    .asciz "a command needs a program and an output limit in 1..16 MiB"
l_text_202:
    .asciz "src/std/process/command/module.lucb:44:9"
l_text_203:
    .asciz "src/std/process/command/module.lucb:48:9"
l_text_204:
    .asciz "src/std/process/command/module.lucb:50:13"
l_text_205:
    .asciz "src/std/process/command/module.lucb:51:13"
l_text_206:
    .asciz "src/std/process/command/module.lucb:53:13"
l_text_207:
    .asciz "src/std/process/command/module.lucb:55:17"
l_text_208:
    .asciz "src/std/process/command/module.lucb:56:17"
l_text_209:
    .asciz "command"
l_text_210:
    .asciz "the command is closed"
l_text_211:
    .asciz "src/std/process/command/module.lucb:62:9"
l_text_212:
    .asciz "src/std/process/command/module.lucb:65:9"
l_text_213:
    .asciz "src/std/process/command/module.lucb:68:9"
l_text_214:
    .asciz "src/std/process/command/module.lucb:73:9"
l_text_215:
    .asciz "src/std/process/command/module.lucb:84:13"
l_text_216:
    .asciz "\357\277\275"
l_text_217:
    .asciz "src/std/process/command/module.lucb:90:25"
l_text_218:
    .asciz "src/std/process/command/module.lucb:91:21"
l_text_219:
    .asciz "src/std/process/command/module.lucb:94:21"
l_text_220:
    .asciz "src/std/process/command/module.lucb:95:13"
l_text_221:
    .asciz "src/std/process/command/module.lucb:100:9"
l_text_222:
    .asciz "a command worker could not be joined"
l_text_223:
    .asciz "src/std/process/command/module.lucb:110:13"
l_text_224:
    .asciz "src/std/process/command/module.lucb:125:9"
l_text_225:
    .asciz "src/std/process/command/module.lucb:128:13"
l_text_226:
    .asciz "src/std/process/command/module.lucb:129:9"
l_text_227:
    .asciz "src/std/process/command/module.lucb:132:13"
l_text_228:
    .asciz "src/std/process/command/module.lucb:134:13"
l_text_229:
    .asciz "src/std/process/command/module.lucb:153:5"
l_text_230:
    .asciz "the command exceeded its output limit"
l_text_231:
    .asciz "src/std/process/command/module.lucb:155:5"
l_text_232:
    .asciz "src/std/process/command/module.lucb:157:9"
l_text_233:
    .asciz "src/std/process/command/module.lucb:159:13"
l_text_234:
    .asciz "src/std/process/command/module.lucb:162:5"
l_text_235:
    .asciz "src/std/process/command/module.lucb:167:5"
l_text_236:
    .asciz "src/std/process/command/module.lucb:170:5"
l_text_237:
    .asciz "src/std/process/command/posix.lucb:7:5"
l_text_238:
    .asciz "the command output cannot be read"
l_text_239:
    .asciz "command cancelled"
l_text_240:
    .asciz "src/std/process/command/posix.lucb:18:9"
l_text_241:
    .asciz "src/std/process/command/posix.lucb:19:9"
l_text_242:
    .asciz "src/std/process/command/posix.lucb:24:9"
l_text_243:
    .asciz "src/std/process/command/posix.lucb:26:9"
l_text_244:
    .asciz "the command status cannot be read"
l_text_245:
    .asciz "src/std/process/command/posix.lucb:36:17"
l_text_246:
    .asciz "src/std/process/command/posix.lucb:40:5"
l_text_247:
    .asciz "src/std/process/command/posix.lucb:44:9"
l_text_248:
    .asciz "a command job could not be created"
l_text_249:
    .asciz "the command could not enter its process job"
l_text_250:
    .asciz "waiting for the command failed"
l_text_251:
    .asciz "the command output cannot be measured"
l_text_252:
    .asciz "src/std/process/command/windows.lucb:40:5"
l_text_253:
    .asciz "the command output cannot be positioned"
l_text_254:
    .asciz "src/std/process/command/windows.lucb:49:9"
l_text_255:
    .asciz "src/std/process/command/windows.lucb:50:9"
l_text_256:
    .asciz "src/std/process/command/windows.lucb:52:9"
l_text_257:
    .asciz "src/std/process/command/windows.lucb:53:9"
l_text_258:
    .asciz "src/std/process/command/windows.lucb:62:5"
l_text_259:
    .asciz "the command capture path is unavailable"
l_text_260:
    .asciz "src/std/process/command/windows.lucb:65:5"
l_text_261:
    .asciz "the command capture reader could not be opened"
l_text_262:
    .asciz "src/std/process/command/windows.lucb:68:5"
l_text_263:
    .asciz "src/std/memory.lucb:326:9"
l_text_264:
    .asciz "src/std/memory.lucb:328:9"
l_text_265:
    .asciz "src/std/process/module.lucb:174:9"
l_text_266:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_process_7poll_in
    .zerofill __DATA,__bss,_lb_process_7poll_in,2,1
    .globl _lb_process_12poll_hang_up
    .zerofill __DATA,__bss,_lb_process_12poll_hang_up,2,1
    .globl _lb_process_10poll_error
    .zerofill __DATA,__bss,_lb_process_10poll_error,2,1
    .globl _lb_process_9set_flags
    .zerofill __DATA,__bss,_lb_process_9set_flags,4,2
    .globl _lb_process_12non_blocking
    .zerofill __DATA,__bss,_lb_process_12non_blocking,4,2
    .globl _lb_process_11would_block
    .zerofill __DATA,__bss,_lb_process_11would_block,4,2
    .globl _lb_process_failed
    .zerofill __DATA,__bss,_lb_process_failed,4,2
    .globl _lb_process_16termination_lock
    .zerofill __DATA,__bss,_lb_process_16termination_lock,4,2
    .globl _lb_process_18termination_owners
    .zerofill __DATA,__bss,_lb_process_18termination_owners,8,3
    .globl _lb_process_22termination_generation
    .zerofill __DATA,__bss,_lb_process_22termination_generation,8,3
    .globl _lb_process_19termination_closing
    .zerofill __DATA,__bss,_lb_process_19termination_closing,1,0
    .globl _lb_process_18previous_interrupt
    .zerofill __DATA,__bss,_lb_process_18previous_interrupt,8,3
    .globl _lb_process_18previous_terminate
    .zerofill __DATA,__bss,_lb_process_18previous_terminate,8,3
    .globl _lb_process_16interrupt_signal
    .zerofill __DATA,__bss,_lb_process_16interrupt_signal,4,2
    .globl _lb_process_16terminate_signal
    .zerofill __DATA,__bss,_lb_process_16terminate_signal,4,2
    .globl _lb_process_17console_interrupt
    .zerofill __DATA,__bss,_lb_process_17console_interrupt,4,2
    .globl _lb_process_13console_break
    .zerofill __DATA,__bss,_lb_process_13console_break,4,2
    .globl _lb_process_13console_close
    .zerofill __DATA,__bss,_lb_process_13console_close,4,2
    .globl _lb_process_14console_logoff
    .zerofill __DATA,__bss,_lb_process_14console_logoff,4,2
    .globl _lb_process_16console_shutdown
    .zerofill __DATA,__bss,_lb_process_16console_shutdown,4,2
    .globl _lb_process_26console_acknowledgement_ms
    .zerofill __DATA,__bss,_lb_process_26console_acknowledgement_ms,8,3
    .globl _lb_process_12command_type
    .zerofill __DATA,__bss,_lb_process_12command_type,40,3

