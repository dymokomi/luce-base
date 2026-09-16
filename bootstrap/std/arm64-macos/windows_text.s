    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_12windows_text_0init
_lb_12windows_text_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12windows_text_wide
    .no_dead_strip _lb_12windows_text_wide
_lb_12windows_text_wide:
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
    str x25, [sp, #224]
    str x26, [sp, #216]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str w1, [x16]
    sub x14, x29, #152
    ldr x19, [x14]
    movz x0, #65001
    movz x1, #8
    mov x2, x19
    movn x3, #0
    mov x4, #0
    mov x5, #0
    bl _MultiByteToWideChar
    mov w20, w0
    mov x10, #0
    cmp w20, w10
    b.gt L1_2
L1_1:
    sub x19, x29, #136
    add x14, x19, #16
    sub x15, x29, #168
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #26
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x21, x29, #200
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    sxtw x23, w20
    sub x24, x29, #248
    movz x10, #8192, lsl #48
    cmp x23, x10
    b.ls L1_6
L1_5:
    add x14, x24, #16
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
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L1_7
L1_6:
    lsl x25, x23, #1
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L1_8
    b L1_9
L1_9:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_8:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #2
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #272
    add x12, x26, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x25, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L1_10
    b L1_11
L1_10:
    add x14, x24, #16
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
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L1_7
L1_11:
    ldr x14, [x26]
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L1_7:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L1_13
    b L1_12
L1_13:
    add x14, x24, #16
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
L1_12:
    mov x10, x24
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x23, [x21]
    movz x0, #65001
    movz x1, #8
    mov x2, x19
    movn x3, #0
    mov x4, x23
    mov x5, x20
    bl _MultiByteToWideChar
    mov w14, w0
    cmp w20, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_16
L1_15:
    sub x14, x29, #288
    add x15, x21, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x23, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cbnz x12, L1_19
    b L1_18
L1_19:
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
L1_18:
    sub x19, x29, #136
    add x14, x19, #16
    sub x15, x29, #168
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    sub x12, x29, #304
    str x15, [x12]
    add x15, x12, #8
    movz x9, #40
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
    b L1_17
L1_16:
L1_17:
    sub x19, x29, #136
    mov x10, x21
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    ldr x26, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_21:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12windows_text_narrow
    .no_dead_strip _lb_12windows_text_narrow
_lb_12windows_text_narrow:
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
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #176
    str w2, [x16]
    sub x14, x29, #160
    add x15, x14, #8
    ldr x19, [x15]
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x19, x10
    b.ls L2_2
L2_1:
    sub x19, x29, #144
    add x14, x19, #16
    sub x15, x29, #176
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x12, x29, #192
    str x15, [x12]
    add x15, x12, #8
    movz x9, #36
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    b L2_3
L2_2:
L2_3:
    ldr x20, [x14]
    movz x0, #65001
    movz x1, #128
    mov x2, x20
    mov x3, x19
    mov x4, #0
    mov x5, #0
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w21, w0
    mov x10, #0
    cmp w21, w10
    cset w15, eq
    cbnz w15, L2_8
    b L2_32
L2_32:
    mov w14, w15
    b L2_9
L2_8:
    mov x10, #0
    cmp x19, x10
    cset w14, hi
L2_9:
    and w15, w14, #255
    cbnz w15, L2_5
    b L2_6
L2_5:
    sub x19, x29, #144
    add x14, x19, #16
    sub x15, x29, #176
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x12, x29, #208
    str x15, [x12]
    add x15, x12, #8
    movz x9, #27
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
    b L2_7
L2_6:
L2_7:
    sub x23, x29, #224
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    sxtw x22, w21
    mov x9, x22
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    sub x26, x29, #272
    movz x10, #16384, lsl #48
    cmp x25, x10
    b.ls L2_12
L2_11:
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
    b L2_13
L2_12:
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L2_14
    b L2_15
L2_15:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L2_14:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #1
    sub x8, x29, #296
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #296
    add x12, x27, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x25, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L2_16
    b L2_17
L2_16:
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
    b L2_13
L2_17:
    ldr x14, [x27]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L2_13:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L2_19
    b L2_18
L2_19:
    add x14, x26, #16
    sub x19, x29, #144
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
L2_18:
    mov x10, x26
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, #0
    cmp w21, w10
    cset w14, gt
    cbnz w14, L2_24
    b L2_33
L2_33:
    mov w15, w14
    b L2_25
L2_24:
    ldr x14, [x23]
    movz x0, #65001
    movz x1, #128
    mov x2, x20
    mov x3, x19
    mov x4, x14
    mov x5, x21
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w14, w0
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_25:
    and w14, w15, #255
    cbnz w14, L2_21
    b L2_22
L2_21:
    sub x14, x29, #312
    ldr x15, [x23]
    add x12, x23, #8
    ldr x12, [x12]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, L2_27
    b L2_26
L2_27:
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
L2_26:
    sub x19, x29, #144
    add x14, x19, #16
    sub x15, x29, #176
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x12, x29, #328
    str x15, [x12]
    add x15, x12, #8
    movz x9, #39
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_28:
    b L2_23
L2_22:
L2_23:
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cmp x22, x15
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x12, x22, x14
    mov x9, #0
    strb w9, [x12]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x15
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x22
    b.ls L2_29
L2_30:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
L2_29:
    sub x15, x29, #344
    str x14, [x15]
    add x15, x15, #8
    str x22, [x15]
    sub x15, x29, #360
    str x14, [x15]
    add x12, x15, #8
    str x22, [x12]
    sub x19, x29, #144
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    ldr x26, [sp, #280]
    ldr x27, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_31:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_12windows_text_0init

    .section __TEXT,__const
l_text_0:
    .asciz "OS text is not valid UTF-8"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/windows_text.lucb:11:5"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "src/std/windows_text.lucb:13:9"
l_text_6:
    .asciz "OS text could not be converted to UTF-16"
l_text_7:
    .asciz "unreachable"
l_text_8:
    .asciz "src/std/windows_text.lucb:15:5"
l_text_9:
    .asciz "OS text exceeds the conversion limit"
l_text_10:
    .asciz "OS text is not valid UTF-16"
l_text_11:
    .asciz "src/std/windows_text.lucb:23:5"
l_text_12:
    .asciz "src/std/windows_text.lucb:25:9"
l_text_13:
    .asciz "OS text could not be converted to UTF-8"
l_text_14:
    .asciz "src/std/windows_text.lucb:27:5"
l_text_15:
    .asciz "src/std/windows_text.lucb:28:5"
l_text_16:
    .asciz "index out of bounds"
l_text_17:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
