    .text

    .p2align 4
    .globl lb_gpu_15vulkan_pipeline_0init
    .type lb_gpu_15vulkan_pipeline_0init, @function
lb_gpu_15vulkan_pipeline_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_15vulkan_pipeline_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:2:5"
.Ltext_1:
    .asciz "a Vulkan shader could not be created"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:5:5"
.Ltext_4:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:18:5"
.Ltext_5:
    .asciz "the Vulkan render pass could not be created"
.Ltext_6:
    .asciz "Vulkan coverage layout could not be created"
.Ltext_7:
    .asciz "the Vulkan pipeline layout could not be created"
.Ltext_8:
    .asciz "main"
.Ltext_9:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:40:5"
.Ltext_10:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:52:5"
.Ltext_11:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:53:5"
.Ltext_12:
    .asciz "the Vulkan overlay pipeline could not be created"
.Ltext_13:
    .asciz "the Vulkan depth pipeline could not be created"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
