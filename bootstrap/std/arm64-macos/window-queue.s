    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_queue_0init
_lb_window_queue_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_11push_scalar
    .no_dead_strip _lb_window_11push_scalar
_lb_window_11push_scalar:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x14, x29, #72
    ldr w19, [x14]
    movz x10, #32
    cmp w19, w10
    cset w14, hs
    cbnz w14, L1_4
    b L1_12
L1_12:
    mov w15, w14
    b L1_5
L1_4:
    movz x10, #127
    cmp w19, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_5:
    and w14, w15, #255
    cbnz w14, L1_6
    b L1_13
L1_13:
    mov w15, w14
    b L1_7
L1_6:
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp w19, w10
    cset w15, ls
L1_7:
    and w14, w15, #255
    cbnz w14, L1_8
    b L1_14
L1_14:
    mov w15, w14
    b L1_9
L1_8:
    movz x10, #55296
    cmp w19, w10
    cset w14, hs
    cbnz w14, L1_10
    b L1_15
L1_15:
    mov w15, w14
    b L1_11
L1_10:
    movz x10, #57343
    cmp w19, w10
    cset w15, ls
L1_11:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
L1_9:
    and w14, w15, #255
    cbnz w14, L1_1
    b L1_2
L1_1:
    sub x14, x29, #56
    ldr x20, [x14]
    sub x21, x29, #128
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #13
    strb w9, [x21]
    add x14, x21, #52
    str w19, [x14]
    mov x0, x20
    mov x9, x21
    mov x1, x9
    bl _lb_window_10push_event
    b L1_3
L1_2:
L1_3:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10push_utf16
    .no_dead_strip _lb_window_10push_utf16
_lb_window_10push_utf16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str w1, [x16]
    sub x14, x29, #64
    ldrh w19, [x14]
    movz x10, #55296
    cmp w19, w10
    cset w14, hs
    cbnz w14, L2_4
    b L2_22
L2_22:
    mov w15, w14
    b L2_5
L2_4:
    movz x10, #56319
    cmp w19, w10
    cset w15, ls
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x14, x29, #48
    ldr x14, [x14]
    movz x10, #14382
    add x20, x14, x10
    ldrh w15, [x20]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L2_7
L2_6:
    mov x0, x14
    movz x1, #65533
    bl _lb_window_11push_scalar
    b L2_8
L2_7:
L2_8:
    strh w19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_3
L2_2:
L2_3:
    movz x10, #56320
    cmp w19, w10
    cset w14, hs
    cbnz w14, L2_13
    b L2_23
L2_23:
    mov w15, w14
    b L2_14
L2_13:
    movz x10, #57343
    cmp w19, w10
    cset w15, ls
L2_14:
    and w14, w15, #255
    cbnz w14, L2_10
    b L2_11
L2_10:
    sub x14, x29, #48
    ldr x14, [x14]
    movz x10, #14382
    add x15, x14, x10
    ldrh w12, [x15]
    mov x9, #0
    strh w9, [x15]
    and w15, w12, #65535
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne L2_16
L2_15:
    mov w12, w15
    mov w9, w12
    movz x10, #55296
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w12, w9
    mov w9, w12
    movz x10, #1024
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w12, w9
    mov w9, w12
    movz x10, #1, lsl #16
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w12, w9
    mov w13, w19
    mov w9, w12
    mov w10, w13
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w12, w9
    mov w9, w12
    movz x10, #56320
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w12, w9
    b L2_17
L2_16:
    movz x9, #65533
    mov w12, w9
L2_17:
    mov x0, x14
    mov x1, x12
    bl _lb_window_11push_scalar
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_18:
    b L2_12
L2_11:
L2_12:
    sub x14, x29, #48
    ldr x20, [x14]
    movz x10, #14382
    add x14, x20, x10
    ldrh w15, [x14]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L2_20
L2_19:
    mov x9, #0
    strh w9, [x14]
    mov x0, x20
    movz x1, #65533
    bl _lb_window_11push_scalar
    b L2_21
