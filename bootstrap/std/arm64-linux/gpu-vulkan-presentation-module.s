    .text

    .p2align 2
    .globl lb_gpu_26vulkan_presentation_module_0init
    .type lb_gpu_26vulkan_presentation_module_0init, %function
lb_gpu_26vulkan_presentation_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_26vulkan_presentation_module_0init, .-lb_gpu_26vulkan_presentation_module_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_26vulkan_presentation_module_0init

    .section .rodata
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


    .section .note.GNU-stack,"",%progbits
