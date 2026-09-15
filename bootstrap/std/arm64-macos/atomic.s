    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_atomic_0init
_lb_atomic_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_atomic_fence
    .no_dead_strip _lb_atomic_fence
_lb_atomic_fence:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_atomic_0init

    .section __TEXT,__const

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
