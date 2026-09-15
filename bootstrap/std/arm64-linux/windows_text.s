    .text

    .p2align 2
    .globl lb_12windows_text_0init
    .type lb_12windows_text_0init, %function
lb_12windows_text_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_12windows_text_0init, .-lb_12windows_text_0init

    .p2align 2
    .globl lb_12windows_text_wide
    .type lb_12windows_text_wide, %function
lb_12windows_text_wide:
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
    str x27, [sp, #224]
    str x28, [sp, #216]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str w1, [x16]
    adrp x19, lb_11windows_abi_9utf8_page
    add x19, x19, :lo12:lb_11windows_abi_9utf8_page
    ldr w14, [x19]
    adrp x20, lb_11windows_abi_19reject_invalid_utf8
    add x20, x20, :lo12:lb_11windows_abi_19reject_invalid_utf8
    ldr w15, [x20]
    sub x12, x29, #168
    ldr x21, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    movn x3, #0
    mov x4, #0
    mov x5, #0
    bl MultiByteToWideChar
    mov w22, w0
    mov x10, #0
    cmp w22, w10
    b.gt .L1_2
.L1_1:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #200
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    b .L1_3
.L1_2:
.L1_3:
    sub x23, x29, #216
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x24, x0
    sxtw x25, w22
    sub x26, x29, #264
    movz x10, #8192, lsl #48
    cmp x25, x10
    b.ls .L1_6
.L1_5:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_7
.L1_6:
    lsl x27, x25, #1
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, .L1_8
    b .L1_9
.L1_9:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L1_8:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #2
    sub x8, x29, #288
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #288
    add x12, x28, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L1_10
    b .L1_11
.L1_10:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_7
.L1_11:
    ldr x14, [x28]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
.L1_7:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, .L1_13
    b .L1_12
.L1_13:
    add x14, x26, #16
    sub x19, x29, #152
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
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_14:
.L1_12:
    mov x10, x26
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr w14, [x19]
    ldr w15, [x20]
    ldr x25, [x23]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    movn x3, #0
    mov x4, x25
    mov x5, x22
    bl MultiByteToWideChar
    mov w14, w0
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L1_16
.L1_15:
    sub x14, x29, #304
    add x15, x23, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_17
    add x1, x1, :lo12:.Ltext_17
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x25, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x24]
    add x12, x24, #8
    ldr x12, [x12]
    cbnz x12, .L1_19
    b .L1_18
.L1_19:
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
.L1_18:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_6
    add x15, x15, :lo12:.Ltext_6
    sub x12, x29, #320
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_20:
    b .L1_17
.L1_16:
.L1_17:
    sub x19, x29, #152
    mov x10, x23
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
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_21:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at

    .size lb_12windows_text_wide, .-lb_12windows_text_wide

    .p2align 2
    .globl lb_12windows_text_narrow
    .type lb_12windows_text_narrow, %function
lb_12windows_text_narrow:
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
    str x24, [sp, #312]
    str x25, [sp, #304]
    str x26, [sp, #296]
    str x27, [sp, #288]
    str x28, [sp, #280]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str w2, [x16]
    sub x14, x29, #168
    add x15, x14, #8
    ldr x19, [x15]
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x19, x10
    b.ls .L2_2
.L2_1:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    sub x12, x29, #200
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    adrp x20, lb_11windows_abi_9utf8_page
    add x20, x20, :lo12:lb_11windows_abi_9utf8_page
    ldr w15, [x20]
    adrp x21, lb_11windows_abi_20reject_invalid_utf16
    add x21, x21, :lo12:lb_11windows_abi_20reject_invalid_utf16
    ldr w12, [x21]
    ldr x22, [x14]
    mov x0, x15
    mov x1, x12
    mov x2, x22
    mov x3, x19
    mov x4, #0
    mov x5, #0
    mov x6, #0
    mov x7, #0
    bl WideCharToMultiByte
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w15, eq
    cbnz w15, .L2_8
    b .L2_32
.L2_32:
    mov w14, w15
    b .L2_9
.L2_8:
    mov x10, #0
    cmp x19, x10
    cset w14, hi
.L2_9:
    and w15, w14, #255
    cbnz w15, .L2_5
    b .L2_6
.L2_5:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
    sub x12, x29, #216
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_10:
    b .L2_7
.L2_6:
.L2_7:
    sub x25, x29, #232
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x26, x0
    sxtw x9, w23
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_17
    add x1, x1, :lo12:.Ltext_17
    bl lb_core_7trap_at
1:
    mov x27, x9
    sub x28, x29, #280
    movz x10, #16384, lsl #48
    cmp x27, x10
    b.ls .L2_12
.L2_11:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b .L2_13
.L2_12:
    ldr x14, [x26]
    add x15, x26, #8
    ldr x15, [x15]
    cbnz x15, .L2_14
    b .L2_15
.L2_15:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L2_14:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #1
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #304
    add x12, x24, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L2_16
    b .L2_17
.L2_16:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b .L2_13
.L2_17:
    ldr x14, [x24]
    str x14, [x28]
    add x14, x28, #8
    str x27, [x14]
    add x14, x28, #40
    mov x9, #0
    strb w9, [x14]
.L2_13:
    add x14, x28, #40
    ldrb w14, [x14]
    cbnz w14, .L2_19
    b .L2_18
.L2_19:
    add x14, x28, #16
    sub x19, x29, #152
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_20:
.L2_18:
    mov x10, x28
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, #0
    cmp w23, w10
    cset w14, gt
    cbnz w14, .L2_24
    b .L2_33
.L2_33:
    mov w15, w14
    b .L2_25
.L2_24:
    ldr w14, [x20]
    ldr w15, [x21]
    ldr x12, [x25]
    mov x0, x14
    mov x1, x15
    mov x2, x22
    mov x3, x19
    mov x4, x12
    mov x5, x23
    mov x6, #0
    mov x7, #0
    bl WideCharToMultiByte
    mov w14, w0
    cmp w23, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L2_25:
    and w14, w15, #255
    cbnz w14, .L2_21
    b .L2_22
.L2_21:
    sub x14, x29, #320
    ldr x15, [x25]
    add x12, x25, #8
    ldr x12, [x12]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x26]
    add x12, x26, #8
    ldr x12, [x12]
    cbnz x12, .L2_27
    b .L2_26
.L2_27:
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
.L2_26:
    sub x19, x29, #152
    add x14, x19, #16
    sub x15, x29, #184
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    sub x12, x29, #336
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_28:
    b .L2_23
.L2_22:
.L2_23:
    ldr x14, [x25]
    add x15, x25, #8
    ldr x15, [x15]
    ldr x9, [sp, #8]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    add x12, x9, x14
    mov x9, #0
    strb w9, [x12]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls .L2_29
.L2_30:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
.L2_29:
    sub x15, x29, #352
    str x14, [x15]
    add x15, x15, #8
    ldr x9, [sp, #8]
    str x9, [x15]
    sub x15, x29, #368
    str x14, [x15]
    add x12, x15, #8
    ldr x9, [sp, #8]
    str x9, [x12]
    sub x19, x29, #152
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_31:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at

    .size lb_12windows_text_narrow, .-lb_12windows_text_narrow

    .section .init_array,"aw"
    .p2align 3
    .quad lb_12windows_text_0init

    .section .rodata
.Ltext_0:
    .asciz "OS text is not valid UTF-8"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/windows_text.lucb:11:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "src/std/windows_text.lucb:13:9"
.Ltext_6:
    .asciz "OS text could not be converted to UTF-16"
.Ltext_7:
    .asciz "unreachable"
.Ltext_8:
    .asciz "src/std/windows_text.lucb:15:5"
.Ltext_9:
    .asciz "OS text exceeds the conversion limit"
.Ltext_10:
    .asciz "OS text is not valid UTF-16"
.Ltext_11:
    .asciz "src/std/windows_text.lucb:23:5"
.Ltext_12:
    .asciz "src/std/windows_text.lucb:25:9"
.Ltext_13:
    .asciz "OS text could not be converted to UTF-8"
.Ltext_14:
    .asciz "src/std/windows_text.lucb:27:5"
.Ltext_15:
    .asciz "src/std/windows_text.lucb:28:5"
.Ltext_16:
    .asciz "index out of bounds"
.Ltext_17:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
