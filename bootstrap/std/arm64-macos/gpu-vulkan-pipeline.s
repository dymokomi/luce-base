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

    .p2align 2
    .globl _lb_gpu_13vulkan_shader
_lb_gpu_13vulkan_shader:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #160
    sub x20, x29, #200
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #120
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x21, x20, #24
    str x15, [x21]
    ldr x14, [x14]
    add x15, x20, #32
    str x14, [x15]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x20, x29, #208
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
    bl _vkCreateShaderModule
    mov w14, w0
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x19, x29, #224
    str x15, [x19]
    add x15, x19, #8
    movz x9, #36
    str x9, [x15]
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #256
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #256
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_15vulkan_pipeline
    .no_dead_strip _lb_gpu_15vulkan_pipeline
_lb_gpu_15vulkan_pipeline:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3184
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #3152]
    str x20, [sp, #3144]
    str x21, [sp, #3136]
    str x22, [sp, #3128]
    str x23, [sp, #3120]
    str x24, [sp, #3112]
    str x25, [sp, #3104]
    str x26, [sp, #3096]
    str x27, [sp, #3088]
    str x28, [sp, #3080]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x19, x29, #240
    sub x20, x29, #312
    sub x21, x29, #348
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str wzr, [x11, #32]
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #192]
    ldr x9, [sp, #192]
    add x14, x9, #40
    ldr w14, [x14]
    add x15, x21, #4
    str w14, [x15]
    adrp x23, _lb_gpu_21VK_SAMPLE_COUNT_1_BIT@PAGE
    add x23, x23, _lb_gpu_21VK_SAMPLE_COUNT_1_BIT@PAGEOFF
    ldr w24, [x23]
    add x14, x21, #8
    str w24, [x14]
    adrp x14, _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR@PAGE
    add x14, x14, _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR@PAGEOFF
    ldr w25, [x14]
    add x14, x21, #12
    str w25, [x14]
    adrp x14, _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE@PAGE
    add x14, x14, _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE@PAGEOFF
    ldr w14, [x14]
    add x15, x21, #16
    str w14, [x15]
    adrp x14, _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE@PAGE
    add x14, x14, _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE@PAGEOFF
    ldr w26, [x14]
    add x14, x21, #20
    str w26, [x14]
    adrp x14, _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE@PAGE
    add x14, x14, _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE@PAGEOFF
    ldr w27, [x14]
    add x14, x21, #24
    str w27, [x14]
    adrp x14, _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR@PAGE
    add x14, x14, _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR@PAGEOFF
    ldr w14, [x14]
    add x15, x21, #32
    str w14, [x15]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr w12, [x10, #32]
    str w12, [x11, #32]
    sub x21, x29, #384
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str wzr, [x11, #32]
    adrp x14, _lb_gpu_20VK_FORMAT_D32_SFLOAT@PAGE
    add x14, x14, _lb_gpu_20VK_FORMAT_D32_SFLOAT@PAGEOFF
    ldr w14, [x14]
    add x15, x21, #4
    str w14, [x15]
    add x14, x21, #8
    str w24, [x14]
    add x14, x21, #12
    str w25, [x14]
    add x14, x21, #16
    str w27, [x14]
    add x14, x21, #20
    str w26, [x14]
    add x14, x21, #24
    str w27, [x14]
    adrp x14, _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL@PAGE
    add x14, x14, _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL@PAGEOFF
    ldr w24, [x14]
    add x14, x21, #32
    str w24, [x14]
    add x14, x20, #36
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr w12, [x10, #32]
    str w12, [x11, #32]
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
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    sub x20, x29, #392
    sub x21, x29, #400
    mov x11, x21
    str xzr, [x11, #0]
    mov x9, #0
    str w9, [x21]
    adrp x14, _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL@PAGE
    add x14, x14, _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL@PAGEOFF
    ldr w14, [x14]
    add x15, x21, #4
    str w14, [x15]
    mov x10, x21
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #408
    sub x25, x29, #416
    mov x11, x25
    str xzr, [x11, #0]
    movz x9, #1
    str w9, [x25]
    add x14, x25, #4
    str w24, [x14]
    mov x10, x25
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x24, x29, #488
    sub x25, x29, #560
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    add x14, x25, #24
    movz x9, #1
    str w9, [x14]
    add x14, x25, #32
    str x20, [x14]
    add x14, x25, #48
    str x21, [x14]
    mov x10, x25
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    sub x20, x29, #588
    sub x21, x29, #616
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    adrp x14, _lb_gpu_19VK_SUBPASS_EXTERNAL@PAGE
    add x14, x14, _lb_gpu_19VK_SUBPASS_EXTERNAL@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    add x14, x21, #4
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT@PAGE
    add x14, x14, _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT@PAGE
    add x15, x15, _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    add x15, x21, #8
    str w14, [x15]
    add x15, x21, #12
    str w14, [x15]
    adrp x14, _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT@PAGE
    add x14, x14, _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT@PAGE
    add x15, x15, _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    add x15, x21, #20
    str w14, [x15]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    sub x21, x29, #680
    sub x25, x29, #744
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x25]
    add x14, x25, #20
    movz x9, #2
    str w9, [x14]
    add x14, x25, #24
    str x19, [x14]
    add x14, x25, #32
    movz x9, #1
    str w9, [x14]
    add x14, x25, #40
    str x24, [x14]
    add x14, x25, #48
    movz x9, #1
    str w9, [x14]
    add x14, x25, #56
    str x20, [x14]
    mov x10, x25
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    sub x14, x29, #152
    ldr x19, [x14]
    add x9, x19, #16
    str x9, [sp, #184]
    ldr x9, [sp, #184]
    ldr x14, [x9]
    ldr x9, [sp, #192]
    add x9, x9, #48
    str x9, [sp, #176]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    ldr x3, [sp, #176]
    bl _vkCreateRenderPass
    mov w14, w0
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x21, x29, #760
    str x15, [x21]
    add x15, x21, #8
    movz x9, #43
    str x9, [x15]
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #792
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #792
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
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x21, x29, #816
    sub x25, x29, #840
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x9, #0
    str w9, [x25]
    adrp x14, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGE
    add x14, x14, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGEOFF
    ldr w14, [x14]
    add x15, x25, #4
    str w14, [x15]
    add x14, x25, #8
    movz x9, #1
    str w9, [x14]
    adrp x26, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGE
    add x26, x26, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGEOFF
    ldr w14, [x26]
    add x15, x25, #12
    str w14, [x15]
    mov x10, x25
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x25, x29, #872
    sub x27, x29, #904
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x27]
    add x14, x27, #20
    movz x9, #1
    str w9, [x14]
    add x14, x27, #24
    str x21, [x14]
    mov x10, x27
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #184]
    ldr x14, [x9]
    ldr x9, [sp, #192]
    add x21, x9, #56
    mov x0, x14
    mov x1, x25
    mov x2, #0
    mov x3, x21
    bl _vkCreateDescriptorSetLayout
    mov w14, w0
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    sub x25, x29, #920
    str x15, [x25]
    add x15, x25, #8
    movz x9, #43
    str x9, [x15]
    mov x0, x14
    mov x9, x25
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #952
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #952
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
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
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    sub x25, x29, #968
    sub x27, x29, #984
    mov x11, x27
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr w14, [x26]
    str w14, [x27]
    add x14, x27, #8
    movz x9, #32
    str w9, [x14]
    mov x10, x27
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    sub x27, x29, #1032
    sub x28, x29, #1080
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x28]
    add x14, x28, #20
    movz x9, #1
    str w9, [x14]
    add x14, x28, #24
    str x21, [x14]
    add x14, x28, #32
    movz x9, #1
    str w9, [x14]
    add x14, x28, #40
    str x25, [x14]
    mov x10, x28
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x9, [sp, #184]
    ldr x14, [x9]
    ldr x9, [sp, #192]
    add x9, x9, #64
    str x9, [sp, #168]
    mov x0, x14
    mov x1, x27
    mov x2, #0
    ldr x3, [sp, #168]
    bl _vkCreatePipelineLayout
    mov w14, w0
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x27, x29, #1096
    str x15, [x27]
    add x15, x27, #8
    movz x9, #47
    str x9, [x15]
    mov x0, x14
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1128
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #1128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_8
    b L2_7
L2_8:
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
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
L2_7:
    adrp x14, _lb_gpu_17vulkan_vert_words@PAGE
    add x14, x14, _lb_gpu_17vulkan_vert_words@PAGEOFF
    sub x15, x29, #1144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #271
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1184
    bl _lb_gpu_13vulkan_shader
    sub x15, x29, #1184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_11
    b L2_10
L2_11:
    add x14, x15, #8
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
L2_10:
    ldr x21, [x15]
    adrp x14, _lb_gpu_17vulkan_frag_words@PAGE
    add x14, x14, _lb_gpu_17vulkan_frag_words@PAGEOFF
    sub x27, x29, #1200
    str x14, [x27]
    add x14, x27, #8
    movz x9, #1021
    str x9, [x14]
    mov x0, x19
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1240
    bl _lb_gpu_13vulkan_shader
    sub x27, x29, #1240
    add x14, x27, #32
    ldrb w14, [x14]
    cbnz w14, L2_14
    b L2_13
L2_14:
    add x14, x27, #8
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
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    bl _vkDestroyShaderModule
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
L2_13:
    ldr x9, [x27]
    str x9, [sp, #160]
    sub x28, x29, #1336
    sub x9, x29, #1432
    str x9, [sp, #152]
    sub x20, x29, #1480
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO@PAGEOFF
    ldr w9, [x14]
    str w9, [sp, #144]
    ldr w9, [sp, #144]
    str w9, [x20]
    adrp x14, _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT@PAGE
    add x14, x14, _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT@PAGEOFF
    ldr w14, [x14]
    add x15, x20, #20
    str w14, [x15]
    add x14, x20, #24
    str x21, [x14]
    adrp x9, l_text_8@PAGE
    add x9, x9, l_text_8@PAGEOFF
    str x9, [sp, #136]
    add x14, x20, #32
    ldr x9, [sp, #136]
    str x9, [x14]
    mov x10, x20
    ldr x11, [sp, #152]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x20, x29, #1528
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    ldr w9, [sp, #144]
    str w9, [x20]
    ldr w14, [x26]
    add x15, x20, #20
    str w14, [x15]
    add x14, x20, #24
    ldr x9, [sp, #160]
    str x9, [x14]
    add x14, x20, #32
    ldr x9, [sp, #136]
    str x9, [x14]
    ldr x9, [sp, #152]
    add x14, x9, #48
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x10, [sp, #152]
    mov x11, x28
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
    sub x20, x29, #1544
    sub x9, x29, #1560
    str x9, [sp, #128]
    ldr x11, [sp, #128]
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr x9, [sp, #128]
    add x14, x9, #4
    movz x9, #32
    str w9, [x14]
    ldr x10, [sp, #128]
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    sub x9, x29, #1592
    str x9, [sp, #120]
    sub x9, x29, #1624
    str x9, [sp, #112]
    sub x9, x29, #1640
    str x9, [sp, #104]
    ldr x11, [sp, #104]
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    ldr x10, [sp, #104]
    str w9, [x10]
    adrp x14, _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT@PAGE
    add x14, x14, _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT@PAGEOFF
    ldr w19, [x14]
    ldr x9, [sp, #104]
    add x14, x9, #8
    str w19, [x14]
    ldr x9, [sp, #104]
    add x14, x9, #12
    mov x9, #0
    str w9, [x14]
    ldr x10, [sp, #104]
    ldr x11, [sp, #112]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #1656
    str x9, [sp, #96]
    ldr x11, [sp, #96]
    stp xzr, xzr, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #96]
    str w9, [x10]
    ldr x9, [sp, #96]
    add x14, x9, #8
    str w19, [x14]
    ldr x9, [sp, #96]
    add x14, x9, #12
    movz x9, #16
    str w9, [x14]
    ldr x9, [sp, #112]
    add x14, x9, #16
    ldr x10, [sp, #96]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #112]
    ldr x11, [sp, #120]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x19, x29, #1704
    sub x9, x29, #1752
    str x9, [sp, #88]
    ldr x11, [sp, #88]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #88]
    str w14, [x10]
    ldr x9, [sp, #88]
    add x14, x9, #20
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #88]
    add x14, x9, #24
    str x20, [x14]
    ldr x9, [sp, #88]
    add x14, x9, #32
    movz x9, #2
    str w9, [x14]
    ldr x9, [sp, #88]
    add x14, x9, #40
    ldr x9, [sp, #120]
    str x9, [x14]
    ldr x10, [sp, #88]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x20, x29, #1784
    sub x9, x29, #1816
    str x9, [sp, #80]
    ldr x11, [sp, #80]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #80]
    str w14, [x10]
    adrp x14, _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST@PAGE
    add x14, x14, _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST@PAGEOFF
    ldr w14, [x14]
    ldr x9, [sp, #80]
    add x15, x9, #20
    str w14, [x15]
    ldr x10, [sp, #80]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x9, x29, #1864
    str x9, [sp, #72]
    sub x9, x29, #1912
    str x9, [sp, #64]
    ldr x11, [sp, #64]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #64]
    str w14, [x10]
    ldr x9, [sp, #64]
    add x14, x9, #20
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #64]
    add x14, x9, #32
    movz x9, #1
    str w9, [x14]
    ldr x10, [sp, #64]
    ldr x11, [sp, #72]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x9, x29, #1976
    str x9, [sp, #56]
    sub x9, x29, #2040
    str x9, [sp, #48]
    ldr x11, [sp, #48]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #48]
    str w14, [x10]
    movz x9, #16256, lsl #16
    fmov s24, w9
    ldr x9, [sp, #48]
    add x14, x9, #56
    str s24, [x14]
    ldr x10, [sp, #48]
    ldr x11, [sp, #56]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    sub x9, x29, #2088
    str x9, [sp, #40]
    sub x9, x29, #2136
    str x9, [sp, #32]
    ldr x11, [sp, #32]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #32]
    str w14, [x10]
    ldr w14, [x23]
    ldr x9, [sp, #32]
    add x15, x9, #20
    str w14, [x15]
    ldr x10, [sp, #32]
    ldr x11, [sp, #40]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x9, x29, #2240
    str x9, [sp, #24]
    sub x25, x29, #2344
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    str xzr, [x11, #96]
    adrp x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x25]
    adrp x14, _lb_gpu_18VK_COMPARE_OP_LESS@PAGE
    add x14, x14, _lb_gpu_18VK_COMPARE_OP_LESS@PAGEOFF
    ldr w14, [x14]
    add x15, x25, #28
    str w14, [x15]
    mov x10, x25
    ldr x11, [sp, #24]
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
    sub x25, x29, #2376
    sub x24, x29, #2408
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x9, _lb_gpu_7VK_TRUE@PAGE
    add x9, x9, _lb_gpu_7VK_TRUE@PAGEOFF
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr w14, [x9]
    str w14, [x24]
    adrp x14, _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA@PAGE
    add x14, x14, _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA@PAGEOFF
    ldr w14, [x14]
    add x15, x24, #4
    str w14, [x15]
    adrp x14, _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA@PAGE
    add x14, x14, _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA@PAGEOFF
    ldr w14, [x14]
    add x15, x24, #8
    str w14, [x15]
    adrp x15, _lb_gpu_19VK_BLEND_FACTOR_ONE@PAGE
    add x15, x15, _lb_gpu_19VK_BLEND_FACTOR_ONE@PAGEOFF
    ldr w15, [x15]
    add x9, x24, #16
    str x9, [sp, #8]
    ldr x10, [sp, #8]
    str w15, [x10]
    add x15, x24, #20
    str w14, [x15]
    adrp x14, _lb_gpu_24VK_COLOR_COMPONENT_R_BIT@PAGE
    add x14, x14, _lb_gpu_24VK_COLOR_COMPONENT_R_BIT@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_gpu_24VK_COLOR_COMPONENT_G_BIT@PAGE
    add x15, x15, _lb_gpu_24VK_COLOR_COMPONENT_G_BIT@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    adrp x15, _lb_gpu_24VK_COLOR_COMPONENT_B_BIT@PAGE
    add x15, x15, _lb_gpu_24VK_COLOR_COMPONENT_B_BIT@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    adrp x15, _lb_gpu_24VK_COLOR_COMPONENT_A_BIT@PAGE
    add x15, x15, _lb_gpu_24VK_COLOR_COMPONENT_A_BIT@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    add x15, x24, #28
    str w14, [x15]
    mov x10, x24
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x9, x29, #2464
    str x9, [sp, #0]
    sub x24, x29, #2520
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    adrp x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    add x14, x24, #28
    movz x9, #1
    str w9, [x14]
    add x14, x24, #32
    str x25, [x14]
    mov x10, x24
    ldr x11, [sp, #0]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x24, x29, #2528
    sub x14, x29, #2536
    adrp x15, _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT@PAGE
    add x15, x15, _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR@PAGE
    add x15, x15, _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR@PAGEOFF
    ldr w15, [x15]
    add x25, x14, #4
    str w15, [x25]
    mov x10, x14
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x25, x29, #2568
    sub x22, x29, #2600
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    add x14, x22, #20
    movz x9, #2
    str w9, [x14]
    add x14, x22, #24
    str x24, [x14]
    mov x10, x22
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x22, x29, #2744
    sub x24, x29, #2888
    mov x0, x24
    mov x1, #0
    movz x2, #144
    bl _memset
    adrp x14, _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    add x14, x24, #20
    movz x9, #2
    str w9, [x14]
    add x14, x24, #24
    str x28, [x14]
    add x14, x24, #32
    str x19, [x14]
    add x14, x24, #40
    str x20, [x14]
    add x14, x24, #56
    ldr x9, [sp, #72]
    str x9, [x14]
    add x14, x24, #64
    ldr x9, [sp, #56]
    str x9, [x14]
    add x14, x24, #72
    ldr x9, [sp, #40]
    str x9, [x14]
    add x14, x24, #80
    ldr x9, [sp, #24]
    str x9, [x14]
    add x14, x24, #88
    ldr x9, [sp, #0]
    str x9, [x14]
    add x14, x24, #96
    str x25, [x14]
    ldr x9, [sp, #168]
    ldr x14, [x9]
    add x15, x24, #104
    str x14, [x15]
    ldr x9, [sp, #176]
    ldr x14, [x9]
    add x15, x24, #112
    str x14, [x15]
    add x14, x24, #136
    movn x9, #0
    str w9, [x14]
    mov x0, x22
    mov x1, x24
    movz x2, #144
    bl _memcpy
    ldr x9, [sp, #184]
    ldr x14, [x9]
    ldr x9, [sp, #192]
    add x15, x9, #72
    mov x0, x14
    mov x1, #0
    movz x2, #1
    mov x3, x22
    mov x4, #0
    mov x5, x15
    bl _vkCreateGraphicsPipelines
    mov w14, w0
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
    sub x19, x29, #2904
    str x15, [x19]
    add x15, x19, #8
    movz x9, #48
    str x9, [x15]
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #2936
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #2936
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_17
    b L2_16
L2_17:
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
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    ldr x1, [sp, #160]
    mov x2, #0
    bl _vkDestroyShaderModule
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    bl _vkDestroyShaderModule
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_18:
L2_16:
    ldr x9, [sp, #24]
    add x14, x9, #20
    ldr x9, [sp, #16]
    ldr w15, [x9]
    str w15, [x14]
    ldr x9, [sp, #24]
    add x14, x9, #24
    str w15, [x14]
    ldr x9, [sp, #184]
    ldr x14, [x9]
    ldr x9, [sp, #192]
    add x15, x9, #80
    mov x0, x14
    mov x1, #0
    movz x2, #1
    mov x3, x22
    mov x4, #0
    mov x5, x15
    bl _vkCreateGraphicsPipelines
    mov w14, w0
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x19, x29, #2952
    str x15, [x19]
    add x15, x19, #8
    movz x9, #46
    str x9, [x15]
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #2984
    bl _lb_gpu_12vulkan_check
    sub x15, x29, #2984
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_20
    b L2_19
L2_20:
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
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    ldr x1, [sp, #160]
    mov x2, #0
    bl _vkDestroyShaderModule
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    bl _vkDestroyShaderModule
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
L2_19:
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    ldr x1, [sp, #160]
    mov x2, #0
    bl _vkDestroyShaderModule
    ldr x9, [sp, #184]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    bl _vkDestroyShaderModule
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
    ldr x19, [sp, #3152]
    ldr x20, [sp, #3144]
    ldr x21, [sp, #3136]
    ldr x22, [sp, #3128]
    ldr x23, [sp, #3120]
    ldr x24, [sp, #3112]
    ldr x25, [sp, #3104]
    ldr x26, [sp, #3096]
    ldr x27, [sp, #3088]
    ldr x28, [sp, #3080]
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
l_text_14:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
