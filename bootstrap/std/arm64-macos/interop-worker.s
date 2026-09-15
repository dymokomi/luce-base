    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_worker_0init
_lb_interop_worker_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_interop_13worker_closed@PAGE
    add x14, x14, _lb_interop_13worker_closed@PAGEOFF
    movz x9, #104
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_interop_11worker_busy@PAGE
    add x14, x14, _lb_interop_11worker_busy@PAGEOFF
    movz x9, #105
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_worker_0init

    .section __TEXT,__const

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_interop_13worker_closed
    .weak_definition _lb_interop_13worker_closed
    .no_dead_strip _lb_interop_13worker_closed
_lb_interop_13worker_closed:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_interop_11worker_busy
    .weak_definition _lb_interop_11worker_busy
    .no_dead_strip _lb_interop_11worker_busy
_lb_interop_11worker_busy:
    .zero 4

.subsections_via_symbols
