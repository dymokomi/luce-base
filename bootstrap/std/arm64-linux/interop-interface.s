    .text

    .p2align 2
    .globl lb_interop_interface_0init
    .type lb_interop_interface_0init, %function
lb_interop_interface_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_interface_0init, .-lb_interop_interface_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_interface_0init

    .section .rodata

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
