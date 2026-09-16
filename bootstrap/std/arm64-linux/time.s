    .text

    .p2align 2
    .globl lb_time_0init
    .type lb_time_0init, %function
lb_time_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_time_monotonic
    add x14, x14, :lo12:lb_time_monotonic
    movz x9, #1
    str w9, [x14]
    adrp x14, lb_time_realtime
    add x14, x14, :lo12:lb_time_realtime
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_time_0init, .-lb_time_0init

    .p2align 2
    .globl lb_time_now
    .type lb_time_now, %function
lb_time_now:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x19, x29, #48
    sub x20, x29, #64
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x20]
    add x14, x20, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    sub x10, x29, #80
    str w9, [x10]
    sub x10, x29, #96
    str x19, [x10]
    sub x14, x29, #80
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_3
.L1_2:
    movz x9, #1
    mov w14, w9
    b .L1_4
.L1_3:
    mov x9, #0
    mov w14, w9
.L1_4:
    mov x0, x14
    mov x1, x19
    bl clock_gettime
    mov w15, w0
    sub x10, x29, #104
    str w15, [x10]
    b .L1_6
.L1_5:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_6:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
1:
    mov x14, x9
    add x15, x19, #8
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_time_now, .-lb_time_now

    .p2align 2
    .globl lb_time_unix
    .type lb_time_unix, %function
lb_time_unix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x0, #0
    bl time
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_time_unix, .-lb_time_unix

    .p2align 2
    .globl lb_time_since
    .type lb_time_since, %function
lb_time_since:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    bl lb_time_now
    mov x14, x0
    sub x15, x29, #32
    ldr x15, [x15]
    cmp x14, x15
    b.ls .L3_2
.L3_1:
    sub x12, x14, x15
    b .L3_3
.L3_2:
    mov x9, #0
    mov x12, x9
.L3_3:
    mov x9, x12
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_time_since, .-lb_time_since

    .section .init_array,"aw"
    .p2align 3
    .quad lb_time_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/time.lucb:24:5"
.Ltext_2:
    .asciz "src/std/time.lucb:30:5"
.Ltext_3:
    .asciz "src/std/time.lucb:34:5"
.Ltext_4:
    .asciz "src/std/time.lucb:39:5"
.Ltext_5:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_time_monotonic
    .type lb_time_monotonic, %object
    .p2align 2
lb_time_monotonic:
    .zero 4

    .bss
    .globl lb_time_realtime
    .type lb_time_realtime, %object
    .p2align 2
lb_time_realtime:
    .zero 4


    .section .note.GNU-stack,"",%progbits
