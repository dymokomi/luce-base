    .text

    .p2align 2
    .globl lb_window_queue_0init
    .type lb_window_queue_0init, %function
lb_window_queue_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_queue_0init, .-lb_window_queue_0init

    .p2align 2
    .globl lb_window_9pop_event
    .type lb_window_9pop_event, %function
lb_window_9pop_event:
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
    cbnz w12, .L1_1
    b .L1_2
.L1_1:
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
    bl memcpy
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
.L1_2:
.L1_3:
    movz x10, #14376
    add x15, x14, x10
    ldrb w12, [x15]
    cbnz w12, .L1_5
    b .L1_6
.L1_5:
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
    bl memcpy
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
.L1_6:
.L1_7:
    movz x10, #14368
    add x19, x14, x10
    ldr x15, [x19]
    mov x10, #0
    cmp x15, x10
    b.ne .L1_10
.L1_9:
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
    bl memcpy
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
.L1_10:
.L1_11:
    sub x20, x29, #504
    movz x10, #14360
    add x21, x14, x10
    ldr x15, [x21]
    add x12, x14, #24
    movz x10, #256
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
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
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_10
    add x1, x1, :lo12:.Ltext_10
    bl lb_core_7trap_at
1:
    mov x15, x9
.L1_14:
    movz x10, #256
    udiv x11, x15, x10
    msub x14, x11, x10, x15
    str x14, [x21]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_10
    add x1, x1, :lo12:.Ltext_10
    bl lb_core_7trap_at
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
    bl memcpy
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

    .size lb_window_9pop_event, .-lb_window_9pop_event

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_queue_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/window/queue.lucb:41:9"
.Ltext_1:
    .asciz "src/std/window/queue.lucb:53:5"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/window/queue.lucb:54:5"
.Ltext_4:
    .asciz "src/std/window/queue.lucb:65:5"
.Ltext_5:
    .asciz "src/std/window/queue.lucb:66:5"
.Ltext_6:
    .asciz "src/std/window/queue.lucb:67:5"
.Ltext_7:
    .asciz "unreachable"
.Ltext_8:
    .asciz "src/std/window/queue.lucb:68:5"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
