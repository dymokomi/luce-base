    .text

    .p2align 4
    .globl lb_gpu_10metal_objc_0init
    .type lb_gpu_10metal_objc_0init, @function
lb_gpu_10metal_objc_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_10metal_objc_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
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

    .section .note.GNU-stack,"",@progbits
