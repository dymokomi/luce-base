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

    .p2align 2
    .globl _lb_gpu_17vulkan_image_view
_lb_gpu_17vulkan_image_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x16, x29, #136
    str w2, [x16]
    sub x16, x29, #152
    str w3, [x16]
    sub x19, x29, #232
    sub x20, x29, #312
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #120
    ldr x14, [x14]
    add x15, x20, #24
    str x14, [x15]
    adrp x14, _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D@PAGE
    add x14, x14, _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D@PAGEOFF
    ldr w14, [x14]
    add x15, x20, #32
    str w14, [x15]
    sub x14, x29, #136
    ldr w14, [x14]
    add x15, x20, #36
    str w14, [x15]
    sub x21, x29, #332
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str wzr, [x11, #16]
    sub x14, x29, #152
    ldr w14, [x14]
    str w14, [x21]
    add x14, x21, #8
    movz x9, #1
    str w9, [x14]
    add x14, x21, #16
    movz x9, #1
    str w9, [x14]
    add x14, x20, #56
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr w12, [x10, #16]
    str w12, [x11, #16]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    sub x20, x29, #344
    mov x9, #0
    str x9, [x20]
    sub x14, x29, #104
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    mov x2, #0
    mov x3, x20
    bl _vkCreateImageView
    mov w14, w0
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x19, x29, #360
    str x15, [x19]
    add x15, x19, #8
    movz x9, #40
    str x9, [x15]
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #392
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #392
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #88
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldr x14, [x20]
    sub x15, x29, #88
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_16vulkan_swapchain
    .no_dead_strip _lb_gpu_16vulkan_swapchain
_lb_gpu_16vulkan_swapchain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2688
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2656]
    str x20, [sp, #2648]
    str x21, [sp, #2640]
    str x22, [sp, #2632]
    str x23, [sp, #2624]
    str x24, [sp, #2616]
    str x25, [sp, #2608]
    str x26, [sp, #2600]
    str x27, [sp, #2592]
    str x28, [sp, #2584]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str w2, [x16]
    sub x16, x29, #200
    str w3, [x16]
    sub x14, x29, #152
    ldr x9, [x14]
    str x9, [sp, #368]
    ldr x9, [sp, #368]
    add x9, x9, #16
    str x9, [sp, #360]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
    sub x21, x29, #216
    str x15, [x21]
    add x15, x21, #8
    movz x9, #39
    str x9, [x15]
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #248
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #352]
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    sub x9, x29, #300
    str x9, [sp, #344]
    ldr x11, [sp, #344]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str wzr, [x11, #48]
    ldr x9, [sp, #368]
    add x9, x9, #8
    str x9, [sp, #336]
    ldr x9, [sp, #336]
    ldr x14, [x9]
    ldr x9, [sp, #352]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #344]
    bl _vkGetPhysicalDeviceSurfaceCapabilitiesKHR
    mov w14, w0
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x24, x29, #320
    str x15, [x24]
    add x15, x24, #8
    movz x9, #43
    str x9, [x15]
    mov x0, x14
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #352
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #352
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    sub x9, x29, #360
    str x9, [sp, #328]
    ldr x9, [sp, #344]
    add x14, x9, #8
    mov x10, x14
    ldr x11, [sp, #328]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x9, [sp, #328]
    ldr w14, [x9]
    movz x10, #65535
    movk x10, #65535, lsl #16
    cmp w14, w10
    b.ne L2_8
L2_7:
    ldr x9, [sp, #344]
    add x25, x9, #16
    ldr w14, [x25]
    mov w26, w14
    sub x14, x29, #184
    ldr w14, [x14]
    mov w14, w14
    ldr x9, [sp, #344]
    add x27, x9, #24
    ldr w15, [x27]
    mov w15, w15
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_10canvas_min
    mov x14, x0
    mov x0, x26
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x26, x0
    ldr x10, [sp, #328]
    str w26, [x10]
    ldr x9, [sp, #328]
    add x28, x9, #4
    add x14, x25, #4
    ldr w14, [x14]
    mov w25, w14
    sub x14, x29, #200
    ldr w14, [x14]
    mov w14, w14
    add x15, x27, #4
    ldr w15, [x15]
    mov w15, w15
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_10canvas_min
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    str w14, [x28]
    mov w9, w26
    str w9, [sp, #0]
    b L2_9
L2_8:
    mov w9, w14
    str w9, [sp, #0]
L2_9:
    ldr w9, [sp, #0]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    cbnz w14, L2_172
    b L2_13
L2_172:
    mov w15, w14
    b L2_14
L2_13:
    ldr x9, [sp, #328]
    add x14, x9, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_14:
    and w14, w15, #255
    cbnz w14, L2_10
    b L2_11
L2_10:
    sub x14, x29, #136
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
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    b L2_12
L2_11:
L2_12:
    ldr w9, [sp, #0]
    movz x10, #16384
    cmp w9, w10
    cset w14, hi
    cbnz w14, L2_173
    b L2_19
L2_173:
    mov w15, w14
    b L2_20
L2_19:
    ldr x9, [sp, #328]
    add x14, x9, #4
    ldr w14, [x14]
    movz x10, #16384
    cmp w14, w10
    cset w15, hi
L2_20:
    and w14, w15, #255
    cbnz w14, L2_16
    b L2_17
L2_16:
    sub x20, x29, #136
    adrp x14, _lb_gpu_17surface_too_large@PAGE
    add x14, x14, _lb_gpu_17surface_too_large@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #376
    str x14, [x15]
    add x14, x15, #8
    movz x9, #63
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    b L2_18
L2_17:
L2_18:
    ldr x9, [sp, #344]
    add x14, x9, #48
    ldr w14, [x14]
    adrp x9, _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT@PAGE
    add x9, x9, _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT@PAGEOFF
    str x9, [sp, #320]
    ldr x9, [sp, #320]
    ldr w15, [x9]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L2_174
    b L2_25
L2_174:
    mov w15, w14
    b L2_26
L2_25:
    ldr x9, [sp, #344]
    add x14, x9, #44
    ldr w14, [x14]
    adrp x15, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGE
    add x15, x15, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGEOFF
    ldr w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_26:
    and w14, w15, #255
    cbnz w14, L2_22
    b L2_23
L2_22:
    sub x20, x29, #136
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #392
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_27:
    b L2_24
L2_23:
L2_24:
    sub x9, x29, #396
    str x9, [sp, #312]
    mov x9, #0
    ldr x10, [sp, #312]
    str w9, [x10]
    ldr x9, [sp, #336]
    ldr x14, [x9]
    ldr x9, [sp, #352]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #312]
    mov x3, #0
    bl _vkGetPhysicalDeviceSurfaceFormatsKHR
    mov w14, w0
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    sub x28, x29, #416
    str x15, [x28]
    add x15, x28, #8
    movz x9, #38
    str x9, [x15]
    mov x0, x14
    mov x9, x28
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #448
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #448
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_29
    b L2_28
L2_29:
    sub x20, x29, #136
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_30:
L2_28:
    sub x9, x29, #464
    str x9, [sp, #56]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #48]
    ldr x9, [sp, #312]
    ldr w14, [x9]
    mov w20, w14
    sub x25, x29, #512
    movz x10, #2048, lsl #48
    cmp x20, x10
    b.ls L2_32
L2_31:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_33
L2_32:
    lsl x24, x20, #3
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L2_34
    b L2_35
L2_35:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_34:
    ldr x22, [x15]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #4
    sub x8, x29, #536
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #536
    add x22, x27, #16
    ldrb w22, [x22]
    mov x10, #0
    cmp x24, x10
    cset w26, ne
    mov x10, #0
    cmp w22, w10
    cset w22, eq
    and w22, w26, w22
    cbnz w22, L2_36
    b L2_37
L2_36:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_33
L2_37:
    ldr x14, [x27]
    str x14, [x25]
    add x14, x25, #8
    str x20, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L2_33:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L2_39
    b L2_38
L2_39:
    add x14, x25, #16
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_40:
L2_38:
    mov x10, x25
    ldr x11, [sp, #56]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #336]
    ldr x14, [x9]
    ldr x9, [sp, #352]
    ldr x15, [x9]
    ldr x9, [sp, #56]
    ldr x9, [x9]
    str x9, [sp, #304]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #312]
    ldr x3, [sp, #304]
    bl _vkGetPhysicalDeviceSurfaceFormatsKHR
    mov w14, w0
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x22, x29, #552
    str x15, [x22]
    add x15, x22, #8
    movz x9, #30
    str x9, [x15]
    mov x0, x14
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #584
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #584
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_42
    b L2_41
L2_42:
    sub x22, x29, #136
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #600
    ldr x9, [sp, #56]
    add x23, x9, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x24, x14, #8
    str x23, [x24]
    ldr x9, [sp, #48]
    ldr x23, [x9]
    ldr x9, [sp, #48]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L2_44
    b L2_43
L2_44:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_43:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_45:
L2_41:
    ldr x9, [sp, #312]
    ldr w14, [x9]
    mov w9, w14
    str x9, [sp, #296]
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    adrp x9, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGE
    add x9, x9, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGEOFF
    str x9, [sp, #288]
    adrp x24, _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB@PAGE
    add x24, x24, _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB@PAGEOFF
    adrp x25, _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB@PAGE
    add x25, x25, _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB@PAGEOFF
    adrp x26, _lb_gpu_19VK_FORMAT_UNDEFINED@PAGE
    add x26, x26, _lb_gpu_19VK_FORMAT_UNDEFINED@PAGEOFF
    mov x9, #0
    mov w27, w9
    mov x9, #0
    mov x23, x9
L2_46:
    ldr x10, [sp, #296]
    cmp x23, x10
    b.lo L2_47
L2_175:
    mov w9, w27
    str w9, [sp, #40]
    b L2_49
L2_47:
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x19, x23, #3
    ldr x9, [sp, #304]
    add x19, x9, x19
    add x14, x19, #4
    ldr w14, [x14]
    ldr x9, [sp, #288]
    ldr w21, [x9]
    cmp w14, w21
    b.ne L2_51
L2_50:
    ldr w14, [x19]
    ldr w21, [x24]
    cmp w14, w21
    cset w14, eq
    cbnz w14, L2_176
    b L2_56
L2_176:
    mov w22, w14
    b L2_57
L2_56:
    ldr w14, [x19]
    ldr w22, [x25]
    cmp w14, w22
    cset w22, eq
L2_57:
    and w14, w22, #255
    cbnz w14, L2_53
    b L2_54
L2_53:
    ldr w14, [x19]
    mov w9, w14
    str w9, [sp, #40]
    b L2_49
L2_58:
    b L2_55
L2_54:
L2_55:
    ldr w14, [x19]
    ldr w22, [x26]
    cmp w14, w22
    b.ne L2_60
L2_59:
    mov w14, w21
    b L2_61
L2_60:
    mov w14, w27
L2_61:
    mov w19, w14
    b L2_52
L2_51:
    mov w19, w27
L2_52:
L2_48:
    add x14, x23, #1
    mov w27, w19
    mov x23, x14
    b L2_46
L2_49:
    ldr w9, [sp, #40]
    mov x10, #0
    cmp w9, w10
    b.ne L2_63
L2_62:
    sub x19, x29, #136
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #616
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #632
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L2_66
    b L2_65
L2_66:
    add x20, x21, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_65:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_67:
    b L2_64
L2_63:
L2_64:
    ldr x9, [sp, #344]
    ldr w14, [x9]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    ldr x9, [sp, #344]
    add x15, x9, #4
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w21, hi
    cbnz w21, L2_71
    b L2_177
L2_177:
    mov w22, w21
    b L2_72
L2_71:
    cmp w14, w15
    cset w22, hi
L2_72:
    and w21, w22, #255
    cbnz w21, L2_68
    b L2_69
L2_68:
    mov w21, w15
    b L2_70
L2_69:
    mov w21, w14
L2_70:
    sub x22, x29, #736
    sub x23, x29, #840
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    str xzr, [x11, #96]
    adrp x14, _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR@PAGE
    add x14, x14, _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    ldr x9, [sp, #352]
    ldr x14, [x9]
    add x15, x23, #24
    str x14, [x15]
    add x14, x23, #32
    str w21, [x14]
    add x14, x23, #36
    ldr w9, [sp, #40]
    str w9, [x14]
    adrp x14, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGE
    add x14, x14, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGEOFF
    ldr w14, [x14]
    add x15, x23, #40
    str w14, [x15]
    add x14, x23, #44
    ldr x10, [sp, #328]
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x23, #52
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #320]
    ldr w14, [x9]
    add x15, x23, #56
    str w14, [x15]
    ldr x9, [sp, #344]
    add x14, x9, #40
    ldr w14, [x14]
    add x15, x23, #80
    str w14, [x15]
    adrp x14, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGE
    add x14, x14, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGEOFF
    ldr w14, [x14]
    add x15, x23, #84
    str w14, [x15]
    adrp x14, _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR@PAGE
    add x14, x14, _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR@PAGEOFF
    ldr w14, [x14]
    add x15, x23, #88
    str w14, [x15]
    adrp x14, _lb_gpu_7VK_TRUE@PAGE
    add x14, x14, _lb_gpu_7VK_TRUE@PAGEOFF
    ldr w14, [x14]
    add x15, x23, #92
    str w14, [x15]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldr x12, [x10, #96]
    str x12, [x11, #96]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x9, [sp, #352]
    add x23, x9, #8
    mov x0, x14
    mov x1, x22
    mov x2, #0
    mov x3, x23
    bl _vkCreateSwapchainKHR
    mov w14, w0
    adrp x15, l_text_28@PAGE
    add x15, x15, l_text_28@PAGEOFF
    sub x22, x29, #856
    str x15, [x22]
    add x15, x22, #8
    movz x9, #41
    str x9, [x15]
    mov x0, x14
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #888
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #888
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_74
    b L2_73
L2_74:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #904
    ldr x9, [sp, #56]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #48]
    ldr x21, [x9]
    ldr x9, [sp, #48]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L2_76
    b L2_75
L2_76:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_75:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_77:
L2_73:
    ldr x9, [sp, #352]
    add x21, x9, #32
    ldr w9, [sp, #0]
    str w9, [x21]
    ldr x9, [sp, #352]
    add x22, x9, #36
    ldr x9, [sp, #328]
    add x14, x9, #4
    ldr w9, [x14]
    str w9, [sp, #280]
    ldr w9, [sp, #280]
    str w9, [x22]
    ldr x9, [sp, #352]
    add x14, x9, #40
    ldr w9, [sp, #40]
    str w9, [x14]
    ldr x9, [sp, #368]
    sub x10, x29, #1872
    str x9, [x10]
    ldr x9, [sp, #352]
    sub x10, x29, #1888
    str x9, [x10]
    sub x25, x29, #1904
    mov x11, x25
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr x9, [sp, #336]
    ldr x14, [x9]
    adrp x26, _lb_gpu_20VK_FORMAT_D32_SFLOAT@PAGE
    add x26, x26, _lb_gpu_20VK_FORMAT_D32_SFLOAT@PAGEOFF
    ldr w15, [x26]
    mov x0, x14
    mov x1, x15
    mov x2, x25
    bl _vkGetPhysicalDeviceFormatProperties
    add x14, x25, #4
    ldr w14, [x14]
    adrp x15, _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGE
    add x15, x15, _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGEOFF
    ldr w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    b.ne L2_156
L2_155:
    sub x21, x29, #1856
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    sub x15, x29, #1920
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_171
L2_158:
    b L2_157
L2_156:
L2_157:
    sub x25, x29, #2008
    sub x27, x29, #2096
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    str xzr, [x11, #80]
    adrp x14, _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x27]
    adrp x14, _lb_gpu_16VK_IMAGE_TYPE_2D@PAGE
    add x14, x14, _lb_gpu_16VK_IMAGE_TYPE_2D@PAGEOFF
    ldr w14, [x14]
    add x15, x27, #20
    str w14, [x15]
    ldr w14, [x26]
    add x15, x27, #24
    str w14, [x15]
    sub x24, x29, #2112
    mov x11, x24
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr w14, [x21]
    str w14, [x24]
    ldr w14, [x22]
    add x15, x24, #4
    str w14, [x15]
    add x14, x24, #8
    movz x9, #1
    str w9, [x14]
    add x14, x27, #28
    mov x10, x24
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    add x14, x27, #40
    movz x9, #1
    str w9, [x14]
    add x14, x27, #44
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_21VK_SAMPLE_COUNT_1_BIT@PAGE
    add x14, x14, _lb_gpu_21VK_SAMPLE_COUNT_1_BIT@PAGEOFF
    ldr w14, [x14]
    add x15, x27, #48
    str w14, [x15]
    adrp x14, _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGE
    add x14, x14, _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGEOFF
    ldr w14, [x14]
    add x15, x27, #56
    str w14, [x15]
    mov x10, x27
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldr x12, [x10, #80]
    str x12, [x11, #80]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x9, [sp, #352]
    add x24, x9, #88
    mov x0, x14
    mov x1, x25
    mov x2, #0
    mov x3, x24
    bl _vkCreateImage
    mov w14, w0
    adrp x15, l_text_48@PAGE
    add x15, x15, l_text_48@PAGEOFF
    sub x25, x29, #2128
    str x15, [x25]
    add x15, x25, #8
    movz x9, #43
    str x9, [x15]
    mov x0, x14
    mov x9, x25
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #2160
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #2160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_160
    b L2_159
L2_160:
    sub x21, x29, #1856
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_171
L2_161:
L2_159:
    sub x21, x29, #2184
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x15, [x24]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _vkGetImageMemoryRequirements
    ldr x9, [sp, #352]
    add x22, x9, #96
    adrp x14, _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT@PAGE
    add x14, x14, _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT@PAGEOFF
    ldr w14, [x14]
    ldr x0, [sp, #368]
    mov x9, x21
    mov x1, x9
    mov x2, x14
    sub x8, x29, #2224
    bl _lb_gpu_13vulkan_memory
    sub x15, x29, #2224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_163
    b L2_162
L2_163:
    add x14, x15, #8
    sub x21, x29, #1856
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_171
L2_164:
L2_162:
    ldr x14, [x15]
    str x14, [x22]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x21, [x24]
    ldr x25, [x22]
    mov x0, x14
    mov x1, x21
    mov x2, x25
    mov x3, #0
    bl _vkBindImageMemory
    mov w14, w0
    adrp x21, l_text_49@PAGE
    add x21, x21, l_text_49@PAGEOFF
    sub x25, x29, #2240
    str x21, [x25]
    add x21, x25, #8
    movz x9, #38
    str x9, [x21]
    mov x0, x14
    mov x9, x25
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #2272
    bl _lb_gpu_12vulkan_check
    sub x21, x29, #2272
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L2_166
    b L2_165
L2_166:
    sub x22, x29, #1856
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_171
L2_167:
L2_165:
    ldr x9, [sp, #352]
    add x22, x9, #104
    ldr x14, [x24]
    ldr w15, [x26]
    adrp x21, _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT@PAGE
    add x21, x21, _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT@PAGEOFF
    ldr w21, [x21]
    ldr x0, [sp, #368]
    mov x1, x14
    mov x2, x15
    mov x3, x21
    sub x8, x29, #2312
    bl _lb_gpu_17vulkan_image_view
    sub x15, x29, #2312
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_169
    b L2_168
L2_169:
    add x14, x15, #8
    sub x21, x29, #1856
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_171
L2_170:
L2_168:
    ldr x14, [x15]
    str x14, [x22]
    sub x14, x29, #1856
    add x21, x14, #24
    mov x9, #0
    strb w9, [x21]
    mov x10, x14
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L2_171:
    sub x15, x29, #936
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_79
    b L2_78
L2_79:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #952
    ldr x9, [sp, #56]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #48]
    ldr x21, [x9]
    ldr x9, [sp, #48]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L2_81
    b L2_80
L2_81:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_80:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_82:
L2_78:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    sub x8, x29, #984
    bl _lb_gpu_15vulkan_pipeline
    sub x15, x29, #984
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_84
    b L2_83
L2_84:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1000
    ldr x9, [sp, #56]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #48]
    ldr x21, [x9]
    ldr x9, [sp, #48]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L2_86
    b L2_85
L2_86:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_85:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_87:
L2_83:
    mov x9, #0
    ldr x10, [sp, #312]
    str w9, [x10]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x15, [x23]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #312]
    mov x3, #0
    bl _vkGetSwapchainImagesKHR
    mov w14, w0
    adrp x15, l_text_32@PAGE
    add x15, x15, l_text_32@PAGEOFF
    sub x21, x29, #1016
    str x15, [x21]
    add x15, x21, #8
    movz x9, #39
    str x9, [x15]
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1048
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #1048
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_89
    b L2_88
L2_89:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1064
    ldr x9, [sp, #56]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #48]
    ldr x21, [x9]
    ldr x9, [sp, #48]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L2_91
    b L2_90
L2_91:
    add x15, x22, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_90:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_92:
L2_88:
    sub x9, x29, #1080
    str x9, [sp, #32]
    ldr x9, [sp, #312]
    ldr w14, [x9]
    mov w22, w14
    sub x24, x29, #1128
    movz x10, #2048, lsl #48
    cmp x22, x10
    b.ls L2_94
L2_93:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_95
L2_94:
    lsl x25, x22, #3
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L2_96
    b L2_97
L2_97:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_96:
    ldr x26, [x15]
    mov x17, x26
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #8
    sub x8, x29, #1152
    ldr x17, [sp], #16
    blr x17
    sub x19, x29, #1152
    add x26, x19, #16
    ldrb w26, [x26]
    mov x10, #0
    cmp x25, x10
    cset w27, ne
    mov x10, #0
    cmp w26, w10
    cset w26, eq
    and w26, w27, w26
    cbnz w26, L2_98
    b L2_99
L2_98:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_95
L2_99:
    ldr x14, [x19]
    str x14, [x24]
    add x14, x24, #8
    str x22, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L2_95:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L2_101
    b L2_100
L2_101:
    add x14, x24, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1168
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L2_103
    b L2_102
L2_103:
    add x20, x21, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_102:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_104:
L2_100:
    mov x10, x24
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x15, [x23]
    ldr x9, [sp, #32]
    ldr x19, [x9]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #312]
    mov x3, x19
    bl _vkGetSwapchainImagesKHR
    mov w14, w0
    adrp x15, l_text_35@PAGE
    add x15, x15, l_text_35@PAGEOFF
    sub x22, x29, #1184
    str x15, [x22]
    add x15, x22, #8
    movz x9, #31
    str x9, [x15]
    mov x0, x14
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1216
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #1216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_106
    b L2_105
L2_106:
    sub x22, x29, #136
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1232
    ldr x9, [sp, #32]
    add x23, x9, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x19, [x14]
    add x24, x14, #8
    str x23, [x24]
    ldr x9, [sp, #48]
    ldr x23, [x9]
    ldr x9, [sp, #48]
    add x24, x9, #8
    ldr x25, [x24]
    cbnz x25, L2_108
    b L2_107
L2_108:
    add x15, x25, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_107:
    sub x14, x29, #1248
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x19, [x24]
    cbnz x19, L2_110
    b L2_109
L2_110:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_109:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_111:
L2_105:
    ldr x9, [sp, #352]
    add x9, x9, #16
    str x9, [sp, #24]
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    ldr x9, [sp, #312]
    ldr w14, [x9]
    mov w23, w14
    sub x24, x29, #1296
    movz x10, #512, lsl #48
    cmp x23, x10
    b.ls L2_113
L2_112:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_114
L2_113:
    lsl x26, x23, #5
    ldr x14, [x15]
    add x25, x15, #8
    ldr x25, [x25]
    cbnz x25, L2_115
    b L2_116
L2_116:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_115:
    ldr x15, [x25]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x26
    movz x2, #8
    sub x8, x29, #1320
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #1320
    add x15, x22, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x26, x10
    cset w27, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w27, w15
    cbnz w15, L2_117
    b L2_118
L2_117:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_114
L2_118:
    ldr x14, [x22]
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L2_114:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L2_120
    b L2_119
L2_120:
    add x14, x24, #16
    sub x22, x29, #136
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1336
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x23, x9, #8
    ldr x25, [x23]
    cbnz x25, L2_122
    b L2_121
L2_122:
    add x19, x25, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_121:
    sub x14, x29, #1352
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x19, [x23]
    cbnz x19, L2_124
    b L2_123
L2_124:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_123:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_125:
L2_119:
    mov x10, x24
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #312]
    ldr w14, [x9]
    mov w9, w14
    str x9, [sp, #272]
    ldr x9, [sp, #24]
    add x23, x9, #8
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #264]
    adrp x26, _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT@PAGE
    add x26, x26, _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT@PAGEOFF
    sub x9, x29, #1392
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x27, x9, #32
    sub x9, x29, #1440
    str x9, [sp, #256]
    sub x9, x29, #1456
    str x9, [sp, #248]
    ldr x9, [sp, #352]
    add x9, x9, #104
    str x9, [sp, #240]
    ldr x9, [sp, #248]
    add x9, x9, #8
    str x9, [sp, #232]
    sub x9, x29, #1520
    str x9, [sp, #224]
    sub x9, x29, #1584
    str x9, [sp, #216]
    adrp x9, _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO@PAGE
    add x9, x9, _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO@PAGEOFF
    str x9, [sp, #208]
    ldr x9, [sp, #352]
    add x9, x9, #48
    str x9, [sp, #200]
    ldr x9, [sp, #216]
    add x9, x9, #24
    str x9, [sp, #192]
    ldr x9, [sp, #216]
    add x9, x9, #32
    str x9, [sp, #184]
    ldr x9, [sp, #216]
    add x9, x9, #40
    str x9, [sp, #176]
    ldr x9, [sp, #216]
    add x9, x9, #48
    str x9, [sp, #168]
    ldr x9, [sp, #216]
    add x9, x9, #52
    str x9, [sp, #160]
    ldr x9, [sp, #216]
    add x9, x9, #56
    str x9, [sp, #152]
    adrp x9, l_text_43@PAGE
    add x9, x9, l_text_43@PAGEOFF
    str x9, [sp, #144]
    sub x9, x29, #1600
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    add x9, x9, #8
    str x9, [sp, #128]
    sub x9, x29, #1632
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #120]
    sub x9, x29, #1688
    str x9, [sp, #112]
    sub x9, x29, #1712
    str x9, [sp, #104]
    adrp x9, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGE
    add x9, x9, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGEOFF
    str x9, [sp, #96]
    adrp x9, l_text_45@PAGE
    add x9, x9, l_text_45@PAGEOFF
    str x9, [sp, #88]
    sub x9, x29, #1728
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #72]
    sub x28, x29, #1760
    add x9, x28, #24
    str x9, [sp, #64]
    mov x9, #0
    mov x20, x9
L2_126:
    ldr x10, [sp, #272]
    cmp x20, x10
    b.hs L2_129
L2_127:
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x15, [x23]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x20, #5
    add x14, x14, x24
    ldr x9, [sp, #264]
    ldr x22, [x9]
    cmp x20, x22
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x20, #3
    add x15, x19, x15
    ldr x21, [x15]
    str x21, [x14]
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x21, [x23]
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x24, x14
    add x21, x14, #8
    ldr x14, [x15]
    ldr w15, [x26]
    ldr x0, [sp, #368]
    mov x1, x14
    ldr x2, [sp, #40]
    mov x3, x15
    sub x8, x29, #1392
    bl _lb_gpu_17vulkan_image_view
    ldrb w14, [x27]
    cbnz w14, L2_131
    b L2_130
L2_131:
    ldr x9, [sp, #16]
    add x14, x9, #8
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1408
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x23, [x21]
    cbnz x23, L2_133
    b L2_132
L2_133:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_132:
    sub x14, x29, #1424
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x19, [x21]
    cbnz x19, L2_135
    b L2_134
L2_135:
    add x21, x19, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_134:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_136:
L2_130:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    str x14, [x21]
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x15, [x23]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x24, x14
    add x14, x14, #8
    ldr x14, [x14]
    ldr x10, [sp, #248]
    str x14, [x10]
    ldr x9, [sp, #240]
    ldr x14, [x9]
    ldr x10, [sp, #232]
    str x14, [x10]
    ldr x10, [sp, #248]
    ldr x11, [sp, #256]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x11, [sp, #216]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    ldr x9, [sp, #208]
    ldr w14, [x9]
    ldr x10, [sp, #216]
    str w14, [x10]
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x10, [sp, #192]
    str x14, [x10]
    movz x9, #2
    ldr x10, [sp, #184]
    str w9, [x10]
    ldr x9, [sp, #256]
    ldr x10, [sp, #176]
    str x9, [x10]
    ldr w9, [sp, #0]
    ldr x10, [sp, #168]
    str w9, [x10]
    ldr w9, [sp, #280]
    ldr x10, [sp, #160]
    str w9, [x10]
    movz x9, #1
    ldr x10, [sp, #152]
    str w9, [x10]
    ldr x10, [sp, #216]
    ldr x11, [sp, #224]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x25, [x23]
    cmp x20, x25
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x24, x15
    add x15, x15, #16
    mov x0, x14
    ldr x1, [sp, #224]
    mov x2, #0
    mov x3, x15
    bl _vkCreateFramebuffer
    mov w14, w0
    ldr x9, [sp, #144]
    ldr x10, [sp, #136]
    str x9, [x10]
    movz x9, #41
    ldr x10, [sp, #128]
    str x9, [x10]
    mov x0, x14
    ldr x9, [sp, #136]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1632
    bl _lb_gpu_12vulkan_check
    ldr x9, [sp, #120]
    ldrb w14, [x9]
    cbnz w14, L2_138
    b L2_137
L2_138:
    sub x20, x29, #136
    ldr x10, [sp, #8]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1648
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x23, [x21]
    cbnz x23, L2_140
    b L2_139
L2_140:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_139:
    sub x14, x29, #1664
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x19, [x21]
    cbnz x19, L2_142
    b L2_141
L2_142:
    add x21, x19, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_141:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_143:
L2_137:
    ldr x11, [sp, #104]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x9, [sp, #96]
    ldr w14, [x9]
    ldr x10, [sp, #104]
    str w14, [x10]
    ldr x10, [sp, #104]
    ldr x11, [sp, #112]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x21, [x23]
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_52@PAGE
    add x1, x1, l_text_52@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x24, x15
    add x15, x15, #24
    mov x0, x14
    ldr x1, [sp, #112]
    mov x2, #0
    mov x3, x15
    bl _vkCreateSemaphore
    mov w14, w0
    ldr x9, [sp, #88]
    ldr x10, [sp, #80]
    str x9, [x10]
    movz x9, #52
    ldr x10, [sp, #72]
    str x9, [x10]
    mov x0, x14
    ldr x9, [sp, #80]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1760
    bl _lb_gpu_12vulkan_check
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, L2_145
    b L2_144
L2_145:
    sub x20, x29, #136
    mov x10, x28
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1776
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x23, [x21]
    cbnz x23, L2_147
    b L2_146
L2_147:
    add x19, x23, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_146:
    sub x14, x29, #1792
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x19, [x21]
    cbnz x19, L2_149
    b L2_148
L2_149:
    add x21, x19, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_148:
    ldr x0, [sp, #368]
    ldr x1, [sp, #352]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_150:
L2_144:
L2_128:
    add x14, x20, #1
    mov x20, x14
    b L2_126
L2_129:
    ldr x9, [sp, #352]
    add x14, x9, #136
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #1808
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x20, x14, #8
    str x15, [x20]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    add x20, x9, #8
    ldr x21, [x20]
    cbnz x21, L2_152
    b L2_151
L2_152:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_151:
    sub x14, x29, #1824
    ldr x9, [sp, #56]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #304]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x19, [x20]
    cbnz x19, L2_154
    b L2_153
L2_154:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_153:
    sub x14, x29, #136
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
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr x23, [sp, #2624]
    ldr x24, [sp, #2616]
    ldr x25, [sp, #2608]
    ldr x26, [sp, #2600]
    ldr x27, [sp, #2592]
    ldr x28, [sp, #2584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_24vulkan_swapchain_destroy
_lb_gpu_24vulkan_swapchain_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    str x23, [sp, #168]
    str x24, [sp, #160]
    str x25, [sp, #152]
    str x26, [sp, #144]
    str x27, [sp, #136]
    str x28, [sp, #128]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x14, x29, #128
    ldr x9, [x14]
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #16
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr x21, [x9]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x23, [x9]
    sub x24, x29, #160
    add x25, x24, #16
    sub x26, x29, #112
    add x27, x24, #8
    sub x28, x29, #112
    add x19, x24, #24
    sub x20, x29, #112
    mov x9, #0
    mov x22, x9
L3_1:
    cmp x22, x23
    b.hs L3_4
L3_2:
    lsl x14, x22, #5
    add x14, x21, x14
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x25]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_6
L3_5:
    ldr x15, [x26]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroyFramebuffer
    b L3_7
L3_6:
L3_7:
    ldr x14, [x27]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_9
L3_8:
    ldr x15, [x28]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroyImageView
    b L3_10
L3_9:
L3_10:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_12
L3_11:
    ldr x15, [x20]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroySemaphore
    b L3_13
L3_12:
L3_13:
L3_3:
    add x14, x22, #1
    mov x22, x14
    b L3_1
L3_4:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L3_15
L3_14:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #176
    ldr x9, [sp, #16]
    ldr x19, [x9]
    ldr x9, [sp, #8]
    ldr x20, [x9]
    mov x9, x20
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_51@PAGE
    add x1, x1, l_text_51@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x19, [x15]
    add x19, x15, #8
    str x20, [x19]
    ldr x19, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L3_18
    b L3_17
L3_18:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L3_17:
    b L3_16
L3_15:
L3_16:
    sub x19, x29, #192
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    add x19, x9, #72
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_20
L3_19:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyPipeline
    b L3_21
L3_20:
L3_21:
    ldr x9, [sp, #24]
    add x20, x9, #80
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_23
L3_22:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyPipeline
    b L3_24
L3_23:
L3_24:
    ldr x9, [sp, #24]
    add x21, x9, #56
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_26
L3_25:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyDescriptorSetLayout
    b L3_27
L3_26:
L3_27:
    mov x9, #0
    str x9, [x21]
    ldr x9, [sp, #24]
    add x22, x9, #64
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_29
L3_28:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x22]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyPipelineLayout
    b L3_30
L3_29:
L3_30:
    ldr x9, [sp, #24]
    add x21, x9, #48
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_32
L3_31:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyRenderPass
    b L3_33
L3_32:
L3_33:
    ldr x9, [sp, #24]
    add x23, x9, #104
    ldr x14, [x23]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_35
L3_34:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x23]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyImageView
    b L3_36
L3_35:
L3_36:
    ldr x9, [sp, #24]
    add x24, x9, #88
    ldr x14, [x24]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_38
L3_37:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x24]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyImage
    b L3_39
L3_38:
L3_39:
    ldr x9, [sp, #24]
    add x25, x9, #96
    ldr x14, [x25]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_41
L3_40:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x25]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkFreeMemory
    b L3_42
L3_41:
L3_42:
    ldr x9, [sp, #24]
    add x26, x9, #8
    ldr x14, [x26]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_44
L3_43:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x26]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroySwapchainKHR
    b L3_45
L3_44:
L3_45:
    mov x9, #0
    str x9, [x19]
    mov x9, #0
    str x9, [x20]
    mov x9, #0
    str x9, [x22]
    mov x9, #0
    str x9, [x21]
    mov x9, #0
    str x9, [x23]
    mov x9, #0
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    mov x9, #0
    str x9, [x26]
    ldr x9, [sp, #24]
    add x14, x9, #32
    mov x9, #0
    str w9, [x14]
    ldr x9, [sp, #24]
    add x14, x9, #36
    mov x9, #0
    str w9, [x14]
    ldr x9, [sp, #24]
    add x14, x9, #136
    movz x9, #1
    strb w9, [x14]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    ldr x24, [sp, #160]
    ldr x25, [sp, #152]
    ldr x26, [sp, #144]
    ldr x27, [sp, #136]
    ldr x28, [sp, #128]
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
l_text_51:
    .asciz "integer overflow"
l_text_52:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
