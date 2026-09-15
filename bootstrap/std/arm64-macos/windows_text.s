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
_lb_12windows_text_wide:
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
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str w1, [x16]
    adrp x19, _lb_11windows_abi_9utf8_page@PAGE
    add x19, x19, _lb_11windows_abi_9utf8_page@PAGEOFF
    ldr w14, [x19]
    adrp x20, _lb_11windows_abi_19reject_invalid_utf8@PAGE
    add x20, x20, _lb_11windows_abi_19reject_invalid_utf8@PAGEOFF
    ldr w15, [x20]
    sub x21, x29, #168
    ldr x9, [x21]
    str x9, [sp, #8]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #8]
    movn x3, #0
    mov x4, #0
    mov x5, #0
    bl _MultiByteToWideChar
    mov w22, w0
    mov x10, #0
    cmp w22, w10
    b.gt L1_2
L1_1:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #200
    str x15, [x20]
    add x15, x20, #8
    movz x9, #26
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
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x23, x29, #216
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #0]
    sxtw x25, w22
    sub x26, x29, #264
    movz x10, #8192, lsl #48
    cmp x25, x10
    b.ls L1_6
L1_5:
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
    b L1_7
L1_6:
    lsl x27, x25, #1
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
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
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #2
    sub x8, x29, #288
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #288
    add x28, x21, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w24, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w24, w24, w28
    cbnz w24, L1_10
    b L1_11
L1_10:
    add x14, x26, #16
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
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L1_7
L1_11:
    ldr x14, [x21]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L1_7:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L1_13
    b L1_12
L1_13:
    add x14, x26, #16
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
L1_14:
L1_12:
    mov x10, x26
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr w14, [x19]
    ldr w15, [x20]
    ldr x21, [x23]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #8]
    movn x3, #0
    mov x4, x21
    mov x5, x22
    bl _MultiByteToWideChar
    mov w14, w0
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_16
L1_15:
    sub x14, x29, #304
    add x15, x23, #8
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
    str x21, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #0]
    ldr x15, [x9]
    ldr x9, [sp, #0]
    add x19, x9, #8
    ldr x19, [x19]
    cbnz x19, L1_19
    b L1_18
L1_19:
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
L1_18:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    sub x20, x29, #320
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
L1_20:
    b L1_17
L1_16:
L1_17:
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
L1_21:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12windows_text_narrow
_lb_12windows_text_narrow:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    str x23, [sp, #336]
    str x24, [sp, #328]
    str x25, [sp, #320]
    str x26, [sp, #312]
    str x27, [sp, #304]
    str x28, [sp, #296]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str w2, [x16]
    sub x14, x29, #168
    add x15, x14, #8
    ldr x9, [x15]
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x9, x10
    b.ls L2_2
L2_1:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x20, x29, #200
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    b L2_3
L2_2:
L2_3:
    adrp x20, _lb_11windows_abi_9utf8_page@PAGE
    add x20, x20, _lb_11windows_abi_9utf8_page@PAGEOFF
    ldr w15, [x20]
    adrp x21, _lb_11windows_abi_20reject_invalid_utf16@PAGE
    add x21, x21, _lb_11windows_abi_20reject_invalid_utf16@PAGEOFF
    ldr w22, [x21]
    ldr x23, [x14]
    mov x0, x15
    mov x1, x22
    mov x2, x23
    ldr x3, [sp, #24]
    mov x4, #0
    mov x5, #0
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w22, w0
    mov x10, #0
    cmp w22, w10
    cset w15, eq
    cbnz w15, L2_8
    b L2_32
L2_32:
    mov w14, w15
    b L2_9
L2_8:
    ldr x9, [sp, #24]
    mov x10, #0
    cmp x9, x10
    cset w14, hi
L2_9:
    and w15, w14, #255
    cbnz w15, L2_5
    b L2_6
L2_5:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x20, x29, #216
    str x15, [x20]
    add x15, x20, #8
    movz x9, #27
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
    b L2_7
L2_6:
L2_7:
    sub x25, x29, #232
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #8]
    sxtw x9, w22
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x27, x9
    sub x28, x29, #280
    movz x10, #16384, lsl #48
    cmp x27, x10
    b.ls L2_12
L2_11:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    add x27, x14, #8
    str x15, [x27]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b L2_13
L2_12:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
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
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #1
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x19, x29, #304
    add x24, x19, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x27, x10
    cset w26, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w26, w24
    cbnz w24, L2_16
    b L2_17
L2_16:
    add x14, x28, #16
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
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b L2_13
L2_17:
    ldr x14, [x19]
    str x14, [x28]
    add x14, x28, #8
    str x27, [x14]
    add x14, x28, #40
    mov x9, #0
    strb w9, [x14]
L2_13:
    add x14, x28, #40
    ldrb w14, [x14]
    cbnz w14, L2_19
    b L2_18
L2_19:
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
L2_18:
    mov x10, x28
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, #0
    cmp w22, w10
    cset w14, gt
    cbnz w14, L2_24
    b L2_33
L2_33:
    mov w15, w14
    b L2_25
L2_24:
    ldr w14, [x20]
    ldr w15, [x21]
    ldr x19, [x25]
    mov x0, x14
    mov x1, x15
    mov x2, x23
    ldr x3, [sp, #24]
    mov x4, x19
    mov x5, x22
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w14, w0
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_25:
    and w14, w15, #255
    cbnz w14, L2_21
    b L2_22
L2_21:
    sub x14, x29, #320
    ldr x15, [x25]
    add x19, x25, #8
    ldr x19, [x19]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x19, x9, #8
    ldr x19, [x19]
    cbnz x19, L2_27
    b L2_26
L2_27:
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
L2_26:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x20, x29, #336
    str x15, [x20]
    add x15, x20, #8
    movz x9, #39
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_28:
    b L2_23
L2_22:
L2_23:
    ldr x14, [x25]
    add x15, x25, #8
    ldr x15, [x15]
    ldr x9, [sp, #16]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    add x19, x9, x14
    mov x9, #0
    strb w9, [x19]
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
    ldr x9, [sp, #16]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #16]
    cmp x9, x10
    b.ls L2_29
L2_30:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
L2_29:
    sub x15, x29, #352
    str x14, [x15]
    add x15, x15, #8
    ldr x9, [sp, #16]
    str x9, [x15]
    sub x15, x29, #368
    str x14, [x15]
    add x19, x15, #8
    ldr x9, [sp, #16]
    str x9, [x19]
    sub x19, x29, #152
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
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

