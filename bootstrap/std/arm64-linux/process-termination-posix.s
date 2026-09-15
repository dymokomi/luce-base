    .text

    .p2align 2
    .globl lb_process_17termination_posix_0init
    .type lb_process_17termination_posix_0init, %function
lb_process_17termination_posix_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_process_16interrupt_signal
    add x14, x14, :lo12:lb_process_16interrupt_signal
    movz x9, #2
    str w9, [x14]
    adrp x14, lb_process_16terminate_signal
    add x14, x14, :lo12:lb_process_16terminate_signal
    movz x9, #15
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_17termination_posix_0init, .-lb_process_17termination_posix_0init

    .p2align 2
    .globl lb_process_20termination_received
    .type lb_process_20termination_received, %function
lb_process_20termination_received:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    adrp x14, lb_process_22termination_generation
    add x14, x14, :lo12:lb_process_22termination_generation
    movz x10, #1
    mov x12, x14
1:
    ldxr x9, [x12]
    add x11, x9, x10
    stlxr w13, x11, [x12]
    cbnz w13, 1b
    mov x14, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_20termination_received, .-lb_process_20termination_received

    .p2align 2
    .globl lb_process_25termination_posix_install
    .type lb_process_25termination_posix_install, %function
lb_process_25termination_posix_install:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    adrp x19, lb_process_18previous_interrupt
    add x19, x19, :lo12:lb_process_18previous_interrupt
    adrp x20, lb_process_16interrupt_signal
    add x20, x20, :lo12:lb_process_16interrupt_signal
    ldrsw x14, [x20]
    adrp x21, :got:lb_process_20termination_received
    ldr x21, [x21, :got_lo12:lb_process_20termination_received]
    mov x0, x14
    mov x1, x21
    bl signal
    mov x14, x0
    str x14, [x19]
    sub x10, x29, #136
    str x14, [x10]
    cbnz x14, .L2_12
    b .L2_10
.L2_12:
.L2_9:
    movn x10, #0
    cmp x14, x10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #144
    str w15, [x10]
    b .L2_15
.L2_13:
    b .L2_11
.L2_10:
.L2_11:
    mov x9, #0
    sub x10, x29, #144
    str w9, [x10]
    mov x9, #0
    mov w15, w9
    b .L2_15
.L2_14:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_15:
    cbnz w15, .L2_1
    b .L2_2
.L2_1:
    sub x19, x29, #88
    adrp x14, lb_process_failed
    add x14, x14, :lo12:lb_process_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    adrp x22, lb_process_18previous_terminate
    add x22, x22, :lo12:lb_process_18previous_terminate
    adrp x14, lb_process_16terminate_signal
    add x14, x14, :lo12:lb_process_16terminate_signal
    ldrsw x14, [x14]
    mov x0, x14
    mov x1, x21
    bl signal
    mov x14, x0
    str x14, [x22]
    sub x10, x29, #136
    str x14, [x10]
    cbnz x14, .L2_19
    b .L2_17
.L2_19:
.L2_16:
    movn x10, #0
    cmp x14, x10
    cset w15, eq
    and w15, w15, #255
    sub x10, x29, #152
    str w15, [x10]
    b .L2_22
.L2_20:
    b .L2_18
.L2_17:
.L2_18:
    mov x9, #0
    sub x10, x29, #152
    str w9, [x10]
    mov x9, #0
    mov w15, w9
    b .L2_22
.L2_21:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_22:
    cbnz w15, .L2_5
    b .L2_6
.L2_5:
    ldrsw x14, [x20]
    ldr x15, [x19]
    mov x0, x14
    mov x1, x15
    bl signal
    mov x14, x0
    sub x21, x29, #88
    adrp x14, lb_process_failed
    add x14, x14, :lo12:lb_process_failed
    ldr w14, [x14]
    str w14, [x21]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
    b .L2_7
.L2_6:
.L2_7:
    sub x14, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_25termination_posix_install, .-lb_process_25termination_posix_install

    .p2align 2
    .globl lb_process_25termination_posix_restore
    .type lb_process_25termination_posix_restore, %function
lb_process_25termination_posix_restore:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_process_16interrupt_signal
    add x14, x14, :lo12:lb_process_16interrupt_signal
    ldrsw x14, [x14]
    adrp x15, lb_process_18previous_interrupt
    add x15, x15, :lo12:lb_process_18previous_interrupt
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl signal
    mov x14, x0
    adrp x14, lb_process_16terminate_signal
    add x14, x14, :lo12:lb_process_16terminate_signal
    ldrsw x14, [x14]
    adrp x15, lb_process_18previous_terminate
    add x15, x15, :lo12:lb_process_18previous_terminate
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl signal
    mov x14, x0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_25termination_posix_restore, .-lb_process_25termination_posix_restore

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_17termination_posix_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/process/termination/posix.lucb:16:5"
.Ltext_2:
    .asciz "SIGINT handler could not be installed"
.Ltext_3:
    .asciz "SIGTERM handler could not be installed"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_18previous_interrupt
    .type lb_process_18previous_interrupt, %object
    .p2align 3
lb_process_18previous_interrupt:
    .zero 8

    .bss
    .globl lb_process_18previous_terminate
    .type lb_process_18previous_terminate, %object
    .p2align 3
lb_process_18previous_terminate:
    .zero 8

    .bss
    .globl lb_process_16interrupt_signal
    .type lb_process_16interrupt_signal, %object
    .p2align 2
lb_process_16interrupt_signal:
    .zero 4

    .bss
    .globl lb_process_16terminate_signal
    .type lb_process_16terminate_signal, %object
    .p2align 2
lb_process_16terminate_signal:
    .zero 4


    .section .note.GNU-stack,"",%progbits
