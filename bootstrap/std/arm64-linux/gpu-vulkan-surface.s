    .text

    .p2align 2
    .globl lb_gpu_14vulkan_surface_0init
    .type lb_gpu_14vulkan_surface_0init, %function
lb_gpu_14vulkan_surface_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_14vulkan_surface_0init, .-lb_gpu_14vulkan_surface_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_14vulkan_surface_0init

    .section .rodata
.Ltext_0:
    .asciz "memory.unset"
.Ltext_1:
    .asciz "src/std/gpu/vulkan/surface.lucb:29:5"
.Ltext_2:
    .asciz "memory.exhausted"
.Ltext_3:
    .asciz "Vulkan presentation support could not be checked"
.Ltext_4:
    .asciz "the Vulkan queue cannot present to this window"
.Ltext_5:
    .asciz "the Vulkan command pool could not be created"
.Ltext_6:
    .asciz "the Vulkan command buffer could not be allocated"
.Ltext_7:
    .asciz "the Vulkan acquisition semaphore could not be created"
.Ltext_8:
    .asciz "unreachable"
.Ltext_9:
    .asciz "src/std/gpu/vulkan/surface.lucb:42:5"
.Ltext_10:
    .asciz "a Vulkan image view could not be created"
.Ltext_11:
    .asciz "src/std/gpu/vulkan/surface.lucb:49:5"
.Ltext_12:
    .asciz "Vulkan could not finish before resizing"
.Ltext_13:
    .asciz "Vulkan surface capabilities are unavailable"
.Ltext_14:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
.Ltext_15:
    .asciz "the Vulkan surface cannot provide opaque color attachments"
.Ltext_16:
    .asciz "Vulkan surface formats are unavailable"
.Ltext_17:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_18:
    .asciz "src/std/gpu/vulkan/surface.lucb:69:5"
.Ltext_19:
    .asciz "Vulkan surface formats changed"
.Ltext_20:
    .asciz "src/std/gpu/vulkan/surface.lucb:71:5"
.Ltext_21:
    .asciz "src/std/gpu/vulkan/surface.lucb:74:9"
.Ltext_22:
    .asciz "src/std/gpu/vulkan/surface.lucb:75:13"
.Ltext_23:
    .asciz "src/std/gpu/vulkan/surface.lucb:76:17"
.Ltext_24:
    .asciz "src/std/gpu/vulkan/surface.lucb:78:13"
.Ltext_25:
    .asciz "the Vulkan surface has no sRGB render target"
.Ltext_26:
    .asciz "src/std/gpu/vulkan/surface.lucb:81:9"
.Ltext_27:
    .asciz "src/std/gpu/vulkan/surface.lucb:82:5"
.Ltext_28:
    .asciz "the Vulkan swapchain could not be created"
.Ltext_29:
    .asciz "src/std/gpu/vulkan/surface.lucb:89:5"
.Ltext_30:
    .asciz "src/std/gpu/vulkan/surface.lucb:93:5"
.Ltext_31:
    .asciz "src/std/gpu/vulkan/surface.lucb:94:5"
.Ltext_32:
    .asciz "Vulkan swapchain images are unavailable"
.Ltext_33:
    .asciz "src/std/gpu/vulkan/surface.lucb:96:5"
.Ltext_34:
    .asciz "src/std/gpu/vulkan/surface.lucb:97:5"
.Ltext_35:
    .asciz "Vulkan swapchain images changed"
.Ltext_36:
    .asciz "src/std/gpu/vulkan/surface.lucb:99:5"
.Ltext_37:
    .asciz "src/std/gpu/vulkan/surface.lucb:100:5"
.Ltext_38:
    .asciz "src/std/gpu/vulkan/surface.lucb:102:9"
.Ltext_39:
    .asciz "src/std/gpu/vulkan/surface.lucb:103:9"
.Ltext_40:
    .asciz "src/std/gpu/vulkan/surface.lucb:104:9"
.Ltext_41:
    .asciz "src/std/gpu/vulkan/surface.lucb:105:9"
.Ltext_42:
    .asciz "src/std/gpu/vulkan/surface.lucb:107:9"
.Ltext_43:
    .asciz "a Vulkan framebuffer could not be created"
.Ltext_44:
    .asciz "src/std/gpu/vulkan/surface.lucb:109:9"
.Ltext_45:
    .asciz "a Vulkan presentation semaphore could not be created"
.Ltext_46:
    .asciz "src/std/gpu/vulkan/surface.lucb:110:5"
.Ltext_47:
    .asciz "the Vulkan device has no 32-bit depth attachment support"
.Ltext_48:
    .asciz "the Vulkan depth image could not be created"
.Ltext_49:
    .asciz "Vulkan depth memory could not be bound"
.Ltext_50:
    .asciz "src/std/gpu/vulkan/surface.lucb:132:9"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
