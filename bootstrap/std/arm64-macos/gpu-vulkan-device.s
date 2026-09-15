    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_13vulkan_device_0init
_lb_gpu_13vulkan_device_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
L0_2:
    adrp x14, _lb_gpu_22vulkan_api_version_1_0@PAGE
    add x14, x14, _lb_gpu_22vulkan_api_version_1_0@PAGEOFF
    movz x9, #64, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_13vulkan_device_0init

    .section __TEXT,__const
l_text_0:
    .asciz "shift count out of range"
l_text_1:
    .asciz "gpu:1:1"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/gpu/vulkan/device.lucb:17:5"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "Luce"
l_text_6:
    .asciz "a Vulkan instance with native presentation is unavailable"
l_text_7:
    .asciz "Vulkan devices could not be enumerated"
l_text_8:
    .asciz "no Vulkan device is available"
l_text_9:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_10:
    .asciz "src/std/gpu/vulkan/device.lucb:30:5"
l_text_11:
    .asciz "Vulkan devices changed during enumeration"
l_text_12:
    .asciz "src/std/gpu/vulkan/device.lucb:32:5"
l_text_13:
    .asciz "src/std/gpu/vulkan/device.lucb:34:9"
l_text_14:
    .asciz "src/std/gpu/vulkan/device.lucb:37:9"
l_text_15:
    .asciz "src/std/gpu/vulkan/device.lucb:41:13"
l_text_16:
    .asciz "src/std/gpu/vulkan/device.lucb:56:13"
l_text_17:
    .asciz "no Vulkan graphics queue supports native presentation"
l_text_18:
    .asciz "src/std/gpu/vulkan/device.lucb:57:5"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/gpu/vulkan/device.lucb:69:9"
l_text_21:
    .asciz "Vulkan device memory allocation failed"
l_text_22:
    .asciz "no compatible Vulkan memory type is available"
l_text_23:
    .asciz "src/std/gpu/vulkan/device.lucb:75:5"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_22vulkan_api_version_1_0
    .weak_definition _lb_gpu_22vulkan_api_version_1_0
_lb_gpu_22vulkan_api_version_1_0:
    .zero 4

.subsections_via_symbols
