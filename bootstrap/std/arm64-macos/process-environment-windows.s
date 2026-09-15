    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_19environment_windows_0init
_lb_process_19environment_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

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
L1_1:
    cmp x20, x15
    cset w21, lo
    cbnz w21, L1_4
    b L1_9
L1_9:
    mov w22, w21
    b L1_5
L1_4:
    lsl x21, x20, #1
    add x21, x19, x21
    ldrh w21, [x21]
    movz x10, #61
    cmp w21, w10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    cset w22, eq
L1_5:
    and w21, w22, #255
    cbnz w21, L1_2
    b L1_3
L1_2:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x20, x21
    b L1_1
L1_3:
    ldr x21, [x14]
    add x19, x15, #1
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.lo 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L1_6
L1_7:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L1_6:
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
L1_8:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
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
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
L2_1:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_process_19environment_windows
    .no_dead_strip _lb_process_19environment_windows
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
    cbnz x9, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
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
L3_4:
L3_3:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    mov x14, x9
L3_5:
    lsl x15, x14, #1
    ldr x10, [sp, #56]
    add x15, x15, x10
    ldrh w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_7
L3_6:
    ldr x9, [sp, #48]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x21, x14
L3_8:
    lsl x14, x21, #1
    ldr x10, [sp, #56]
    add x14, x14, x10
    ldrh w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_10
L3_9:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x21, x14
    b L3_8
L3_10:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x15
    str x9, [sp, #48]
    b L3_5
L3_7:
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
    b.ls L3_12
L3_11:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    add x26, x14, #8
    str x15, [x26]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L3_13
L3_12:
    lsl x26, x24, #4
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L3_14
    b L3_15
L3_15:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_14:
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
    cbnz w27, L3_16
    b L3_17
L3_16:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L3_13
L3_17:
    ldr x14, [x20]
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L3_13:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L3_19
    b L3_18
L3_19:
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
L3_20:
L3_18:
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
L3_21:
    cmp x27, x24
    b.hs L3_24
L3_22:
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
    cbnz w14, L3_26
    b L3_25
L3_26:
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
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x20, L3_28
    b L3_27
L3_28:
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
L3_27:
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
L3_29:
L3_25:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    cbnz w14, L3_31
    b L3_30
L3_31:
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
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x21, L3_33
    b L3_32
L3_33:
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
L3_32:
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
L3_34:
L3_30:
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    mov x9, #0
    mov x26, x9
L3_35:
    cmp x26, x27
    b.hs L3_38
L3_36:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    b.ne L3_40
L3_39:
    sub x19, x29, #152
    add x14, x19, #16
    ldr x9, [sp, #96]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
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
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x20, L3_43
    b L3_42
L3_43:
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
L3_42:
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
L3_44:
    b L3_41
L3_40:
L3_41:
L3_37:
    add x14, x26, #1
    mov x26, x14
    b L3_35
L3_38:
L3_23:
    add x14, x27, #1
    mov x9, x25
    str x9, [sp, #24]
    mov x27, x14
    b L3_21
L3_24:
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
    cbnz w14, L3_45
    b L3_46
L3_45:
    b L3_47
L3_46:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
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
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x20, L3_49
    b L3_48
L3_49:
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
L3_48:
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
L3_50:
L3_47:
    sub x20, x29, #504
    sub x21, x29, #552
    movz x10, #1024, lsl #48
    cmp x19, x10
    b.ls L3_52
L3_51:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L3_53
L3_52:
    lsl x24, x19, #4
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L3_54
    b L3_55
L3_55:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_54:
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
    cbnz w25, L3_56
    b L3_57
L3_56:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L3_53
L3_57:
    ldr x14, [x27]
    str x14, [x21]
    add x14, x21, #8
    str x19, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L3_53:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L3_59
    b L3_58
L3_59:
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
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x20, L3_61
    b L3_60
L3_61:
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
L3_60:
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
L3_62:
L3_58:
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
L3_63:
    lsl x15, x14, #1
    ldr x10, [sp, #56]
    add x15, x15, x10
    ldrh w21, [x15]
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    b.ne L3_65
L3_64:
    mov x21, x14
L3_66:
    lsl x23, x21, #1
    ldr x10, [sp, #56]
    add x23, x23, x10
    ldrh w23, [x23]
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    b.ne L3_68
L3_67:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x21, x23
    b L3_66
L3_68:
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
L3_69:
    ldr x10, [sp, #24]
    cmp x23, x10
    b.lo L3_70
L3_139:
    mov x9, #0
    mov w14, w9
    b L3_72
L3_70:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x15, [x26]
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    b.ne L3_74
L3_73:
    movz x9, #1
    mov w14, w9
    b L3_72
L3_76:
    b L3_75
L3_74:
L3_75:
L3_71:
    add x14, x23, #1
    mov x23, x14
    b L3_69
L3_72:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L3_78
L3_77:
    ldr x14, [x20]
    ldr x15, [x27]
    ldr x9, [sp, #16]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    b L3_79
L3_78:
    ldr x9, [sp, #16]
    mov x15, x9
L3_79:
    ldr x9, [sp, #80]
    mov x14, x9
    mov x9, x15
    str x9, [sp, #16]
    b L3_63
L3_65:
    add x19, x20, #8
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x9, [sp, #16]
    str x9, [sp, #8]
    mov x9, #0
    mov x24, x9
L3_80:
    ldr x10, [sp, #24]
    cmp x24, x10
    b.hs L3_83
L3_81:
    ldr x14, [x20]
    ldr x15, [x19]
    ldr x9, [sp, #8]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
L3_82:
    add x15, x24, #1
    mov x9, x14
    str x9, [sp, #8]
    mov x24, x15
    b L3_80
L3_83:
    sub x19, x29, #640
    add x9, x20, #8
    str x9, [sp, #72]
    movz x9, #1
    mov x24, x9
L3_84:
    ldr x10, [sp, #8]
    cmp x24, x10
    b.hs L3_87
L3_85:
    ldr x25, [x20]
    ldr x9, [sp, #72]
    ldr x26, [x9]
    cmp x24, x26
    b.lo 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x24, #4
    add x14, x25, x14
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x27, x24
L3_88:
    mov x10, #0
    cmp x27, x10
    cset w14, hi
    cbnz w14, L3_91
    b L3_140
L3_140:
    mov w15, w14
    b L3_92
L3_91:
    mov x9, x27
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x26
    b.lo 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
L3_92:
    and w14, w15, #255
    cbnz w14, L3_89
    b L3_90
L3_89:
    cmp x27, x26
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x27, #4
    add x14, x25, x14
    mov x9, x27
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    cmp x21, x26
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x21, #4
    add x15, x25, x15
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x27, x21
    b L3_88
L3_90:
    cmp x27, x26
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x27, #4
    add x14, x25, x14
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L3_86:
    add x14, x24, #1
    mov x24, x14
    b L3_84
L3_87:
    add x19, x20, #8
    sub x21, x29, #648
    sub x26, x29, #664
    add x24, x26, #8
    movz x9, #1
    mov x14, x9
    mov x9, #0
    mov x25, x9
L3_93:
    ldr x10, [sp, #8]
    cmp x25, x10
    b.hs L3_96
L3_94:
    ldr x27, [x20]
    ldr x23, [x19]
    cmp x25, x23
    b.lo 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    cbnz w15, L3_97
    b L3_98
L3_97:
    b L3_99
L3_98:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
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
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x21, L3_101
    b L3_100
L3_101:
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
L3_100:
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
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x21, [x20]
    cbnz x21, L3_103
    b L3_102
L3_103:
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
L3_102:
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
L3_104:
L3_99:
L3_95:
    add x15, x25, #1
    mov x14, x22
    mov x25, x15
    b L3_93
L3_96:
    sub x19, x29, #728
    ldr x9, [sp, #8]
    mov x10, #0
    cmp x9, x10
    b.ls L3_106
L3_105:
    mov x21, x14
    b L3_107
L3_106:
    movz x9, #2
    mov x21, x9
L3_107:
    sub x22, x29, #776
    movz x10, #8192, lsl #48
    cmp x21, x10
    b.ls L3_109
L3_108:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L3_110
L3_109:
    lsl x23, x21, #1
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L3_111
    b L3_112
L3_112:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_111:
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
    cbnz w24, L3_113
    b L3_114
L3_113:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L3_110
L3_114:
    ldr x14, [x26]
    str x14, [x22]
    add x14, x22, #8
    str x21, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L3_110:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L3_116
    b L3_115
L3_116:
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
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x23, L3_118
    b L3_117
L3_118:
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
L3_117:
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
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x20, [x21]
    cbnz x20, L3_120
    b L3_119
L3_120:
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
L3_119:
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
L3_121:
L3_115:
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
L3_122:
    ldr x10, [sp, #8]
    cmp x25, x10
    b.hs L3_125
L3_123:
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
L3_126:
    ldr x10, [sp, #64]
    cmp x28, x10
    b.hs L3_129
L3_127:
    lsl x24, x28, #1
    add x24, x26, x24
    ldrh w24, [x24]
    cmp x27, x23
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x22, x27, #1
    add x22, x21, x22
    and w24, w24, #65535
    strh w24, [x22]
    add x22, x27, #1
L3_128:
    add x24, x28, #1
    mov x27, x22
    mov x28, x24
    b L3_126
L3_129:
L3_124:
    add x22, x25, #1
    mov x24, x27
    mov x25, x22
    b L3_122
L3_125:
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
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
    cbnz x23, L3_131
    b L3_130
L3_131:
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
L3_130:
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
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x19, [x22]
    cbnz x19, L3_133
    b L3_132
L3_133:
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
L3_132:
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
L3_134:
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
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L3_136
    b L3_135
L3_136:
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
L3_135:
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
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L3_138
    b L3_137
L3_138:
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
L3_137:
    mov x0, x14
    bl _FreeEnvironmentStringsW
    mov w14, w0
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
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
L4_1:
    cmp x24, x19
    b.hs L4_4
L4_2:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
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
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x25, [x22]
    str x14, [x23]
    ldr x14, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L4_6
    b L4_5
L4_6:
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
L4_5:
L4_3:
    add x14, x24, #1
    mov x24, x14
    b L4_1
L4_4:
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

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_19environment_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/process/environment/windows.lucb:10:5"
l_text_1:
    .asciz "src/std/process/environment/windows.lucb:11:9"
l_text_2:
    .asciz "src/std/process/environment/windows.lucb:12:5"
l_text_3:
    .asciz "index out of bounds"
l_text_4:
    .asciz "unreachable"
l_text_5:
    .asciz "src/std/process/environment/windows.lucb:17:5"
l_text_6:
    .asciz "the inherited environment is unavailable"
l_text_7:
    .asciz "src/std/process/environment/windows.lucb:25:9"
l_text_8:
    .asciz "src/std/process/environment/windows.lucb:27:13"
l_text_9:
    .asciz "src/std/process/environment/windows.lucb:28:9"
l_text_10:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_11:
    .asciz "memory.unset"
l_text_12:
    .asciz "src/std/process/environment/windows.lucb:29:5"
l_text_13:
    .asciz "memory.exhausted"
l_text_14:
    .asciz "src/std/process/environment/windows.lucb:34:9"
l_text_15:
    .asciz "src/std/process/environment/windows.lucb:35:9"
l_text_16:
    .asciz "src/std/process/environment/windows.lucb:36:9"
l_text_17:
    .asciz "src/std/process/environment/windows.lucb:38:13"
l_text_18:
    .asciz "an environment override repeats a name"
l_text_19:
    .asciz "src/std/process/environment/windows.lucb:39:17"
l_text_20:
    .asciz "the environment is too large"
l_text_21:
    .asciz "src/std/process/environment/windows.lucb:40:5"
l_text_22:
    .asciz "src/std/process/environment/windows.lucb:41:5"
l_text_23:
    .asciz "src/std/process/environment/windows.lucb:48:13"
l_text_24:
    .asciz "src/std/process/environment/windows.lucb:49:9"
l_text_25:
    .asciz "src/std/process/environment/windows.lucb:50:9"
l_text_26:
    .asciz "src/std/process/environment/windows.lucb:53:13"
l_text_27:
    .asciz "src/std/process/environment/windows.lucb:57:13"
l_text_28:
    .asciz "src/std/process/environment/windows.lucb:58:13"
l_text_29:
    .asciz "src/std/process/environment/windows.lucb:60:9"
l_text_30:
    .asciz "src/std/process/environment/windows.lucb:61:9"
l_text_31:
    .asciz "src/std/process/environment/windows.lucb:63:9"
l_text_32:
    .asciz "src/std/process/environment/windows.lucb:65:9"
l_text_33:
    .asciz "src/std/process/environment/windows.lucb:66:13"
l_text_34:
    .asciz "src/std/process/environment/windows.lucb:67:13"
l_text_35:
    .asciz "src/std/process/environment/windows.lucb:68:9"
l_text_36:
    .asciz "src/std/process/environment/windows.lucb:71:9"
l_text_37:
    .asciz "src/std/process/environment/windows.lucb:72:5"
l_text_38:
    .asciz "src/std/process/environment/windows.lucb:75:9"
l_text_39:
    .asciz "src/std/process/environment/windows.lucb:76:13"
l_text_40:
    .asciz "src/std/process/environment/windows.lucb:77:13"
l_text_41:
    .asciz "src/std/process/environment/windows.lucb:78:5"
l_text_42:
    .asciz "src/std/process/environment/windows.lucb:79:5"
l_text_43:
    .asciz "src/std/process/environment/windows.lucb:83:9"
l_text_44:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
