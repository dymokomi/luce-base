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

    .p2align 2
    .globl _lb_gpu_12vulkan_check
    .no_dead_strip _lb_gpu_12vulkan_check
_lb_gpu_12vulkan_check:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x14, x29, #80
    ldrsw x14, [x14]
    adrp x15, _lb_gpu_10VK_SUCCESS@PAGE
    add x15, x15, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    sub x14, x29, #96
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_13vulkan_memory
    .no_dead_strip _lb_gpu_13vulkan_memory
_lb_gpu_13vulkan_memory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    str x25, [sp, #304]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str w2, [x16]
    sub x0, x29, #160
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x14, x29, #136
    ldr x19, [x14]
    add x14, x19, #40
    ldr w15, [x14]
    mov w15, w15
    sub x20, x29, #160
    add x21, x20, #16
    ldr w23, [x21]
    add x14, x14, #4
    sub x21, x29, #176
    ldr w21, [x21]
    mov x9, #0
    mov x22, x9
L2_1:
    cmp x22, x15
    b.hs L2_4
L2_2:
    mov w24, w22
    movz x10, #32
    cmp x24, x10
    b.lo L2_9
L2_8:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_9:
    movz x9, #1
    lsl w24, w9, w22
    and w24, w24, w23
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    cbnz w24, L2_10
    b L2_22
L2_22:
    mov w25, w24
    b L2_11
L2_10:
    movz x10, #32
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_24@PAGE
    add x1, x1, l_text_24@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x22, #3
    add x24, x14, x24
    ldr w24, [x24]
    and w24, w24, w21
    cmp w21, w24
    cset w25, eq
L2_11:
    and w24, w25, #255
    cbnz w24, L2_5
    b L2_6
L2_5:
    sub x21, x29, #208
    sub x23, x29, #240
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO@PAGE
    add x14, x14, _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    ldr x14, [x20]
    add x15, x23, #16
    str x14, [x15]
    add x14, x23, #24
    str w22, [x14]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x23, x29, #248
    mov x9, #0
    str x9, [x23]
    add x14, x19, #16
    ldr x14, [x14]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    mov x3, x23
    bl _vkAllocateMemory
    mov w21, w0
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    sub x10, x29, #360
    str w21, [x10]
    mov x10, x15
    sub x11, x29, #376
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_10VK_SUCCESS@PAGE
    add x14, x14, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x14]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L2_18
L2_17:
    sub x19, x29, #344
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    sub x14, x29, #376
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #296
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_21
L2_20:
    b L2_19
L2_18:
L2_19:
    sub x14, x29, #344
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #296
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L2_21:
    sub x15, x29, #296
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_13
    b L2_12
L2_13:
    sub x19, x29, #120
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_14:
L2_12:
    ldr x14, [x23]
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    b L2_7
L2_6:
L2_7:
L2_3:
    add x24, x22, #1
    mov x22, x24
    b L2_1
L2_4:
    sub x19, x29, #120
    add x14, x19, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_22@PAGE
    add x15, x15, l_text_22@PAGEOFF
    sub x20, x29, #312
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_16:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

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
l_text_24:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_22vulkan_api_version_1_0
    .weak_definition _lb_gpu_22vulkan_api_version_1_0
_lb_gpu_22vulkan_api_version_1_0:
    .zero 4

.subsections_via_symbols
