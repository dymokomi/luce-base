    .text

    .p2align 2
    .globl lb_interop_12worker_entry_0init
    .type lb_interop_12worker_entry_0init, %function
lb_interop_12worker_entry_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, :gottprel:lb_interop_26active_worker_cancellation
    ldr x0, [x0, :gottprel_lo12:lb_interop_26active_worker_cancellation]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_12worker_entry_0init, .-lb_interop_12worker_entry_0init

    .p2align 2
    .globl lb_interop_19worker_cancellation
    .type lb_interop_19worker_cancellation, %function
lb_interop_19worker_cancellation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x0, :gottprel:lb_interop_26active_worker_cancellation
    ldr x0, [x0, :gottprel_lo12:lb_interop_26active_worker_cancellation]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr x14, [x14]
    cbnz x14, .L1_1
    b .L1_2
.L1_1:
    b .L1_3
.L1_2:
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, .Ltext_1
    add x14, x14, :lo12:.Ltext_1
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at
.L1_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_interop_19worker_cancellation, .-lb_interop_19worker_cancellation

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_12worker_entry_0init

    .section .rodata
.Ltext_0:
    .asciz "this operation requires an application worker"
.Ltext_1:
    .asciz "src/std/interop/worker_entry.lucb:24:5"
.Ltext_2:
    .asciz "unreachable"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .tbss,"awT",%nobits
    .globl lb_interop_26active_worker_cancellation
    .type lb_interop_26active_worker_cancellation, %object
    .p2align 3
lb_interop_26active_worker_cancellation:
    .zero 8


    .section .note.GNU-stack,"",%progbits
