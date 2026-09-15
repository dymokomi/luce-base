    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_io_0init
_lb_io_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    adrp x14, _lb_io_14unexpected_eof@PAGE
    add x14, x14, _lb_io_14unexpected_eof@PAGEOFF
    movz x9, #14
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_11no_progress@PAGE
    add x14, x14, _lb_io_11no_progress@PAGEOFF
    movz x9, #15
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_13invalid_count@PAGE
    add x14, x14, _lb_io_13invalid_count@PAGEOFF
    movz x9, #16
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_14invalid_buffer@PAGE
    add x14, x14, _lb_io_14invalid_buffer@PAGEOFF
    movz x9, #17
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    movz x9, #3
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_failed@PAGE
    add x14, x14, _lb_io_failed@PAGEOFF
    movz x9, #24
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_11would_block@PAGE
    add x14, x14, _lb_io_11would_block@PAGEOFF
    movz x9, #28
    movk x9, #3178, lsl #16
    str w9, [x14]
    sub x19, x29, #28
    mov x11, x19
    str wzr, [x11, #0]
    movz x9, #1
    str w9, [x19]
    adrp x14, _lb_io_8out_file@PAGE
    add x14, x14, _lb_io_8out_file@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    sub x19, x29, #32
    mov x11, x19
    str wzr, [x11, #0]
    movz x9, #2
    str w9, [x19]
    adrp x14, _lb_io_8err_file@PAGE
    add x14, x14, _lb_io_8err_file@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    sub x19, x29, #36
    mov x11, x19
    str wzr, [x11, #0]
    mov x9, #0
    str w9, [x19]
    adrp x14, _lb_io_7in_file@PAGE
    add x14, x14, _lb_io_7in_file@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    adrp x14, _lb_io_full@PAGE
    add x14, x14, _lb_io_full@PAGEOFF
    movz x9, #4
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_io_14io_path_failed@PAGE
    add x14, x14, _lb_io_14io_path_failed@PAGEOFF
    movz x9, #13
    movk x9, #3178, lsl #16
    str w9, [x14]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_10read_exact
    .no_dead_strip _lb_io_10read_exact
_lb_io_10read_exact:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    str x24, [sp, #216]
    str x25, [sp, #208]
    str x26, [sp, #200]
    str x27, [sp, #192]
    str x28, [sp, #184]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #184
    str x4, [x16]
    sub x14, x29, #184
    ldr x19, [x14]
    cbnz x19, L1_4
    b L1_2
L1_4:
L1_1:
    mov x9, #0
    str x9, [x19]
    b L1_3
L1_2:
L1_3:
    sub x9, x29, #168
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #0]
    sub x22, x29, #152
    add x23, x22, #8
    sub x24, x29, #200
    add x25, x24, #8
    sub x28, x29, #240
    add x26, x28, #32
    mov x9, #0
    mov x27, x9
L1_5:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    cmp x27, x14
    b.hs L1_7
L1_6:
    ldr x15, [x22]
    ldr x12, [x23]
    ldr x13, [x12]
    ldr x9, [sp, #8]
    ldr x21, [x9]
    add x12, x14, #1
    cmp x27, x12
    b.lo 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x27, x14
    b.ls L1_8
L1_9:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L1_8:
    add x12, x27, x21
    sub x20, x14, x27
    str x12, [x24]
    str x20, [x25]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    ldrb w12, [x26]
    cbnz w12, L1_11
    b L1_10
L1_11:
    add x14, x28, #8
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
L1_10:
    ldr x14, [x28]
    cmp x14, x20
    b.ls L1_14
L1_13:
    sub x19, x29, #136
    adrp x14, _lb_io_13invalid_count@PAGE
    add x14, x14, _lb_io_13invalid_count@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
    b L1_15
L1_14:
L1_15:
    mov x10, #0
    cmp x14, x10
    b.ne L1_18
L1_17:
    sub x19, x29, #136
    adrp x14, _lb_io_14unexpected_eof@PAGE
    add x14, x14, _lb_io_14unexpected_eof@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
    b L1_19
L1_18:
L1_19:
    mov x9, x14
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cbnz x19, L1_24
    b L1_22
L1_24:
L1_21:
    str x15, [x19]
    b L1_23
L1_22:
L1_23:
    mov x27, x15
    b L1_5
L1_7:
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_9write_all
    .no_dead_strip _lb_io_9write_all
_lb_io_9write_all:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    str x24, [sp, #216]
    str x25, [sp, #208]
    str x26, [sp, #200]
    str x27, [sp, #192]
    str x28, [sp, #184]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #184
    str x4, [x16]
    sub x14, x29, #184
    ldr x19, [x14]
    cbnz x19, L2_4
    b L2_2
L2_4:
L2_1:
    mov x9, #0
    str x9, [x19]
    b L2_3
L2_2:
L2_3:
    sub x9, x29, #168
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #0]
    sub x22, x29, #152
    add x23, x22, #8
    sub x24, x29, #200
    add x25, x24, #8
    sub x28, x29, #240
    add x26, x28, #32
    mov x9, #0
    mov x27, x9
L2_5:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    cmp x27, x14
    b.hs L2_7
L2_6:
    ldr x15, [x22]
    ldr x12, [x23]
    ldr x13, [x12]
    ldr x9, [sp, #8]
    ldr x21, [x9]
    add x12, x14, #1
    cmp x27, x12
    b.lo 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x27, x14
    b.ls L2_8
L2_9:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L2_8:
    add x12, x27, x21
    sub x20, x14, x27
    str x12, [x24]
    str x20, [x25]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    ldrb w12, [x26]
    cbnz w12, L2_11
    b L2_10
L2_11:
    add x14, x28, #8
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
L2_10:
    ldr x14, [x28]
    cmp x14, x20
    b.ls L2_14
L2_13:
    sub x19, x29, #136
    adrp x14, _lb_io_13invalid_count@PAGE
    add x14, x14, _lb_io_13invalid_count@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_16:
    b L2_15
L2_14:
L2_15:
    mov x10, #0
    cmp x14, x10
    b.ne L2_18
L2_17:
    sub x19, x29, #136
    adrp x14, _lb_io_11no_progress@PAGE
    add x14, x14, _lb_io_11no_progress@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
    b L2_19
L2_18:
L2_19:
    mov x9, x14
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cbnz x19, L2_24
    b L2_22
L2_24:
L2_21:
    str x15, [x19]
    b L2_23
L2_22:
L2_23:
    mov x27, x15
    b L2_5
L2_7:
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    ldr x26, [sp, #200]
    ldr x27, [sp, #192]
    ldr x28, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_10copy_limit
    .no_dead_strip _lb_io_10copy_limit
_lb_io_10copy_limit:
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
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #176
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #192
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #208
    str x6, [x16]
    sub x16, x29, #224
    str x7, [x16]
    sub x14, x29, #224
    ldr x9, [x14]
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    cbnz x9, L3_4
    b L3_2
L3_4:
L3_1:
    mov x9, #0
    ldr x10, [sp, #16]
    str x9, [x10]
    b L3_3
L3_2:
L3_3:
    sub x14, x29, #208
    ldr x9, [x14]
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    mov x10, #0
    cmp x9, x10
    b.ne L3_6
L3_5:
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
L3_8:
    b L3_7
L3_6:
L3_7:
    sub x21, x29, #192
    add x14, x21, #8
    ldr x9, [x14]
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    mov x10, #0
    cmp x9, x10
    b.ne L3_10
L3_9:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_io_14invalid_buffer@PAGE
    add x15, x15, _lb_io_14invalid_buffer@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x12, x29, #240
    str x15, [x12]
    add x15, x12, #8
    movz x9, #42
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
L3_12:
    b L3_11
L3_10:
L3_11:
    sub x23, x29, #160
    add x24, x23, #8
    ldr x9, [sp, #72]
    add x25, x9, #1
    sub x26, x29, #256
    add x27, x26, #8
    sub x9, x29, #296
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #32
    str x9, [sp, #64]
    sub x9, x29, #320
    str x9, [sp, #56]
    sub x9, x29, #176
    str x9, [sp, #48]
    sub x9, x29, #360
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #32]
    sub x28, x29, #392
    add x9, x28, #24
    str x9, [sp, #24]
    mov x9, #0
    mov x19, x9
L3_13:
    ldr x10, [sp, #80]
    cmp x19, x10
    b.hs L3_15
L3_14:
    ldr x9, [sp, #80]
    sub x14, x9, x19
    ldr x9, [sp, #72]
    cmp x9, x14
    b.hs L3_17
L3_16:
    ldr x9, [sp, #72]
    mov x20, x9
    b L3_18
L3_17:
    mov x20, x14
L3_18:
    ldr x14, [x23]
    ldr x15, [x24]
    ldr x12, [x15]
    ldr x22, [x21]
    mov x9, #0
    cmp x9, x25
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x25
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L3_19
L3_20:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_19:
    str x22, [x26]
    str x20, [x27]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #296
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #64]
    ldrb w15, [x9]
    cbnz w15, L3_22
    b L3_21
L3_22:
    ldr x9, [sp, #8]
    add x14, x9, #8
    sub x19, x29, #144
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
L3_23:
L3_21:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    cmp x14, x20
    b.ls L3_25
L3_24:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_io_13invalid_count@PAGE
    add x15, x15, _lb_io_13invalid_count@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x12, x29, #312
    str x15, [x12]
    add x15, x12, #8
    movz x9, #45
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
L3_27:
    b L3_26
L3_25:
L3_26:
    mov x10, #0
    cmp x14, x10
    b.ne L3_29
L3_28:
    b L3_15
L3_31:
    b L3_30
L3_29:
L3_30:
    mov x9, #0
    ldr x10, [sp, #56]
    str x9, [x10]
    mov x9, #0
    cmp x9, x14
    b.ls L3_34
L3_35:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_34:
    ldr x10, [sp, #40]
    str x22, [x10]
    ldr x10, [sp, #32]
    str x14, [x10]
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #40]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    ldr x4, [sp, #56]
    sub x8, x29, #392
    bl _lb_io_9write_all
    ldr x9, [sp, #24]
    ldrb w15, [x9]
    cbnz w15, L3_37
    b L3_36
L3_37:
    sub x20, x29, #344
    mov x10, x28
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L3_32
L3_36:
    b L3_33
L3_32:
    ldr x9, [sp, #16]
    cbnz x9, L3_41
    b L3_39
L3_41:
L3_38:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #16]
    str x14, [x10]
    b L3_40
L3_39:
L3_40:
    sub x19, x29, #144
    add x14, x19, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
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
L3_42:
L3_33:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #16]
    cbnz x9, L3_46
    b L3_44
L3_46:
L3_43:
    ldr x10, [sp, #16]
    str x14, [x10]
    b L3_45
L3_44:
L3_45:
    mov x19, x14
    b L3_13
L3_15:
    sub x14, x29, #144
    str x19, [x14]
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
L3_47:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_SliceReader_over
    .no_dead_strip _lb_io_SliceReader_over
_lb_io_SliceReader_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_SliceReader_remaining
    .no_dead_strip _lb_io_SliceReader_remaining
_lb_io_SliceReader_remaining:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    add x14, x15, #8
    ldr x14, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_SliceReader_read
    .no_dead_strip _lb_io_SliceReader_read
_lb_io_SliceReader_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    str x21, [sp, #96]
    str x22, [sp, #88]
    str x23, [sp, #80]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x13, [x9]
    add x14, x13, #8
    ldr x14, [x14]
    add x19, x13, #16
    ldr x15, [x19]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    b L6_8
L6_7:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_8:
    sub x20, x29, #128
    add x21, x20, #8
    ldr x21, [x21]
    cmp x21, x12
    b.hs L6_2
L6_1:
    mov x22, x21
    b L6_3
L6_2:
    mov x22, x12
L6_3:
    ldr x21, [x13]
    add x12, x14, #1
    cmp x15, x12
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x14
    b.ls L6_4
L6_5:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L6_4:
    add x12, x15, x21
    sub x13, x14, x15
    sub x23, x29, #144
    str x12, [x23]
    add x12, x23, #8
    str x13, [x12]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    bl _lb_memory_move_0g1_u8
    ldr x12, [x19]
    mov x9, x12
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x19]
    sub x12, x29, #104
    str x22, [x12]
    add x13, x12, #32
    mov x9, #0
    strb w9, [x13]
    mov x1, x12
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    ldr x22, [sp, #88]
    ldr x23, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_SliceWriter_over
    .no_dead_strip _lb_io_SliceWriter_over
_lb_io_SliceWriter_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_1:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_SliceWriter_written
    .no_dead_strip _lb_io_SliceWriter_written
_lb_io_SliceWriter_written:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x15, [x9]
    ldr x12, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L8_1
L8_2:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L8_1:
    sub x14, x29, #64
    str x12, [x14]
    add x13, x14, #8
    str x15, [x13]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_SliceWriter_write
    .no_dead_strip _lb_io_SliceWriter_write
_lb_io_SliceWriter_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    str x23, [sp, #96]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x13, [x9]
    sub x14, x29, #128
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L9_2
L9_1:
    sub x14, x29, #104
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
    b L9_3
L9_2:
L9_3:
    add x12, x13, #8
    ldr x12, [x12]
    add x19, x13, #16
    ldr x20, [x19]
    mov x9, x12
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x10, #0
    cmp x21, x10
    b.ne L9_6
L9_5:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, _lb_io_full@PAGE
    add x15, x15, _lb_io_full@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_27@PAGE
    add x15, x15, l_text_27@PAGEOFF
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #30
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_8:
    b L9_7
L9_6:
L9_7:
    cmp x15, x21
    b.hs L9_10
L9_9:
    mov x21, x15
    b L9_11
L9_10:
L9_11:
    ldr x22, [x13]
    add x15, x12, #1
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x15
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x12
    b.ls L9_12
L9_13:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L9_12:
    add x15, x20, x22
    sub x13, x12, x20
    sub x23, x29, #160
    str x15, [x23]
    add x15, x23, #8
    str x13, [x15]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    bl _lb_memory_move_0g1_u8
    ldr x15, [x19]
    mov x9, x15
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x19]
    sub x15, x29, #104
    str x21, [x15]
    add x13, x15, #32
    mov x9, #0
    strb w9, [x13]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_14:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_BufferedReader_over
    .no_dead_strip _lb_io_BufferedReader_over
_lb_io_BufferedReader_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #160
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #160
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L10_2
L10_1:
    sub x19, x29, #128
    add x14, x19, #48
    adrp x15, _lb_io_14invalid_buffer@PAGE
    add x15, x15, _lb_io_14invalid_buffer@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_31@PAGE
    add x15, x15, l_text_31@PAGEOFF
    sub x12, x29, #176
    str x15, [x12]
    add x15, x12, #8
    movz x9, #40
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #72
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #80
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    b L10_3
L10_2:
L10_3:
    sub x20, x29, #224
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    sub x14, x29, #144
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    str x9, [x14]
    add x14, x20, #40
    mov x9, #0
    str x9, [x14]
    sub x21, x29, #128
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    add x14, x21, #72
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #80
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_5:
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_BufferedReader_buffered
    .no_dead_strip _lb_io_BufferedReader_buffered
_lb_io_BufferedReader_buffered:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    add x14, x15, #40
    ldr x14, [x14]
    add x15, x15, #32
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_1:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_BufferedReader_read
    .no_dead_strip _lb_io_BufferedReader_read
_lb_io_BufferedReader_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    str x23, [sp, #144]
    str x24, [sp, #136]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x21, [x9]
    sub x19, x29, #136
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L12_2
L12_1:
    sub x14, x29, #112
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
    b L12_3
L12_2:
L12_3:
    add x22, x21, #32
    ldr x14, [x22]
    add x23, x21, #40
    ldr x15, [x23]
    cmp x14, x15
    b.ne L12_6
L12_5:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    ldr x15, [x15]
    add x24, x21, #16
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #176
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L12_9
    b L12_8
L12_9:
    add x14, x15, #8
    sub x19, x29, #112
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_10:
L12_8:
    ldr x14, [x15]
    add x12, x24, #8
    ldr x12, [x12]
    cmp x14, x12
    b.ls L12_12
L12_11:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, _lb_io_13invalid_count@PAGE
    add x15, x15, _lb_io_13invalid_count@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x12, x29, #192
    str x15, [x12]
    add x15, x12, #8
    movz x9, #45
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_14:
    b L12_13
L12_12:
L12_13:
    mov x9, #0
    str x9, [x22]
    str x14, [x23]
    mov x15, x14
    mov x9, #0
    mov x12, x9
    b L12_7
L12_6:
    mov x12, x14
L12_7:
    mov x9, x15
    mov x10, x12
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L12_22
L12_21:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L12_22:
    ldr x15, [x20]
    cmp x15, x14
    b.hs L12_16
L12_15:
    mov x20, x15
    b L12_17
L12_16:
    mov x20, x14
L12_17:
    add x14, x21, #16
    ldr x15, [x14]
    add x14, x14, #8
    ldr x13, [x14]
    add x14, x13, #1
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x13
    b.ls L12_18
L12_19:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L12_18:
    add x14, x15, x12
    sub x21, x13, x12
    sub x23, x29, #208
    str x14, [x23]
    add x14, x23, #8
    str x21, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x22]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x22]
    sub x14, x29, #112
    str x20, [x14]
    add x21, x14, #32
    mov x9, #0
    strb w9, [x21]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_20:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_BufferedWriter_over
    .no_dead_strip _lb_io_BufferedWriter_over
_lb_io_BufferedWriter_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #152
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #152
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L13_2
L13_1:
    sub x19, x29, #120
    add x14, x19, #40
    adrp x15, _lb_io_14invalid_buffer@PAGE
    add x15, x15, _lb_io_14invalid_buffer@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_37@PAGE
    add x15, x15, l_text_37@PAGEOFF
    sub x12, x29, #168
    str x15, [x12]
    add x15, x12, #8
    movz x9, #41
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
    b L13_3
L13_2:
L13_3:
    sub x20, x29, #208
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x14, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    str x9, [x14]
    sub x21, x29, #120
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x21, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_5:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_BufferedWriter_buffered
    .no_dead_strip _lb_io_BufferedWriter_buffered
_lb_io_BufferedWriter_buffered:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #32
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_1:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_BufferedWriter_flush
    .no_dead_strip _lb_io_BufferedWriter_flush
_lb_io_BufferedWriter_flush:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    str x23, [sp, #144]
    str x24, [sp, #136]
    sub x16, x29, #112
    str x0, [x16]
    sub x9, x29, #112
    ldr x15, [x9]
    sub x19, x29, #120
    mov x9, #0
    str x9, [x19]
    add x20, x15, #16
    ldr x12, [x20]
    add x21, x20, #8
    ldr x14, [x21]
    add x22, x15, #32
    ldr x13, [x22]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x13
    b.ls L15_3
L15_4:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L15_3:
    sub x14, x29, #160
    str x12, [x14]
    add x23, x14, #8
    str x13, [x23]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    sub x8, x29, #192
    bl _lb_io_9write_all
    sub x23, x29, #192
    add x14, x23, #24
    ldrb w14, [x14]
    cbnz w14, L15_6
    b L15_5
L15_6:
    sub x24, x29, #144
    mov x10, x23
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L15_1
L15_5:
    b L15_2
L15_1:
    ldr x14, [x22]
    ldr x15, [x19]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x22]
    ldr x15, [x20]
    ldr x12, [x21]
    ldr x13, [x19]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x12
    b.ls L15_7
L15_8:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L15_7:
    add x14, x15, x13
    sub x19, x12, x13
    sub x21, x29, #208
    str x14, [x21]
    add x14, x21, #8
    str x19, [x14]
    ldr x14, [x22]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_move_0g1_u8
    sub x19, x29, #104
    ldr w14, [x24]
    str w14, [x19]
    add x14, x24, #8
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_9:
L15_2:
    mov x9, #0
    str x9, [x22]
    sub x14, x29, #104
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_BufferedWriter_write
    .no_dead_strip _lb_io_BufferedWriter_write
_lb_io_BufferedWriter_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    str x22, [sp, #136]
    str x23, [sp, #128]
    str x24, [sp, #120]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x15, [x9]
    sub x19, x29, #136
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L16_2
L16_1:
    sub x14, x29, #112
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_4:
    b L16_3
L16_2:
L16_3:
    add x21, x15, #32
    ldr x14, [x21]
    add x22, x15, #16
    add x23, x22, #8
    ldr x12, [x23]
    cmp x14, x12
    b.ne L16_6
L16_5:
    mov x0, x15
    sub x8, x29, #168
    bl _lb_io_BufferedWriter_flush
    sub x12, x29, #168
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L16_9
    b L16_8
L16_9:
    sub x19, x29, #112
    add x14, x19, #8
    mov x10, x12
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_10:
L16_8:
    b L16_7
L16_6:
L16_7:
    ldr x14, [x23]
    ldr x15, [x21]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    ldr x13, [x20]
    cmp x13, x12
    b.hs L16_12
L16_11:
    mov x20, x13
    b L16_13
L16_12:
    mov x20, x12
L16_13:
    ldr x13, [x22]
    add x12, x14, #1
    cmp x15, x12
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x14
    b.ls L16_14
L16_15:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L16_14:
    add x12, x15, x13
    sub x22, x14, x15
    sub x23, x29, #184
    str x12, [x23]
    add x12, x23, #8
    str x22, [x12]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl _lb_memory_copy_0g1_u8
    ldr x12, [x21]
    mov x9, x12
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x21]
    sub x12, x29, #112
    str x20, [x12]
    add x22, x12, #32
    mov x9, #0
    strb w9, [x22]
    mov x1, x12
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_16:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_File_stream
_lb_io_File_stream:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    ldrsw x14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L17_2
L17_1:
    adrp x14, ___stdoutp@GOTPAGE
    ldr x14, [x14, ___stdoutp@GOTPAGEOFF]
    ldr x14, [x14]
    sub x15, x29, #72
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_4:
    b L17_3
L17_2:
L17_3:
    movz x10, #2
    cmp w14, w10
    b.ne L17_6
L17_5:
    adrp x14, ___stderrp@GOTPAGE
    ldr x14, [x14, ___stderrp@GOTPAGEOFF]
    ldr x14, [x14]
    sub x15, x29, #72
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_8:
    b L17_7
L17_6:
L17_7:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_47@PAGE
    add x15, x15, l_text_47@PAGEOFF
    sub x12, x29, #96
    str x15, [x12]
    add x15, x12, #8
    movz x9, #41
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_9:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_File_flush
    .no_dead_strip _lb_io_File_flush
_lb_io_File_flush:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #112
    bl _lb_io_File_stream
    sub x15, x29, #112
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_2
    b L18_1
L18_2:
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
L18_3:
L18_1:
    ldr x14, [x15]
    mov x0, x14
    bl _fflush
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L18_5
L18_4:
    sub x19, x29, #64
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_49@PAGE
    add x14, x14, l_text_49@PAGEOFF
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_7:
    b L18_6
L18_5:
L18_6:
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
    .globl _lb_io_File_write
    .no_dead_strip _lb_io_File_write
_lb_io_File_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #104
    ldr x15, [x9]
    sub x19, x29, #120
    add x14, x19, #8
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ne L19_2
L19_1:
    sub x14, x29, #96
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_4:
    b L19_3
L19_2:
L19_3:
    mov x0, x15
    sub x8, x29, #160
    bl _lb_io_File_stream
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L19_6
    b L19_5
L19_6:
    add x14, x12, #8
    sub x19, x29, #96
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_7:
L19_5:
    ldr x21, [x12]
    sub x10, x29, #192
    str x21, [x10]
    mov x0, x21
    bl _flockfile
L19_15:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #1
    mov x2, x20
    mov x3, x21
    bl _fwrite
    mov x22, x0
    mov x0, x21
    bl _fflush
    mov w14, w0
    cmp x20, x22
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L19_19
    b L19_11
L19_19:
    mov w14, w15
    b L19_12
L19_11:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L19_12:
    and w15, w14, #255
    cbnz w15, L19_8
    b L19_9
L19_8:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_50@PAGE
    add x15, x15, l_text_50@PAGEOFF
    sub x12, x29, #176
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #208
    str x21, [x10]
    mov x0, x21
    bl _funlockfile
L19_16:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_13:
    b L19_10
L19_9:
L19_10:
    sub x19, x29, #96
    str x22, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    sub x10, x29, #208
    str x21, [x10]
    mov x0, x21
    bl _funlockfile
L19_17:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_14:
    sub x10, x29, #208
    str x14, [x10]
    sub x14, x29, #208
    ldr x14, [x14]
    mov x0, x14
    bl _funlockfile
L19_18:
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_StandardInput_read
    .no_dead_strip _lb_io_StandardInput_read
_lb_io_StandardInput_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #104
    ldr x20, [x9]
    sub x19, x29, #120
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L20_2
L20_1:
    sub x14, x29, #96
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_2:
L20_3:
    movz x10, #16384, lsl #16
    cmp x14, x10
    b.ls L20_6
L20_5:
    movz x9, #16384, lsl #16
    mov x21, x9
    b L20_7
L20_6:
    mov x21, x14
L20_7:
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
L20_8:
L20_9:
    ldrsw x14, [x20]
    ldr x15, [x19]
    sub x10, x29, #184
    str w14, [x10]
    sub x10, x29, #200
    str x15, [x10]
    sub x10, x29, #216
    str x21, [x10]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _read
    mov x14, x0
L20_32:
    mov x10, #0
    cmp x14, x10
    b.lt L20_12
L20_11:
    sub x15, x29, #96
    str x14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
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
L20_12:
L20_13:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    b.ne L20_16
L20_15:
    b L20_8
L20_16:
L20_17:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L20_22
    b L20_23
L20_22:
    movz x9, #35
    mov w15, w9
    b L20_24
L20_23:
    movz x9, #11
    mov w15, w9
L20_24:
    cmp w14, w15
    b.ne L20_20
L20_19:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_io_11would_block@PAGE
    add x15, x15, _lb_io_11would_block@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_52@PAGE
    add x15, x15, l_text_52@PAGEOFF
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #26
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_20:
L20_21:
    movz x10, #9
    cmp w14, w10
    b.ne L20_27
L20_26:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_53@PAGE
    add x15, x15, l_text_53@PAGEOFF
    sub x12, x29, #152
    str x15, [x12]
    add x15, x12, #8
    movz x9, #24
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_27:
L20_28:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_io_failed@PAGE
    add x15, x15, _lb_io_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_54@PAGE
    add x15, x15, l_text_54@PAGEOFF
    sub x12, x29, #168
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_stdin
    .no_dead_strip _lb_io_stdin
_lb_io_stdin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    adrp x14, _lb_io_7in_file@PAGE
    add x14, x14, _lb_io_7in_file@PAGEOFF
    sub x15, x29, #56
    str x14, [x15]
    adrp x14, _lb_vt_io_StandardInput_Reader@PAGE
    add x14, x14, _lb_vt_io_StandardInput_Reader@PAGEOFF
    add x12, x15, #8
    str x14, [x12]
    sub x19, x29, #40
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_1:
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_stdout
    .no_dead_strip _lb_io_stdout
_lb_io_stdout:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    adrp x14, _lb_io_8out_file@PAGE
    add x14, x14, _lb_io_8out_file@PAGEOFF
    sub x15, x29, #56
    str x14, [x15]
    adrp x14, _lb_vt_io_File_Writer@PAGE
    add x14, x14, _lb_vt_io_File_Writer@PAGEOFF
    add x12, x15, #8
    str x14, [x12]
    sub x19, x29, #40
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_1:
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_stderr
    .no_dead_strip _lb_io_stderr
_lb_io_stderr:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    adrp x14, _lb_io_8err_file@PAGE
    add x14, x14, _lb_io_8err_file@PAGEOFF
    sub x15, x29, #56
    str x14, [x15]
    adrp x14, _lb_vt_io_File_Writer@PAGE
    add x14, x14, _lb_vt_io_File_Writer@PAGEOFF
    add x12, x15, #8
    str x14, [x12]
    sub x19, x29, #40
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_1:
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_12flush_stdout
    .no_dead_strip _lb_io_12flush_stdout
_lb_io_12flush_stdout:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    adrp x14, _lb_io_8out_file@PAGE
    add x14, x14, _lb_io_8out_file@PAGEOFF
    mov x0, x14
    sub x8, x29, #96
    bl _lb_io_File_flush
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L24_2
    b L24_1
L24_2:
    sub x19, x29, #64
    mov x10, x15
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_3:
L24_1:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_12flush_stderr
    .no_dead_strip _lb_io_12flush_stderr
_lb_io_12flush_stderr:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    adrp x14, _lb_io_8err_file@PAGE
    add x14, x14, _lb_io_8err_file@PAGEOFF
    mov x0, x14
    sub x8, x29, #96
    bl _lb_io_File_flush
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L25_2
    b L25_1
L25_2:
    sub x19, x29, #64
    mov x10, x15
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_3:
L25_1:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_FormatSink_write
    .no_dead_strip _lb_io_FormatSink_write
_lb_io_FormatSink_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #80
    ldr x14, [x9]
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x12, [x15]
    add x15, x15, #8
    ldr x19, [x15]
    mov x0, x14
    mov x1, x12
    mov x2, x19
    bl _lb_core_10format_put
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L26_2
L26_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, _lb_io_full@PAGE
    add x15, x15, _lb_io_full@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_59@PAGE
    add x15, x15, l_text_59@PAGEOFF
    sub x12, x29, #112
    str x15, [x12]
    add x15, x12, #8
    movz x9, #18
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_4:
    b L26_3
L26_2:
L26_3:
    sub x14, x29, #72
    str x19, [x14]
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_5:
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_path_user
    .no_dead_strip _lb_io_path_user
_lb_io_path_user:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    sub x19, x29, #112
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L27_1
    b L27_2
L27_1:
    adrp x14, l_text_61@PAGE
    add x14, x14, l_text_61@PAGEOFF
    b L27_3
L27_2:
    adrp x14, l_text_62@PAGE
    add x14, x14, l_text_62@PAGEOFF
L27_3:
    mov x0, x14
    sub x8, x29, #136
    bl _lb_os_env
    sub x12, x29, #136
    add x15, x12, #16
    ldrb w15, [x15]
    cbnz w15, L27_4
    b L27_5
L27_4:
    sub x20, x29, #152
    mov x10, x12
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L27_6
L27_5:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_io_14io_path_failed@PAGE
    add x15, x15, _lb_io_14io_path_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_63@PAGE
    add x15, x15, l_text_63@PAGEOFF
    sub x12, x29, #168
    str x15, [x12]
    add x15, x12, #8
    movz x9, #17
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_7:
L27_6:
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #96
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_8:
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_path_home
    .no_dead_strip _lb_io_path_home
_lb_io_path_home:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x8, x29, #128
    bl _lb_io_path_user
    sub x15, x29, #128
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L28_2
    b L28_1
L28_2:
    add x14, x15, #16
    sub x19, x29, #80
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_3:
L28_1:
    sub x19, x29, #80
    mov x10, x15
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_4:
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_path_temp
    .no_dead_strip _lb_io_path_temp
_lb_io_path_temp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x19, x29, #72
    adrp x14, l_text_66@PAGE
    add x14, x14, l_text_66@PAGEOFF
    mov x0, x14
    sub x8, x29, #96
    bl _lb_os_env
    sub x15, x29, #96
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L29_1
    b L29_2
L29_1:
    sub x20, x29, #112
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L29_3
L29_2:
    adrp x14, l_text_67@PAGE
    add x14, x14, l_text_67@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    sub x19, x29, #56
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_4:
L29_3:
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #56
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_5:
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_io_path_config
    .no_dead_strip _lb_io_path_config
_lb_io_path_config:
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
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x14
    sub x8, x29, #160
    bl _lb_os_env
    sub x15, x29, #160
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L30_4
    b L30_2
L30_4:
    sub x19, x29, #176
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L30_1:
    sub x20, x29, #136
    mov x10, x19
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_5:
    b L30_3
L30_2:
L30_3:
    sub x19, x29, #192
    sub x8, x29, #240
    bl _lb_io_path_user
    sub x15, x29, #240
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L30_7
    b L30_6
L30_7:
    add x14, x15, #16
    sub x19, x29, #136
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_8:
L30_6:
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #256
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x12, x0
    add x14, x19, #8
    ldr x20, [x14]
    mov x9, x20
    movz x10, #9
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_82@PAGE
    add x1, x1, l_text_82@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    sub x23, x29, #304
    movz x10, #16384, lsl #48
    cmp x22, x10
    b.ls L30_10
L30_9:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_71@PAGE
    add x15, x15, l_text_71@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L30_11
L30_10:
    ldr x14, [x12]
    add x15, x12, #8
    ldr x15, [x15]
    cbnz x15, L30_12
    b L30_13
L30_13:
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_72@PAGE
    add x1, x1, l_text_72@PAGEOFF
    bl _lb_core_7trap_at
L30_12:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #328
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #328
    add x12, x24, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x22, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L30_14
    b L30_15
L30_14:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_73@PAGE
    add x15, x15, l_text_73@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L30_11
L30_15:
    ldr x14, [x24]
    str x14, [x23]
    add x14, x23, #8
    str x22, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L30_11:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L30_17
    b L30_16
L30_17:
    add x14, x23, #16
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_18:
L30_16:
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #352
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    str x14, [x22]
    add x24, x22, #8
    str x15, [x24]
    add x25, x22, #16
    mov x9, #0
    str x9, [x25]
    ldr x14, [x19]
    mov x0, x22
    mov x1, x14
    mov x2, x20
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_74@PAGE
    add x14, x14, l_text_74@PAGEOFF
    mov x0, x22
    mov x1, x14
    movz x2, #8
    bl _lb_core_10format_put
    mov w14, w0
    sub x26, x29, #400
    ldr x14, [x25]
    ldr x15, [x24]
    cmp x14, x15
    b.ls L30_20
L30_19:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_75@PAGE
    add x15, x15, l_text_75@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L30_21
L30_20:
    mov x0, x22
    bl _lb_core_13format_finish
    sub x16, x29, #416
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #416
    mov x10, x14
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L30_21:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L30_23
    b L30_22
L30_23:
    add x14, x26, #16
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_24:
L30_22:
    sub x19, x29, #136
    mov x10, x26
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_25:
    adrp x0, l_text_76@PAGE
    add x0, x0, l_text_76@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_move_0g1_u8
    .weak_definition _lb_memory_move_0g1_u8
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
    cbnz w14, L31_11
    b L31_4
L31_11:
    mov w15, w14
    b L31_5
L31_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L31_5:
    and w14, w15, #255
    cbnz w14, L31_1
    b L31_2
L31_1:
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_77@PAGE
    add x14, x14, l_text_77@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L31_3
L31_2:
L31_3:
    mov x10, #0
    cmp x19, x10
    b.ls L31_7
L31_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memmove
    mov x14, x0
    cbnz x14, L31_9
    b L31_10
L31_10:
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_79@PAGE
    add x1, x1, l_text_79@PAGEOFF
    bl _lb_core_7trap_at
L31_9:
    b L31_8
L31_7:
L31_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

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
    cbnz w14, L32_11
    b L32_4
L32_11:
    mov w15, w14
    b L32_5
L32_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L32_5:
    and w14, w15, #255
    cbnz w14, L32_1
    b L32_2
L32_1:
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_80@PAGE
    add x14, x14, l_text_80@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L32_3
L32_2:
L32_3:
    mov x10, #0
    cmp x19, x10
    b.ls L32_7
L32_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L32_9
    b L32_10
L32_10:
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_79@PAGE
    add x1, x1, l_text_79@PAGEOFF
    bl _lb_core_7trap_at
L32_9:
    b L32_8
L32_7:
L32_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_io_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/io.lucb:18:5"
l_text_2:
    .asciz "src/std/io.lucb:46:9"
l_text_3:
    .asciz "index out of bounds"
l_text_4:
    .asciz "src/std/io.lucb:47:9"
l_text_5:
    .asciz "the reader returned more bytes than requested"
l_text_6:
    .asciz "the reader ended before the buffer was filled"
l_text_7:
    .asciz "src/std/io.lucb:51:9"
l_text_8:
    .asciz "src/std/io.lucb:64:9"
l_text_9:
    .asciz "src/std/io.lucb:65:9"
l_text_10:
    .asciz "the writer returned more bytes than supplied"
l_text_11:
    .asciz "the writer accepted no bytes"
l_text_12:
    .asciz "src/std/io.lucb:69:9"
l_text_13:
    .asciz "copying requires a nonempty scratch buffer"
l_text_14:
    .asciz "src/std/io.lucb:87:9"
l_text_15:
    .asciz "src/std/io.lucb:89:9"
l_text_16:
    .asciz "src/std/io.lucb:99:9"
l_text_17:
    .asciz "src/std/io.lucb:97:17"
l_text_18:
    .asciz "src/std/io.lucb:102:5"
l_text_19:
    .asciz "src/std/io.lucb:111:9"
l_text_20:
    .asciz "src/std/io.lucb:114:9"
l_text_21:
    .asciz "src/std/io.lucb:120:9"
l_text_22:
    .asciz "src/std/io.lucb:121:9"
l_text_23:
    .asciz "src/std/io.lucb:122:9"
l_text_24:
    .asciz "src/std/io.lucb:131:9"
l_text_25:
    .asciz "src/std/io.lucb:135:9"
l_text_26:
    .asciz "src/std/io.lucb:140:9"
l_text_27:
    .asciz "the destination buffer is full"
l_text_28:
    .asciz "src/std/io.lucb:144:9"
l_text_29:
    .asciz "src/std/io.lucb:145:9"
l_text_30:
    .asciz "src/std/io.lucb:146:9"
l_text_31:
    .asciz "buffered input requires nonempty storage"
l_text_32:
    .asciz "src/std/io.lucb:161:9"
l_text_33:
    .asciz "src/std/io.lucb:165:9"
l_text_34:
    .asciz "src/std/io.lucb:180:9"
l_text_35:
    .asciz "src/std/io.lucb:181:9"
l_text_36:
    .asciz "src/std/io.lucb:182:9"
l_text_37:
    .asciz "buffered output requires nonempty storage"
l_text_38:
    .asciz "src/std/io.lucb:196:9"
l_text_39:
    .asciz "src/std/io.lucb:200:9"
l_text_40:
    .asciz "src/std/io.lucb:211:9"
l_text_41:
    .asciz "src/std/io.lucb:208:13"
l_text_42:
    .asciz "src/std/io.lucb:209:13"
l_text_43:
    .asciz "src/std/io.lucb:221:9"
l_text_44:
    .asciz "src/std/io.lucb:223:9"
l_text_45:
    .asciz "src/std/io.lucb:224:9"
l_text_46:
    .asciz "src/std/io.lucb:225:9"
l_text_47:
    .asciz "the standard output stream is unavailable"
l_text_48:
    .asciz "src/std/io.lucb:250:9"
l_text_49:
    .asciz "the stream could not be flushed"
l_text_50:
    .asciz "the stream refused the bytes"
l_text_51:
    .asciz "src/std/io.lucb:268:9"
l_text_52:
    .asciz "standard input would block"
l_text_53:
    .asciz "standard input is closed"
l_text_54:
    .asciz "standard input could not be read"
l_text_55:
    .asciz "src/std/io.lucb:305:13"
l_text_56:
    .asciz "src/std/io.lucb:312:5"
l_text_57:
    .asciz "src/std/io.lucb:315:5"
l_text_58:
    .asciz "src/std/io.lucb:318:5"
l_text_59:
    .asciz "the buffer is full"
l_text_60:
    .asciz "src/std/io.lucb:338:9"
l_text_61:
    .asciz "USERPROFILE"
l_text_62:
    .asciz "HOME"
l_text_63:
    .asciz "no home directory"
l_text_64:
    .asciz "src/std/io.lucb:349:9"
l_text_65:
    .asciz "src/std/io.lucb:352:9"
l_text_66:
    .asciz "TMPDIR"
l_text_67:
    .asciz "/tmp"
l_text_68:
    .asciz "src/std/io.lucb:363:9"
l_text_69:
    .asciz "XDG_CONFIG_HOME"
l_text_70:
    .asciz "src/std/io.lucb:376:9"
l_text_71:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_72:
    .asciz "memory.unset"
l_text_73:
    .asciz "memory.exhausted"
l_text_74:
    .asciz "/.config"
l_text_75:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
l_text_76:
    .asciz "src/std/io.lucb:377:9"
l_text_77:
    .asciz "src/std/memory.lucb:334:9"
l_text_78:
    .asciz "src/std/memory.lucb:336:9"
l_text_79:
    .asciz "null_foreign"
l_text_80:
    .asciz "src/std/memory.lucb:328:9"
l_text_81:
    .asciz "src/std/memory.lucb:330:9"
l_text_82:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_io_File_Writer
    .weak_definition _lb_vt_io_File_Writer
_lb_vt_io_File_Writer:
    .quad _lb_io_File_write
    .globl _lb_vt_io_StandardInput_Reader
    .weak_definition _lb_vt_io_StandardInput_Reader
_lb_vt_io_StandardInput_Reader:
    .quad _lb_io_StandardInput_read
    .globl _lb_io_14unexpected_eof
    .no_dead_strip _lb_io_14unexpected_eof
    .zerofill __DATA,__bss,_lb_io_14unexpected_eof,4,2
    .globl _lb_io_11no_progress
    .no_dead_strip _lb_io_11no_progress
    .zerofill __DATA,__bss,_lb_io_11no_progress,4,2
    .globl _lb_io_13invalid_count
    .no_dead_strip _lb_io_13invalid_count
    .zerofill __DATA,__bss,_lb_io_13invalid_count,4,2
    .globl _lb_io_14invalid_buffer
    .no_dead_strip _lb_io_14invalid_buffer
    .zerofill __DATA,__bss,_lb_io_14invalid_buffer,4,2
    .globl _lb_io_closed
    .no_dead_strip _lb_io_closed
    .zerofill __DATA,__bss,_lb_io_closed,4,2
    .globl _lb_io_failed
    .no_dead_strip _lb_io_failed
    .zerofill __DATA,__bss,_lb_io_failed,4,2
    .globl _lb_io_11would_block
    .no_dead_strip _lb_io_11would_block
    .zerofill __DATA,__bss,_lb_io_11would_block,4,2
    .globl _lb_io_8out_file
    .zerofill __DATA,__bss,_lb_io_8out_file,4,2
    .globl _lb_io_8err_file
    .zerofill __DATA,__bss,_lb_io_8err_file,4,2
    .globl _lb_io_7in_file
    .zerofill __DATA,__bss,_lb_io_7in_file,4,2
    .globl _lb_io_full
    .no_dead_strip _lb_io_full
    .zerofill __DATA,__bss,_lb_io_full,4,2
    .globl _lb_io_14io_path_failed
    .no_dead_strip _lb_io_14io_path_failed
    .zerofill __DATA,__bss,_lb_io_14io_path_failed,4,2

.subsections_via_symbols
