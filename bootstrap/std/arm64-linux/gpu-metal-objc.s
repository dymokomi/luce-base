    .text

    .p2align 2
    .globl lb_gpu_10metal_objc_0init
    .type lb_gpu_10metal_objc_0init, %function
lb_gpu_10metal_objc_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_10metal_objc_0init, .-lb_gpu_10metal_objc_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_10metal_objc_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/gpu/metal/objc.lucb:57:5"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "a required Metal class is unavailable; check framework linkage"
.Ltext_4:
    .asciz "src/std/gpu/metal/objc.lucb:60:5"
.Ltext_5:
    .asciz "the Metal backend lost an owned object"
.Ltext_6:
    .asciz "src/std/gpu/metal/objc.lucb:63:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