L2_20:
L2_21:
    mov w14, w19
    mov x0, x20
    mov x1, x14
    bl _lb_window_11push_scalar
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10push_event
    .no_dead_strip _lb_window_10push_event
_lb_window_10push_event:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x0, x29, #96
    ldr x1, [x0]
    movz x2, #56
    bl _memcpy
    sub x14, x29, #40
    ldr x14, [x14]
    movz x10, #14368
    add x19, x14, x10
    ldr x15, [x19]
    movz x10, #256
    cmp x15, x10
    b.ne L3_2
L3_1:
    movz x10, #14360
    add x15, x14, x10
    mov x9, #0
    str x9, [x15]
    mov x9, #0
    str x9, [x19]
    movz x10, #14376
    add x15, x14, x10
    movz x9, #1
    strb w9, [x15]
    b L3_3
L3_2:
L3_3:
    movz x10, #14360
    add x15, x14, x10
    ldr x15, [x15]
    ldr x12, [x19]
    mov x9, x15
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
L3_5:
    movz x10, #256
    udiv x11, x15, x10
    msub x12, x11, x10, x15
    add x13, x14, #24
    movz x10, #256
    cmp x12, x10
    b.lo 1f
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #56
    mul x12, x12, x10
    add x12, x13, x12
    sub x13, x29, #96
    mov x10, x13
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x12, [x19]
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x19]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_9pop_event
    .no_dead_strip _lb_window_9pop_event
_lb_window_9pop_event:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #576
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #544]
    str x20, [sp, #536]
    str x21, [sp, #528]
    str x22, [sp, #520]
    str x23, [sp, #512]
    sub x16, x29, #144
    str x0, [x16]
    sub x14, x29, #144
    ldr x14, [x14]
    movz x10, #14377
    add x15, x14, x10
    ldrb w12, [x15]
    cbnz w12, L4_1
    b L4_2
L4_1:
    mov x9, #0
    strb w9, [x15]
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #1
    strb w9, [x19]
    sub x20, x29, #264
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #128
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_2:
L4_3:
    movz x10, #14376
    add x15, x14, x10
    ldrb w12, [x15]
    cbnz w12, L4_5
    b L4_6
L4_5:
    mov x9, #0
    strb w9, [x15]
    sub x19, x29, #320
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #12
    strb w9, [x19]
    sub x20, x29, #384
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #128
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_7:
    movz x10, #14368
    add x19, x14, x10
    ldr x15, [x19]
    mov x10, #0
    cmp x15, x10
    b.ne L4_10
L4_9:
    sub x19, x29, #448
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    sub x20, x29, #128
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
L4_11:
    sub x20, x29, #504
    movz x10, #14360
    add x21, x14, x10
    ldr x15, [x21]
    add x12, x14, #24
    movz x10, #256
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_10@PAGE
    add x1, x1, l_text_10@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #56
    mul x15, x15, x10
    add x15, x12, x15
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x15, [x21]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
L4_14:
    movz x10, #256
    udiv x11, x15, x10
    msub x14, x11, x10, x15
    str x14, [x21]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    sub x22, x29, #568
    mov x10, x20
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x22, #56
    movz x9, #1
    strb w9, [x14]
    sub x23, x29, #128
    mov x10, x22
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_queue_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/window/queue.lucb:41:9"
l_text_1:
    .asciz "src/std/window/queue.lucb:53:5"
l_text_2:
    .asciz "division by zero"
l_text_3:
    .asciz "src/std/window/queue.lucb:54:5"
l_text_4:
    .asciz "src/std/window/queue.lucb:65:5"
l_text_5:
    .asciz "src/std/window/queue.lucb:66:5"
l_text_6:
    .asciz "src/std/window/queue.lucb:67:5"
l_text_7:
    .asciz "unreachable"
l_text_8:
    .asciz "src/std/window/queue.lucb:68:5"
l_text_9:
    .asciz "integer overflow"
l_text_10:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
