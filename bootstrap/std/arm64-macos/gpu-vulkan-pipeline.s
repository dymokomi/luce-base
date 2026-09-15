    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_15vulkan_pipeline_0init
_lb_gpu_15vulkan_pipeline_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_15vulkan_pipeline_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:2:5"
l_text_1:
    .asciz "a Vulkan shader could not be created"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:5:5"
l_text_4:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:18:5"
l_text_5:
    .asciz "the Vulkan render pass could not be created"
l_text_6:
    .asciz "Vulkan coverage layout could not be created"
l_text_7:
    .asciz "the Vulkan pipeline layout could not be created"
l_text_8:
    .asciz "main"
l_text_9:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:40:5"
l_text_10:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:52:5"
l_text_11:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:53:5"
l_text_12:
    .asciz "the Vulkan overlay pipeline could not be created"
l_text_13:
    .asciz "the Vulkan depth pipeline could not be created"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
