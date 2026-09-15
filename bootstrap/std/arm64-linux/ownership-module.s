    .text

    .p2align 2
    .globl lb_ownership_module_0init
    .type lb_ownership_module_0init, %function
lb_ownership_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_ownership_black
    add x14, x14, :lo12:lb_ownership_black
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_ownership_gray
    add x14, x14, :lo12:lb_ownership_gray
    movz x9, #1
    strb w9, [x14]
    adrp x14, lb_ownership_white
    add x14, x14, :lo12:lb_ownership_white
    movz x9, #2
    strb w9, [x14]
    adrp x14, lb_ownership_purple
    add x14, x14, :lo12:lb_ownership_purple
    movz x9, #3
    strb w9, [x14]
    adrp x14, lb_ownership_10color_mask
    add x14, x14, :lo12:lb_ownership_10color_mask
    movz x9, #3
    strb w9, [x14]
    adrp x14, lb_ownership_buffered
    add x14, x14, :lo12:lb_ownership_buffered
    movz x9, #4
    strb w9, [x14]
    adrp x14, lb_ownership_dead
    add x14, x14, :lo12:lb_ownership_dead
    movz x9, #8
    strb w9, [x14]
    adrp x14, lb_ownership_collecting
    add x14, x14, :lo12:lb_ownership_collecting
    movz x9, #16
    strb w9, [x14]
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    movz x9, #32
    strb w9, [x14]
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x14, lb_ownership_12next_context
    add x14, x14, :lo12:lb_ownership_12next_context
    movz x9, #1
    str x9, [x14]
    adrp x14, lb_ownership_15next_generation
    add x14, x14, :lo12:lb_ownership_15next_generation
    movz x9, #1
    str x9, [x14]
    adrp x0, :gottprel:lb_ownership_14thread_context
    ldr x0, [x0, :gottprel_lo12:lb_ownership_14thread_context]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x0, :gottprel:lb_ownership_13runtime_depth
    ldr x0, [x0, :gottprel_lo12:lb_ownership_13runtime_depth]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_module_0init, .-lb_ownership_module_0init

    .p2align 2
    .globl lb_ownership_10live_count
    .type lb_ownership_10live_count, %function
lb_ownership_10live_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_10live_count, .-lb_ownership_10live_count

    .p2align 2
    .globl lb_ownership_12restore_site
    .type lb_ownership_12restore_site, %function
lb_ownership_12restore_site:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    adrp x0, :gottprel:lb_ownership_site
    ldr x0, [x0, :gottprel_lo12:lb_ownership_site]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x15, x29, #32
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_12restore_site, .-lb_ownership_12restore_site

    .p2align 2
    .globl lb_ownership_stop
    .type lb_ownership_stop, %function
