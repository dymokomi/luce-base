    .text

    .p2align 2
    .globl lb_ownership_cycles_0init
    .type lb_ownership_cycles_0init, %function
lb_ownership_cycles_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_ownership_15candidate_limit
    add x14, x14, :lo12:lb_ownership_15candidate_limit
    movz x9, #1024
    str x9, [x14]
    adrp x0, :gottprel:lb_ownership_10root_count
    ldr x0, [x0, :gottprel_lo12:lb_ownership_10root_count]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, :gottprel:lb_ownership_11white_count
    ldr x0, [x0, :gottprel_lo12:lb_ownership_11white_count]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, :gottprel:lb_ownership_17collector_running
    ldr x0, [x0, :gottprel_lo12:lb_ownership_17collector_running]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_cycles_0init, .-lb_ownership_cycles_0init

    .p2align 2
    .globl lb_ownership_13possible_root
    .type lb_ownership_13possible_root, %function
lb_ownership_13possible_root:
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
    bl lb_ownership_8color_of
    mov w14, w0
    adrp x15, lb_ownership_purple
    add x15, x15, :lo12:lb_ownership_purple
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L1_2
.L1_1:
    ldr x0, [sp, #8]
    mov x1, x15
    bl lb_ownership_9set_color
    adrp x20, lb_ownership_buffered
    add x20, x20, :lo12:lb_ownership_buffered
    ldrb w14, [x20]
    ldr x0, [sp, #8]
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L1_5
.L1_4:
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrb w15, [x14]
    ldrb w21, [x20]
    orr w15, w15, w21
    strb w15, [x14]
    ldr x9, [sp, #8]
    sub x10, x29, #128
    str x9, [x10]
    adrp x0, :gottprel:lb_ownership_10root_count
    ldr x0, [x0, :gottprel_lo12:lb_ownership_10root_count]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x21, x0
    ldr x14, [x21]
    adrp x0, :gottprel:lb_ownership_roots
    ldr x0, [x0, :gottprel_lo12:lb_ownership_roots]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x22, x0
    add x23, x22, #8
    ldr x15, [x23]
    cmp x14, x15
    b.ne .L1_13
.L1_12:
    sub x20, x29, #144
    adrp x9, lb_memory_heap
    add x9, x9, :lo12:lb_memory_heap
    str x9, [sp, #0]
    mov x10, #0
    cmp x15, x10
    b.ls .L1_18
.L1_17:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_0
    add x0, x0, :lo12:.Ltext_0
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    b .L1_19
.L1_18:
    adrp x14, lb_ownership_15candidate_limit
    add x14, x14, :lo12:lb_ownership_15candidate_limit
    ldr x25, [x14]
.L1_19:
    sub x26, x29, #232
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls .L1_21
.L1_20:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_22
.L1_21:
    lsl x27, x25, #3
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, .L1_23
    b .L1_24
.L1_24:
    adrp x0, .Ltext_0
    add x0, x0, :lo12:.Ltext_0
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L1_23:
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
    cbnz w19, .L1_25
    b .L1_26
.L1_25:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L1_22
.L1_26:
    ldr x14, [x24]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
.L1_22:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, .L1_28
    b .L1_27
.L1_28:
    add x14, x26, #16
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L1_15
.L1_27:
    sub x14, x29, #160
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L1_16
.L1_15:
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
.L1_16:
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
.L1_29:
    ldr x24, [x21]
    cmp x19, x24
    b.hs .L1_31
.L1_30:
    cmp x19, x15
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x24, x19, #3
    add x25, x14, x24
    ldr x26, [x22]
    ldr x27, [x23]
    cmp x19, x27
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    add x24, x24, x26
    ldr x24, [x24]
    str x24, [x25]
    add x24, x19, #1
    mov x19, x24
    b .L1_29
.L1_31:
    ldr x14, [x23]
    mov x10, #0
    cmp x14, x10
    b.ls .L1_33
.L1_32:
    sub x15, x29, #288
    ldr x19, [x22]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
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
    cbnz x24, .L1_36
    b .L1_35
.L1_36:
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
.L1_35:
    b .L1_34
.L1_33:
.L1_34:
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L1_14
.L1_13:
.L1_14:
    ldr x14, [x21]
    ldr x15, [x22]
    ldr x19, [x23]
    cmp x14, x19
    b.lo 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
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
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
.L1_37:
    adrp x15, lb_ownership_15candidate_limit
    add x15, x15, :lo12:lb_ownership_15candidate_limit
    ldr x15, [x15]
    cmp x14, x15
    cset w15, hs
    cbnz w15, .L1_10
    b .L1_38
.L1_38:
    mov w14, w15
    b .L1_11
.L1_10:
    adrp x0, :gottprel:lb_ownership_17collector_running
    ldr x0, [x0, :gottprel_lo12:lb_ownership_17collector_running]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L1_11:
    and w15, w14, #255
    cbnz w15, .L1_7
    b .L1_8
.L1_7:
    bl lb_ownership_collect
    b .L1_9
.L1_8:
.L1_9:
    b .L1_6
.L1_5:
.L1_6:
    b .L1_3
.L1_2:
.L1_3:
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

    .size lb_ownership_13possible_root, .-lb_ownership_13possible_root

    .p2align 2
    .globl lb_ownership_15visit_mark_gray
    .type lb_ownership_15visit_mark_gray, %function
lb_ownership_15visit_mark_gray:
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
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    mov x0, x19
    bl lb_ownership_12check_thread
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    mov x0, x19
    bl lb_ownership_9mark_gray
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_15visit_mark_gray, .-lb_ownership_15visit_mark_gray

    .p2align 2
    .globl lb_ownership_9mark_gray
    .type lb_ownership_9mark_gray, %function
lb_ownership_9mark_gray:
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
    bl lb_ownership_8color_of
    mov w14, w0
    adrp x15, lb_ownership_gray
    add x15, x15, :lo12:lb_ownership_gray
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_2
.L3_1:
    mov x0, x19
    mov x1, x15
    bl lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x20, :got:lb_ownership_15visit_mark_gray
    ldr x20, [x20, :got_lo12:lb_ownership_15visit_mark_gray]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x20
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
    b .L3_3
.L3_2:
.L3_3:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_9mark_gray, .-lb_ownership_9mark_gray

    .p2align 2
    .globl lb_ownership_10visit_scan
    .type lb_ownership_10visit_scan, %function
lb_ownership_10visit_scan:
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
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    cbnz w14, .L4_1
    b .L4_2
.L4_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    mov x0, x19
    bl lb_ownership_12check_thread
    mov x0, x19
    bl lb_ownership_scan
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_10visit_scan, .-lb_ownership_10visit_scan

    .p2align 2
    .globl lb_ownership_16visit_scan_black
    .type lb_ownership_16visit_scan_black, %function
lb_ownership_16visit_scan_black:
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
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    cbnz w14, .L5_1
    b .L5_2
.L5_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_4:
    b .L5_3
.L5_2:
.L5_3:
    mov x0, x19
    bl lb_ownership_12check_thread
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    mov x0, x19
    bl lb_ownership_8color_of
    mov w14, w0
    adrp x15, lb_ownership_black
    add x15, x15, :lo12:lb_ownership_black
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L5_6
.L5_5:
    sub x10, x29, #80
    str x19, [x10]
    mov x0, x19
    mov x1, x15
    bl lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x20, :got:lb_ownership_16visit_scan_black
    ldr x20, [x20, :got_lo12:lb_ownership_16visit_scan_black]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x20
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
.L5_8:
    b .L5_7
.L5_6:
.L5_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_16visit_scan_black, .-lb_ownership_16visit_scan_black

    .p2align 2
    .globl lb_ownership_scan
    .type lb_ownership_scan, %function
lb_ownership_scan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_8color_of
    mov w14, w0
    adrp x15, lb_ownership_gray
    add x15, x15, :lo12:lb_ownership_gray
    ldrb w15, [x15]
    cmp w14, w15
    b.ne .L6_2
.L6_1:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ls .L6_5
.L6_4:
    sub x10, x29, #56
    str x19, [x10]
    adrp x14, lb_ownership_black
    add x14, x14, :lo12:lb_ownership_black
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, :got:lb_ownership_16visit_scan_black
    ldr x15, [x15, :got_lo12:lb_ownership_16visit_scan_black]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
.L6_7:
    b .L6_6
.L6_5:
    adrp x14, lb_ownership_white
    add x14, x14, :lo12:lb_ownership_white
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_9set_color
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, :got:lb_ownership_10visit_scan
    ldr x15, [x15, :got_lo12:lb_ownership_10visit_scan]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    mov x2, x19
    ldr x17, [sp], #16
    blr x17
.L6_6:
    b .L6_3
.L6_2:
.L6_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_scan, .-lb_ownership_scan

    .p2align 2
    .globl lb_ownership_12visit_gather
    .type lb_ownership_12visit_gather, %function
lb_ownership_12visit_gather:
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
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    cbnz w14, .L7_1
    b .L7_2
.L7_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
    mov x0, x19
    bl lb_ownership_12check_thread
    mov x0, x19
    bl lb_ownership_gather
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_12visit_gather, .-lb_ownership_12visit_gather

    .p2align 2
    .globl lb_ownership_gather
    .type lb_ownership_gather, %function
lb_ownership_gather:
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
    bl lb_ownership_8color_of
    mov w14, w0
    adrp x15, lb_ownership_white
    add x15, x15, :lo12:lb_ownership_white
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    cbnz w14, .L8_4
    b .L8_32
.L8_32:
    mov w15, w14
    b .L8_5
.L8_4:
    adrp x14, lb_ownership_collecting
    add x14, x14, :lo12:lb_ownership_collecting
    ldrb w14, [x14]
    ldr x0, [sp, #8]
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L8_5:
    and w14, w15, #255
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrb w15, [x14]
    adrp x20, lb_ownership_collecting
    add x20, x20, :lo12:lb_ownership_collecting
    ldrb w20, [x20]
    orr w15, w15, w20
    strb w15, [x14]
    ldr x9, [sp, #8]
    sub x10, x29, #128
    str x9, [x10]
    adrp x0, :gottprel:lb_ownership_11white_count
    ldr x0, [x0, :gottprel_lo12:lb_ownership_11white_count]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x20, x0
    ldr x14, [x20]
    adrp x0, :gottprel:lb_ownership_whites
    ldr x0, [x0, :gottprel_lo12:lb_ownership_whites]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x21, x0
    add x22, x21, #8
    ldr x15, [x22]
    cmp x14, x15
    b.ne .L8_7
.L8_6:
    sub x23, x29, #144
    adrp x9, lb_memory_heap
    add x9, x9, :lo12:lb_memory_heap
    str x9, [sp, #0]
    mov x10, #0
    cmp x15, x10
    b.ls .L8_12
.L8_11:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
    b .L8_13
.L8_12:
    movz x9, #256
    mov x25, x9
.L8_13:
    sub x26, x29, #232
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls .L8_15
.L8_14:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L8_16
.L8_15:
    lsl x27, x25, #3
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, .L8_17
    b .L8_18
.L8_18:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L8_17:
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
    cbnz w19, .L8_19
    b .L8_20
.L8_19:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b .L8_16
.L8_20:
    ldr x14, [x24]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
.L8_16:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, .L8_22
    b .L8_21
.L8_22:
    add x14, x26, #16
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L8_9
.L8_21:
    sub x14, x29, #160
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L8_10
.L8_9:
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, .Ltext_12
    add x14, x14, :lo12:.Ltext_12
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
.L8_10:
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
.L8_23:
    ldr x24, [x20]
    cmp x19, x24
    b.hs .L8_25
.L8_24:
    cmp x19, x15
    b.lo 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x24, x19, #3
    add x25, x14, x24
    ldr x26, [x21]
    ldr x27, [x22]
    cmp x19, x27
    b.lo 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    add x24, x24, x26
    ldr x24, [x24]
    str x24, [x25]
    add x24, x19, #1
    mov x19, x24
    b .L8_23
.L8_25:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls .L8_27
.L8_26:
    sub x15, x29, #288
    ldr x19, [x21]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
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
    cbnz x24, .L8_30
    b .L8_29
.L8_30:
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
.L8_29:
    b .L8_28
.L8_27:
.L8_28:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L8_8
.L8_7:
.L8_8:
    ldr x14, [x20]
    ldr x15, [x21]
    ldr x19, [x22]
    cmp x14, x19
    b.lo 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
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
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
.L8_31:
    ldr x9, [sp, #8]
    add x14, x9, #16
    ldr x14, [x14]
    add x14, x14, #40
    ldr x14, [x14]
    adrp x15, :got:lb_ownership_12visit_gather
    ldr x15, [x15, :got_lo12:lb_ownership_12visit_gather]
    mov x17, x14
    str x17, [sp, #-16]!
    ldr x0, [sp, #24]
    mov x1, x15
    ldr x2, [sp, #24]
    ldr x17, [sp], #16
    blr x17
    b .L8_3
.L8_2:
.L8_3:
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

    .size lb_ownership_gather, .-lb_ownership_gather

    .p2align 2
    .globl lb_ownership_13visit_restore
    .type lb_ownership_13visit_restore, %function
lb_ownership_13visit_restore:
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
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    cbnz w14, .L9_1
    b .L9_2
.L9_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_4:
    b .L9_3
.L9_2:
.L9_3:
    mov x0, x19
    bl lb_ownership_12check_thread
    adrp x14, lb_ownership_collecting
    add x14, x14, :lo12:lb_ownership_collecting
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    cbnz w14, .L9_5
    b .L9_6
.L9_5:
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    b .L9_7
.L9_6:
.L9_7:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_13visit_restore, .-lb_ownership_13visit_restore

    .p2align 2
    .globl lb_ownership_collect
    .type lb_ownership_collect, %function
lb_ownership_collect:
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
    adrp x0, :gottprel:lb_ownership_17collector_running
    ldr x0, [x0, :gottprel_lo12:lb_ownership_17collector_running]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x19, x0
    ldrb w14, [x19]
    cbnz w14, .L10_1
    b .L10_2
.L10_1:
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
.L10_4:
    b .L10_3
.L10_2:
.L10_3:
    movz x9, #1
    strb w9, [x19]
    adrp x20, lb_ownership_purple
    add x20, x20, :lo12:lb_ownership_purple
    adrp x21, lb_ownership_dead
    add x21, x21, :lo12:lb_ownership_dead
    adrp x22, lb_ownership_buffered
    add x22, x22, :lo12:lb_ownership_buffered
    mov x9, #0
    mov x23, x9
    mov x9, #0
    mov x24, x9
.L10_5:
    adrp x0, :gottprel:lb_ownership_10root_count
    ldr x0, [x0, :gottprel_lo12:lb_ownership_10root_count]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x25, x0
    ldr x14, [x25]
    cmp x24, x14
    b.hs .L10_7
.L10_6:
    adrp x0, :gottprel:lb_ownership_roots
    ldr x0, [x0, :gottprel_lo12:lb_ownership_roots]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x25, x0
    ldr x14, [x25]
    add x26, x25, #8
    ldr x15, [x26]
    cmp x24, x15
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x15, x24, #3
    add x14, x14, x15
    ldr x27, [x14]
    mov x0, x27
    bl lb_ownership_8color_of
    mov w14, w0
    ldrb w15, [x20]
    cmp w14, w15
    cset w14, eq
    cbnz w14, .L10_11
    b .L10_46
.L10_46:
    mov w15, w14
    b .L10_12
.L10_11:
    ldr w14, [x27]
    mov x10, #0
    cmp w14, w10
    cset w15, hi
.L10_12:
    and w14, w15, #255
    cbnz w14, .L10_13
    b .L10_47
.L10_47:
    mov w15, w14
    b .L10_14
.L10_13:
    ldrb w14, [x21]
    mov x0, x27
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L10_14:
    and w14, w15, #255
    cbnz w14, .L10_8
    b .L10_9
.L10_8:
    ldr x14, [x25]
    ldr x15, [x26]
    cmp x23, x15
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x15, x23, #3
    add x14, x14, x15
    str x27, [x14]
    add x14, x23, #1
    b .L10_10
.L10_9:
    add x14, x27, #8
    ldrb w15, [x14]
    ldrb w25, [x22]
    movn x10, #0
    eor w25, w25, w10
    and w25, w25, #255
    and w15, w15, w25
    strb w15, [x14]
    mov x0, x27
    bl lb_ownership_13release_shell
    mov x14, x23
.L10_10:
    add x15, x24, #1
    mov x23, x14
    mov x24, x15
    b .L10_5
.L10_7:
    str x23, [x25]
    mov x9, #0
    mov x20, x9
.L10_15:
    ldr x14, [x25]
    cmp x20, x14
    b.hs .L10_17
.L10_16:
    adrp x0, :gottprel:lb_ownership_roots
    ldr x0, [x0, :gottprel_lo12:lb_ownership_roots]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x20, x14
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x14, x20, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl lb_ownership_9mark_gray
    add x14, x20, #1
    mov x20, x14
    b .L10_15
.L10_17:
    mov x9, #0
    mov x20, x9
.L10_18:
    ldr x14, [x25]
    cmp x20, x14
    b.hs .L10_20
.L10_19:
    adrp x0, :gottprel:lb_ownership_roots
    ldr x0, [x0, :gottprel_lo12:lb_ownership_roots]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x20, x14
    b.lo 1f
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x14, x20, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl lb_ownership_scan
    add x14, x20, #1
    mov x20, x14
    b .L10_18
.L10_20:
    adrp x0, :gottprel:lb_ownership_11white_count
    ldr x0, [x0, :gottprel_lo12:lb_ownership_11white_count]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x20, x0
    mov x9, #0
    str x9, [x20]
    mov x9, #0
    mov x21, x9
.L10_21:
    ldr x14, [x25]
    cmp x21, x14
    b.hs .L10_23
.L10_22:
    adrp x0, :gottprel:lb_ownership_roots
    ldr x0, [x0, :gottprel_lo12:lb_ownership_roots]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x14, x21, #3
    add x14, x15, x14
    ldr x14, [x14]
    mov x0, x14
    bl lb_ownership_gather
    add x14, x21, #1
    mov x21, x14
    b .L10_21
.L10_23:
    adrp x14, lb_ownership_buffered
    add x14, x14, :lo12:lb_ownership_buffered
    mov x9, #0
    mov x15, x9
.L10_24:
    ldr x21, [x25]
    cmp x15, x21
    b.hs .L10_26
.L10_25:
    adrp x0, :gottprel:lb_ownership_roots
    ldr x0, [x0, :gottprel_lo12:lb_ownership_roots]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x21, x0
    ldr x22, [x21]
    add x21, x21, #8
    ldr x21, [x21]
    cmp x15, x21
    b.lo 1f
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
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
    b .L10_24
.L10_26:
    mov x9, #0
    str x9, [x25]
    adrp x21, :got:lb_ownership_13visit_restore
    ldr x21, [x21, :got_lo12:lb_ownership_13visit_restore]
    mov x9, #0
    mov x22, x9
.L10_27:
    ldr x14, [x20]
    cmp x22, x14
    b.hs .L10_29
.L10_28:
    adrp x0, :gottprel:lb_ownership_whites
    ldr x0, [x0, :gottprel_lo12:lb_ownership_whites]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x22, x14
    b.lo 1f
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
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
    b .L10_27
.L10_29:
    adrp x21, .Ltext_38
    add x21, x21, :lo12:.Ltext_38
    sub x22, x29, #104
    add x23, x22, #8
    adrp x24, .Ltext_39
    add x24, x24, :lo12:.Ltext_39
    mov x9, #0
    mov x25, x9
.L10_30:
    ldr x14, [x20]
    cmp x25, x14
    b.hs .L10_32
.L10_31:
    adrp x0, :gottprel:lb_ownership_whites
    ldr x0, [x0, :gottprel_lo12:lb_ownership_whites]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x25, x14
    b.lo 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x14, x25, #3
    add x14, x15, x14
    ldr x26, [x14]
    add x14, x26, #16
    ldr x14, [x14]
    add x14, x14, #24
    ldr x14, [x14]
    cbnz x14, .L10_36
    b .L10_34
.L10_36:
.L10_33:
    ldr w15, [x26]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
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
    b.ls .L10_38
.L10_37:
    str x21, [x22]
    movz x9, #25
    str x9, [x23]
    mov x0, x24
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L10_39
.L10_38:
.L10_39:
    ldr w14, [x26]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x26]
    b .L10_35
.L10_34:
.L10_35:
    add x14, x25, #1
    mov x25, x14
    b .L10_30
.L10_32:
    mov x9, #0
    mov x21, x9
.L10_40:
    ldr x14, [x20]
    cmp x21, x14
    b.hs .L10_42
.L10_41:
    adrp x0, :gottprel:lb_ownership_whites
    ldr x0, [x0, :gottprel_lo12:lb_ownership_whites]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x21, x14
    b.lo 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
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
    b .L10_40
.L10_42:
    adrp x21, lb_ownership_dead
    add x21, x21, :lo12:lb_ownership_dead
    mov x9, #0
    mov x22, x9
.L10_43:
    ldr x14, [x20]
    cmp x22, x14
    b.hs .L10_45
.L10_44:
    adrp x0, :gottprel:lb_ownership_whites
    ldr x0, [x0, :gottprel_lo12:lb_ownership_whites]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x22, x14
    b.lo 1f
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x14, x22, #3
    add x14, x15, x14
    ldr x14, [x14]
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    ldr x23, [x15]
    mov x9, x23
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
1:
    mov x23, x9
    str x23, [x15]
    mov x9, #0
    str w9, [x14]
    add x15, x14, #8
    ldrb w23, [x21]
    strb w23, [x15]
    mov x0, x14
    bl lb_ownership_13release_shell
    add x14, x22, #1
    mov x22, x14
    b .L10_43
.L10_45:
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

    .size lb_ownership_collect, .-lb_ownership_collect

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_cycles_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/ownership/cycles.lucb:11:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "memory.exhausted"
.Ltext_4:
    .asciz "out of memory"
.Ltext_5:
    .asciz "src/std/ownership/cycles.lucb:12:13"
.Ltext_6:
    .asciz "src/std/ownership/cycles.lucb:15:13"
.Ltext_7:
    .asciz "src/std/ownership/cycles.lucb:16:13"
.Ltext_8:
    .asciz "src/std/ownership/cycles.lucb:18:13"
.Ltext_9:
    .asciz "src/std/ownership/cycles.lucb:20:5"
.Ltext_10:
    .asciz "src/std/ownership/cycles.lucb:21:5"
.Ltext_11:
    .asciz "src/std/ownership/cycles.lucb:25:9"
.Ltext_12:
    .asciz "src/std/ownership/cycles.lucb:26:13"
.Ltext_13:
    .asciz "src/std/ownership/cycles.lucb:29:13"
.Ltext_14:
    .asciz "src/std/ownership/cycles.lucb:30:13"
.Ltext_15:
    .asciz "src/std/ownership/cycles.lucb:32:13"
.Ltext_16:
    .asciz "src/std/ownership/cycles.lucb:34:5"
.Ltext_17:
    .asciz "src/std/ownership/cycles.lucb:35:5"
.Ltext_18:
    .asciz "src/std/ownership/cycles.lucb:50:5"
.Ltext_19:
    .asciz "src/std/ownership/cycles.lucb:68:5"
.Ltext_20:
    .asciz "src/std/ownership/cycles.lucb:102:9"
.Ltext_21:
    .asciz "src/std/ownership/cycles.lucb:113:9"
.Ltext_22:
    .asciz "src/std/ownership/cycles.lucb:115:13"
.Ltext_23:
    .asciz "src/std/ownership/cycles.lucb:116:13"
.Ltext_24:
    .asciz "src/std/ownership/cycles.lucb:120:9"
.Ltext_25:
    .asciz "src/std/ownership/cycles.lucb:124:9"
.Ltext_26:
    .asciz "src/std/ownership/cycles.lucb:125:9"
.Ltext_27:
    .asciz "src/std/ownership/cycles.lucb:128:9"
.Ltext_28:
    .asciz "src/std/ownership/cycles.lucb:129:9"
.Ltext_29:
    .asciz "src/std/ownership/cycles.lucb:133:9"
.Ltext_30:
    .asciz "src/std/ownership/cycles.lucb:134:9"
.Ltext_31:
    .asciz "src/std/ownership/cycles.lucb:137:9"
.Ltext_32:
    .asciz "src/std/ownership/cycles.lucb:138:9"
.Ltext_33:
    .asciz "src/std/ownership/cycles.lucb:144:9"
.Ltext_34:
    .asciz "src/std/ownership/cycles.lucb:145:9"
.Ltext_35:
    .asciz "src/std/ownership/cycles.lucb:148:9"
.Ltext_36:
    .asciz "src/std/ownership/cycles.lucb:151:13"
.Ltext_37:
    .asciz "src/std/ownership/cycles.lucb:153:13"
.Ltext_38:
    .asciz "`deinit` published `self`"
.Ltext_39:
    .asciz "src/std/ownership/cycles.lucb:154:17"
.Ltext_40:
    .asciz "src/std/ownership/cycles.lucb:157:13"
.Ltext_41:
    .asciz "src/std/ownership/cycles.lucb:158:9"
.Ltext_42:
    .asciz "src/std/ownership/cycles.lucb:161:9"
.Ltext_43:
    .asciz "src/std/ownership/cycles.lucb:162:9"
.Ltext_44:
    .asciz "src/std/ownership/cycles.lucb:165:9"
.Ltext_45:
    .asciz "src/std/ownership/cycles.lucb:166:9"
.Ltext_46:
    .asciz "src/std/ownership/cycles.lucb:170:9"
.Ltext_47:
    .asciz "integer overflow"
.Ltext_48:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_ownership_15candidate_limit
    .type lb_ownership_15candidate_limit, %object
    .p2align 3
lb_ownership_15candidate_limit:
    .zero 8

    .section .tbss,"awT",%nobits
    .globl lb_ownership_roots
    .type lb_ownership_roots, %object
    .p2align 3
lb_ownership_roots:
    .zero 16

    .section .tbss,"awT",%nobits
    .globl lb_ownership_10root_count
    .type lb_ownership_10root_count, %object
    .p2align 3
lb_ownership_10root_count:
    .zero 8

    .section .tbss,"awT",%nobits
    .globl lb_ownership_whites
    .type lb_ownership_whites, %object
    .p2align 3
lb_ownership_whites:
    .zero 16

    .section .tbss,"awT",%nobits
    .globl lb_ownership_11white_count
    .type lb_ownership_11white_count, %object
    .p2align 3
lb_ownership_11white_count:
    .zero 8

    .section .tbss,"awT",%nobits
    .globl lb_ownership_17collector_running
    .type lb_ownership_17collector_running, %object
    .p2align 0
lb_ownership_17collector_running:
    .zero 1


    .section .note.GNU-stack,"",%progbits
