    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_cycles_0init
_lb_ownership_cycles_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_ownership_15candidate_limit@PAGE
    add x14, x14, _lb_ownership_15candidate_limit@PAGEOFF
    movz x9, #1024
    str x9, [x14]
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13possible_root
    .no_dead_strip _lb_ownership_13possible_root
_lb_ownership_13possible_root:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #264]
    str x20, [sp, #256]
    str x21, [sp, #248]
    str x22, [sp, #240]
    str x23, [sp, #232]
    str x24, [sp, #224]
    str x25, [sp, #216]
    str x26, [sp, #208]
    str x27, [sp, #200]
    str x28, [sp, #192]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_8color_of
    mov w14, w0
    movz x10, #3
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    mov x0, x19
    movz x1, #3
    bl _lb_ownership_9set_color
    mov x0, x19
    movz x1, #4
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_5
L1_4:
    add x14, x19, #8
    ldrb w15, [x14]
    movz x10, #4
    orr w15, w15, w10
    strb w15, [x14]
    sub x10, x29, #128
    str x19, [x10]
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    ldr x14, [x20]
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    add x22, x21, #8
    ldr x15, [x22]
    cmp x14, x15
    b.ne L1_13
L1_12:
    sub x23, x29, #144
    adrp x24, _lb_memory_heap@PAGE
    add x24, x24, _lb_memory_heap@PAGEOFF
    mov x10, #0
    cmp x15, x10
    b.ls L1_18
L1_17:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    b L1_19
L1_18:
    movz x9, #1024
    mov x25, x9
L1_19:
    sub x26, x29, #232
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls L1_21
L1_20:
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
    b L1_22
L1_21:
    lsl x27, x25, #3
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L1_23
    b L1_24
L1_24:
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_23:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #256
    add x12, x28, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L1_25
    b L1_26
L1_25:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L1_22
L1_26:
    ldr x14, [x28]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L1_22:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L1_28
    b L1_27
L1_28:
    add x14, x26, #16
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L1_15
L1_27:
    sub x14, x29, #160
    mov x10, x26
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_16
L1_15:
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L1_16:
    sub x14, x29, #160
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    mov x9, #0
    mov x12, x9
L1_29:
    ldr x13, [x20]
    cmp x12, x13
    b.hs L1_31
L1_30:
    cmp x12, x15
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x13, x12, #3
    add x25, x14, x13
    ldr x26, [x21]
    ldr x27, [x22]
    cmp x12, x27
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x13, x13, x26
    ldr x13, [x13]
    str x13, [x25]
    add x13, x12, #1
    mov x12, x13
    b L1_29
L1_31:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L1_33
L1_32:
    sub x15, x29, #288
    ldr x12, [x21]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x13, x9
    str x12, [x15]
    add x12, x15, #8
    str x13, [x12]
    ldr x12, [x24]
    add x13, x24, #8
    ldr x13, [x13]
    cbnz x13, L1_36
    b L1_35
L1_36:
    add x14, x13, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_35:
    b L1_34
L1_33:
L1_34:
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_14
L1_13:
L1_14:
    ldr x14, [x20]
    ldr x15, [x21]
    ldr x12, [x22]
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x15, x14
    str x19, [x14]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
L1_37:
    movz x10, #1024
    cmp x14, x10
    cset w15, hs
    cbnz w15, L1_10
    b L1_38
L1_38:
    mov w14, w15
    b L1_11
L1_10:
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_11:
    and w15, w14, #255
    cbnz w15, L1_7
    b L1_8
L1_7:
    bl _lb_ownership_collect
    b L1_9
L1_8:
L1_9:
    b L1_6
L1_5:
L1_6:
    b L1_3
L1_2:
L1_3:
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    ldr x27, [sp, #200]
    ldr x28, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15visit_mark_gray
_lb_ownership_15visit_mark_gray:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    movz x1, #32
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L2_1
    b L2_2
L2_1:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    b L2_3
L2_2:
L2_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    sub x10, x29, #72
    str x19, [x10]
    mov x0, x19
    bl _lb_ownership_8color_of
    mov w14, w0
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L2_6
L2_5:
    mov x0, x19
    movz x1, #1
    bl _lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_15visit_mark_gray@GOTPAGE
    ldr x15, [x15, _lb_ownership_15visit_mark_gray@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
    b L2_7
L2_6:
L2_7:
L2_8:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10visit_scan
_lb_ownership_10visit_scan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    movz x1, #32
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L3_1
    b L3_2
L3_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    mov x0, x19
    bl _lb_ownership_scan
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_16visit_scan_black
_lb_ownership_16visit_scan_black:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    movz x1, #32
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L4_1
    b L4_2
L4_1:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    mov x0, x19
    bl _lb_ownership_8color_of
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_6
L4_5:
    sub x10, x29, #72
    str x19, [x10]
    mov x0, x19
    mov x1, #0
    bl _lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_16visit_scan_black@GOTPAGE
    ldr x15, [x15, _lb_ownership_16visit_scan_black@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
L4_8:
    b L4_7
L4_6:
L4_7:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_scan
_lb_ownership_scan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_8color_of
    mov w14, w0
    movz x10, #1
    cmp w14, w10
    b.ne L5_2
L5_1:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ls L5_5
L5_4:
    sub x10, x29, #56
    str x19, [x10]
    mov x0, x19
    mov x1, #0
    bl _lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_16visit_scan_black@GOTPAGE
    ldr x15, [x15, _lb_ownership_16visit_scan_black@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
L5_7:
    b L5_6
L5_5:
    mov x0, x19
    movz x1, #2
    bl _lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_10visit_scan@GOTPAGE
    ldr x15, [x15, _lb_ownership_10visit_scan@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
L5_6:
    b L5_3
L5_2:
L5_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_12visit_gather
_lb_ownership_12visit_gather:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    movz x1, #32
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L6_1
    b L6_2
L6_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    b L6_3
L6_2:
L6_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    mov x0, x19
    bl _lb_ownership_gather
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_gather
_lb_ownership_gather:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #264]
    str x20, [sp, #256]
    str x21, [sp, #248]
    str x22, [sp, #240]
    str x23, [sp, #232]
    str x24, [sp, #224]
    str x25, [sp, #216]
    str x26, [sp, #208]
    str x27, [sp, #200]
    str x28, [sp, #192]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_8color_of
    mov w14, w0
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    cbnz w14, L7_4
    b L7_32
L7_32:
    mov w15, w14
    b L7_5
L7_4:
    mov x0, x19
    movz x1, #16
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L7_5:
    and w14, w15, #255
    cbnz w14, L7_1
    b L7_2
L7_1:
    add x14, x19, #8
    ldrb w15, [x14]
    movz x10, #16
    orr w15, w15, w10
    strb w15, [x14]
    sub x10, x29, #128
    str x19, [x10]
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    ldr x14, [x20]
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    add x22, x21, #8
    ldr x15, [x22]
    cmp x14, x15
    b.ne L7_7
L7_6:
    sub x23, x29, #144
    adrp x24, _lb_memory_heap@PAGE
    add x24, x24, _lb_memory_heap@PAGEOFF
    mov x10, #0
    cmp x15, x10
    b.ls L7_12
L7_11:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    b L7_13
L7_12:
    movz x9, #256
    mov x25, x9
L7_13:
    sub x26, x29, #232
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls L7_15
L7_14:
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
    b L7_16
L7_15:
    lsl x27, x25, #3
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L7_17
    b L7_18
L7_18:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L7_17:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #256
    add x12, x28, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L7_19
    b L7_20
L7_19:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L7_16
L7_20:
    ldr x14, [x28]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L7_16:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L7_22
    b L7_21
L7_22:
    add x14, x26, #16
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L7_9
L7_21:
    sub x14, x29, #160
    mov x10, x26
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L7_10
L7_9:
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L7_10:
    sub x14, x29, #160
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    mov x9, #0
    mov x12, x9
L7_23:
    ldr x13, [x20]
    cmp x12, x13
    b.hs L7_25
L7_24:
    cmp x12, x15
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x13, x12, #3
    add x25, x14, x13
    ldr x26, [x21]
    ldr x27, [x22]
    cmp x12, x27
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x13, x13, x26
    ldr x13, [x13]
    str x13, [x25]
    add x13, x12, #1
    mov x12, x13
    b L7_23
L7_25:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L7_27
L7_26:
    sub x15, x29, #288
    ldr x12, [x21]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x13, x9
    str x12, [x15]
    add x12, x15, #8
    str x13, [x12]
    ldr x12, [x24]
    add x13, x24, #8
    ldr x13, [x13]
    cbnz x13, L7_30
    b L7_29
L7_30:
    add x14, x13, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_29:
    b L7_28
L7_27:
L7_28:
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L7_8
L7_7:
L7_8:
    ldr x14, [x20]
    ldr x15, [x21]
    ldr x12, [x22]
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x15, x14
    str x19, [x14]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
L7_31:
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_12visit_gather@GOTPAGE
    ldr x15, [x15, _lb_ownership_12visit_gather@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
    b L7_3
L7_2:
L7_3:
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    ldr x27, [sp, #200]
    ldr x28, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13visit_restore
_lb_ownership_13visit_restore:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    movz x1, #32
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L8_1
    b L8_2
L8_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_4:
    b L8_3
L8_2:
L8_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    mov x0, x19
    movz x1, #16
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L8_5
    b L8_6
L8_5:
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    b L8_7
L8_6:
L8_7:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_collect
    .no_dead_strip _lb_ownership_collect
_lb_ownership_collect:
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
    str x27, [sp, #40]
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldrb w14, [x19]
    cbnz w14, L9_1
    b L9_2
L9_1:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    ldr x26, [sp, #48]
    ldr x27, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
    b L9_3
L9_2:
L9_3:
    movz x9, #1
    strb w9, [x19]
    mov x9, #0
    mov x20, x9
    mov x9, #0
    mov x21, x9
L9_5:
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    ldr x14, [x22]
    cmp x21, x14
    b.hs L9_7
L9_6:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    ldr x14, [x22]
    add x23, x22, #8
    ldr x15, [x23]
    cmp x21, x15
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x21, #3
    add x14, x14, x15
    ldr x24, [x14]
    mov x0, x24
    bl _lb_ownership_8color_of
    mov w14, w0
    movz x10, #3
    cmp w14, w10
    cset w14, eq
    cbnz w14, L9_11
    b L9_50
L9_50:
    mov w15, w14
    b L9_12
L9_11:
    ldr w14, [x24]
    mov x10, #0
    cmp w14, w10
    cset w15, hi
L9_12:
    and w14, w15, #255
    cbnz w14, L9_13
    b L9_51
L9_51:
    mov w15, w14
    b L9_14
L9_13:
    mov x0, x24
    movz x1, #8
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L9_14:
    and w14, w15, #255
    cbnz w14, L9_8
    b L9_9
L9_8:
    ldr x14, [x22]
    ldr x15, [x23]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x14, x14, x15
    str x24, [x14]
    add x14, x20, #1
    b L9_10
L9_9:
    add x14, x24, #8
    ldrb w15, [x14]
    movz x10, #251
    and w15, w15, w10
    strb w15, [x14]
    mov x0, x24
    bl _lb_ownership_13release_shell
    mov x14, x20
L9_10:
    add x15, x21, #1
    mov x20, x14
    mov x21, x15
    b L9_5
L9_7:
    str x20, [x22]
    adrp x21, _lb_ownership_15visit_mark_gray@GOTPAGE
    ldr x21, [x21, _lb_ownership_15visit_mark_gray@GOTPAGEOFF]
    mov x9, #0
    mov x23, x9
L9_15:
    ldr x14, [x22]
    cmp x23, x14
    b.hs L9_17
L9_16:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x23, x14
    b.lo 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x23, #3
    add x14, x15, x14
    ldr x20, [x14]
    sub x10, x29, #120
    str x20, [x10]
    mov x0, x20
    bl _lb_ownership_8color_of
    mov w14, w0
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L9_47
L9_46:
    mov x0, x20
    movz x1, #1
    bl _lb_ownership_9set_color
    add x14, x20, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x1, x21
    mov x2, x20
    ldr x17, [sp], #16
    blr x17
    b L9_48
L9_47:
L9_48:
L9_49:
    add x14, x23, #1
    mov x23, x14
    b L9_15
L9_17:
    mov x9, #0
    mov x20, x9
L9_18:
    ldr x14, [x22]
    cmp x20, x14
    b.hs L9_20
L9_19:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x20, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_scan
    add x14, x20, #1
    mov x20, x14
    b L9_18
L9_20:
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    mov x9, #0
    str x9, [x20]
    mov x9, #0
    mov x21, x9
L9_21:
    ldr x14, [x22]
    cmp x21, x14
    b.hs L9_23
L9_22:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x21, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_gather
    add x14, x21, #1
    mov x21, x14
    b L9_21
L9_23:
    mov x9, #0
    mov x14, x9
L9_24:
    ldr x15, [x22]
    cmp x14, x15
    b.hs L9_26
L9_25:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    ldr x12, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x14, #3
    add x15, x12, x15
    ldr x15, [x15]
    add x15, x15, #8
    ldrb w12, [x15]
    movz x10, #251
    and w12, w12, w10
    strb w12, [x15]
    add x15, x14, #1
    mov x14, x15
    b L9_24
L9_26:
    mov x9, #0
    str x9, [x22]
    adrp x21, _lb_ownership_13visit_restore@GOTPAGE
    ldr x21, [x21, _lb_ownership_13visit_restore@GOTPAGEOFF]
    mov x9, #0
    mov x23, x9
L9_27:
    ldr x14, [x20]
    cmp x23, x14
    b.hs L9_29
L9_28:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x23, x14
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x23, #3
    add x14, x15, x14
    ldr x15, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x15, x15, #40
    ldr x15, [x15]
    ldr x12, [x14]
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x12
    mov x1, x21
    mov x2, x14
    ldr x17, [sp], #16
    blr x17
    add x14, x23, #1
    mov x23, x14
    b L9_27
L9_29:
    adrp x21, l_text_38@PAGE
    add x21, x21, l_text_38@PAGEOFF
    sub x22, x29, #104
    add x23, x22, #8
    adrp x24, l_text_39@PAGE
    add x24, x24, l_text_39@PAGEOFF
    mov x9, #0
    mov x25, x9
L9_30:
    ldr x14, [x20]
    cmp x25, x14
    b.hs L9_32
L9_31:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x25, x14
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x25, #3
    add x14, x15, x14
    ldr x26, [x14]
    add x14, x26, #16
    ldr x14, [x14]
    add x14, x14, #24
    ldr x14, [x14]
    cbnz x14, L9_36
    b L9_34
L9_36:
L9_33:
    ldr w15, [x26]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w27, w9
    str w27, [x26]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x26
    ldr x17, [sp], #16
    blr x17
    ldr w15, [x26]
    cmp w15, w27
    b.ls L9_38
L9_37:
    str x21, [x22]
    movz x9, #25
    str x9, [x23]
    mov x0, x24
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L9_39
L9_38:
L9_39:
    ldr w14, [x26]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x26]
    b L9_35
L9_34:
L9_35:
    add x14, x25, #1
    mov x25, x14
    b L9_30
L9_32:
    mov x9, #0
    mov x21, x9
L9_40:
    ldr x14, [x20]
    cmp x21, x14
    b.hs L9_42
L9_41:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x21, #3
    add x14, x15, x14
    ldr x15, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x15, x15, #32
    ldr x15, [x15]
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x17, [sp], #16
    blr x17
    add x14, x21, #1
    mov x21, x14
    b L9_40
L9_42:
    mov x9, #0
    mov x21, x9
L9_43:
    ldr x14, [x20]
    cmp x21, x14
    b.hs L9_45
L9_44:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x21, #3
    add x14, x15, x14
    ldr x14, [x14]
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    ldr x12, [x15]
    mov x9, x12
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x15]
    mov x9, #0
    str w9, [x14]
    add x15, x14, #8
    movz x9, #8
    strb w9, [x15]
    mov x0, x14
    bl _lb_ownership_13release_shell
    add x14, x21, #1
    mov x21, x14
    b L9_43
L9_45:
    mov x9, #0
    str x9, [x20]
    mov x9, #0
    strb w9, [x19]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    ldr x25, [sp, #56]
    ldr x26, [sp, #48]
    ldr x27, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_cycles_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/ownership/cycles.lucb:11:9"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "memory.exhausted"
l_text_4:
    .asciz "out of memory"
l_text_5:
    .asciz "src/std/ownership/cycles.lucb:12:13"
l_text_6:
    .asciz "src/std/ownership/cycles.lucb:15:13"
l_text_7:
    .asciz "src/std/ownership/cycles.lucb:16:13"
l_text_8:
    .asciz "src/std/ownership/cycles.lucb:18:13"
l_text_9:
    .asciz "src/std/ownership/cycles.lucb:20:5"
l_text_10:
    .asciz "src/std/ownership/cycles.lucb:21:5"
l_text_11:
    .asciz "src/std/ownership/cycles.lucb:25:9"
l_text_12:
    .asciz "src/std/ownership/cycles.lucb:26:13"
l_text_13:
    .asciz "src/std/ownership/cycles.lucb:29:13"
l_text_14:
    .asciz "src/std/ownership/cycles.lucb:30:13"
l_text_15:
    .asciz "src/std/ownership/cycles.lucb:32:13"
l_text_16:
    .asciz "src/std/ownership/cycles.lucb:34:5"
l_text_17:
    .asciz "src/std/ownership/cycles.lucb:35:5"
l_text_18:
    .asciz "src/std/ownership/cycles.lucb:50:5"
l_text_19:
    .asciz "src/std/ownership/cycles.lucb:68:5"
l_text_20:
    .asciz "src/std/ownership/cycles.lucb:102:9"
l_text_21:
    .asciz "src/std/ownership/cycles.lucb:113:9"
l_text_22:
    .asciz "src/std/ownership/cycles.lucb:115:13"
l_text_23:
    .asciz "src/std/ownership/cycles.lucb:116:13"
l_text_24:
    .asciz "src/std/ownership/cycles.lucb:120:9"
l_text_25:
    .asciz "src/std/ownership/cycles.lucb:124:9"
l_text_26:
    .asciz "src/std/ownership/cycles.lucb:125:9"
l_text_27:
    .asciz "src/std/ownership/cycles.lucb:128:9"
l_text_28:
    .asciz "src/std/ownership/cycles.lucb:129:9"
l_text_29:
    .asciz "src/std/ownership/cycles.lucb:133:9"
l_text_30:
    .asciz "src/std/ownership/cycles.lucb:134:9"
l_text_31:
    .asciz "src/std/ownership/cycles.lucb:137:9"
l_text_32:
    .asciz "src/std/ownership/cycles.lucb:138:9"
l_text_33:
    .asciz "src/std/ownership/cycles.lucb:144:9"
l_text_34:
    .asciz "src/std/ownership/cycles.lucb:145:9"
l_text_35:
    .asciz "src/std/ownership/cycles.lucb:148:9"
l_text_36:
    .asciz "src/std/ownership/cycles.lucb:151:13"
l_text_37:
    .asciz "src/std/ownership/cycles.lucb:153:13"
l_text_38:
    .asciz "`deinit` published `self`"
l_text_39:
    .asciz "src/std/ownership/cycles.lucb:154:17"
l_text_40:
    .asciz "src/std/ownership/cycles.lucb:157:13"
l_text_41:
    .asciz "src/std/ownership/cycles.lucb:158:9"
l_text_42:
    .asciz "src/std/ownership/cycles.lucb:161:9"
l_text_43:
    .asciz "src/std/ownership/cycles.lucb:162:9"
l_text_44:
    .asciz "src/std/ownership/cycles.lucb:165:9"
l_text_45:
    .asciz "src/std/ownership/cycles.lucb:166:9"
l_text_46:
    .asciz "src/std/ownership/cycles.lucb:170:9"
l_text_47:
    .asciz "integer overflow"
l_text_48:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .globl _lb_ownership_15candidate_limit
    .no_dead_strip _lb_ownership_15candidate_limit
    .zerofill __DATA,__bss,_lb_ownership_15candidate_limit,8,3

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_roots$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_roots
_lb_ownership_roots:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_roots$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_10root_count$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_10root_count
_lb_ownership_10root_count:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_10root_count$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_whites$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_whites
_lb_ownership_whites:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_whites$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_11white_count$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_11white_count
_lb_ownership_11white_count:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_11white_count$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_17collector_running$tlv$init:
    .space 1
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_17collector_running
_lb_ownership_17collector_running:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_17collector_running$tlv$init

.subsections_via_symbols
