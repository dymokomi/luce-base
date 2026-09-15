    .text

    .p2align 2
    .globl lb_interop_worker_0init
    .type lb_interop_worker_0init, %function
lb_interop_worker_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_interop_13worker_closed
    add x14, x14, :lo12:lb_interop_13worker_closed
    movz x9, #104
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_interop_11worker_busy
    add x14, x14, :lo12:lb_interop_11worker_busy
    movz x9, #105
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_worker_0init, .-lb_interop_worker_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_worker_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_13worker_closed
    .type lb_interop_13worker_closed, %object
    .p2align 2
lb_interop_13worker_closed:
    .zero 4

    .bss
    .globl lb_interop_11worker_busy
    .type lb_interop_11worker_busy, %object
    .p2align 2
lb_interop_11worker_busy:
    .zero 4


    .section .note.GNU-stack,"",%progbits
