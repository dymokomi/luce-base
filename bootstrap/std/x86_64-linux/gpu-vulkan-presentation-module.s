    .text

    .p2align 4
    .globl lb_gpu_26vulkan_presentation_module_0init
    .type lb_gpu_26vulkan_presentation_module_0init, @function
lb_gpu_26vulkan_presentation_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_26vulkan_presentation_module_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Vulkan presentation is unavailable on this host"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:7:5"
.Ltext_3:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:12:5"
.Ltext_4:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:17:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
