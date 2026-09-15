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
    sub sp, sp, #304
    str x19, [sp, #280]
    str x20, [sp, #272]
    str x21, [sp, #264]
    str x22, [sp, #256]
    str x23, [sp, #248]
    str x24, [sp, #240]
    str x25, [sp, #232]
    str x26, [sp, #224]
    str x27, [sp, #216]
    str x28, [sp, #208]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x9, [x14]
    str x9, [sp, #8]
    ldr x0, [sp, #8]
    bl _lb_ownership_8color_of
    mov w14, w0
    adrp x15, _lb_ownership_purple@PAGE
    add x15, x15, _lb_ownership_purple@PAGEOFF
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    ldr x0, [sp, #8]
    mov x1, x15
    bl _lb_ownership_9set_color
    adrp x20, _lb_ownership_buffered@PAGE
    add x20, x20, _lb_ownership_buffered@PAGEOFF
    ldrb w14, [x20]
    ldr x0, [sp, #8]
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_5
L1_4:
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrb w15, [x14]
    ldrb w21, [x20]
    orr w15, w15, w21
    strb w15, [x14]
    ldr x9, [sp, #8]
    sub x10, x29, #128
    str x9, [x10]
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    ldr x14, [x21]
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    add x23, x22, #8
    ldr x15, [x23]
    cmp x14, x15
    b.ne L1_13
L1_12:
    sub x20, x29, #144
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #0]
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
    adrp x14, _lb_ownership_15candidate_limit@PAGE
    add x14, x14, _lb_ownership_15candidate_limit@PAGEOFF
    ldr x25, [x14]
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
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L1_22
L1_21:
    lsl x27, x25, #3
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
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
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #256
    add x28, x24, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w19, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w19, w19, w28
    cbnz w19, L1_25
    b L1_26
L1_25:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L1_22
L1_26:
    ldr x14, [x24]
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L1_15
L1_27:
    sub x14, x29, #160
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    mov x9, #0
    mov x19, x9
L1_29:
    ldr x24, [x21]
    cmp x19, x24
    b.hs L1_31
L1_30:
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x19, #3
    add x25, x14, x24
    ldr x26, [x22]
    ldr x27, [x23]
    cmp x19, x27
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x24, x26
    ldr x24, [x24]
    str x24, [x25]
    add x24, x19, #1
    mov x19, x24
    b L1_29
L1_31:
    ldr x14, [x23]
    mov x10, #0
    cmp x14, x10
    b.ls L1_33
L1_32:
    sub x15, x29, #288
    ldr x19, [x22]
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
    mov x24, x9
    str x19, [x15]
    add x19, x15, #8
    str x24, [x19]
    ldr x9, [sp, #0]
    ldr x19, [x9]
    ldr x9, [sp, #0]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L1_36
    b L1_35
L1_36:
    add x14, x24, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_35:
    b L1_34
L1_33:
L1_34:
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L1_14
L1_13:
L1_14:
    ldr x14, [x21]
    ldr x15, [x22]
    ldr x19, [x23]
    cmp x14, x19
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x15, x14
    ldr x9, [sp, #8]
    str x9, [x14]
    ldr x14, [x21]
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
    str x14, [x21]
L1_37:
    adrp x15, _lb_ownership_15candidate_limit@PAGE
    add x15, x15, _lb_ownership_15candidate_limit@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
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
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    ldr x22, [sp, #256]
    ldr x23, [sp, #248]
    ldr x24, [sp, #240]
    ldr x25, [sp, #232]
    ldr x26, [sp, #224]
    ldr x27, [sp, #216]
    ldr x28, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15visit_mark_gray
_lb_ownership_15visit_mark_gray:
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
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L2_1
    b L2_2
L2_1:
    ldr x19, [sp, #40]
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
    mov x0, x19
    bl _lb_ownership_9mark_gray
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_9mark_gray
_lb_ownership_9mark_gray:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_8color_of
    mov w14, w0
    adrp x15, _lb_ownership_gray@PAGE
    add x15, x15, _lb_ownership_gray@PAGEOFF
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_2
L3_1:
    mov x0, x19
    mov x1, x15
    bl _lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x20, _lb_ownership_15visit_mark_gray@GOTPAGE
    ldr x20, [x20, _lb_ownership_15visit_mark_gray@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x20
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
    b L3_3
L3_2:
L3_3:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
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
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L4_1
    b L4_2
L4_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
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
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L5_1
    b L5_2
L5_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
    b L5_3
L5_2:
L5_3:
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
    adrp x15, _lb_ownership_black@PAGE
    add x15, x15, _lb_ownership_black@PAGEOFF
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_6
L5_5:
    sub x10, x29, #80
    str x19, [x10]
    mov x0, x19
    mov x1, x15
    bl _lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x20, _lb_ownership_16visit_scan_black@GOTPAGE
    ldr x20, [x20, _lb_ownership_16visit_scan_black@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x20
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
L5_8:
    b L5_7
L5_6:
L5_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
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
    adrp x15, _lb_ownership_gray@PAGE
    add x15, x15, _lb_ownership_gray@PAGEOFF
    ldrb w15, [x15]
    cmp w14, w15
    b.ne L6_2
L6_1:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ls L6_5
L6_4:
    sub x10, x29, #56
    str x19, [x10]
    adrp x14, _lb_ownership_black@PAGE
    add x14, x14, _lb_ownership_black@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
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
L6_7:
    b L6_6
L6_5:
    adrp x14, _lb_ownership_white@PAGE
    add x14, x14, _lb_ownership_white@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
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
L6_6:
    b L6_3
L6_2:
L6_3:
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
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L7_1
    b L7_2
L7_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
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
    sub sp, sp, #304
    str x19, [sp, #280]
    str x20, [sp, #272]
    str x21, [sp, #264]
    str x22, [sp, #256]
    str x23, [sp, #248]
    str x24, [sp, #240]
    str x25, [sp, #232]
    str x26, [sp, #224]
    str x27, [sp, #216]
    str x28, [sp, #208]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x9, [x14]
    str x9, [sp, #8]
    ldr x0, [sp, #8]
    bl _lb_ownership_8color_of
    mov w14, w0
    adrp x15, _lb_ownership_white@PAGE
    add x15, x15, _lb_ownership_white@PAGEOFF
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    cbnz w14, L8_4
    b L8_32
L8_32:
    mov w15, w14
    b L8_5
L8_4:
    adrp x14, _lb_ownership_collecting@PAGE
    add x14, x14, _lb_ownership_collecting@PAGEOFF
    ldrb w14, [x14]
    ldr x0, [sp, #8]
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L8_5:
    and w14, w15, #255
    cbnz w14, L8_1
    b L8_2
L8_1:
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrb w15, [x14]
    adrp x20, _lb_ownership_collecting@PAGE
    add x20, x20, _lb_ownership_collecting@PAGEOFF
    ldrb w20, [x20]
    orr w15, w15, w20
    strb w15, [x14]
    ldr x9, [sp, #8]
    sub x10, x29, #128
    str x9, [x10]
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
    b.ne L8_7
L8_6:
    sub x23, x29, #144
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #0]
    mov x10, #0
    cmp x15, x10
    b.ls L8_12
L8_11:
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
    b L8_13
L8_12:
    movz x9, #256
    mov x25, x9
L8_13:
    sub x26, x29, #232
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls L8_15
L8_14:
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
    b L8_16
L8_15:
    lsl x27, x25, #3
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L8_17
    b L8_18
L8_18:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L8_17:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #256
    add x28, x24, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w19, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w19, w19, w28
    cbnz w19, L8_19
    b L8_20
L8_19:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L8_16
L8_20:
    ldr x14, [x24]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L8_16:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L8_22
    b L8_21
L8_22:
    add x14, x26, #16
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L8_9
L8_21:
    sub x14, x29, #160
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L8_10
L8_9:
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
L8_10:
    sub x14, x29, #160
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    mov x9, #0
    mov x19, x9
L8_23:
    ldr x24, [x20]
    cmp x19, x24
    b.hs L8_25
L8_24:
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x19, #3
    add x25, x14, x24
    ldr x26, [x21]
    ldr x27, [x22]
    cmp x19, x27
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x24, x26
    ldr x24, [x24]
    str x24, [x25]
    add x24, x19, #1
    mov x19, x24
    b L8_23
L8_25:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L8_27
L8_26:
    sub x15, x29, #288
    ldr x19, [x21]
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
    mov x24, x9
    str x19, [x15]
    add x19, x15, #8
    str x24, [x19]
    ldr x9, [sp, #0]
    ldr x19, [x9]
    ldr x9, [sp, #0]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L8_30
    b L8_29
L8_30:
    add x14, x24, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L8_29:
    b L8_28
L8_27:
L8_28:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L8_8
L8_7:
L8_8:
    ldr x14, [x20]
    ldr x15, [x21]
    ldr x19, [x22]
    cmp x14, x19
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #3
    add x14, x15, x14
    ldr x9, [sp, #8]
    str x9, [x14]
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
L8_31:
    ldr x9, [sp, #8]
    add x14, x9, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, _lb_ownership_12visit_gather@GOTPAGE
    ldr x15, [x15, _lb_ownership_12visit_gather@GOTPAGEOFF]
    mov x17, x14
    str x17, [sp, #-16]!
    ldr x0, [sp, #24]
    mov x1, x15
    ldr x2, [sp, #24]
    ldr x17, [sp], #16
    blr x17
    b L8_3
L8_2:
L8_3:
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    ldr x22, [sp, #256]
    ldr x23, [sp, #248]
    ldr x24, [sp, #240]
    ldr x25, [sp, #232]
    ldr x26, [sp, #224]
    ldr x27, [sp, #216]
    ldr x28, [sp, #208]
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
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L9_1
    b L9_2
L9_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
    b L9_3
L9_2:
L9_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_collecting@PAGE
    add x14, x14, _lb_ownership_collecting@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    cbnz w14, L9_5
    b L9_6
L9_5:
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
    b L9_7
L9_6:
L9_7:
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
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    str x23, [sp, #56]
    str x24, [sp, #48]
    str x25, [sp, #40]
    str x26, [sp, #32]
    str x27, [sp, #24]
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldrb w14, [x19]
    cbnz w14, L10_1
    b L10_2
L10_1:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    ldr x27, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    b L10_3
L10_2:
L10_3:
    movz x9, #1
    strb w9, [x19]
    adrp x20, _lb_ownership_purple@PAGE
    add x20, x20, _lb_ownership_purple@PAGEOFF
    adrp x21, _lb_ownership_dead@PAGE
    add x21, x21, _lb_ownership_dead@PAGEOFF
    adrp x22, _lb_ownership_buffered@PAGE
    add x22, x22, _lb_ownership_buffered@PAGEOFF
    mov x9, #0
    mov x23, x9
    mov x9, #0
    mov x24, x9
L10_5:
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x25, x0
    ldr x14, [x25]
    cmp x24, x14
    b.hs L10_7
L10_6:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x25, x0
    ldr x14, [x25]
    add x26, x25, #8
    ldr x15, [x26]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x24, #3
    add x14, x14, x15
    ldr x27, [x14]
    mov x0, x27
    bl _lb_ownership_8color_of
    mov w14, w0
    ldrb w15, [x20]
    cmp w14, w15
    cset w14, eq
    cbnz w14, L10_11
    b L10_46
L10_46:
    mov w15, w14
    b L10_12
L10_11:
    ldr w14, [x27]
    mov x10, #0
    cmp w14, w10
    cset w15, hi
L10_12:
    and w14, w15, #255
    cbnz w14, L10_13
    b L10_47
L10_47:
    mov w15, w14
    b L10_14
L10_13:
    ldrb w14, [x21]
    mov x0, x27
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L10_14:
    and w14, w15, #255
    cbnz w14, L10_8
    b L10_9
L10_8:
    ldr x14, [x25]
    ldr x15, [x26]
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x23, #3
    add x14, x14, x15
    str x27, [x14]
    add x14, x23, #1
    b L10_10
L10_9:
    add x14, x27, #8
    ldrb w15, [x14]
    ldrb w25, [x22]
    movn x10, #0
    eor w25, w25, w10
    and w25, w25, #255
    and w15, w15, w25
    strb w15, [x14]
    mov x0, x27
    bl _lb_ownership_13release_shell
    mov x14, x23
L10_10:
    add x15, x24, #1
    mov x23, x14
    mov x24, x15
    b L10_5
L10_7:
    str x23, [x25]
    mov x9, #0
    mov x20, x9
L10_15:
    ldr x14, [x25]
    cmp x20, x14
    b.hs L10_17
L10_16:
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
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x20, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_9mark_gray
    add x14, x20, #1
    mov x20, x14
    b L10_15
L10_17:
    mov x9, #0
    mov x20, x9
L10_18:
    ldr x14, [x25]
    cmp x20, x14
    b.hs L10_20
L10_19:
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
    b L10_18
L10_20:
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    mov x9, #0
    str x9, [x20]
    mov x9, #0
    mov x21, x9
L10_21:
    ldr x14, [x25]
    cmp x21, x14
    b.hs L10_23
L10_22:
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
    b L10_21
L10_23:
    adrp x14, _lb_ownership_buffered@PAGE
    add x14, x14, _lb_ownership_buffered@PAGEOFF
    mov x9, #0
    mov x15, x9
L10_24:
    ldr x21, [x25]
    cmp x15, x21
    b.hs L10_26
L10_25:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    ldr x22, [x21]
    add x21, x21, #8
    ldr x21, [x21]
    cmp x15, x21
    b.lo 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x21, x15, #3
    add x21, x22, x21
    ldr x21, [x21]
    add x21, x21, #8
    ldrb w22, [x21]
    ldrb w23, [x14]
    movn x10, #0
    eor w23, w23, w10
    and w23, w23, #255
    and w22, w22, w23
    strb w22, [x21]
    add x21, x15, #1
    mov x15, x21
    b L10_24
L10_26:
    mov x9, #0
    str x9, [x25]
    adrp x21, _lb_ownership_13visit_restore@GOTPAGE
    ldr x21, [x21, _lb_ownership_13visit_restore@GOTPAGEOFF]
    mov x9, #0
    mov x22, x9
L10_27:
    ldr x14, [x20]
    cmp x22, x14
    b.hs L10_29
L10_28:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x22, #3
    add x14, x15, x14
    ldr x15, [x14]
    add x15, x15, #16
    ldr x15, [x15]
    add x15, x15, #40
    ldr x15, [x15]
    ldr x23, [x14]
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x23
    mov x1, x21
    mov x2, x14
    ldr x17, [sp], #16
    blr x17
    add x14, x22, #1
    mov x22, x14
    b L10_27
L10_29:
    adrp x21, l_text_38@PAGE
    add x21, x21, l_text_38@PAGEOFF
    sub x22, x29, #104
    add x23, x22, #8
    adrp x24, l_text_39@PAGE
    add x24, x24, l_text_39@PAGEOFF
    mov x9, #0
    mov x25, x9
L10_30:
    ldr x14, [x20]
    cmp x25, x14
    b.hs L10_32
L10_31:
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
    cbnz x14, L10_36
    b L10_34
L10_36:
L10_33:
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
    b.ls L10_38
L10_37:
    str x21, [x22]
    movz x9, #25
    str x9, [x23]
    mov x0, x24
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L10_39
L10_38:
L10_39:
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
    b L10_35
L10_34:
L10_35:
    add x14, x25, #1
    mov x25, x14
    b L10_30
L10_32:
    mov x9, #0
    mov x21, x9
L10_40:
    ldr x14, [x20]
    cmp x21, x14
    b.hs L10_42
L10_41:
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
    b L10_40
L10_42:
    adrp x21, _lb_ownership_dead@PAGE
    add x21, x21, _lb_ownership_dead@PAGEOFF
    mov x9, #0
    mov x22, x9
L10_43:
    ldr x14, [x20]
    cmp x22, x14
    b.hs L10_45
L10_44:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x22, #3
    add x14, x15, x14
    ldr x14, [x14]
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    ldr x23, [x15]
    mov x9, x23
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x23, [x15]
    mov x9, #0
    str w9, [x14]
    add x15, x14, #8
    ldrb w23, [x21]
    strb w23, [x15]
    mov x0, x14
    bl _lb_ownership_13release_shell
    add x14, x22, #1
    mov x22, x14
    b L10_43
L10_45:
    mov x9, #0
    str x9, [x20]
    mov x9, #0
    strb w9, [x19]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    ldr x27, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_cycles_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/ownership/cycles.lucb:13:9"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "memory.exhausted"
l_text_4:
    .asciz "out of memory"
l_text_5:
    .asciz "src/std/ownership/cycles.lucb:14:13"
l_text_6:
    .asciz "src/std/ownership/cycles.lucb:17:13"
l_text_7:
    .asciz "src/std/ownership/cycles.lucb:18:13"
l_text_8:
    .asciz "src/std/ownership/cycles.lucb:20:13"
l_text_9:
    .asciz "src/std/ownership/cycles.lucb:22:5"
l_text_10:
    .asciz "src/std/ownership/cycles.lucb:23:5"
l_text_11:
    .asciz "src/std/ownership/cycles.lucb:27:9"
l_text_12:
    .asciz "src/std/ownership/cycles.lucb:28:13"
l_text_13:
    .asciz "src/std/ownership/cycles.lucb:31:13"
l_text_14:
    .asciz "src/std/ownership/cycles.lucb:32:13"
l_text_15:
    .asciz "src/std/ownership/cycles.lucb:34:13"
l_text_16:
    .asciz "src/std/ownership/cycles.lucb:36:5"
l_text_17:
    .asciz "src/std/ownership/cycles.lucb:37:5"
l_text_18:
    .asciz "src/std/ownership/cycles.lucb:52:5"
l_text_19:
    .asciz "src/std/ownership/cycles.lucb:70:5"
l_text_20:
    .asciz "src/std/ownership/cycles.lucb:104:9"
l_text_21:
    .asciz "src/std/ownership/cycles.lucb:115:9"
l_text_22:
    .asciz "src/std/ownership/cycles.lucb:117:13"
l_text_23:
    .asciz "src/std/ownership/cycles.lucb:118:13"
l_text_24:
    .asciz "src/std/ownership/cycles.lucb:122:9"
l_text_25:
    .asciz "src/std/ownership/cycles.lucb:126:9"
l_text_26:
    .asciz "src/std/ownership/cycles.lucb:127:9"
l_text_27:
    .asciz "src/std/ownership/cycles.lucb:130:9"
l_text_28:
    .asciz "src/std/ownership/cycles.lucb:131:9"
l_text_29:
    .asciz "src/std/ownership/cycles.lucb:135:9"
l_text_30:
    .asciz "src/std/ownership/cycles.lucb:136:9"
l_text_31:
    .asciz "src/std/ownership/cycles.lucb:139:9"
l_text_32:
    .asciz "src/std/ownership/cycles.lucb:140:9"
l_text_33:
    .asciz "src/std/ownership/cycles.lucb:146:9"
l_text_34:
    .asciz "src/std/ownership/cycles.lucb:147:9"
l_text_35:
    .asciz "src/std/ownership/cycles.lucb:150:9"
l_text_36:
    .asciz "src/std/ownership/cycles.lucb:153:13"
l_text_37:
    .asciz "src/std/ownership/cycles.lucb:155:13"
l_text_38:
    .asciz "`deinit` published `self`"
l_text_39:
    .asciz "src/std/ownership/cycles.lucb:156:17"
l_text_40:
    .asciz "src/std/ownership/cycles.lucb:159:13"
l_text_41:
    .asciz "src/std/ownership/cycles.lucb:160:9"
l_text_42:
    .asciz "src/std/ownership/cycles.lucb:163:9"
l_text_43:
    .asciz "src/std/ownership/cycles.lucb:164:9"
l_text_44:
    .asciz "src/std/ownership/cycles.lucb:167:9"
l_text_45:
    .asciz "src/std/ownership/cycles.lucb:168:9"
l_text_46:
    .asciz "src/std/ownership/cycles.lucb:172:9"
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