lb_ownership_stop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    str x19, [sp, #488]
    str x20, [sp, #480]
    str x21, [sp, #472]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #72
    bl lb_io_stderr
    sub x16, x29, #88
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x20, x29, #104
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x21, [x19]
    add x14, x19, #8
    ldr x19, [x14]
    ldr x14, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #184
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_4
    b .L3_3
.L3_4:
    add x14, x15, #8
    sub x12, x29, #144
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_1
.L3_3:
    b .L3_2
.L3_1:
    b .L3_2
.L3_5:
.L3_2:
    ldr x14, [x19]
    adrp x0, :gottprel:lb_ownership_site
    ldr x0, [x0, :gottprel_lo12:lb_ownership_site]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #248
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_9
    b .L3_8
.L3_9:
    add x14, x15, #8
    sub x12, x29, #208
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_6
.L3_8:
    b .L3_7
.L3_6:
    b .L3_7
.L3_10:
.L3_7:
    sub x20, x29, #264
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #344
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #344
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_14
    b .L3_13
.L3_14:
    add x14, x15, #8
    sub x12, x29, #304
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_11
.L3_13:
    b .L3_12
.L3_11:
    b .L3_12
.L3_15:
.L3_12:
    ldr x14, [x19]
    sub x15, x29, #56
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #408
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #408
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_19
    b .L3_18
.L3_19:
    add x14, x15, #8
    sub x12, x29, #368
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_16
.L3_18:
    b .L3_17
.L3_16:
    b .L3_17
.L3_20:
.L3_17:
    sub x20, x29, #424
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #440
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #504
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #504
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_24
    b .L3_23
.L3_24:
    add x14, x15, #8
    sub x12, x29, #464
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_21
.L3_23:
    b .L3_22
.L3_21:
    b .L3_22
.L3_25:
.L3_22:
    movz x0, #1
    bl lb_core_exit
    ldr x19, [sp, #488]
    ldr x20, [sp, #480]
    ldr x21, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_stop, .-lb_ownership_stop

    .p2align 2
    .globl lb_ownership_8color_of
    .type lb_ownership_8color_of, %function
lb_ownership_8color_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #8
    ldrb w14, [x14]
    adrp x15, lb_ownership_10color_mask
    add x15, x15, :lo12:lb_ownership_10color_mask
    ldrb w15, [x15]
    and w14, w14, w15
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_8color_of, .-lb_ownership_8color_of

    .p2align 2
    .globl lb_ownership_9set_color
    .type lb_ownership_9set_color, %function
lb_ownership_9set_color:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #8
    ldrb w15, [x14]
    adrp x12, lb_ownership_10color_mask
    add x12, x12, :lo12:lb_ownership_10color_mask
    ldrb w12, [x12]
    movn x10, #0
    eor w12, w12, w10
    and w12, w12, #255
    and w15, w15, w12
    sub x12, x29, #48
    ldrb w12, [x12]
    orr w15, w15, w12
    strb w15, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_9set_color, .-lb_ownership_9set_color

    .p2align 2
    .globl lb_ownership_has
    .type lb_ownership_has, %function
lb_ownership_has:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #8
    ldrb w14, [x14]
    sub x15, x29, #48
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
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
.L6_1:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_has, .-lb_ownership_has

    .p2align 2
    .globl lb_ownership_10context_id
    .type lb_ownership_10context_id, %function
lb_ownership_10context_id:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    adrp x0, :gottprel:lb_ownership_14thread_context
    ldr x0, [x0, :gottprel_lo12:lb_ownership_14thread_context]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x19, x0
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne .L7_2
.L7_1:
    adrp x14, lb_ownership_12next_context
    add x14, x14, :lo12:lb_ownership_12next_context
    movz x10, #1
    mov x17, x14
1:
    ldxr x9, [x17]
    add x11, x9, x10
    stxr w16, x11, [x17]
    cbnz w16, 1b
    mov x14, x9
    str x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne .L7_5
.L7_4:
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    sub x15, x29, #40
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L7_6
.L7_5:
.L7_6:
    b .L7_3
.L7_2:
.L7_3:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_7:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_10context_id, .-lb_ownership_10context_id

    .p2align 2
    .globl lb_ownership_enter
    .type lb_ownership_enter, %function
lb_ownership_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl lb_ownership_10context_id
    mov x14, x0
    adrp x0, :gottprel:lb_ownership_13runtime_depth
    ldr x0, [x0, :gottprel_lo12:lb_ownership_13runtime_depth]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_enter, .-lb_ownership_enter

    .p2align 2
    .globl lb_ownership_15require_context
    .type lb_ownership_15require_context, %function
lb_ownership_15require_context:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x0, :gottprel:lb_ownership_13runtime_depth
    ldr x0, [x0, :gottprel_lo12:lb_ownership_13runtime_depth]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L9_2
.L9_1:
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #55
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L9_3
.L9_2:
.L9_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_15require_context, .-lb_ownership_15require_context

    .p2align 2
    .globl lb_ownership_12check_thread
    .type lb_ownership_12check_thread, %function
lb_ownership_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    adrp x15, lb_ownership_immortal
    add x15, x15, :lo12:lb_ownership_immortal
    ldrb w15, [x15]
    sub x10, x29, #72
    str x14, [x10]
    sub x10, x29, #88
    str w15, [x10]
    add x15, x14, #8
    ldrb w15, [x15]
    sub x12, x29, #88
    ldrb w12, [x12]
    and w15, w15, w12
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #96
    str w15, [x10]
    b .L10_7
.L10_6:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L10_7:
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    cbnz w12, .L10_4
    b .L10_8
.L10_8:
    mov w14, w12
    b .L10_5
.L10_4:
    add x15, x14, #32
    ldr x19, [x15]
    bl lb_ownership_10context_id
    mov x15, x0
    cmp x19, x15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L10_5:
    and w15, w14, #255
    cbnz w15, .L10_1
    b .L10_2
.L10_1:
    adrp x14, .Ltext_11
    add x14, x14, :lo12:.Ltext_11
    sub x15, x29, #56
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L10_3
.L10_2:
.L10_3:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_12check_thread, .-lb_ownership_12check_thread

    .p2align 2
    .globl lb_ownership_11check_alive
    .type lb_ownership_11check_alive, %function
lb_ownership_11check_alive:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_12check_thread
    adrp x14, lb_ownership_dead
    add x14, x14, :lo12:lb_ownership_dead
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #88
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #96
    str w14, [x10]
    b .L11_7
.L11_6:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L11_7:
    cbnz w14, .L11_8
    b .L11_4
.L11_8:
    mov w15, w14
    b .L11_5
.L11_4:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L11_5:
    and w14, w15, #255
    cbnz w14, .L11_1
    b .L11_2
.L11_1:
    adrp x14, .Ltext_12
    add x14, x14, :lo12:.Ltext_12
    sub x15, x29, #56
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L11_3
.L11_2:
.L11_3:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_11check_alive, .-lb_ownership_11check_alive

    .p2align 2
    .globl lb_ownership_reserve
    .type lb_ownership_reserve, %function
lb_ownership_reserve:
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
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #136
    ldr x19, [x14]
    movz x10, #64
    cmp x19, x10
    b.hs .L12_2
.L12_1:
    adrp x14, .Ltext_13
    add x14, x14, :lo12:.Ltext_13
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L12_3
.L12_2:
.L12_3:
    sub x20, x29, #184
    sub x15, x29, #152
    ldr x14, [x15]
    cbnz x14, .L12_4
    b .L12_5
.L12_4:
    sub x14, x29, #200
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L12_6
.L12_5:
    adrp x14, lb_memory_heap
    add x14, x14, :lo12:lb_memory_heap
    sub x15, x29, #200
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L12_6:
    sub x14, x29, #200
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #216
    sub x22, x29, #264
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, .L12_7
    b .L12_8
.L12_8:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L12_7:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #16
    sub x8, x29, #288
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #288
    add x12, x23, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x19, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L12_9
    b .L12_10
.L12_9:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_16
    add x15, x15, :lo12:.Ltext_16
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b .L12_11
.L12_10:
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
.L12_11:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, .L12_13
    b .L12_12
.L12_13:
    add x14, x22, #16
    sub x19, x29, #104
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_14:
.L12_12:
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    bl lb_memory_set
    ldr x19, [x21]
    movz x9, #1
    str w9, [x19]
    add x14, x19, #16
    sub x15, x29, #120
    ldr x15, [x15]
    str x15, [x14]
    add x23, x19, #32
    bl lb_ownership_10context_id
    mov x14, x0
    str x14, [x23]
    add x14, x19, #24
    adrp x15, lb_ownership_15next_generation
    add x15, x15, :lo12:lb_ownership_15next_generation
    movz x10, #1
    mov x17, x15
1:
    ldxr x9, [x17]
    add x11, x9, x10
    stxr w16, x11, [x17]
    cbnz w16, 1b
    mov x15, x9
    str x15, [x14]
    mov x10, #0
    cmp x15, x10
    b.ne .L12_16
.L12_15:
    adrp x14, .Ltext_17
    add x14, x14, :lo12:.Ltext_17
    sub x15, x29, #304
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L12_17
.L12_16:
.L12_17:
    add x14, x19, #40
    add x15, x21, #8
    ldr x15, [x15]
    str x15, [x14]
    add x14, x19, #48
    mov x10, x20
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    sub x14, x29, #104
    str x19, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_18:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_reserve, .-lb_ownership_reserve

    .p2align 2
    .globl lb_ownership_allocate
    .type lb_ownership_allocate, %function
lb_ownership_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x15, x14, #16
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl lb_ownership_14allocate_sized
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_1:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_allocate, .-lb_ownership_allocate

    .p2align 2
    .globl lb_ownership_14allocate_sized
    .type lb_ownership_14allocate_sized, %function
lb_ownership_14allocate_sized:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x14, x29, #72
    ldr x20, [x14]
    sub x21, x29, #112
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x1, x20
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #152
    bl lb_ownership_reserve
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L14_4
    b .L14_3
.L14_4:
    add x14, x15, #8
    sub x12, x29, #96
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L14_1
.L14_3:
    ldr x14, [x15]
    b .L14_2
.L14_1:
    adrp x14, .Ltext_21
    add x14, x14, :lo12:.Ltext_21
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, .Ltext_22
    add x14, x14, :lo12:.Ltext_22
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    mov x9, #0
    mov x14, x9
.L14_2:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_5:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_14allocate_sized, .-lb_ownership_14allocate_sized

    .p2align 2
    .globl lb_ownership_retain
    .type lb_ownership_retain, %function
lb_ownership_retain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    sub x10, x29, #56
    str x19, [x10]
    sub x10, x29, #72
    str w14, [x10]
    add x14, x19, #8
    ldrb w15, [x14]
    sub x12, x29, #72
    ldrb w12, [x12]
    and w15, w15, w12
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #80
    str w15, [x10]
    b .L15_7
.L15_6:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L15_7:
    cbnz w15, .L15_1
    b .L15_2
.L15_1:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_4:
    b .L15_3
.L15_2:
.L15_3:
    ldr w15, [x19]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x19]
    adrp x15, lb_ownership_black
    add x15, x15, :lo12:lb_ownership_black
    ldrb w15, [x15]
    sub x10, x29, #96
    str x19, [x10]
    sub x10, x29, #112
    str w15, [x10]
    ldrb w15, [x14]
    adrp x12, lb_ownership_10color_mask
    add x12, x12, :lo12:lb_ownership_10color_mask
    ldrb w12, [x12]
    movn x10, #0
    eor w12, w12, w10
    and w12, w12, #255
    and w15, w15, w12
    sub x12, x29, #112
    ldrb w12, [x12]
    orr w15, w15, w12
    strb w15, [x14]
.L15_8:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_5:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_retain, .-lb_ownership_retain

    .p2align 2
    .globl lb_ownership_release
    .type lb_ownership_release, %function
lb_ownership_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_12check_thread
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    add x20, x19, #8
    ldrb w14, [x20]
    sub x15, x29, #88
    ldrb w12, [x15]
    and w14, w14, w12
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #96
    str w14, [x10]
    b .L16_16
.L16_15:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L16_16:
    cbnz w14, .L16_1
    b .L16_2
.L16_1:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_4:
    b .L16_3
.L16_2:
.L16_3:
    adrp x14, lb_ownership_collecting
    add x14, x14, :lo12:lb_ownership_collecting
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    ldrb w14, [x20]
    ldrb w12, [x15]
    and w14, w14, w12
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #104
    str w14, [x10]
    b .L16_18
.L16_17:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L16_18:
    cbnz w14, .L16_5
    b .L16_6
.L16_5:
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ls .L16_9
.L16_8:
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    b .L16_10
.L16_9:
.L16_10:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_11:
    b .L16_7
.L16_6:
.L16_7:
    mov x0, x19
    bl lb_ownership_11check_alive
    ldr w14, [x19]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x19]
    ldr w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne .L16_13
.L16_12:
    sub x10, x29, #120
    str x19, [x10]
    adrp x14, lb_ownership_black
    add x14, x14, :lo12:lb_ownership_black
    ldrb w14, [x14]
    sub x10, x29, #152
    str x19, [x10]
    sub x10, x29, #168
    str w14, [x10]
    ldrb w14, [x20]
    adrp x15, lb_ownership_10color_mask
    add x15, x15, :lo12:lb_ownership_10color_mask
    ldrb w15, [x15]
    movn x10, #0
    eor w15, w15, w10
    and w15, w15, #255
    and w14, w14, w15
    sub x15, x29, #168
    ldrb w15, [x15]
    orr w14, w14, w15
    strb w14, [x20]
.L16_29:
    add x21, x19, #16
    ldr x14, [x21]
    add x14, x14, #24
    ldr x14, [x14]
    cbnz x14, .L16_22
    b .L16_20
.L16_22:
.L16_19:
    movz x9, #1
    str w9, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    ldr w15, [x19]
    movz x10, #1
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L16_24
.L16_23:
    adrp x14, .Ltext_27
    add x14, x14, :lo12:.Ltext_27
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    adrp x14, .Ltext_28
    add x14, x14, :lo12:.Ltext_28
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L16_25
.L16_24:
.L16_25:
    mov x9, #0
    str w9, [x19]
    b .L16_21
.L16_20:
.L16_21:
    ldr x14, [x21]
    add x14, x14, #32
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldrb w14, [x20]
    adrp x15, lb_ownership_dead
    add x15, x15, :lo12:lb_ownership_dead
    ldrb w15, [x15]
    orr w14, w14, w15
    strb w14, [x20]
    adrp x14, lb_ownership_buffered
    add x14, x14, :lo12:lb_ownership_buffered
    ldrb w14, [x14]
    sub x10, x29, #184
    str x19, [x10]
    sub x10, x29, #200
    str w14, [x10]
    ldrb w14, [x20]
    sub x15, x29, #200
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #208
    str w14, [x10]
    b .L16_31
.L16_30:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L16_31:
    mov x10, #0
    cmp w14, w10
    b.ne .L16_27
.L16_26:
    mov x0, x19
    bl lb_ownership_13release_shell
    b .L16_28
.L16_27:
.L16_28:
.L16_32:
    b .L16_14
.L16_13:
    mov x0, x19
    bl lb_ownership_13possible_root
.L16_14:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_release, .-lb_ownership_release

    .p2align 2
    .globl lb_ownership_13release_shell
    .type lb_ownership_13release_shell, %function
lb_ownership_13release_shell:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    str x23, [sp, #168]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x19, [x14]
    add x14, x19, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L17_4
    b .L17_17
.L17_17:
    mov w15, w14
    b .L17_5
.L17_4:
    adrp x14, lb_ownership_dead
    add x14, x14, :lo12:lb_ownership_dead
    ldrb w14, [x14]
    sub x10, x29, #184
    str x19, [x10]
    sub x10, x29, #200
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #200
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w15, w14, #255
    sub x10, x29, #208
    str w15, [x10]
    b .L17_14
.L17_13:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L17_14:
.L17_5:
    and w14, w15, #255
    cbnz w14, .L17_6
    b .L17_18
.L17_18:
    mov w15, w14
    b .L17_7
.L17_6:
    adrp x14, lb_ownership_buffered
    add x14, x14, :lo12:lb_ownership_buffered
    ldrb w14, [x14]
    sub x10, x29, #184
    str x19, [x10]
    sub x10, x29, #200
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #200
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #216
    str w14, [x10]
    b .L17_16
.L17_15:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L17_16:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L17_7:
    and w14, w15, #255
    cbnz w14, .L17_1
    b .L17_2
.L17_1:
    sub x21, x29, #88
    add x14, x19, #48
    ldr x20, [x14]
    cbnz x20, .L17_8
    b .L17_9
.L17_8:
    sub x22, x29, #104
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L17_10
.L17_9:
    adrp x14, .Ltext_30
    add x14, x14, :lo12:.Ltext_30
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L17_10:
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #136
    add x15, x19, #40
    ldr x23, [x15]
    sub x15, x29, #152
    str x19, [x15]
    add x12, x15, #8
    str x23, [x12]
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #168
    str x19, [x14]
    add x15, x14, #8
    str x23, [x15]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, .L17_12
    b .L17_11
.L17_12:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L17_11:
    b .L17_3
.L17_2:
.L17_3:
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_13release_shell, .-lb_ownership_13release_shell

    .p2align 2
    .globl lb_ownership_19discard_unpublished
    .type lb_ownership_19discard_unpublished, %function
lb_ownership_19discard_unpublished:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    ldr w14, [x19]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L18_10
    b .L18_4
.L18_10:
    mov w15, w14
    b .L18_5
.L18_4:
    add x14, x19, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L18_5:
    and w14, w15, #255
    cbnz w14, .L18_11
    b .L18_6
.L18_11:
    mov w15, w14
    b .L18_7
.L18_6:
    adrp x14, lb_ownership_buffered
    add x14, x14, :lo12:lb_ownership_buffered
    ldrb w14, [x14]
    sub x10, x29, #72
    str x19, [x10]
    sub x10, x29, #88
    str w14, [x10]
    add x14, x19, #8
    ldrb w14, [x14]
    sub x15, x29, #88
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w15, w14, #255
    sub x10, x29, #96
    str w15, [x10]
    b .L18_9
.L18_8:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L18_9:
.L18_7:
    and w14, w15, #255
    cbnz w14, .L18_1
    b .L18_2
.L18_1:
    adrp x14, .Ltext_33
    add x14, x14, :lo12:.Ltext_33
    sub x15, x29, #56
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_ownership_stop
    b .L18_3
.L18_2:
.L18_3:
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    mov x9, #0
    str w9, [x19]
    add x14, x19, #8
    ldrb w15, [x14]
    adrp x12, lb_ownership_dead
    add x12, x12, :lo12:lb_ownership_dead
    ldrb w12, [x12]
    orr w15, w15, w12
    strb w15, [x14]
    mov x0, x19
    bl lb_ownership_13release_shell
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_19discard_unpublished, .-lb_ownership_19discard_unpublished

    .p2align 2
    .globl lb_ownership_abandon
    .type lb_ownership_abandon, %function
lb_ownership_abandon:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #32
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    adrp x0, :gottprel:lb_ownership_live
    ldr x0, [x0, :gottprel_lo12:lb_ownership_live]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    mov x9, #0
    str w9, [x19]
    add x14, x19, #8
    ldrb w15, [x14]
    adrp x12, lb_ownership_dead
    add x12, x12, :lo12:lb_ownership_dead
    ldrb w12, [x12]
    orr w15, w15, w12
    strb w15, [x14]
    adrp x15, lb_ownership_buffered
    add x15, x15, :lo12:lb_ownership_buffered
    ldrb w15, [x15]
    sub x10, x29, #56
    str x19, [x10]
    sub x10, x29, #72
    str w15, [x10]
    ldrb w14, [x14]
    sub x15, x29, #72
    ldrb w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #80
    str w14, [x10]
    b .L19_5
.L19_4:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L19_5:
    mov x10, #0
    cmp w14, w10
    b.ne .L19_2
.L19_1:
    mov x0, x19
    bl lb_ownership_13release_shell
    b .L19_3
.L19_2:
.L19_3:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_abandon, .-lb_ownership_abandon

    .p2align 2
    .globl lb_ownership_identity
    .type lb_ownership_identity, %function
lb_ownership_identity:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    add x14, x19, #16
    ldr x14, [x14]
    add x14, x14, #48
    ldr x14, [x14]
    cbnz x14, .L20_4
    b .L20_2
.L20_4:
.L20_1:
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_5:
    b .L20_3
.L20_2:
.L20_3:
    add x14, x19, #24
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_6:
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_ownership_identity, .-lb_ownership_identity

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_module_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/ownership/module.lucb:53:5"
.Ltext_2:
    .asciz "trap: "
.Ltext_3:
    .asciz ": "
.Ltext_4:
    .asciz "\n"
.Ltext_5:
    .asciz "src/std/ownership/module.lucb:78:5"
.Ltext_6:
    .asciz "src/std/ownership/module.lucb:84:5"
.Ltext_7:
    .asciz "runtime context identity exhausted"
.Ltext_8:
    .asciz "src/std/ownership/module.lucb:97:5"
.Ltext_9:
    .asciz "src/std/ownership/module.lucb:103:5"
.Ltext_10:
    .asciz "a managed callback needs a runtime entry on this thread"
.Ltext_11:
    .asciz "an object belongs to another runtime thread"
.Ltext_12:
    .asciz "an object has already been destroyed"
.Ltext_13:
    .asciz "an object allocation is smaller than its header"
.Ltext_14:
    .asciz "memory.unset"
.Ltext_15:
    .asciz "src/std/ownership/module.lucb:124:5"
.Ltext_16:
    .asciz "memory.exhausted"
.Ltext_17:
    .asciz "object allocation identity exhausted"
.Ltext_18:
    .asciz "src/std/ownership/module.lucb:135:5"
.Ltext_19:
    .asciz "src/std/ownership/module.lucb:136:5"
.Ltext_20:
    .asciz "src/std/ownership/module.lucb:139:5"
.Ltext_21:
    .asciz "out of memory"
.Ltext_22:
    .asciz "src/std/ownership/module.lucb:144:9"
.Ltext_23:
    .asciz "src/std/ownership/module.lucb:150:5"
.Ltext_24:
    .asciz "src/std/ownership/module.lucb:152:5"
.Ltext_25:
    .asciz "src/std/ownership/module.lucb:162:13"
.Ltext_26:
    .asciz "src/std/ownership/module.lucb:165:5"
.Ltext_27:
    .asciz "`deinit` published `self`"
.Ltext_28:
    .asciz "src/std/ownership/module.lucb:178:13"
.Ltext_29:
    .asciz "src/std/ownership/module.lucb:181:5"
.Ltext_30:
    .asciz "an object has no allocation owner"
.Ltext_31:
    .asciz "src/std/ownership/module.lucb:189:9"
.Ltext_32:
    .asciz "src/std/ownership/module.lucb:191:9"
.Ltext_33:
    .asciz "an incomplete object was published"
.Ltext_34:
    .asciz "src/std/ownership/module.lucb:199:5"
.Ltext_35:
    .asciz "src/std/ownership/module.lucb:208:5"
.Ltext_36:
    .asciz "src/std/ownership/module.lucb:219:5"
.Ltext_37:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_ownership_black
    .type lb_ownership_black, %object
    .p2align 0
lb_ownership_black:
    .zero 1

    .bss
    .globl lb_ownership_gray
    .type lb_ownership_gray, %object
    .p2align 0
lb_ownership_gray:
    .zero 1

    .bss
    .globl lb_ownership_white
    .type lb_ownership_white, %object
    .p2align 0
lb_ownership_white:
    .zero 1

    .bss
    .globl lb_ownership_purple
    .type lb_ownership_purple, %object
    .p2align 0
lb_ownership_purple:
    .zero 1

    .bss
    .globl lb_ownership_10color_mask
    .type lb_ownership_10color_mask, %object
    .p2align 0
lb_ownership_10color_mask:
    .zero 1

    .bss
    .globl lb_ownership_buffered
    .type lb_ownership_buffered, %object
    .p2align 0
lb_ownership_buffered:
    .zero 1

    .bss
    .globl lb_ownership_dead
    .type lb_ownership_dead, %object
    .p2align 0
lb_ownership_dead:
    .zero 1

    .bss
    .globl lb_ownership_collecting
    .type lb_ownership_collecting, %object
    .p2align 0
lb_ownership_collecting:
    .zero 1

    .bss
    .globl lb_ownership_immortal
    .type lb_ownership_immortal, %object
    .p2align 0
lb_ownership_immortal:
    .zero 1

    .section .tbss,"awT",%nobits
    .globl lb_ownership_live
    .type lb_ownership_live, %object
    .p2align 3
lb_ownership_live:
    .zero 8

    .section .tbss,"awT",%nobits
    .globl lb_ownership_site
    .type lb_ownership_site, %object
    .p2align 3
lb_ownership_site:
    .zero 16

    .bss
    .globl lb_ownership_12next_context
    .type lb_ownership_12next_context, %object
    .p2align 3
lb_ownership_12next_context:
    .zero 8

    .bss
    .globl lb_ownership_15next_generation
    .type lb_ownership_15next_generation, %object
    .p2align 3
lb_ownership_15next_generation:
    .zero 8

    .section .tbss,"awT",%nobits
    .globl lb_ownership_14thread_context
    .type lb_ownership_14thread_context, %object
    .p2align 3
lb_ownership_14thread_context:
    .zero 8

    .section .tbss,"awT",%nobits
    .globl lb_ownership_13runtime_depth
    .type lb_ownership_13runtime_depth, %object
    .p2align 2
lb_ownership_13runtime_depth:
    .zero 4


    .section .note.GNU-stack,"",%progbits
