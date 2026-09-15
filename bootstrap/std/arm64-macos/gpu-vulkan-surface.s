    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_14vulkan_surface_0init
_lb_gpu_14vulkan_surface_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_14vulkan_surface_0init

    .section __TEXT,__const
l_text_0:
    .asciz "memory.unset"
l_text_1:
    .asciz "src/std/gpu/vulkan/surface.lucb:29:5"
l_text_2:
    .asciz "memory.exhausted"
l_text_3:
    .asciz "Vulkan presentation support could not be checked"
l_text_4:
    .asciz "the Vulkan queue cannot present to this window"
l_text_5:
    .asciz "the Vulkan command pool could not be created"
l_text_6:
    .asciz "the Vulkan command buffer could not be allocated"
l_text_7:
    .asciz "the Vulkan acquisition semaphore could not be created"
l_text_8:
    .asciz "unreachable"
l_text_9:
    .asciz "src/std/gpu/vulkan/surface.lucb:42:5"
l_text_10:
    .asciz "a Vulkan image view could not be created"
l_text_11:
    .asciz "src/std/gpu/vulkan/surface.lucb:49:5"
l_text_12:
    .asciz "Vulkan could not finish before resizing"
l_text_13:
    .asciz "Vulkan surface capabilities are unavailable"
l_text_14:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
l_text_15:
    .asciz "the Vulkan surface cannot provide opaque color attachments"
l_text_16:
    .asciz "Vulkan surface formats are unavailable"
l_text_17:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_18:
    .asciz "src/std/gpu/vulkan/surface.lucb:69:5"
l_text_19:
    .asciz "Vulkan surface formats changed"
l_text_20:
    .asciz "src/std/gpu/vulkan/surface.lucb:71:5"
l_text_21:
    .asciz "src/std/gpu/vulkan/surface.lucb:74:9"
l_text_22:
    .asciz "src/std/gpu/vulkan/surface.lucb:75:13"
l_text_23:
    .asciz "src/std/gpu/vulkan/surface.lucb:76:17"
l_text_24:
    .asciz "src/std/gpu/vulkan/surface.lucb:78:13"
l_text_25:
    .asciz "the Vulkan surface has no sRGB render target"
l_text_26:
    .asciz "src/std/gpu/vulkan/surface.lucb:81:9"
l_text_27:
    .asciz "src/std/gpu/vulkan/surface.lucb:82:5"
l_text_28:
    .asciz "the Vulkan swapchain could not be created"
l_text_29:
    .asciz "src/std/gpu/vulkan/surface.lucb:89:5"
l_text_30:
    .asciz "src/std/gpu/vulkan/surface.lucb:93:5"
l_text_31:
    .asciz "src/std/gpu/vulkan/surface.lucb:94:5"
l_text_32:
    .asciz "Vulkan swapchain images are unavailable"
l_text_33:
    .asciz "src/std/gpu/vulkan/surface.lucb:96:5"
l_text_34:
    .asciz "src/std/gpu/vulkan/surface.lucb:97:5"
l_text_35:
    .asciz "Vulkan swapchain images changed"
l_text_36:
    .asciz "src/std/gpu/vulkan/surface.lucb:99:5"
l_text_37:
    .asciz "src/std/gpu/vulkan/surface.lucb:100:5"
l_text_38:
    .asciz "src/std/gpu/vulkan/surface.lucb:102:9"
l_text_39:
    .asciz "src/std/gpu/vulkan/surface.lucb:103:9"
l_text_40:
    .asciz "src/std/gpu/vulkan/surface.lucb:104:9"
l_text_41:
    .asciz "src/std/gpu/vulkan/surface.lucb:105:9"
l_text_42:
    .asciz "src/std/gpu/vulkan/surface.lucb:107:9"
l_text_43:
    .asciz "a Vulkan framebuffer could not be created"
l_text_44:
    .asciz "src/std/gpu/vulkan/surface.lucb:109:9"
l_text_45:
    .asciz "a Vulkan presentation semaphore could not be created"
l_text_46:
    .asciz "src/std/gpu/vulkan/surface.lucb:110:5"
l_text_47:
    .asciz "the Vulkan device has no 32-bit depth attachment support"
l_text_48:
    .asciz "the Vulkan depth image could not be created"
l_text_49:
    .asciz "Vulkan depth memory could not be bound"
l_text_50:
    .asciz "src/std/gpu/vulkan/surface.lucb:132:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
