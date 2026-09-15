    .text

    .p2align 2
    .globl lb_gpu_13vulkan_device_0init
    .type lb_gpu_13vulkan_device_0init, %function
lb_gpu_13vulkan_device_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
.L0_2:
    adrp x14, lb_gpu_22vulkan_api_version_1_0
    add x14, x14, :lo12:lb_gpu_22vulkan_api_version_1_0
    movz x9, #64, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_13vulkan_device_0init, .-lb_gpu_13vulkan_device_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_13vulkan_device_0init

    .section .rodata
.Ltext_0:
    .asciz "shift count out of range"
.Ltext_1:
    .asciz "gpu:1:1"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/gpu/vulkan/device.lucb:17:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "Luce"
.Ltext_6:
    .asciz "a Vulkan instance with native presentation is unavailable"
.Ltext_7:
    .asciz "Vulkan devices could not be enumerated"
.Ltext_8:
    .asciz "no Vulkan device is available"
.Ltext_9:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_10:
    .asciz "src/std/gpu/vulkan/device.lucb:30:5"
.Ltext_11:
    .asciz "Vulkan devices changed during enumeration"
.Ltext_12:
    .asciz "src/std/gpu/vulkan/device.lucb:32:5"
.Ltext_13:
    .asciz "src/std/gpu/vulkan/device.lucb:34:9"
.Ltext_14:
    .asciz "src/std/gpu/vulkan/device.lucb:37:9"
.Ltext_15:
    .asciz "src/std/gpu/vulkan/device.lucb:41:13"
.Ltext_16:
    .asciz "src/std/gpu/vulkan/device.lucb:56:13"
.Ltext_17:
    .asciz "no Vulkan graphics queue supports native presentation"
.Ltext_18:
    .asciz "src/std/gpu/vulkan/device.lucb:57:5"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/gpu/vulkan/device.lucb:69:9"
.Ltext_21:
    .asciz "Vulkan device memory allocation failed"
.Ltext_22:
    .asciz "no compatible Vulkan memory type is available"
.Ltext_23:
    .asciz "src/std/gpu/vulkan/device.lucb:75:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_22vulkan_api_version_1_0
    .type lb_gpu_22vulkan_api_version_1_0, %object
    .p2align 2
lb_gpu_22vulkan_api_version_1_0:
    .zero 4


    .section .note.GNU-stack,"",%progbits
