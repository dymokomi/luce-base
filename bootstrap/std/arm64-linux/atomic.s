    .text

    .p2align 2
    .globl lb_atomic_0init
    .type lb_atomic_0init, %function
lb_atomic_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_atomic_0init, .-lb_atomic_0init

    .p2align 2
    .globl lb_atomic_fence
    .type lb_atomic_fence, %function
lb_atomic_fence:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_atomic_fence, .-lb_atomic_fence

    .section .init_array,"aw"
    .p2align 3
    .quad lb_atomic_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
