    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_0init
_lb_gpu_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5376
    sub sp, sp, x16
    str x19, [sp, #5352]
    str x20, [sp, #5344]
    adrp x14, _lb_gpu_unsupported@PAGE
    add x14, x14, _lb_gpu_unsupported@PAGEOFF
    movz x9, #91
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    movz x9, #92
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_12wrong_thread@PAGE
    add x14, x14, _lb_gpu_12wrong_thread@PAGEOFF
    movz x9, #93
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_closed@PAGE
    add x14, x14, _lb_gpu_closed@PAGEOFF
    movz x9, #94
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_13invalid_color@PAGE
    add x14, x14, _lb_gpu_13invalid_color@PAGEOFF
    movz x9, #95
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    movz x9, #96
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_16execution_failed@PAGE
    add x14, x14, _lb_gpu_16execution_failed@PAGEOFF
    movz x9, #97
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_17surface_too_large@PAGE
    add x14, x14, _lb_gpu_17surface_too_large@PAGEOFF
    movz x9, #98
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    movz x9, #99
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_13command_limit@PAGE
    add x14, x14, _lb_gpu_13command_limit@PAGEOFF
    movz x9, #100
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_14frame_finished@PAGE
    add x14, x14, _lb_gpu_14frame_finished@PAGEOFF
    movz x9, #114
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_12frame_in_use@PAGE
    add x14, x14, _lb_gpu_12frame_in_use@PAGEOFF
    movz x9, #115
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_13frame_resized@PAGE
    add x14, x14, _lb_gpu_13frame_resized@PAGEOFF
    movz x9, #116
    movk x9, #3178, lsl #16
    str w9, [x14]
    sub x19, x29, #72
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #15
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_FrameState_close@GOTPAGE
    ldr x14, [x14, _lb_gpu_FrameState_close@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_gpu_16frame_state_type@PAGE
    add x14, x14, _lb_gpu_16frame_state_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x19, x29, #128
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #9
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_Frame_close@GOTPAGE
    ldr x14, [x14, _lb_gpu_Frame_close@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    adrp x14, _lb_gpu_Frame_trace@GOTPAGE
    ldr x14, [x14, _lb_gpu_Frame_trace@GOTPAGEOFF]
    add x15, x19, #24
    str x14, [x15]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_gpu_10frame_type@PAGE
    add x14, x14, _lb_gpu_10frame_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x19, x29, #168
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #16592, lsl #48
    fmov d24, x9
    adrp x14, _lb_gpu_19metal_surface_limit@PAGE
    add x14, x14, _lb_gpu_19metal_surface_limit@PAGEOFF
    str d24, [x14]
    adrp x14, _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT@PAGE
    add x14, x14, _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT@PAGEOFF
    movz x9, #256
    str w9, [x14]
    adrp x14, _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT@PAGE
    add x14, x14, _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT@PAGEOFF
    movz x9, #1024
    str w9, [x14]
    adrp x14, _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR@PAGE
    add x14, x14, _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE@PAGE
    add x14, x14, _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE@PAGE
    add x14, x14, _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE@PAGE
    add x14, x14, _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_19VK_BLEND_FACTOR_ONE@PAGE
    add x14, x14, _lb_gpu_19VK_BLEND_FACTOR_ONE@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA@PAGE
    add x14, x14, _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA@PAGEOFF
    movz x9, #7
    str w9, [x14]
    adrp x14, _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA@PAGE
    add x14, x14, _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA@PAGEOFF
    movz x9, #6
    str w9, [x14]
    adrp x14, _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT@PAGE
    add x14, x14, _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT@PAGEOFF
    movz x9, #32
    str w9, [x14]
    adrp x14, _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT@PAGE
    add x14, x14, _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT@PAGEOFF
    movz x9, #128
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_COLOR_COMPONENT_A_BIT@PAGE
    add x14, x14, _lb_gpu_24VK_COLOR_COMPONENT_A_BIT@PAGEOFF
    movz x9, #8
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_COLOR_COMPONENT_B_BIT@PAGE
    add x14, x14, _lb_gpu_24VK_COLOR_COMPONENT_B_BIT@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_COLOR_COMPONENT_G_BIT@PAGE
    add x14, x14, _lb_gpu_24VK_COLOR_COMPONENT_G_BIT@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_COLOR_COMPONENT_R_BIT@PAGE
    add x14, x14, _lb_gpu_24VK_COLOR_COMPONENT_R_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGE
    add x14, x14, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT@PAGE
    add x14, x14, _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_18VK_COMPARE_OP_LESS@PAGE
    add x14, x14, _lb_gpu_18VK_COMPARE_OP_LESS@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGE
    add x14, x14, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGE
    add x14, x14, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGEOFF
    movz x9, #7
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR@PAGE
    add x14, x14, _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT@PAGE
    add x14, x14, _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR@PAGE
    add x14, x14, _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR@PAGEOFF
    movz x9, #12820
    movk x9, #50277, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #65535, lsl #48
    str w9, [x14]
    adrp x14, _lb_gpu_8VK_FALSE@PAGE
    add x14, x14, _lb_gpu_8VK_FALSE@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB@PAGE
    add x14, x14, _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB@PAGEOFF
    movz x9, #50
    str w9, [x14]
    adrp x14, _lb_gpu_20VK_FORMAT_D32_SFLOAT@PAGE
    add x14, x14, _lb_gpu_20VK_FORMAT_D32_SFLOAT@PAGEOFF
    movz x9, #126
    str w9, [x14]
    adrp x14, _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGE
    add x14, x14, _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGEOFF
    movz x9, #512
    str w9, [x14]
    adrp x14, _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT@PAGE
    add x14, x14, _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT@PAGEOFF
    movz x9, #109
    str w9, [x14]
    adrp x14, _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB@PAGE
    add x14, x14, _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB@PAGEOFF
    movz x9, #43
    str w9, [x14]
    adrp x14, _lb_gpu_19VK_FORMAT_UNDEFINED@PAGE
    add x14, x14, _lb_gpu_19VK_FORMAT_UNDEFINED@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT@PAGE
    add x14, x14, _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT@PAGE
    add x14, x14, _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL@PAGE
    add x14, x14, _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL@PAGE
    add x14, x14, _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL@PAGEOFF
    movz x9, #3
    str w9, [x14]
    adrp x14, _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR@PAGE
    add x14, x14, _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR@PAGEOFF
    movz x9, #52714
    movk x9, #15258, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_16VK_IMAGE_TYPE_2D@PAGE
    add x14, x14, _lb_gpu_16VK_IMAGE_TYPE_2D@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT@PAGE
    add x14, x14, _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT@PAGEOFF
    movz x9, #16
    str w9, [x14]
    adrp x14, _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGE
    add x14, x14, _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT@PAGEOFF
    movz x9, #32
    str w9, [x14]
    adrp x14, _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D@PAGE
    add x14, x14, _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    adrp x19, _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME@PAGE
    add x19, x19, _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME@PAGEOFF
    str x14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    adrp x15, _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME@PAGE
    add x15, x15, _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME@PAGEOFF
    str x14, [x15]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    adrp x20, _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME@PAGE
    add x20, x20, _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME@PAGEOFF
    str x14, [x20]
    adrp x14, _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT@PAGE
    add x14, x14, _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT@PAGE
    add x14, x14, _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT@PAGE
    add x14, x14, _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_12VK_NOT_READY@PAGE
    add x14, x14, _lb_gpu_12VK_NOT_READY@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS@PAGE
    add x14, x14, _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT@PAGE
    add x14, x14, _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT@PAGEOFF
    movz x9, #1024
    str w9, [x14]
    adrp x14, _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT@PAGE
    add x14, x14, _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT@PAGEOFF
    movz x9, #256
    str w9, [x14]
    adrp x14, _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR@PAGE
    add x14, x14, _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST@PAGE
    add x14, x14, _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST@PAGEOFF
    movz x9, #3
    str w9, [x14]
    adrp x14, _lb_gpu_21VK_QUEUE_GRAPHICS_BIT@PAGE
    add x14, x14, _lb_gpu_21VK_QUEUE_GRAPHICS_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_21VK_SAMPLE_COUNT_1_BIT@PAGE
    add x14, x14, _lb_gpu_21VK_SAMPLE_COUNT_1_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGE
    add x14, x14, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGEOFF
    movz x9, #16
    str w9, [x14]
    adrp x14, _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT@PAGE
    add x14, x14, _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGE
    add x14, x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGEOFF
    movz x9, #52715
    movk x9, #15258, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE@PAGE
    add x14, x14, _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_19VK_SUBPASS_EXTERNAL@PAGE
    add x14, x14, _lb_gpu_19VK_SUBPASS_EXTERNAL@PAGEOFF
    movz x9, #65535
    movk x9, #65535, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_10VK_SUCCESS@PAGE
    add x14, x14, _lb_gpu_10VK_SUCCESS@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_10VK_TIMEOUT@PAGE
    add x14, x14, _lb_gpu_10VK_TIMEOUT@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_7VK_TRUE@PAGE
    add x14, x14, _lb_gpu_7VK_TRUE@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO@PAGE
    add x14, x14, _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO@PAGEOFF
    movz x9, #12
    str w9, [x14]
    adrp x14, _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO@PAGE
    add x14, x14, _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO@PAGEOFF
    movz x9, #40
    str w9, [x14]
    adrp x14, _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO@PAGE
    add x14, x14, _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO@PAGEOFF
    movz x9, #42
    str w9, [x14]
    adrp x14, _lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO@PAGE
    add x14, x14, _lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO@PAGEOFF
    movz x9, #41
    str w9, [x14]
    adrp x14, _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO@PAGEOFF
    movz x9, #39
    str w9, [x14]
    adrp x14, _lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET@PAGE
    add x14, x14, _lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET@PAGEOFF
    movz x9, #36
    str w9, [x14]
    adrp x14, _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO@PAGEOFF
    movz x9, #33
    str w9, [x14]
    adrp x14, _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO@PAGE
    add x14, x14, _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO@PAGEOFF
    movz x9, #34
    str w9, [x14]
    adrp x14, _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO@PAGEOFF
    movz x9, #32
    str w9, [x14]
    adrp x14, _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO@PAGEOFF
    movz x9, #3
    str w9, [x14]
    adrp x14, _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO@PAGEOFF
    movz x9, #8
    str w9, [x14]
    adrp x14, _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO@PAGEOFF
    movz x9, #37
    str w9, [x14]
    adrp x14, _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO@PAGEOFF
    movz x9, #28
    str w9, [x14]
    adrp x14, _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO@PAGEOFF
    movz x9, #14
    str w9, [x14]
    adrp x14, _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO@PAGEOFF
    movz x9, #15
    str w9, [x14]
    adrp x14, _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO@PAGE
    add x14, x14, _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO@PAGEOFF
    movz x9, #5
    str w9, [x14]
    adrp x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO@PAGEOFF
    movz x9, #26
    str w9, [x14]
    adrp x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO@PAGEOFF
    movz x9, #25
    str w9, [x14]
    adrp x14, _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO@PAGEOFF
    movz x9, #27
    str w9, [x14]
    adrp x14, _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO@PAGEOFF
    movz x9, #20
    str w9, [x14]
    adrp x14, _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@PAGEOFF
    movz x9, #30
    str w9, [x14]
    adrp x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO@PAGEOFF
    movz x9, #24
    str w9, [x14]
    adrp x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO@PAGEOFF
    movz x9, #23
    str w9, [x14]
    adrp x14, _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO@PAGEOFF
    movz x9, #18
    str w9, [x14]
    adrp x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO@PAGEOFF
    movz x9, #21
    str w9, [x14]
    adrp x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO@PAGEOFF
    movz x9, #19
    str w9, [x14]
    adrp x14, _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO@PAGEOFF
    movz x9, #22
    str w9, [x14]
    adrp x14, _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR@PAGE
    add x14, x14, _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR@PAGEOFF
    movz x9, #52713
    movk x9, #15258, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO@PAGE
    add x14, x14, _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO@PAGEOFF
    movz x9, #43
    str w9, [x14]
    adrp x14, _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO@PAGEOFF
    movz x9, #38
    str w9, [x14]
    adrp x14, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGEOFF
    movz x9, #9
    str w9, [x14]
    adrp x14, _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO@PAGEOFF
    movz x9, #16
    str w9, [x14]
    adrp x14, _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO@PAGE
    add x14, x14, _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR@PAGE
    add x14, x14, _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR@PAGEOFF
    movz x9, #52712
    movk x9, #15258, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR@PAGE
    add x14, x14, _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR@PAGEOFF
    movz x9, #60712
    movk x9, #15258, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET@PAGE
    add x14, x14, _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET@PAGEOFF
    movz x9, #35
    str w9, [x14]
    sub x14, x29, #1268
    movz x9, #515
    movk x9, #1827, lsl #16
    str w9, [x14]
    add x15, x14, #4
    movz x9, #1, lsl #16
    str w9, [x15]
    add x15, x14, #8
    movz x9, #11
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #12
    movz x9, #37
    str w9, [x15]
    add x15, x14, #16
    mov x9, #0
    str w9, [x15]
    add x15, x14, #20
    movz x9, #17
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #24
    movz x9, #1
    str w9, [x15]
    add x15, x14, #28
    movz x9, #11
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #32
    movz x9, #1
    str w9, [x15]
    add x15, x14, #36
    movz x9, #19527
    movk x9, #19539, lsl #16
    str w9, [x15]
    add x15, x14, #40
    movz x9, #29486
    movk x9, #25716, lsl #16
    str w9, [x15]
    add x15, x14, #44
    movz x9, #13358
    movk x9, #12341, lsl #16
    str w9, [x15]
    add x15, x14, #48
    mov x9, #0
    str w9, [x15]
    add x15, x14, #52
    movz x9, #14
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #56
    mov x9, #0
    str w9, [x15]
    add x15, x14, #60
    movz x9, #1
    str w9, [x15]
    add x15, x14, #64
    movz x9, #15
    movk x9, #9, lsl #16
    str w9, [x15]
    add x15, x14, #68
    mov x9, #0
    str w9, [x15]
    add x15, x14, #72
    movz x9, #4
    str w9, [x15]
    add x15, x14, #76
    movz x9, #24941
    movk x9, #28265, lsl #16
    str w9, [x15]
    add x15, x14, #80
    mov x9, #0
    str w9, [x15]
    add x15, x14, #84
    movz x9, #13
    str w9, [x15]
    add x15, x14, #88
    movz x9, #17
    str w9, [x15]
    add x15, x14, #92
    movz x9, #34
    str w9, [x15]
    add x15, x14, #96
    movz x9, #35
    str w9, [x15]
    add x15, x14, #100
    movz x9, #3
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #104
    movz x9, #2
    str w9, [x15]
    add x15, x14, #108
    movz x9, #450
    str w9, [x15]
    add x15, x14, #112
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #116
    movz x9, #4
    str w9, [x15]
    add x15, x14, #120
    movz x9, #24941
    movk x9, #28265, lsl #16
    str w9, [x15]
    add x15, x14, #124
    mov x9, #0
    str w9, [x15]
    add x15, x14, #128
    movz x9, #5
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #132
    movz x9, #11
    str w9, [x15]
    add x15, x14, #136
    movz x9, #27751
    movk x9, #20575, lsl #16
    str w9, [x15]
    add x15, x14, #140
    movz x9, #29285
    movk x9, #25942, lsl #16
    str w9, [x15]
    add x15, x14, #144
    movz x9, #29810
    movk x9, #30821, lsl #16
    str w9, [x15]
    add x15, x14, #148
    mov x9, #0
    str w9, [x15]
    add x15, x14, #152
    movz x9, #6
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #156
    movz x9, #11
    str w9, [x15]
    add x15, x14, #160
    mov x9, #0
    str w9, [x15]
    add x15, x14, #164
    movz x9, #27751
    movk x9, #20575, lsl #16
    str w9, [x15]
    add x15, x14, #168
    movz x9, #29551
    movk x9, #29801, lsl #16
    str w9, [x15]
    add x15, x14, #172
    movz x9, #28521
    movk x9, #110, lsl #16
    str w9, [x15]
    add x15, x14, #176
    movz x9, #6
    movk x9, #7, lsl #16
    str w9, [x15]
    add x15, x14, #180
    movz x9, #11
    str w9, [x15]
    add x15, x14, #184
    movz x9, #1
    str w9, [x15]
    add x15, x14, #188
    movz x9, #27751
    movk x9, #20575, lsl #16
    str w9, [x15]
    add x15, x14, #192
    movz x9, #26991
    movk x9, #29806, lsl #16
    str w9, [x15]
    add x15, x14, #196
    movz x9, #26963
    movk x9, #25978, lsl #16
    str w9, [x15]
    add x15, x14, #200
    mov x9, #0
    str w9, [x15]
    add x15, x14, #204
    movz x9, #6
    movk x9, #7, lsl #16
    str w9, [x15]
    add x15, x14, #208
    movz x9, #11
    str w9, [x15]
    add x15, x14, #212
    movz x9, #2
    str w9, [x15]
    add x15, x14, #216
    movz x9, #27751
    movk x9, #17247, lsl #16
    str w9, [x15]
    add x15, x14, #220
    movz x9, #26988
    movk x9, #17520, lsl #16
    str w9, [x15]
    add x15, x14, #224
    movz x9, #29545
    movk x9, #24948, lsl #16
    str w9, [x15]
    add x15, x14, #228
    movz x9, #25454
    movk x9, #101, lsl #16
    str w9, [x15]
    add x15, x14, #232
    movz x9, #6
    movk x9, #7, lsl #16
    str w9, [x15]
    add x15, x14, #236
    movz x9, #11
    str w9, [x15]
    add x15, x14, #240
    movz x9, #3
    str w9, [x15]
    add x15, x14, #244
    movz x9, #27751
    movk x9, #17247, lsl #16
    str w9, [x15]
    add x15, x14, #248
    movz x9, #27765
    movk x9, #17516, lsl #16
    str w9, [x15]
    add x15, x14, #252
    movz x9, #29545
    movk x9, #24948, lsl #16
    str w9, [x15]
    add x15, x14, #256
    movz x9, #25454
    movk x9, #101, lsl #16
    str w9, [x15]
    add x15, x14, #260
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #264
    movz x9, #13
    str w9, [x15]
    add x15, x14, #268
    mov x9, #0
    str w9, [x15]
    add x15, x14, #272
    movz x9, #5
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #276
    movz x9, #17
    str w9, [x15]
    add x15, x14, #280
    movz x9, #28528
    movk x9, #26995, lsl #16
    str w9, [x15]
    add x15, x14, #284
    movz x9, #26996
    movk x9, #28271, lsl #16
    str w9, [x15]
    add x15, x14, #288
    mov x9, #0
    str w9, [x15]
    add x15, x14, #292
    movz x9, #5
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #296
    movz x9, #34
    str w9, [x15]
    add x15, x14, #300
    movz x9, #25974
    movk x9, #29810, lsl #16
    str w9, [x15]
    add x15, x14, #304
    movz x9, #30821
    movk x9, #25439, lsl #16
    str w9, [x15]
    add x15, x14, #308
    movz x9, #27759
    movk x9, #29295, lsl #16
    str w9, [x15]
    add x15, x14, #312
    mov x9, #0
    str w9, [x15]
    add x15, x14, #316
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #320
    movz x9, #35
    str w9, [x15]
    add x15, x14, #324
    movz x9, #28515
    movk x9, #28524, lsl #16
    str w9, [x15]
    add x15, x14, #328
    movz x9, #114
    str w9, [x15]
    add x15, x14, #332
    movz x9, #71
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #336
    movz x9, #11
    str w9, [x15]
    add x15, x14, #340
    movz x9, #2
    str w9, [x15]
    add x15, x14, #344
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #348
    movz x9, #11
    str w9, [x15]
    add x15, x14, #352
    mov x9, #0
    str w9, [x15]
    add x15, x14, #356
    movz x9, #11
    str w9, [x15]
    add x15, x14, #360
    mov x9, #0
    str w9, [x15]
    add x15, x14, #364
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #368
    movz x9, #11
    str w9, [x15]
    add x15, x14, #372
    movz x9, #1
    str w9, [x15]
    add x15, x14, #376
    movz x9, #11
    str w9, [x15]
    add x15, x14, #380
    movz x9, #1
    str w9, [x15]
    add x15, x14, #384
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #388
    movz x9, #11
    str w9, [x15]
    add x15, x14, #392
    movz x9, #2
    str w9, [x15]
    add x15, x14, #396
    movz x9, #11
    str w9, [x15]
    add x15, x14, #400
    movz x9, #3
    str w9, [x15]
    add x15, x14, #404
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #408
    movz x9, #11
    str w9, [x15]
    add x15, x14, #412
    movz x9, #3
    str w9, [x15]
    add x15, x14, #416
    movz x9, #11
    str w9, [x15]
    add x15, x14, #420
    movz x9, #4
    str w9, [x15]
    add x15, x14, #424
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #428
    movz x9, #17
    str w9, [x15]
    add x15, x14, #432
    movz x9, #30
    str w9, [x15]
    add x15, x14, #436
    mov x9, #0
    str w9, [x15]
    add x15, x14, #440
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #444
    movz x9, #34
    str w9, [x15]
    add x15, x14, #448
    movz x9, #30
    str w9, [x15]
    add x15, x14, #452
    mov x9, #0
    str w9, [x15]
    add x15, x14, #456
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #460
    movz x9, #35
    str w9, [x15]
    add x15, x14, #464
    movz x9, #30
    str w9, [x15]
    add x15, x14, #468
    movz x9, #1
    str w9, [x15]
    add x15, x14, #472
    movz x9, #19
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #476
    movz x9, #2
    str w9, [x15]
    add x15, x14, #480
    movz x9, #33
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #484
    movz x9, #3
    str w9, [x15]
    add x15, x14, #488
    movz x9, #2
    str w9, [x15]
    add x15, x14, #492
    movz x9, #22
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #496
    movz x9, #6
    str w9, [x15]
    add x15, x14, #500
    movz x9, #32
    str w9, [x15]
    add x15, x14, #504
    movz x9, #23
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #508
    movz x9, #7
    str w9, [x15]
    add x15, x14, #512
    movz x9, #6
    str w9, [x15]
    add x15, x14, #516
    movz x9, #4
    str w9, [x15]
    add x15, x14, #520
    movz x9, #21
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #524
    movz x9, #8
    str w9, [x15]
    add x15, x14, #528
    movz x9, #32
    str w9, [x15]
    add x15, x14, #532
    mov x9, #0
    str w9, [x15]
    add x15, x14, #536
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #540
    movz x9, #8
    str w9, [x15]
    add x15, x14, #544
    movz x9, #9
    str w9, [x15]
    add x15, x14, #548
    movz x9, #1
    str w9, [x15]
    add x15, x14, #552
    movz x9, #28
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #556
    movz x9, #10
    str w9, [x15]
    add x15, x14, #560
    movz x9, #6
    str w9, [x15]
    add x15, x14, #564
    movz x9, #9
    str w9, [x15]
    add x15, x14, #568
    movz x9, #30
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #572
    movz x9, #11
    str w9, [x15]
    add x15, x14, #576
    movz x9, #7
    str w9, [x15]
    add x15, x14, #580
    movz x9, #6
    str w9, [x15]
    add x15, x14, #584
    movz x9, #10
    str w9, [x15]
    add x15, x14, #588
    movz x9, #10
    str w9, [x15]
    add x15, x14, #592
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #596
    movz x9, #12
    str w9, [x15]
    add x15, x14, #600
    movz x9, #3
    str w9, [x15]
    add x15, x14, #604
    movz x9, #11
    str w9, [x15]
    add x15, x14, #608
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #612
    movz x9, #12
    str w9, [x15]
    add x15, x14, #616
    movz x9, #13
    str w9, [x15]
    add x15, x14, #620
    movz x9, #3
    str w9, [x15]
    add x15, x14, #624
    movz x9, #21
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #628
    movz x9, #14
    str w9, [x15]
    add x15, x14, #632
    movz x9, #32
    str w9, [x15]
    add x15, x14, #636
    movz x9, #1
    str w9, [x15]
    add x15, x14, #640
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #644
    movz x9, #14
    str w9, [x15]
    add x15, x14, #648
    movz x9, #15
    str w9, [x15]
    add x15, x14, #652
    mov x9, #0
    str w9, [x15]
    add x15, x14, #656
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #660
    movz x9, #16
    str w9, [x15]
    add x15, x14, #664
    movz x9, #1
    str w9, [x15]
    add x15, x14, #668
    movz x9, #7
    str w9, [x15]
    add x15, x14, #672
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #676
    movz x9, #16
    str w9, [x15]
    add x15, x14, #680
    movz x9, #17
    str w9, [x15]
    add x15, x14, #684
    movz x9, #1
    str w9, [x15]
    add x15, x14, #688
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #692
    movz x9, #8
    str w9, [x15]
    add x15, x14, #696
    movz x9, #18
    str w9, [x15]
    add x15, x14, #700
    mov x9, #0
    str w9, [x15]
    add x15, x14, #704
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #708
    movz x9, #19
    str w9, [x15]
    add x15, x14, #712
    movz x9, #1
    str w9, [x15]
    add x15, x14, #716
    movz x9, #6
    str w9, [x15]
    add x15, x14, #720
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #724
    movz x9, #8
    str w9, [x15]
    add x15, x14, #728
    movz x9, #25
    str w9, [x15]
    add x15, x14, #732
    movz x9, #2
    str w9, [x15]
    add x15, x14, #736
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #740
    movz x9, #8
    str w9, [x15]
    add x15, x14, #744
    movz x9, #28
    str w9, [x15]
    add x15, x14, #748
    movz x9, #3
    str w9, [x15]
    add x15, x14, #752
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #756
    movz x9, #32
    str w9, [x15]
    add x15, x14, #760
    movz x9, #3
    str w9, [x15]
    add x15, x14, #764
    movz x9, #7
    str w9, [x15]
    add x15, x14, #768
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #772
    movz x9, #32
    str w9, [x15]
    add x15, x14, #776
    movz x9, #34
    str w9, [x15]
    add x15, x14, #780
    movz x9, #3
    str w9, [x15]
    add x15, x14, #784
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #788
    movz x9, #16
    str w9, [x15]
    add x15, x14, #792
    movz x9, #35
    str w9, [x15]
    add x15, x14, #796
    movz x9, #1
    str w9, [x15]
    add x15, x14, #800
    movz x9, #54
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #804
    movz x9, #2
    str w9, [x15]
    add x15, x14, #808
    movz x9, #4
    str w9, [x15]
    add x15, x14, #812
    mov x9, #0
    str w9, [x15]
    add x15, x14, #816
    movz x9, #3
    str w9, [x15]
    add x15, x14, #820
    movz x9, #248
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #824
    movz x9, #5
    str w9, [x15]
    add x15, x14, #828
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #832
    movz x9, #19
    str w9, [x15]
    add x15, x14, #836
    movz x9, #20
    str w9, [x15]
    add x15, x14, #840
    movz x9, #17
    str w9, [x15]
    add x15, x14, #844
    movz x9, #18
    str w9, [x15]
    add x15, x14, #848
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #852
    movz x9, #6
    str w9, [x15]
    add x15, x14, #856
    movz x9, #21
    str w9, [x15]
    add x15, x14, #860
    movz x9, #20
    str w9, [x15]
    add x15, x14, #864
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #868
    movz x9, #19
    str w9, [x15]
    add x15, x14, #872
    movz x9, #22
    str w9, [x15]
    add x15, x14, #876
    movz x9, #17
    str w9, [x15]
    add x15, x14, #880
    movz x9, #9
    str w9, [x15]
    add x15, x14, #884
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #888
    movz x9, #6
    str w9, [x15]
    add x15, x14, #892
    movz x9, #23
    str w9, [x15]
    add x15, x14, #896
    movz x9, #22
    str w9, [x15]
    add x15, x14, #900
    movz x9, #127
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #904
    movz x9, #6
    str w9, [x15]
    add x15, x14, #908
    movz x9, #24
    str w9, [x15]
    add x15, x14, #912
    movz x9, #23
    str w9, [x15]
    add x15, x14, #916
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #920
    movz x9, #19
    str w9, [x15]
    add x15, x14, #924
    movz x9, #26
    str w9, [x15]
    add x15, x14, #928
    movz x9, #17
    str w9, [x15]
    add x15, x14, #932
    movz x9, #25
    str w9, [x15]
    add x15, x14, #936
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #940
    movz x9, #6
    str w9, [x15]
    add x15, x14, #944
    movz x9, #27
    str w9, [x15]
    add x15, x14, #948
    movz x9, #26
    str w9, [x15]
    add x15, x14, #952
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #956
    movz x9, #19
    str w9, [x15]
    add x15, x14, #960
    movz x9, #29
    str w9, [x15]
    add x15, x14, #964
    movz x9, #17
    str w9, [x15]
    add x15, x14, #968
    movz x9, #28
    str w9, [x15]
    add x15, x14, #972
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #976
    movz x9, #6
    str w9, [x15]
    add x15, x14, #980
    movz x9, #30
    str w9, [x15]
    add x15, x14, #984
    movz x9, #29
    str w9, [x15]
    add x15, x14, #988
    movz x9, #80
    movk x9, #7, lsl #16
    str w9, [x15]
    add x15, x14, #992
    movz x9, #7
    str w9, [x15]
    add x15, x14, #996
    movz x9, #31
    str w9, [x15]
    add x15, x14, #1000
    movz x9, #21
    str w9, [x15]
    add x15, x14, #1004
    movz x9, #24
    str w9, [x15]
    add x15, x14, #1008
    movz x9, #27
    str w9, [x15]
    add x15, x14, #1012
    movz x9, #30
    str w9, [x15]
    add x15, x14, #1016
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1020
    movz x9, #32
    str w9, [x15]
    add x15, x14, #1024
    movz x9, #33
    str w9, [x15]
    add x15, x14, #1028
    movz x9, #13
    str w9, [x15]
    add x15, x14, #1032
    movz x9, #15
    str w9, [x15]
    add x15, x14, #1036
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #1040
    movz x9, #33
    str w9, [x15]
    add x15, x14, #1044
    movz x9, #31
    str w9, [x15]
    add x15, x14, #1048
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1052
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1056
    movz x9, #36
    str w9, [x15]
    add x15, x14, #1060
    movz x9, #35
    str w9, [x15]
    add x15, x14, #1064
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #1068
    movz x9, #34
    str w9, [x15]
    add x15, x14, #1072
    movz x9, #36
    str w9, [x15]
    add x15, x14, #1076
    movz x9, #253
    movk x9, #1, lsl #16
    str w9, [x15]
    add x15, x14, #1080
    movz x9, #56
    movk x9, #1, lsl #16
    str w9, [x15]
    adrp x15, _lb_gpu_17vulkan_vert_words@PAGE
    add x15, x15, _lb_gpu_17vulkan_vert_words@PAGEOFF
    mov x0, x15
    mov x1, x14
    movz x2, #1084
    bl _memcpy
    movz x16, #5352
    sub x14, x29, x16
    movz x9, #515
    movk x9, #1827, lsl #16
    str w9, [x14]
    add x15, x14, #4
    movz x9, #1, lsl #16
    str w9, [x15]
    add x15, x14, #8
    movz x9, #11
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #12
    movz x9, #169
    str w9, [x15]
    add x15, x14, #16
    mov x9, #0
    str w9, [x15]
    add x15, x14, #20
    movz x9, #17
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #24
    movz x9, #1
    str w9, [x15]
    add x15, x14, #28
    movz x9, #11
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #32
    movz x9, #1
    str w9, [x15]
    add x15, x14, #36
    movz x9, #19527
    movk x9, #19539, lsl #16
    str w9, [x15]
    add x15, x14, #40
    movz x9, #29486
    movk x9, #25716, lsl #16
    str w9, [x15]
    add x15, x14, #44
    movz x9, #13358
    movk x9, #12341, lsl #16
    str w9, [x15]
    add x15, x14, #48
    mov x9, #0
    str w9, [x15]
    add x15, x14, #52
    movz x9, #14
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #56
    mov x9, #0
    str w9, [x15]
    add x15, x14, #60
    movz x9, #1
    str w9, [x15]
    add x15, x14, #64
    movz x9, #15
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #68
    movz x9, #4
    str w9, [x15]
    add x15, x14, #72
    movz x9, #4
    str w9, [x15]
    add x15, x14, #76
    movz x9, #24941
    movk x9, #28265, lsl #16
    str w9, [x15]
    add x15, x14, #80
    mov x9, #0
    str w9, [x15]
    add x15, x14, #84
    movz x9, #89
    str w9, [x15]
    add x15, x14, #88
    movz x9, #154
    str w9, [x15]
    add x15, x14, #92
    movz x9, #155
    str w9, [x15]
    add x15, x14, #96
    movz x9, #16
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #100
    movz x9, #4
    str w9, [x15]
    add x15, x14, #104
    movz x9, #7
    str w9, [x15]
    add x15, x14, #108
    movz x9, #3
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #112
    movz x9, #2
    str w9, [x15]
    add x15, x14, #116
    movz x9, #450
    str w9, [x15]
    add x15, x14, #120
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #124
    movz x9, #4
    str w9, [x15]
    add x15, x14, #128
    movz x9, #24941
    movk x9, #28265, lsl #16
    str w9, [x15]
    add x15, x14, #132
    mov x9, #0
    str w9, [x15]
    add x15, x14, #136
    movz x9, #5
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #140
    movz x9, #12
    str w9, [x15]
    add x15, x14, #144
    movz x9, #28515
    movk x9, #25974, lsl #16
    str w9, [x15]
    add x15, x14, #148
    movz x9, #24946
    movk x9, #25959, lsl #16
    str w9, [x15]
    add x15, x14, #152
    movz x9, #30248
    movk x9, #12905, lsl #16
    str w9, [x15]
    add x15, x14, #156
    movz x9, #59
    str w9, [x15]
    add x15, x14, #160
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #164
    movz x9, #11
    str w9, [x15]
    add x15, x14, #168
    movz x9, #112
    str w9, [x15]
    add x15, x14, #172
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #176
    movz x9, #18
    str w9, [x15]
    add x15, x14, #180
    movz x9, #24909
    movk x9, #27507, lsl #16
    str w9, [x15]
    add x15, x14, #184
    mov x9, #0
    str w9, [x15]
    add x15, x14, #188
    movz x9, #6
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #192
    movz x9, #18
    str w9, [x15]
    add x15, x14, #196
    mov x9, #0
    str w9, [x15]
    add x15, x14, #200
    movz x9, #120
    str w9, [x15]
    add x15, x14, #204
    movz x9, #6
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #208
    movz x9, #18
    str w9, [x15]
    add x15, x14, #212
    movz x9, #1
    str w9, [x15]
    add x15, x14, #216
    movz x9, #121
    str w9, [x15]
    add x15, x14, #220
    movz x9, #6
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #224
    movz x9, #18
    str w9, [x15]
    add x15, x14, #228
    movz x9, #2
    str w9, [x15]
    add x15, x14, #232
    movz x9, #26999
    movk x9, #29796, lsl #16
    str w9, [x15]
    add x15, x14, #236
    movz x9, #104
    str w9, [x15]
    add x15, x14, #240
    movz x9, #6
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #244
    movz x9, #18
    str w9, [x15]
    add x15, x14, #248
    movz x9, #3
    str w9, [x15]
    add x15, x14, #252
    movz x9, #25960
    movk x9, #26473, lsl #16
    str w9, [x15]
    add x15, x14, #256
    movz x9, #29800
    str w9, [x15]
    add x15, x14, #260
    movz x9, #6
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #264
    movz x9, #18
    str w9, [x15]
    add x15, x14, #268
    movz x9, #4
    str w9, [x15]
    add x15, x14, #272
    movz x9, #28515
    movk x9, #30060, lsl #16
    str w9, [x15]
    add x15, x14, #276
    movz x9, #28269
    movk x9, #115, lsl #16
    str w9, [x15]
    add x15, x14, #280
    movz x9, #6
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #284
    movz x9, #18
    str w9, [x15]
    add x15, x14, #288
    movz x9, #5
    str w9, [x15]
    add x15, x14, #292
    movz x9, #28530
    movk x9, #29559, lsl #16
    str w9, [x15]
    add x15, x14, #296
    mov x9, #0
    str w9, [x15]
    add x15, x14, #300
    movz x9, #6
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #304
    movz x9, #18
    str w9, [x15]
    add x15, x14, #308
    movz x9, #6
    str w9, [x15]
    add x15, x14, #312
    movz x9, #26223
    movk x9, #29542, lsl #16
    str w9, [x15]
    add x15, x14, #316
    movz x9, #29797
    str w9, [x15]
    add x15, x14, #320
    movz x9, #6
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #324
    movz x9, #18
    str w9, [x15]
    add x15, x14, #328
    movz x9, #7
    str w9, [x15]
    add x15, x14, #332
    movz x9, #25970
    movk x9, #25971, lsl #16
    str w9, [x15]
    add x15, x14, #336
    movz x9, #30322
    movk x9, #25701, lsl #16
    str w9, [x15]
    add x15, x14, #340
    mov x9, #0
    str w9, [x15]
    add x15, x14, #344
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #348
    movz x9, #20
    str w9, [x15]
    add x15, x14, #352
    movz x9, #24941
    movk x9, #27507, lsl #16
    str w9, [x15]
    add x15, x14, #356
    mov x9, #0
    str w9, [x15]
    add x15, x14, #360
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #364
    movz x9, #36
    str w9, [x15]
    add x15, x14, #368
    movz x9, #105
    str w9, [x15]
    add x15, x14, #372
    movz x9, #5
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #376
    movz x9, #54
    str w9, [x15]
    add x15, x14, #380
    movz x9, #28483
    movk x9, #25974, lsl #16
    str w9, [x15]
    add x15, x14, #384
    movz x9, #24946
    movk x9, #25959, lsl #16
    str w9, [x15]
    add x15, x14, #388
    mov x9, #0
    str w9, [x15]
    add x15, x14, #392
    movz x9, #6
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #396
    movz x9, #54
    str w9, [x15]
    add x15, x14, #400
    mov x9, #0
    str w9, [x15]
    add x15, x14, #404
    movz x9, #24932
    movk x9, #24948, lsl #16
    str w9, [x15]
    add x15, x14, #408
    mov x9, #0
    str w9, [x15]
    add x15, x14, #412
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #416
    movz x9, #56
    str w9, [x15]
    add x15, x14, #420
    mov x9, #0
    str w9, [x15]
    add x15, x14, #424
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #428
    movz x9, #76
    str w9, [x15]
    add x15, x14, #432
    movz x9, #27745
    movk x9, #26736, lsl #16
    str w9, [x15]
    add x15, x14, #436
    movz x9, #97
    str w9, [x15]
    add x15, x14, #440
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #444
    movz x9, #86
    str w9, [x15]
    add x15, x14, #448
    movz x9, #112
    str w9, [x15]
    add x15, x14, #452
    movz x9, #5
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #456
    movz x9, #89
    str w9, [x15]
    add x15, x14, #460
    movz x9, #27751
    movk x9, #18015, lsl #16
    str w9, [x15]
    add x15, x14, #464
    movz x9, #24946
    movk x9, #17255, lsl #16
    str w9, [x15]
    add x15, x14, #468
    movz x9, #28527
    movk x9, #25714, lsl #16
    str w9, [x15]
    add x15, x14, #472
    mov x9, #0
    str w9, [x15]
    add x15, x14, #476
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #480
    movz x9, #119
    str w9, [x15]
    add x15, x14, #484
    movz x9, #113
    str w9, [x15]
    add x15, x14, #488
    movz x9, #5
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #492
    movz x9, #123
    str w9, [x15]
    add x15, x14, #496
    movz x9, #102
    str w9, [x15]
    add x15, x14, #500
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #504
    movz x9, #126
    str w9, [x15]
    add x15, x14, #508
    movz x9, #24944
    movk x9, #24946, lsl #16
    str w9, [x15]
    add x15, x14, #512
    movz x9, #109
    str w9, [x15]
    add x15, x14, #516
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #520
    movz x9, #132
    str w9, [x15]
    add x15, x14, #524
    movz x9, #24944
    movk x9, #24946, lsl #16
    str w9, [x15]
    add x15, x14, #528
    movz x9, #109
    str w9, [x15]
    add x15, x14, #532
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #536
    movz x9, #140
    str w9, [x15]
    add x15, x14, #540
    movz x9, #24944
    movk x9, #24946, lsl #16
    str w9, [x15]
    add x15, x14, #544
    movz x9, #109
    str w9, [x15]
    add x15, x14, #548
    movz x9, #5
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #552
    movz x9, #145
    str w9, [x15]
    add x15, x14, #556
    movz x9, #24944
    movk x9, #24946, lsl #16
    str w9, [x15]
    add x15, x14, #560
    movz x9, #109
    str w9, [x15]
    add x15, x14, #564
    movz x9, #5
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #568
    movz x9, #154
    str w9, [x15]
    add x15, x14, #572
    movz x9, #29286
    movk x9, #26465, lsl #16
    str w9, [x15]
    add x15, x14, #576
    movz x9, #25965
    movk x9, #29806, lsl #16
    str w9, [x15]
    add x15, x14, #580
    movz x9, #25439
    movk x9, #27759, lsl #16
    str w9, [x15]
    add x15, x14, #584
    movz x9, #29295
    str w9, [x15]
    add x15, x14, #588
    movz x9, #5
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #592
    movz x9, #155
    str w9, [x15]
    add x15, x14, #596
    movz x9, #25974
    movk x9, #29810, lsl #16
    str w9, [x15]
    add x15, x14, #600
    movz x9, #30821
    movk x9, #25439, lsl #16
    str w9, [x15]
    add x15, x14, #604
    movz x9, #27759
    movk x9, #29295, lsl #16
    str w9, [x15]
    add x15, x14, #608
    mov x9, #0
    str w9, [x15]
    add x15, x14, #612
    movz x9, #71
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #616
    movz x9, #18
    str w9, [x15]
    add x15, x14, #620
    movz x9, #2
    str w9, [x15]
    add x15, x14, #624
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #628
    movz x9, #18
    str w9, [x15]
    add x15, x14, #632
    mov x9, #0
    str w9, [x15]
    add x15, x14, #636
    movz x9, #35
    str w9, [x15]
    add x15, x14, #640
    mov x9, #0
    str w9, [x15]
    add x15, x14, #644
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #648
    movz x9, #18
    str w9, [x15]
    add x15, x14, #652
    movz x9, #1
    str w9, [x15]
    add x15, x14, #656
    movz x9, #35
    str w9, [x15]
    add x15, x14, #660
    movz x9, #4
    str w9, [x15]
    add x15, x14, #664
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #668
    movz x9, #18
    str w9, [x15]
    add x15, x14, #672
    movz x9, #2
    str w9, [x15]
    add x15, x14, #676
    movz x9, #35
    str w9, [x15]
    add x15, x14, #680
    movz x9, #8
    str w9, [x15]
    add x15, x14, #684
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #688
    movz x9, #18
    str w9, [x15]
    add x15, x14, #692
    movz x9, #3
    str w9, [x15]
    add x15, x14, #696
    movz x9, #35
    str w9, [x15]
    add x15, x14, #700
    movz x9, #12
    str w9, [x15]
    add x15, x14, #704
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #708
    movz x9, #18
    str w9, [x15]
    add x15, x14, #712
    movz x9, #4
    str w9, [x15]
    add x15, x14, #716
    movz x9, #35
    str w9, [x15]
    add x15, x14, #720
    movz x9, #16
    str w9, [x15]
    add x15, x14, #724
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #728
    movz x9, #18
    str w9, [x15]
    add x15, x14, #732
    movz x9, #5
    str w9, [x15]
    add x15, x14, #736
    movz x9, #35
    str w9, [x15]
    add x15, x14, #740
    movz x9, #20
    str w9, [x15]
    add x15, x14, #744
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #748
    movz x9, #18
    str w9, [x15]
    add x15, x14, #752
    movz x9, #6
    str w9, [x15]
    add x15, x14, #756
    movz x9, #35
    str w9, [x15]
    add x15, x14, #760
    movz x9, #24
    str w9, [x15]
    add x15, x14, #764
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #768
    movz x9, #18
    str w9, [x15]
    add x15, x14, #772
    movz x9, #7
    str w9, [x15]
    add x15, x14, #776
    movz x9, #35
    str w9, [x15]
    add x15, x14, #780
    movz x9, #28
    str w9, [x15]
    add x15, x14, #784
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #788
    movz x9, #53
    str w9, [x15]
    add x15, x14, #792
    movz x9, #6
    str w9, [x15]
    add x15, x14, #796
    movz x9, #4
    str w9, [x15]
    add x15, x14, #800
    movz x9, #71
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #804
    movz x9, #54
    str w9, [x15]
    add x15, x14, #808
    movz x9, #3
    str w9, [x15]
    add x15, x14, #812
    movz x9, #72
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #816
    movz x9, #54
    str w9, [x15]
    add x15, x14, #820
    mov x9, #0
    str w9, [x15]
    add x15, x14, #824
    movz x9, #24
    str w9, [x15]
    add x15, x14, #828
    movz x9, #72
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #832
    movz x9, #54
    str w9, [x15]
    add x15, x14, #836
    mov x9, #0
    str w9, [x15]
    add x15, x14, #840
    movz x9, #35
    str w9, [x15]
    add x15, x14, #844
    mov x9, #0
    str w9, [x15]
    add x15, x14, #848
    movz x9, #71
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #852
    movz x9, #56
    str w9, [x15]
    add x15, x14, #856
    movz x9, #24
    str w9, [x15]
    add x15, x14, #860
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #864
    movz x9, #56
    str w9, [x15]
    add x15, x14, #868
    movz x9, #33
    str w9, [x15]
    add x15, x14, #872
    mov x9, #0
    str w9, [x15]
    add x15, x14, #876
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #880
    movz x9, #56
    str w9, [x15]
    add x15, x14, #884
    movz x9, #34
    str w9, [x15]
    add x15, x14, #888
    mov x9, #0
    str w9, [x15]
    add x15, x14, #892
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #896
    movz x9, #89
    str w9, [x15]
    add x15, x14, #900
    movz x9, #11
    str w9, [x15]
    add x15, x14, #904
    movz x9, #15
    str w9, [x15]
    add x15, x14, #908
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #912
    movz x9, #154
    str w9, [x15]
    add x15, x14, #916
    movz x9, #30
    str w9, [x15]
    add x15, x14, #920
    mov x9, #0
    str w9, [x15]
    add x15, x14, #924
    movz x9, #71
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #928
    movz x9, #155
    str w9, [x15]
    add x15, x14, #932
    movz x9, #30
    str w9, [x15]
    add x15, x14, #936
    mov x9, #0
    str w9, [x15]
    add x15, x14, #940
    movz x9, #19
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #944
    movz x9, #2
    str w9, [x15]
    add x15, x14, #948
    movz x9, #33
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #952
    movz x9, #3
    str w9, [x15]
    add x15, x14, #956
    movz x9, #2
    str w9, [x15]
    add x15, x14, #960
    movz x9, #21
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #964
    movz x9, #6
    str w9, [x15]
    add x15, x14, #968
    movz x9, #32
    str w9, [x15]
    add x15, x14, #972
    movz x9, #1
    str w9, [x15]
    add x15, x14, #976
    movz x9, #23
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #980
    movz x9, #7
    str w9, [x15]
    add x15, x14, #984
    movz x9, #6
    str w9, [x15]
    add x15, x14, #988
    movz x9, #2
    str w9, [x15]
    add x15, x14, #992
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #996
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1000
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1004
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1008
    movz x9, #22
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #1012
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1016
    movz x9, #32
    str w9, [x15]
    add x15, x14, #1020
    movz x9, #33
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1024
    movz x9, #10
    str w9, [x15]
    add x15, x14, #1028
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1032
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1036
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1040
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1044
    movz x9, #15
    str w9, [x15]
    add x15, x14, #1048
    mov x9, #0
    str w9, [x15]
    add x15, x14, #1052
    movz x9, #44
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1056
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1060
    movz x9, #16
    str w9, [x15]
    add x15, x14, #1064
    movz x9, #15
    str w9, [x15]
    add x15, x14, #1068
    movz x9, #15
    str w9, [x15]
    add x15, x14, #1072
    movz x9, #21
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1076
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1080
    movz x9, #32
    str w9, [x15]
    add x15, x14, #1084
    mov x9, #0
    str w9, [x15]
    add x15, x14, #1088
    movz x9, #30
    movk x9, #10, lsl #16
    str w9, [x15]
    add x15, x14, #1092
    movz x9, #18
    str w9, [x15]
    add x15, x14, #1096
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1100
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1104
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1108
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1112
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1116
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1120
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1124
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1128
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1132
    movz x9, #19
    str w9, [x15]
    add x15, x14, #1136
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1140
    movz x9, #18
    str w9, [x15]
    add x15, x14, #1144
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1148
    movz x9, #19
    str w9, [x15]
    add x15, x14, #1152
    movz x9, #20
    str w9, [x15]
    add x15, x14, #1156
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1160
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1164
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1168
    movz x9, #21
    str w9, [x15]
    add x15, x14, #1172
    movz x9, #4
    str w9, [x15]
    add x15, x14, #1176
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1180
    movz x9, #22
    str w9, [x15]
    add x15, x14, #1184
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1188
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1192
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1196
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1200
    movz x9, #25
    str w9, [x15]
    add x15, x14, #1204
    movz x9, #1
    str w9, [x15]
    add x15, x14, #1208
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1212
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1216
    movz x9, #28
    str w9, [x15]
    add x15, x14, #1220
    movz x9, #5
    str w9, [x15]
    add x15, x14, #1224
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1228
    movz x9, #35
    str w9, [x15]
    add x15, x14, #1232
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1236
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1240
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1244
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1248
    movz x9, #37
    str w9, [x15]
    add x15, x14, #1252
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1256
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1260
    movz x9, #40
    str w9, [x15]
    add x15, x14, #1264
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1268
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1272
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1276
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1280
    movz x9, #48
    str w9, [x15]
    add x15, x14, #1284
    mov x9, #0
    str w9, [x15]
    add x15, x14, #1288
    movz x9, #29
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #1292
    movz x9, #53
    str w9, [x15]
    add x15, x14, #1296
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1300
    movz x9, #30
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #1304
    movz x9, #54
    str w9, [x15]
    add x15, x14, #1308
    movz x9, #53
    str w9, [x15]
    add x15, x14, #1312
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1316
    movz x9, #55
    str w9, [x15]
    add x15, x14, #1320
    movz x9, #2
    str w9, [x15]
    add x15, x14, #1324
    movz x9, #54
    str w9, [x15]
    add x15, x14, #1328
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1332
    movz x9, #55
    str w9, [x15]
    add x15, x14, #1336
    movz x9, #56
    str w9, [x15]
    add x15, x14, #1340
    movz x9, #2
    str w9, [x15]
    add x15, x14, #1344
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1348
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1352
    movz x9, #58
    str w9, [x15]
    add x15, x14, #1356
    movz x9, #4
    str w9, [x15]
    add x15, x14, #1360
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1364
    movz x9, #60
    str w9, [x15]
    add x15, x14, #1368
    movz x9, #2
    str w9, [x15]
    add x15, x14, #1372
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1376
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1380
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1384
    movz x9, #65
    str w9, [x15]
    add x15, x14, #1388
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1392
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1396
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1400
    movz x9, #68
    str w9, [x15]
    add x15, x14, #1404
    movz x9, #255
    str w9, [x15]
    add x15, x14, #1408
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1412
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1416
    movz x9, #71
    str w9, [x15]
    add x15, x14, #1420
    movz x9, #17279, lsl #16
    str w9, [x15]
    add x15, x14, #1424
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1428
    movz x9, #75
    str w9, [x15]
    add x15, x14, #1432
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1436
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1440
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1444
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1448
    movz x9, #77
    str w9, [x15]
    add x15, x14, #1452
    movz x9, #16256, lsl #16
    str w9, [x15]
    add x15, x14, #1456
    movz x9, #20
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #1460
    movz x9, #80
    str w9, [x15]
    add x15, x14, #1464
    movz x9, #23
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1468
    movz x9, #84
    str w9, [x15]
    add x15, x14, #1472
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1476
    movz x9, #2
    str w9, [x15]
    add x15, x14, #1480
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1484
    movz x9, #85
    str w9, [x15]
    add x15, x14, #1488
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1492
    movz x9, #84
    str w9, [x15]
    add x15, x14, #1496
    movz x9, #23
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1500
    movz x9, #87
    str w9, [x15]
    add x15, x14, #1504
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1508
    movz x9, #4
    str w9, [x15]
    add x15, x14, #1512
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1516
    movz x9, #88
    str w9, [x15]
    add x15, x14, #1520
    movz x9, #1
    str w9, [x15]
    add x15, x14, #1524
    movz x9, #87
    str w9, [x15]
    add x15, x14, #1528
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1532
    movz x9, #88
    str w9, [x15]
    add x15, x14, #1536
    movz x9, #89
    str w9, [x15]
    add x15, x14, #1540
    movz x9, #1
    str w9, [x15]
    add x15, x14, #1544
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1548
    movz x9, #92
    str w9, [x15]
    add x15, x14, #1552
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1556
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1560
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1564
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1568
    movz x9, #95
    str w9, [x15]
    add x15, x14, #1572
    movz x9, #1
    str w9, [x15]
    add x15, x14, #1576
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1580
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1584
    movz x9, #100
    str w9, [x15]
    add x15, x14, #1588
    movz x9, #2
    str w9, [x15]
    add x15, x14, #1592
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1596
    movz x9, #6
    str w9, [x15]
    add x15, x14, #1600
    movz x9, #103
    str w9, [x15]
    add x15, x14, #1604
    movz x9, #3
    str w9, [x15]
    add x15, x14, #1608
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1612
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1616
    movz x9, #116
    str w9, [x15]
    add x15, x14, #1620
    movz x9, #16128, lsl #16
    str w9, [x15]
    add x15, x14, #1624
    movz x9, #44
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1628
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1632
    movz x9, #130
    str w9, [x15]
    add x15, x14, #1636
    movz x9, #95
    str w9, [x15]
    add x15, x14, #1640
    movz x9, #15
    str w9, [x15]
    add x15, x14, #1644
    movz x9, #44
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1648
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1652
    movz x9, #138
    str w9, [x15]
    add x15, x14, #1656
    movz x9, #15
    str w9, [x15]
    add x15, x14, #1660
    movz x9, #95
    str w9, [x15]
    add x15, x14, #1664
    movz x9, #44
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1668
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1672
    movz x9, #143
    str w9, [x15]
    add x15, x14, #1676
    movz x9, #95
    str w9, [x15]
    add x15, x14, #1680
    movz x9, #95
    str w9, [x15]
    add x15, x14, #1684
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1688
    movz x9, #153
    str w9, [x15]
    add x15, x14, #1692
    movz x9, #3
    str w9, [x15]
    add x15, x14, #1696
    movz x9, #87
    str w9, [x15]
    add x15, x14, #1700
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1704
    movz x9, #153
    str w9, [x15]
    add x15, x14, #1708
    movz x9, #154
    str w9, [x15]
    add x15, x14, #1712
    movz x9, #3
    str w9, [x15]
    add x15, x14, #1716
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1720
    movz x9, #88
    str w9, [x15]
    add x15, x14, #1724
    movz x9, #155
    str w9, [x15]
    add x15, x14, #1728
    movz x9, #1
    str w9, [x15]
    add x15, x14, #1732
    movz x9, #23
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1736
    movz x9, #156
    str w9, [x15]
    add x15, x14, #1740
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1744
    movz x9, #3
    str w9, [x15]
    add x15, x14, #1748
    movz x9, #43
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1752
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1756
    movz x9, #159
    str w9, [x15]
    add x15, x14, #1760
    movz x9, #3
    str w9, [x15]
    add x15, x14, #1764
    movz x9, #32
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1768
    movz x9, #160
    str w9, [x15]
    add x15, x14, #1772
    movz x9, #1
    str w9, [x15]
    add x15, x14, #1776
    movz x9, #9
    str w9, [x15]
    add x15, x14, #1780
    movz x9, #54
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1784
    movz x9, #2
    str w9, [x15]
    add x15, x14, #1788
    movz x9, #4
    str w9, [x15]
    add x15, x14, #1792
    mov x9, #0
    str w9, [x15]
    add x15, x14, #1796
    movz x9, #3
    str w9, [x15]
    add x15, x14, #1800
    movz x9, #248
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #1804
    movz x9, #5
    str w9, [x15]
    add x15, x14, #1808
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1812
    movz x9, #75
    str w9, [x15]
    add x15, x14, #1816
    movz x9, #76
    str w9, [x15]
    add x15, x14, #1820
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1824
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1828
    movz x9, #85
    str w9, [x15]
    add x15, x14, #1832
    movz x9, #86
    str w9, [x15]
    add x15, x14, #1836
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1840
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1844
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1848
    movz x9, #119
    str w9, [x15]
    add x15, x14, #1852
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1856
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1860
    movz x9, #85
    str w9, [x15]
    add x15, x14, #1864
    movz x9, #123
    str w9, [x15]
    add x15, x14, #1868
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1872
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1876
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1880
    movz x9, #126
    str w9, [x15]
    add x15, x14, #1884
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1888
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1892
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1896
    movz x9, #132
    str w9, [x15]
    add x15, x14, #1900
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1904
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1908
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1912
    movz x9, #140
    str w9, [x15]
    add x15, x14, #1916
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1920
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1924
    movz x9, #8
    str w9, [x15]
    add x15, x14, #1928
    movz x9, #145
    str w9, [x15]
    add x15, x14, #1932
    movz x9, #7
    str w9, [x15]
    add x15, x14, #1936
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #1940
    movz x9, #76
    str w9, [x15]
    add x15, x14, #1944
    movz x9, #77
    str w9, [x15]
    add x15, x14, #1948
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1952
    movz x9, #22
    str w9, [x15]
    add x15, x14, #1956
    movz x9, #78
    str w9, [x15]
    add x15, x14, #1960
    movz x9, #20
    str w9, [x15]
    add x15, x14, #1964
    movz x9, #21
    str w9, [x15]
    add x15, x14, #1968
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #1972
    movz x9, #17
    str w9, [x15]
    add x15, x14, #1976
    movz x9, #79
    str w9, [x15]
    add x15, x14, #1980
    movz x9, #78
    str w9, [x15]
    add x15, x14, #1984
    movz x9, #171
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #1988
    movz x9, #80
    str w9, [x15]
    add x15, x14, #1992
    movz x9, #81
    str w9, [x15]
    add x15, x14, #1996
    movz x9, #79
    str w9, [x15]
    add x15, x14, #2000
    movz x9, #48
    str w9, [x15]
    add x15, x14, #2004
    movz x9, #247
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2008
    movz x9, #83
    str w9, [x15]
    add x15, x14, #2012
    mov x9, #0
    str w9, [x15]
    add x15, x14, #2016
    movz x9, #250
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2020
    movz x9, #81
    str w9, [x15]
    add x15, x14, #2024
    movz x9, #82
    str w9, [x15]
    add x15, x14, #2028
    movz x9, #83
    str w9, [x15]
    add x15, x14, #2032
    movz x9, #248
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #2036
    movz x9, #82
    str w9, [x15]
    add x15, x14, #2040
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2044
    movz x9, #87
    str w9, [x15]
    add x15, x14, #2048
    movz x9, #90
    str w9, [x15]
    add x15, x14, #2052
    movz x9, #89
    str w9, [x15]
    add x15, x14, #2056
    movz x9, #79
    movk x9, #7, lsl #16
    str w9, [x15]
    add x15, x14, #2060
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2064
    movz x9, #91
    str w9, [x15]
    add x15, x14, #2068
    movz x9, #90
    str w9, [x15]
    add x15, x14, #2072
    movz x9, #90
    str w9, [x15]
    add x15, x14, #2076
    mov x9, #0
    str w9, [x15]
    add x15, x14, #2080
    movz x9, #1
    str w9, [x15]
    add x15, x14, #2084
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2088
    movz x9, #92
    str w9, [x15]
    add x15, x14, #2092
    movz x9, #93
    str w9, [x15]
    add x15, x14, #2096
    movz x9, #20
    str w9, [x15]
    add x15, x14, #2100
    movz x9, #15
    str w9, [x15]
    add x15, x14, #2104
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2108
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2112
    movz x9, #94
    str w9, [x15]
    add x15, x14, #2116
    movz x9, #93
    str w9, [x15]
    add x15, x14, #2120
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2124
    movz x9, #92
    str w9, [x15]
    add x15, x14, #2128
    movz x9, #96
    str w9, [x15]
    add x15, x14, #2132
    movz x9, #20
    str w9, [x15]
    add x15, x14, #2136
    movz x9, #95
    str w9, [x15]
    add x15, x14, #2140
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2144
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2148
    movz x9, #97
    str w9, [x15]
    add x15, x14, #2152
    movz x9, #96
    str w9, [x15]
    add x15, x14, #2156
    movz x9, #80
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2160
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2164
    movz x9, #98
    str w9, [x15]
    add x15, x14, #2168
    movz x9, #94
    str w9, [x15]
    add x15, x14, #2172
    movz x9, #97
    str w9, [x15]
    add x15, x14, #2176
    movz x9, #131
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2180
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2184
    movz x9, #99
    str w9, [x15]
    add x15, x14, #2188
    movz x9, #91
    str w9, [x15]
    add x15, x14, #2192
    movz x9, #98
    str w9, [x15]
    add x15, x14, #2196
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2200
    movz x9, #92
    str w9, [x15]
    add x15, x14, #2204
    movz x9, #101
    str w9, [x15]
    add x15, x14, #2208
    movz x9, #20
    str w9, [x15]
    add x15, x14, #2212
    movz x9, #100
    str w9, [x15]
    add x15, x14, #2216
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2220
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2224
    movz x9, #102
    str w9, [x15]
    add x15, x14, #2228
    movz x9, #101
    str w9, [x15]
    add x15, x14, #2232
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2236
    movz x9, #92
    str w9, [x15]
    add x15, x14, #2240
    movz x9, #104
    str w9, [x15]
    add x15, x14, #2244
    movz x9, #20
    str w9, [x15]
    add x15, x14, #2248
    movz x9, #103
    str w9, [x15]
    add x15, x14, #2252
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2256
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2260
    movz x9, #105
    str w9, [x15]
    add x15, x14, #2264
    movz x9, #104
    str w9, [x15]
    add x15, x14, #2268
    movz x9, #80
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2272
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2276
    movz x9, #106
    str w9, [x15]
    add x15, x14, #2280
    movz x9, #102
    str w9, [x15]
    add x15, x14, #2284
    movz x9, #105
    str w9, [x15]
    add x15, x14, #2288
    movz x9, #136
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2292
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2296
    movz x9, #107
    str w9, [x15]
    add x15, x14, #2300
    movz x9, #99
    str w9, [x15]
    add x15, x14, #2304
    movz x9, #106
    str w9, [x15]
    add x15, x14, #2308
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2312
    movz x9, #22
    str w9, [x15]
    add x15, x14, #2316
    movz x9, #108
    str w9, [x15]
    add x15, x14, #2320
    movz x9, #20
    str w9, [x15]
    add x15, x14, #2324
    movz x9, #21
    str w9, [x15]
    add x15, x14, #2328
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2332
    movz x9, #17
    str w9, [x15]
    add x15, x14, #2336
    movz x9, #109
    str w9, [x15]
    add x15, x14, #2340
    movz x9, #108
    str w9, [x15]
    add x15, x14, #2344
    movz x9, #112
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2348
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2352
    movz x9, #110
    str w9, [x15]
    add x15, x14, #2356
    movz x9, #109
    str w9, [x15]
    add x15, x14, #2360
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2364
    movz x9, #22
    str w9, [x15]
    add x15, x14, #2368
    movz x9, #111
    str w9, [x15]
    add x15, x14, #2372
    movz x9, #20
    str w9, [x15]
    add x15, x14, #2376
    movz x9, #28
    str w9, [x15]
    add x15, x14, #2380
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2384
    movz x9, #17
    str w9, [x15]
    add x15, x14, #2388
    movz x9, #112
    str w9, [x15]
    add x15, x14, #2392
    movz x9, #111
    str w9, [x15]
    add x15, x14, #2396
    movz x9, #112
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2400
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2404
    movz x9, #113
    str w9, [x15]
    add x15, x14, #2408
    movz x9, #112
    str w9, [x15]
    add x15, x14, #2412
    movz x9, #80
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2416
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2420
    movz x9, #114
    str w9, [x15]
    add x15, x14, #2424
    movz x9, #110
    str w9, [x15]
    add x15, x14, #2428
    movz x9, #113
    str w9, [x15]
    add x15, x14, #2432
    movz x9, #133
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2436
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2440
    movz x9, #115
    str w9, [x15]
    add x15, x14, #2444
    movz x9, #107
    str w9, [x15]
    add x15, x14, #2448
    movz x9, #114
    str w9, [x15]
    add x15, x14, #2452
    movz x9, #80
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2456
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2460
    movz x9, #117
    str w9, [x15]
    add x15, x14, #2464
    movz x9, #116
    str w9, [x15]
    add x15, x14, #2468
    movz x9, #116
    str w9, [x15]
    add x15, x14, #2472
    movz x9, #131
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2476
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2480
    movz x9, #118
    str w9, [x15]
    add x15, x14, #2484
    movz x9, #115
    str w9, [x15]
    add x15, x14, #2488
    movz x9, #117
    str w9, [x15]
    add x15, x14, #2492
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2496
    movz x9, #86
    str w9, [x15]
    add x15, x14, #2500
    movz x9, #118
    str w9, [x15]
    add x15, x14, #2504
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2508
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2512
    movz x9, #120
    str w9, [x15]
    add x15, x14, #2516
    movz x9, #86
    str w9, [x15]
    add x15, x14, #2520
    movz x9, #12
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #2524
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2528
    movz x9, #121
    str w9, [x15]
    add x15, x14, #2532
    movz x9, #1
    str w9, [x15]
    add x15, x14, #2536
    movz x9, #8
    str w9, [x15]
    add x15, x14, #2540
    movz x9, #120
    str w9, [x15]
    add x15, x14, #2544
    movz x9, #110
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2548
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2552
    movz x9, #122
    str w9, [x15]
    add x15, x14, #2556
    movz x9, #121
    str w9, [x15]
    add x15, x14, #2560
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2564
    movz x9, #119
    str w9, [x15]
    add x15, x14, #2568
    movz x9, #122
    str w9, [x15]
    add x15, x14, #2572
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2576
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2580
    movz x9, #124
    str w9, [x15]
    add x15, x14, #2584
    movz x9, #86
    str w9, [x15]
    add x15, x14, #2588
    movz x9, #12
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #2592
    movz x9, #84
    str w9, [x15]
    add x15, x14, #2596
    movz x9, #125
    str w9, [x15]
    add x15, x14, #2600
    movz x9, #1
    str w9, [x15]
    add x15, x14, #2604
    movz x9, #10
    str w9, [x15]
    add x15, x14, #2608
    movz x9, #124
    str w9, [x15]
    add x15, x14, #2612
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2616
    movz x9, #123
    str w9, [x15]
    add x15, x14, #2620
    movz x9, #125
    str w9, [x15]
    add x15, x14, #2624
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2628
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2632
    movz x9, #127
    str w9, [x15]
    add x15, x14, #2636
    movz x9, #119
    str w9, [x15]
    add x15, x14, #2640
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2644
    movz x9, #126
    str w9, [x15]
    add x15, x14, #2648
    movz x9, #127
    str w9, [x15]
    add x15, x14, #2652
    movz x9, #57
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2656
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2660
    movz x9, #128
    str w9, [x15]
    add x15, x14, #2664
    movz x9, #12
    str w9, [x15]
    add x15, x14, #2668
    movz x9, #126
    str w9, [x15]
    add x15, x14, #2672
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2676
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2680
    movz x9, #129
    str w9, [x15]
    add x15, x14, #2684
    movz x9, #119
    str w9, [x15]
    add x15, x14, #2688
    movz x9, #128
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2692
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2696
    movz x9, #131
    str w9, [x15]
    add x15, x14, #2700
    movz x9, #129
    str w9, [x15]
    add x15, x14, #2704
    movz x9, #130
    str w9, [x15]
    add x15, x14, #2708
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2712
    movz x9, #132
    str w9, [x15]
    add x15, x14, #2716
    movz x9, #131
    str w9, [x15]
    add x15, x14, #2720
    movz x9, #57
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2724
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2728
    movz x9, #133
    str w9, [x15]
    add x15, x14, #2732
    movz x9, #12
    str w9, [x15]
    add x15, x14, #2736
    movz x9, #132
    str w9, [x15]
    add x15, x14, #2740
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2744
    movz x9, #75
    str w9, [x15]
    add x15, x14, #2748
    movz x9, #134
    str w9, [x15]
    add x15, x14, #2752
    movz x9, #123
    str w9, [x15]
    add x15, x14, #2756
    movz x9, #48
    str w9, [x15]
    add x15, x14, #2760
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2764
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2768
    movz x9, #135
    str w9, [x15]
    add x15, x14, #2772
    movz x9, #134
    str w9, [x15]
    add x15, x14, #2776
    movz x9, #12
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #2780
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2784
    movz x9, #136
    str w9, [x15]
    add x15, x14, #2788
    movz x9, #1
    str w9, [x15]
    add x15, x14, #2792
    movz x9, #46
    str w9, [x15]
    add x15, x14, #2796
    movz x9, #128
    str w9, [x15]
    add x15, x14, #2800
    movz x9, #133
    str w9, [x15]
    add x15, x14, #2804
    movz x9, #135
    str w9, [x15]
    add x15, x14, #2808
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2812
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2816
    movz x9, #137
    str w9, [x15]
    add x15, x14, #2820
    movz x9, #119
    str w9, [x15]
    add x15, x14, #2824
    movz x9, #128
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2828
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2832
    movz x9, #139
    str w9, [x15]
    add x15, x14, #2836
    movz x9, #137
    str w9, [x15]
    add x15, x14, #2840
    movz x9, #138
    str w9, [x15]
    add x15, x14, #2844
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2848
    movz x9, #140
    str w9, [x15]
    add x15, x14, #2852
    movz x9, #139
    str w9, [x15]
    add x15, x14, #2856
    movz x9, #57
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2860
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2864
    movz x9, #141
    str w9, [x15]
    add x15, x14, #2868
    movz x9, #12
    str w9, [x15]
    add x15, x14, #2872
    movz x9, #140
    str w9, [x15]
    add x15, x14, #2876
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2880
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2884
    movz x9, #142
    str w9, [x15]
    add x15, x14, #2888
    movz x9, #119
    str w9, [x15]
    add x15, x14, #2892
    movz x9, #128
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2896
    movz x9, #7
    str w9, [x15]
    add x15, x14, #2900
    movz x9, #144
    str w9, [x15]
    add x15, x14, #2904
    movz x9, #142
    str w9, [x15]
    add x15, x14, #2908
    movz x9, #143
    str w9, [x15]
    add x15, x14, #2912
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #2916
    movz x9, #145
    str w9, [x15]
    add x15, x14, #2920
    movz x9, #144
    str w9, [x15]
    add x15, x14, #2924
    movz x9, #57
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2928
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2932
    movz x9, #146
    str w9, [x15]
    add x15, x14, #2936
    movz x9, #12
    str w9, [x15]
    add x15, x14, #2940
    movz x9, #145
    str w9, [x15]
    add x15, x14, #2944
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #2948
    movz x9, #75
    str w9, [x15]
    add x15, x14, #2952
    movz x9, #147
    str w9, [x15]
    add x15, x14, #2956
    movz x9, #123
    str w9, [x15]
    add x15, x14, #2960
    movz x9, #48
    str w9, [x15]
    add x15, x14, #2964
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #2968
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2972
    movz x9, #148
    str w9, [x15]
    add x15, x14, #2976
    movz x9, #147
    str w9, [x15]
    add x15, x14, #2980
    movz x9, #12
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #2984
    movz x9, #9
    str w9, [x15]
    add x15, x14, #2988
    movz x9, #149
    str w9, [x15]
    add x15, x14, #2992
    movz x9, #1
    str w9, [x15]
    add x15, x14, #2996
    movz x9, #46
    str w9, [x15]
    add x15, x14, #3000
    movz x9, #141
    str w9, [x15]
    add x15, x14, #3004
    movz x9, #146
    str w9, [x15]
    add x15, x14, #3008
    movz x9, #148
    str w9, [x15]
    add x15, x14, #3012
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3016
    movz x9, #75
    str w9, [x15]
    add x15, x14, #3020
    movz x9, #150
    str w9, [x15]
    add x15, x14, #3024
    movz x9, #123
    str w9, [x15]
    add x15, x14, #3028
    movz x9, #25
    str w9, [x15]
    add x15, x14, #3032
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3036
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3040
    movz x9, #151
    str w9, [x15]
    add x15, x14, #3044
    movz x9, #150
    str w9, [x15]
    add x15, x14, #3048
    movz x9, #12
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #3052
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3056
    movz x9, #152
    str w9, [x15]
    add x15, x14, #3060
    movz x9, #1
    str w9, [x15]
    add x15, x14, #3064
    movz x9, #46
    str w9, [x15]
    add x15, x14, #3068
    movz x9, #136
    str w9, [x15]
    add x15, x14, #3072
    movz x9, #149
    str w9, [x15]
    add x15, x14, #3076
    movz x9, #151
    str w9, [x15]
    add x15, x14, #3080
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #3084
    movz x9, #76
    str w9, [x15]
    add x15, x14, #3088
    movz x9, #152
    str w9, [x15]
    add x15, x14, #3092
    movz x9, #249
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #3096
    movz x9, #83
    str w9, [x15]
    add x15, x14, #3100
    movz x9, #248
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #3104
    movz x9, #83
    str w9, [x15]
    add x15, x14, #3108
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3112
    movz x9, #87
    str w9, [x15]
    add x15, x14, #3116
    movz x9, #157
    str w9, [x15]
    add x15, x14, #3120
    movz x9, #155
    str w9, [x15]
    add x15, x14, #3124
    movz x9, #79
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #3128
    movz x9, #156
    str w9, [x15]
    add x15, x14, #3132
    movz x9, #158
    str w9, [x15]
    add x15, x14, #3136
    movz x9, #157
    str w9, [x15]
    add x15, x14, #3140
    movz x9, #157
    str w9, [x15]
    add x15, x14, #3144
    mov x9, #0
    str w9, [x15]
    add x15, x14, #3148
    movz x9, #1
    str w9, [x15]
    add x15, x14, #3152
    movz x9, #2
    str w9, [x15]
    add x15, x14, #3156
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3160
    movz x9, #160
    str w9, [x15]
    add x15, x14, #3164
    movz x9, #161
    str w9, [x15]
    add x15, x14, #3168
    movz x9, #155
    str w9, [x15]
    add x15, x14, #3172
    movz x9, #159
    str w9, [x15]
    add x15, x14, #3176
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3180
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3184
    movz x9, #162
    str w9, [x15]
    add x15, x14, #3188
    movz x9, #161
    str w9, [x15]
    add x15, x14, #3192
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3196
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3200
    movz x9, #163
    str w9, [x15]
    add x15, x14, #3204
    movz x9, #76
    str w9, [x15]
    add x15, x14, #3208
    movz x9, #133
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3212
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3216
    movz x9, #164
    str w9, [x15]
    add x15, x14, #3220
    movz x9, #162
    str w9, [x15]
    add x15, x14, #3224
    movz x9, #163
    str w9, [x15]
    add x15, x14, #3228
    movz x9, #81
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3232
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3236
    movz x9, #165
    str w9, [x15]
    add x15, x14, #3240
    movz x9, #158
    str w9, [x15]
    add x15, x14, #3244
    mov x9, #0
    str w9, [x15]
    add x15, x14, #3248
    movz x9, #81
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3252
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3256
    movz x9, #166
    str w9, [x15]
    add x15, x14, #3260
    movz x9, #158
    str w9, [x15]
    add x15, x14, #3264
    movz x9, #1
    str w9, [x15]
    add x15, x14, #3268
    movz x9, #81
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3272
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3276
    movz x9, #167
    str w9, [x15]
    add x15, x14, #3280
    movz x9, #158
    str w9, [x15]
    add x15, x14, #3284
    movz x9, #2
    str w9, [x15]
    add x15, x14, #3288
    movz x9, #80
    movk x9, #7, lsl #16
    str w9, [x15]
    add x15, x14, #3292
    movz x9, #87
    str w9, [x15]
    add x15, x14, #3296
    movz x9, #168
    str w9, [x15]
    add x15, x14, #3300
    movz x9, #165
    str w9, [x15]
    add x15, x14, #3304
    movz x9, #166
    str w9, [x15]
    add x15, x14, #3308
    movz x9, #167
    str w9, [x15]
    add x15, x14, #3312
    movz x9, #164
    str w9, [x15]
    add x15, x14, #3316
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #3320
    movz x9, #154
    str w9, [x15]
    add x15, x14, #3324
    movz x9, #168
    str w9, [x15]
    add x15, x14, #3328
    movz x9, #253
    movk x9, #1, lsl #16
    str w9, [x15]
    add x15, x14, #3332
    movz x9, #56
    movk x9, #1, lsl #16
    str w9, [x15]
    add x15, x14, #3336
    movz x9, #54
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3340
    movz x9, #9
    str w9, [x15]
    add x15, x14, #3344
    movz x9, #12
    str w9, [x15]
    add x15, x14, #3348
    mov x9, #0
    str w9, [x15]
    add x15, x14, #3352
    movz x9, #10
    str w9, [x15]
    add x15, x14, #3356
    movz x9, #55
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #3360
    movz x9, #8
    str w9, [x15]
    add x15, x14, #3364
    movz x9, #11
    str w9, [x15]
    add x15, x14, #3368
    movz x9, #248
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #3372
    movz x9, #13
    str w9, [x15]
    add x15, x14, #3376
    movz x9, #59
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3380
    movz x9, #35
    str w9, [x15]
    add x15, x14, #3384
    movz x9, #36
    str w9, [x15]
    add x15, x14, #3388
    movz x9, #7
    str w9, [x15]
    add x15, x14, #3392
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3396
    movz x9, #7
    str w9, [x15]
    add x15, x14, #3400
    movz x9, #14
    str w9, [x15]
    add x15, x14, #3404
    movz x9, #11
    str w9, [x15]
    add x15, x14, #3408
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3412
    movz x9, #22
    str w9, [x15]
    add x15, x14, #3416
    movz x9, #23
    str w9, [x15]
    add x15, x14, #3420
    movz x9, #20
    str w9, [x15]
    add x15, x14, #3424
    movz x9, #21
    str w9, [x15]
    add x15, x14, #3428
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3432
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3436
    movz x9, #24
    str w9, [x15]
    add x15, x14, #3440
    movz x9, #23
    str w9, [x15]
    add x15, x14, #3444
    movz x9, #130
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3448
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3452
    movz x9, #26
    str w9, [x15]
    add x15, x14, #3456
    movz x9, #24
    str w9, [x15]
    add x15, x14, #3460
    movz x9, #25
    str w9, [x15]
    add x15, x14, #3464
    movz x9, #124
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3468
    movz x9, #6
    str w9, [x15]
    add x15, x14, #3472
    movz x9, #27
    str w9, [x15]
    add x15, x14, #3476
    movz x9, #26
    str w9, [x15]
    add x15, x14, #3480
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3484
    movz x9, #22
    str w9, [x15]
    add x15, x14, #3488
    movz x9, #29
    str w9, [x15]
    add x15, x14, #3492
    movz x9, #20
    str w9, [x15]
    add x15, x14, #3496
    movz x9, #28
    str w9, [x15]
    add x15, x14, #3500
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3504
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3508
    movz x9, #30
    str w9, [x15]
    add x15, x14, #3512
    movz x9, #29
    str w9, [x15]
    add x15, x14, #3516
    movz x9, #130
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3520
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3524
    movz x9, #31
    str w9, [x15]
    add x15, x14, #3528
    movz x9, #30
    str w9, [x15]
    add x15, x14, #3532
    movz x9, #25
    str w9, [x15]
    add x15, x14, #3536
    movz x9, #124
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3540
    movz x9, #6
    str w9, [x15]
    add x15, x14, #3544
    movz x9, #32
    str w9, [x15]
    add x15, x14, #3548
    movz x9, #31
    str w9, [x15]
    add x15, x14, #3552
    movz x9, #80
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3556
    movz x9, #7
    str w9, [x15]
    add x15, x14, #3560
    movz x9, #33
    str w9, [x15]
    add x15, x14, #3564
    movz x9, #27
    str w9, [x15]
    add x15, x14, #3568
    movz x9, #32
    str w9, [x15]
    add x15, x14, #3572
    movz x9, #12
    movk x9, #8, lsl #16
    str w9, [x15]
    add x15, x14, #3576
    movz x9, #7
    str w9, [x15]
    add x15, x14, #3580
    movz x9, #34
    str w9, [x15]
    add x15, x14, #3584
    movz x9, #1
    str w9, [x15]
    add x15, x14, #3588
    movz x9, #45
    str w9, [x15]
    add x15, x14, #3592
    movz x9, #14
    str w9, [x15]
    add x15, x14, #3596
    movz x9, #16
    str w9, [x15]
    add x15, x14, #3600
    movz x9, #33
    str w9, [x15]
    add x15, x14, #3604
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #3608
    movz x9, #11
    str w9, [x15]
    add x15, x14, #3612
    movz x9, #34
    str w9, [x15]
    add x15, x14, #3616
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3620
    movz x9, #22
    str w9, [x15]
    add x15, x14, #3624
    movz x9, #38
    str w9, [x15]
    add x15, x14, #3628
    movz x9, #20
    str w9, [x15]
    add x15, x14, #3632
    movz x9, #37
    str w9, [x15]
    add x15, x14, #3636
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3640
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3644
    movz x9, #39
    str w9, [x15]
    add x15, x14, #3648
    movz x9, #38
    str w9, [x15]
    add x15, x14, #3652
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3656
    movz x9, #40
    str w9, [x15]
    add x15, x14, #3660
    movz x9, #41
    str w9, [x15]
    add x15, x14, #3664
    movz x9, #11
    str w9, [x15]
    add x15, x14, #3668
    movz x9, #25
    str w9, [x15]
    add x15, x14, #3672
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3676
    movz x9, #6
    str w9, [x15]
    add x15, x14, #3680
    movz x9, #42
    str w9, [x15]
    add x15, x14, #3684
    movz x9, #41
    str w9, [x15]
    add x15, x14, #3688
    movz x9, #124
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3692
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3696
    movz x9, #43
    str w9, [x15]
    add x15, x14, #3700
    movz x9, #42
    str w9, [x15]
    add x15, x14, #3704
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3708
    movz x9, #22
    str w9, [x15]
    add x15, x14, #3712
    movz x9, #44
    str w9, [x15]
    add x15, x14, #3716
    movz x9, #20
    str w9, [x15]
    add x15, x14, #3720
    movz x9, #21
    str w9, [x15]
    add x15, x14, #3724
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3728
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3732
    movz x9, #45
    str w9, [x15]
    add x15, x14, #3736
    movz x9, #44
    str w9, [x15]
    add x15, x14, #3740
    movz x9, #132
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3744
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3748
    movz x9, #46
    str w9, [x15]
    add x15, x14, #3752
    movz x9, #43
    str w9, [x15]
    add x15, x14, #3756
    movz x9, #45
    str w9, [x15]
    add x15, x14, #3760
    movz x9, #128
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3764
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3768
    movz x9, #47
    str w9, [x15]
    add x15, x14, #3772
    movz x9, #39
    str w9, [x15]
    add x15, x14, #3776
    movz x9, #46
    str w9, [x15]
    add x15, x14, #3780
    movz x9, #65
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3784
    movz x9, #40
    str w9, [x15]
    add x15, x14, #3788
    movz x9, #49
    str w9, [x15]
    add x15, x14, #3792
    movz x9, #11
    str w9, [x15]
    add x15, x14, #3796
    movz x9, #48
    str w9, [x15]
    add x15, x14, #3800
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3804
    movz x9, #6
    str w9, [x15]
    add x15, x14, #3808
    movz x9, #50
    str w9, [x15]
    add x15, x14, #3812
    movz x9, #49
    str w9, [x15]
    add x15, x14, #3816
    movz x9, #124
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3820
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3824
    movz x9, #51
    str w9, [x15]
    add x15, x14, #3828
    movz x9, #50
    str w9, [x15]
    add x15, x14, #3832
    movz x9, #128
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3836
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3840
    movz x9, #52
    str w9, [x15]
    add x15, x14, #3844
    movz x9, #47
    str w9, [x15]
    add x15, x14, #3848
    movz x9, #51
    str w9, [x15]
    add x15, x14, #3852
    movz x9, #62
    movk x9, #3, lsl #16
    str w9, [x15]
    add x15, x14, #3856
    movz x9, #36
    str w9, [x15]
    add x15, x14, #3860
    movz x9, #52
    str w9, [x15]
    add x15, x14, #3864
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3868
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3872
    movz x9, #57
    str w9, [x15]
    add x15, x14, #3876
    movz x9, #36
    str w9, [x15]
    add x15, x14, #3880
    movz x9, #134
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3884
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3888
    movz x9, #59
    str w9, [x15]
    add x15, x14, #3892
    movz x9, #57
    str w9, [x15]
    add x15, x14, #3896
    movz x9, #58
    str w9, [x15]
    add x15, x14, #3900
    movz x9, #65
    movk x9, #6, lsl #16
    str w9, [x15]
    add x15, x14, #3904
    movz x9, #60
    str w9, [x15]
    add x15, x14, #3908
    movz x9, #61
    str w9, [x15]
    add x15, x14, #3912
    movz x9, #56
    str w9, [x15]
    add x15, x14, #3916
    movz x9, #15
    str w9, [x15]
    add x15, x14, #3920
    movz x9, #59
    str w9, [x15]
    add x15, x14, #3924
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3928
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3932
    movz x9, #62
    str w9, [x15]
    add x15, x14, #3936
    movz x9, #61
    str w9, [x15]
    add x15, x14, #3940
    movz x9, #61
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #3944
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3948
    movz x9, #63
    str w9, [x15]
    add x15, x14, #3952
    movz x9, #36
    str w9, [x15]
    add x15, x14, #3956
    movz x9, #137
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3960
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3964
    movz x9, #64
    str w9, [x15]
    add x15, x14, #3968
    movz x9, #63
    str w9, [x15]
    add x15, x14, #3972
    movz x9, #58
    str w9, [x15]
    add x15, x14, #3976
    movz x9, #132
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #3980
    movz x9, #17
    str w9, [x15]
    add x15, x14, #3984
    movz x9, #66
    str w9, [x15]
    add x15, x14, #3988
    movz x9, #64
    str w9, [x15]
    add x15, x14, #3992
    movz x9, #65
    str w9, [x15]
    add x15, x14, #3996
    movz x9, #194
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #4000
    movz x9, #17
    str w9, [x15]
    add x15, x14, #4004
    movz x9, #67
    str w9, [x15]
    add x15, x14, #4008
    movz x9, #62
    str w9, [x15]
    add x15, x14, #4012
    movz x9, #66
    str w9, [x15]
    add x15, x14, #4016
    movz x9, #199
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #4020
    movz x9, #17
    str w9, [x15]
    add x15, x14, #4024
    movz x9, #69
    str w9, [x15]
    add x15, x14, #4028
    movz x9, #67
    str w9, [x15]
    add x15, x14, #4032
    movz x9, #68
    str w9, [x15]
    add x15, x14, #4036
    movz x9, #112
    movk x9, #4, lsl #16
    str w9, [x15]
    add x15, x14, #4040
    movz x9, #9
    str w9, [x15]
    add x15, x14, #4044
    movz x9, #70
    str w9, [x15]
    add x15, x14, #4048
    movz x9, #69
    str w9, [x15]
    add x15, x14, #4052
    movz x9, #136
    movk x9, #5, lsl #16
    str w9, [x15]
    add x15, x14, #4056
    movz x9, #9
    str w9, [x15]
    add x15, x14, #4060
    movz x9, #72
    str w9, [x15]
    add x15, x14, #4064
    movz x9, #70
    str w9, [x15]
    add x15, x14, #4068
    movz x9, #71
    str w9, [x15]
    add x15, x14, #4072
    movz x9, #254
    movk x9, #2, lsl #16
    str w9, [x15]
    add x15, x14, #4076
    movz x9, #72
    str w9, [x15]
    add x15, x14, #4080
    movz x9, #56
    movk x9, #1, lsl #16
    str w9, [x15]
    adrp x15, _lb_gpu_17vulkan_frag_words@PAGE
    add x15, x15, _lb_gpu_17vulkan_frag_words@PAGEOFF
    mov x0, x15
    mov x1, x14
    movz x2, #4084
    bl _memcpy
    movz x16, #5368
    sub x14, x29, x16
    ldr x15, [x19]
    str x15, [x14]
    ldr x15, [x20]
    add x19, x14, #8
    str x15, [x19]
    adrp x15, _lb_gpu_25vulkan_windows_extensions@PAGE
    add x15, x15, _lb_gpu_25vulkan_windows_extensions@PAGEOFF
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L0_2:
    adrp x14, _lb_gpu_22vulkan_api_version_1_0@PAGE
    add x14, x14, _lb_gpu_22vulkan_api_version_1_0@PAGEOFF
    movz x9, #64, lsl #16
    str w9, [x14]
    ldr x19, [sp, #5352]
    ldr x20, [sp, #5344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_12check_thread
_lb_gpu_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    mov x9, #0
    sub x10, x29, #112
    str w9, [x10]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L1_9
    b L1_17
L1_17:
    mov w15, w14
    b L1_10
L1_9:
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    ldrb w15, [x14]
L1_10:
    and w14, w15, #255
    cbnz w14, L1_11
    b L1_18
L1_18:
    mov w15, w14
    b L1_12
L1_11:
    sub x14, x29, #112
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_19
    b L1_13
L1_19:
    mov w14, w15
    b L1_14
L1_13:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L1_14:
    and w15, w14, #255
L1_12:
    and w14, w15, #255
    and w14, w14, #255
    sub x10, x29, #120
    str w14, [x10]
    b L1_16
L1_15:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L1_16:
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_unsupported@PAGE
    add x14, x14, _lb_gpu_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    bl _pthread_main_np
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_6
L1_5:
    sub x19, x29, #64
    adrp x14, _lb_gpu_12wrong_thread@PAGE
    add x14, x14, _lb_gpu_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    b L1_7
L1_6:
L1_7:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_11check_color
_lb_gpu_11check_color:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #88
    str d0, [x16, #0]
    sub x16, x29, #88
    str d1, [x16, #8]
    sub x16, x29, #88
    str d2, [x16, #16]
    sub x14, x29, #88
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w15, ge
    cbnz w15, L2_4
    b L2_15
L2_15:
    mov w19, w15
    b L2_5
L2_4:
    movz x9, #16368, lsl #48
    fmov d26, x9
    fcmp d24, d26
    cset w19, ls
L2_5:
    and w15, w19, #255
    cbnz w15, L2_6
    b L2_16
L2_16:
    mov w19, w15
    b L2_7
L2_6:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ge
L2_7:
    and w15, w19, #255
    cbnz w15, L2_8
    b L2_17
L2_17:
    mov w19, w15
    b L2_9
L2_8:
    add x15, x14, #8
    ldr d24, [x15]
    movz x9, #16368, lsl #48
    fmov d26, x9
    fcmp d24, d26
    cset w19, ls
L2_9:
    and w15, w19, #255
    cbnz w15, L2_10
    b L2_18
L2_18:
    mov w19, w15
    b L2_11
L2_10:
    add x15, x14, #16
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ge
L2_11:
    and w15, w19, #255
    cbnz w15, L2_12
    b L2_19
L2_19:
    mov w14, w15
    b L2_13
L2_12:
    add x15, x14, #16
    ldr d24, [x15]
    movz x9, #16368, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
    mov w14, w15
L2_13:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L2_2
L2_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_13invalid_color@PAGE
    add x14, x14, _lb_gpu_13invalid_color@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_14:
    b L2_3
L2_2:
L2_3:
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Device_open
_lb_gpu_Device_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #800
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #768]
    str x20, [sp, #760]
    str x21, [sp, #752]
    str x22, [sp, #744]
    str x23, [sp, #736]
    str x24, [sp, #728]
    sub x16, x29, #128
    str w0, [x16]
    sub x8, x29, #160
    bl _lb_gpu_12check_thread
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    sub x19, x29, #112
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
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    sub x14, x29, #128
    ldrb w14, [x14]
    sub x10, x29, #408
    str w14, [x10]
    sub x14, x29, #408
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L3_70
    b L3_22
L3_70:
    mov w14, w15
    b L3_23
L3_22:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L3_23:
    and w15, w14, #255
    cbnz w15, L3_19
    b L3_20
L3_19:
    sub x14, x29, #392
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_26
L3_24:
    b L3_21
L3_20:
L3_21:
    sub x19, x29, #392
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_104@PAGE
    add x15, x15, l_text_104@PAGEOFF
    sub x20, x29, #424
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_26
L3_25:
    adrp x0, l_text_105@PAGE
    add x0, x0, l_text_105@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_26:
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_5
    b L3_4
L3_5:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_4:
    ldrb w14, [x15]
    and w19, w14, #255
    sub x10, x29, #480
    str w19, [x10]
    sub x14, x29, #480
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L3_28
L3_27:
    bl _objc_autoreleasePoolPush
    mov x20, x0
    cbnz x20, L3_35
    b L3_36
L3_36:
    adrp x0, l_text_121@PAGE
    add x0, x0, l_text_121@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L3_35:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x21, x29, #592
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #632
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, L3_37
    b L3_38
L3_38:
    adrp x0, l_text_122@PAGE
    add x0, x0, l_text_122@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L3_37:
    ldr x21, [x15]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #16
    movz x2, #8
    sub x8, x29, #656
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #656
    add x21, x23, #16
    ldrb w21, [x21]
    cbnz w21, L3_39
    b L3_40
L3_40:
    add x14, x22, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    b L3_41
L3_39:
    ldr x21, [x23]
    sub x24, x29, #672
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    mov x10, x24
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    str x21, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
L3_41:
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L3_43
    b L3_42
L3_43:
    add x14, x22, #8
    sub x21, x29, #576
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x21
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_63
L3_44:
L3_42:
    ldr x21, [x22]
    bl _MTLCreateSystemDefaultDevice
    mov x23, x0
    cbnz x23, L3_45
    b L3_46
L3_45:
    b L3_47
L3_46:
    sub x22, x29, #576
    add x14, x22, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_123@PAGE
    add x15, x15, l_text_123@PAGEOFF
    sub x23, x29, #688
    str x15, [x23]
    add x15, x23, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_gpu_20metal_device_destroy
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_63
L3_48:
L3_47:
    str x23, [x21]
    add x22, x21, #8
    sub x10, x29, #720
    str x23, [x10]
    cbnz x23, L3_54
    b L3_55
L3_54:
    b L3_56
L3_55:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #736
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_56:
    b L3_58
L3_57:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_58:
    adrp x14, l_text_124@PAGE
    add x14, x14, l_text_124@PAGEOFF
    sub x10, x29, #752
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L3_59
    b L3_60
L3_60:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L3_59:
    b L3_62
L3_61:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_62:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L3_49
    b L3_50
L3_49:
    b L3_51
L3_50:
    sub x22, x29, #576
    add x14, x22, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_125@PAGE
    add x15, x15, l_text_125@PAGEOFF
    sub x23, x29, #704
    str x15, [x23]
    add x15, x23, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_gpu_20metal_device_destroy
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_63
L3_52:
L3_51:
    str x15, [x22]
    sub x23, x29, #576
    str x21, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x20
    bl _objc_autoreleasePoolPop
    mov x10, x23
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_63
L3_53:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_126@PAGE
    add x0, x0, l_text_126@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_63:
    sub x15, x29, #520
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_31
    b L3_30
L3_31:
    add x14, x15, #8
    sub x20, x29, #464
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_64
L3_32:
L3_30:
    ldr x14, [x15]
    sub x20, x29, #464
    str x14, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_64
L3_33:
    b L3_29
L3_28:
L3_29:
    sub x20, x29, #464
    add x14, x20, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_106@PAGE
    add x15, x15, l_text_106@PAGEOFF
    sub x21, x29, #536
    str x15, [x21]
    add x15, x21, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L3_64
L3_34:
    adrp x0, l_text_107@PAGE
    add x0, x0, l_text_107@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_64:
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_8
    b L3_7
L3_8:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_7:
    ldr x20, [x15]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x21, x29, #256
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #296
    ldr x14, [x21]
    add x21, x21, #8
    ldr x21, [x21]
    cbnz x21, L3_10
    b L3_11
L3_11:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L3_10:
    ldr x15, [x21]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #24
    movz x2, #8
    sub x8, x29, #320
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #320
    add x15, x23, #16
    ldrb w15, [x15]
    cbnz w15, L3_12
    b L3_13
L3_13:
    add x14, x22, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    b L3_14
L3_12:
    ldr x21, [x23]
    sub x24, x29, #344
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    strb w19, [x24]
    add x14, x24, #8
    str x20, [x14]
    add x14, x24, #16
    movz x9, #1
    str x9, [x14]
    mov x10, x24
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    str x21, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
L3_14:
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L3_16
    b L3_15
L3_16:
    add x14, x22, #8
    sub x21, x29, #112
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #768
    str w19, [x10]
    sub x10, x29, #784
    str x20, [x10]
    sub x14, x29, #768
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L3_66
L3_65:
    mov x0, x20
    bl _lb_gpu_20metal_device_destroy
    b L3_69
L3_68:
    b L3_67
L3_66:
L3_67:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x15, x29, #800
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L3_69:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_17:
L3_15:
    ldr x19, [x22]
    sub x20, x29, #352
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x19, x29, #112
    mov x10, x20
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_18:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Device_backend
_lb_gpu_Device_backend:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_gpu_Device_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldr x14, [x15]
    ldrb w14, [x14]
    sub x19, x29, #80
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Device_destroy
_lb_gpu_Device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L5_1
    b L5_2
L5_1:
    b L5_3
L5_2:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
L5_3:
    sub x8, x29, #96
    bl _lb_gpu_12check_thread
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_8
    b L5_7
L5_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_5
L5_7:
    b L5_6
L5_5:
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L5_6:
L5_9:
    mov x9, #0
    str x9, [x19]
    mov x0, x20
    bl _lb_gpu_14release_device
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Device_checked
_lb_gpu_Device_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    sub x8, x29, #120
    bl _lb_gpu_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    sub x19, x29, #80
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    ldr x14, [x19]
    cbnz x14, L6_4
    b L6_5
L6_4:
    b L6_6
L6_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_closed@PAGE
    add x15, x15, _lb_gpu_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #24
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
L6_6:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_8:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_14release_device
_lb_gpu_14release_device:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    add x14, x19, #16
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L7_2
L7_1:
    ldrb w14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    sub x10, x29, #80
    str w14, [x10]
    sub x10, x29, #96
    str x15, [x10]
    sub x14, x29, #80
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L7_7
L7_6:
    mov x0, x15
    bl _lb_gpu_20metal_device_destroy
    b L7_10
L7_9:
    b L7_8
L7_7:
L7_8:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L7_10:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #64
    str x19, [x15]
    add x20, x15, #8
    movz x9, #24
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L7_5
    b L7_4
L7_5:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_4:
    b L7_3
L7_2:
L7_3:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Canvas_count
_lb_gpu_Canvas_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #32
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_1:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Canvas_clear
_lb_gpu_Canvas_clear:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    add x14, x15, #32
    mov x9, #0
    str x9, [x14]
    add x14, x15, #40
    mov x9, #0
    str x9, [x14]
    add x14, x15, #64
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Canvas_triangles
_lb_gpu_Canvas_triangles:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #928
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #896]
    str x20, [sp, #888]
    str x21, [sp, #880]
    str x22, [sp, #872]
    str x23, [sp, #864]
    str x24, [sp, #856]
    str x25, [sp, #848]
    str x26, [sp, #840]
    str x27, [sp, #832]
    str x28, [sp, #824]
    str d8, [sp, #816]
    str d9, [sp, #808]
    str d10, [sp, #800]
    str d11, [sp, #792]
    str d12, [sp, #784]
    str d13, [sp, #776]
    str d14, [sp, #768]
    str d15, [sp, #760]
    sub x16, x29, #208
    str x0, [x16]
    sub x16, x29, #224
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #240
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #256
    str w5, [x16]
    sub x16, x29, #296
    str x6, [x16]
    sub x0, x29, #296
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #208
    ldr x9, [x9]
    str x9, [sp, #24]
    sub x9, x29, #224
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #8
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    ldr x22, [x9]
L10_5:
    movz x10, #3
    udiv x11, x22, x10
    msub x14, x11, x10, x22
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L10_2
L10_1:
    sub x19, x29, #200
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_2:
L10_3:
    ldr x9, [sp, #120]
    ldr x23, [x9]
    sub x24, x29, #344
    sub x25, x29, #792
    add x26, x25, #4
    add x27, x25, #8
    add x28, x25, #12
    add x21, x25, #16
    mov x9, #0
    fmov s8, w9
    add x9, x25, #16
    str x9, [sp, #80]
    movz x9, #16256, lsl #16
    fmov s9, w9
    add x9, x25, #20
    str x9, [sp, #72]
    mov x9, #0
    fmov s10, w9
    add x9, x25, #20
    str x9, [sp, #64]
    movz x9, #16256, lsl #16
    fmov s11, w9
    add x9, x25, #24
    str x9, [sp, #56]
    mov x9, #0
    fmov s12, w9
    add x9, x25, #24
    str x9, [sp, #48]
    movz x9, #16256, lsl #16
    fmov s13, w9
    add x9, x25, #28
    str x9, [sp, #40]
    mov x9, #0
    fmov s14, w9
    add x9, x25, #28
    str x9, [sp, #32]
    movz x9, #16256, lsl #16
    fmov s15, w9
    mov x9, #0
    mov x20, x9
L10_7:
    cmp x20, x22
    b.hs L10_10
L10_8:
    lsl x14, x20, #5
    add x14, x23, x14
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x10, x24
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr s24, [x25]
    fmov s16, s24
    fmov s0, s16
    bl _lb_math32_9is_finite
    mov w14, w0
    cbnz w14, L10_101
    b L10_125
L10_125:
    mov w15, w14
    b L10_102
L10_101:
    ldr s24, [x26]
    fmov s16, s24
    fmov s0, s16
    bl _lb_math32_9is_finite
    mov w15, w0
L10_102:
    and w14, w15, #255
    cbnz w14, L10_103
    b L10_126
L10_126:
    mov w15, w14
    b L10_104
L10_103:
    ldr s24, [x27]
    fmov s16, s24
    fmov s0, s16
    bl _lb_math32_9is_finite
    mov w15, w0
L10_104:
    and w14, w15, #255
    cbnz w14, L10_105
    b L10_127
L10_127:
    mov w15, w14
    b L10_106
L10_105:
    ldr s24, [x28]
    fmov s16, s24
    fmov s0, s16
    bl _lb_math32_9is_finite
    mov w15, w0
L10_106:
    and w14, w15, #255
    cbnz w14, L10_107
    b L10_128
L10_128:
    mov w15, w14
    b L10_108
L10_107:
    ldr s24, [x21]
    fcmp s24, s8
    cset w15, ge
L10_108:
    and w14, w15, #255
    cbnz w14, L10_109
    b L10_129
L10_129:
    mov w15, w14
    b L10_110
L10_109:
    ldr x9, [sp, #80]
    ldr s24, [x9]
    fcmp s24, s9
    cset w15, ls
L10_110:
    and w14, w15, #255
    cbnz w14, L10_111
    b L10_130
L10_130:
    mov w15, w14
    b L10_112
L10_111:
    ldr x9, [sp, #72]
    ldr s24, [x9]
    fcmp s24, s10
    cset w15, ge
L10_112:
    and w14, w15, #255
    cbnz w14, L10_113
    b L10_131
L10_131:
    mov w15, w14
    b L10_114
L10_113:
    ldr x9, [sp, #64]
    ldr s24, [x9]
    fcmp s24, s11
    cset w15, ls
L10_114:
    and w14, w15, #255
    cbnz w14, L10_115
    b L10_132
L10_132:
    mov w15, w14
    b L10_116
L10_115:
    ldr x9, [sp, #56]
    ldr s24, [x9]
    fcmp s24, s12
    cset w15, ge
L10_116:
    and w14, w15, #255
    cbnz w14, L10_117
    b L10_133
L10_133:
    mov w15, w14
    b L10_118
L10_117:
    ldr x9, [sp, #48]
    ldr s24, [x9]
    fcmp s24, s13
    cset w15, ls
L10_118:
    and w14, w15, #255
    cbnz w14, L10_119
    b L10_134
L10_134:
    mov w15, w14
    b L10_120
L10_119:
    ldr x9, [sp, #40]
    ldr s24, [x9]
    fcmp s24, s14
    cset w15, ge
L10_120:
    and w14, w15, #255
    cbnz w14, L10_121
    b L10_135
L10_135:
    mov w15, w14
    b L10_122
L10_121:
    ldr x9, [sp, #32]
    ldr s24, [x9]
    fcmp s24, s15
    cset w15, ls
L10_122:
    and w14, w15, #255
    and w14, w14, #255
    sub x10, x29, #800
    str w14, [x10]
L10_124:
    mov x10, #0
    cmp w14, w10
    b.ne L10_12
L10_11:
    sub x19, x29, #200
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #360
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_12:
L10_13:
L10_9:
    add x14, x20, #1
    mov x20, x14
    b L10_7
L10_10:
    sub x9, x29, #296
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x14, x9, #32
    ldrb w14, [x14]
    cbnz w14, L10_18
    b L10_16
L10_18:
    sub x21, x29, #392
    ldr x10, [sp, #16]
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L10_15:
    ldr d24, [x21]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fneg d26, d25
    fcmp d24, d26
    cset w14, ge
    cbnz w14, L10_22
    b L10_136
L10_136:
    mov w15, w14
    b L10_23
L10_22:
    fcmp d24, d25
    cset w15, ls
L10_23:
    and w14, w15, #255
    cbnz w14, L10_24
    b L10_137
L10_137:
    mov w15, w14
    b L10_25
L10_24:
    add x14, x21, #8
    ldr d24, [x14]
    fcmp d24, d26
    cset w15, ge
L10_25:
    and w14, w15, #255
    cbnz w14, L10_26
    b L10_138
L10_138:
    mov w15, w14
    b L10_27
L10_26:
    add x14, x21, #8
    ldr d24, [x14]
    fcmp d24, d25
    cset w15, ls
L10_27:
    and w14, w15, #255
    cbnz w14, L10_28
    b L10_139
L10_139:
    mov w15, w14
    b L10_29
L10_28:
    add x14, x21, #16
    ldr d24, [x14]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, ge
L10_29:
    and w14, w15, #255
    cbnz w14, L10_30
    b L10_140
L10_140:
    mov w15, w14
    b L10_31
L10_30:
    add x14, x21, #16
    ldr d24, [x14]
    fcmp d24, d25
    cset w15, ls
L10_31:
    and w14, w15, #255
    cbnz w14, L10_32
    b L10_141
L10_141:
    mov w15, w14
    b L10_33
L10_32:
    add x14, x21, #24
    ldr d24, [x14]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, ge
L10_33:
    and w14, w15, #255
    cbnz w14, L10_34
    b L10_142
L10_142:
    mov w15, w14
    b L10_35
L10_34:
    add x14, x21, #24
    ldr d24, [x14]
    fcmp d24, d25
    cset w15, ls
L10_35:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L10_20
L10_19:
    sub x19, x29, #200
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    sub x15, x29, #408
    str x14, [x15]
    add x14, x15, #8
    movz x9, #77
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_20:
L10_21:
    add x14, x21, #16
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, eq
    cbnz w14, L10_143
    b L10_40
L10_143:
    mov w15, w14
    b L10_41
L10_40:
    add x14, x21, #24
    ldr d24, [x14]
    fcmp d25, d24
    cset w15, eq
L10_41:
    and w14, w15, #255
    cbnz w14, L10_37
    b L10_38
L10_37:
    sub x14, x29, #200
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_38:
L10_39:
    b L10_17
L10_16:
L10_17:
    ldr x9, [sp, #112]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, L10_144
    b L10_46
L10_144:
    mov w21, w15
    b L10_47
L10_46:
    sub x15, x29, #240
    add x15, x15, #8
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w21, eq
L10_47:
    and w15, w21, #255
    cbnz w15, L10_145
    b L10_48
L10_145:
    mov w21, w15
    b L10_49
L10_48:
    sub x15, x29, #240
    add x15, x15, #12
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w21, eq
L10_49:
    and w15, w21, #255
    cbnz w15, L10_43
    b L10_44
L10_43:
    sub x14, x29, #200
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_44:
L10_45:
    ldr x9, [sp, #24]
    add x9, x9, #32
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    ldr x15, [x9]
    movz x9, #16, lsl #16
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    cmp x14, x22
    cset w22, hi
    cbnz w22, L10_146
    b L10_54
L10_146:
    mov w23, w22
    b L10_55
L10_54:
    ldr x9, [sp, #24]
    add x22, x9, #40
    ldr x22, [x22]
    movz x10, #4096
    cmp x22, x10
    cset w23, eq
L10_55:
    and w22, w23, #255
    cbnz w22, L10_51
    b L10_52
L10_51:
    sub x19, x29, #200
    adrp x14, _lb_gpu_13command_limit@PAGE
    add x14, x14, _lb_gpu_13command_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    sub x15, x29, #424
    str x14, [x15]
    add x14, x15, #8
    movz x9, #57
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_52:
L10_53:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #96]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    ldr x24, [x9]
    ldr x9, [sp, #96]
    cmp x9, x24
    b.ls L10_58
L10_57:
    mov x9, x24
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #256
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    movz x0, #16, lsl #16
    mov x1, x14
    bl _lb_gpu_10canvas_min
    mov x14, x0
    ldr x0, [sp, #96]
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x25, x0
    sub x26, x29, #440
    adrp x27, _lb_memory_heap@PAGE
    add x27, x27, _lb_memory_heap@PAGEOFF
    sub x28, x29, #488
    movz x10, #512, lsl #48
    cmp x25, x10
    b.ls L10_61
L10_60:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b L10_62
L10_61:
    lsl x24, x25, #5
    ldr x14, [x27]
    add x15, x27, #8
    ldr x15, [x15]
    cbnz x15, L10_63
    b L10_64
L10_64:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L10_63:
    ldr x22, [x15]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #4
    sub x8, x29, #512
    ldr x17, [sp], #16
    blr x17
    sub x19, x29, #512
    add x22, x19, #16
    ldrb w22, [x22]
    mov x10, #0
    cmp x24, x10
    cset w20, ne
    mov x10, #0
    cmp w22, w10
    cset w22, eq
    and w20, w20, w22
    cbnz w20, L10_65
    b L10_66
L10_65:
    add x14, x28, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x28, #40
    movz x9, #1
    strb w9, [x14]
    b L10_62
L10_66:
    ldr x14, [x19]
    str x14, [x28]
    add x14, x28, #8
    str x25, [x14]
    add x14, x28, #40
    mov x9, #0
    strb w9, [x14]
L10_62:
    add x14, x28, #40
    ldrb w14, [x14]
    cbnz w14, L10_68
    b L10_67
L10_68:
    add x14, x28, #16
    sub x19, x29, #200
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_67:
    mov x10, x28
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #104]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L10_71
L10_70:
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #24]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_gpu_Vertex
    b L10_72
L10_71:
L10_72:
    ldr x9, [sp, #88]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L10_74
L10_73:
    sub x15, x29, #528
    ldr x9, [sp, #24]
    ldr x19, [x9]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x19, [x15]
    add x19, x15, #8
    str x20, [x19]
    ldr x19, [x27]
    add x20, x27, #8
    ldr x20, [x20]
    cbnz x20, L10_77
    b L10_76
L10_77:
    add x14, x20, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_76:
    b L10_75
L10_74:
L10_75:
    mov x10, x26
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L10_59
L10_58:
L10_59:
    ldr x9, [sp, #24]
    add x19, x9, #40
    ldr x14, [x19]
    ldr x9, [sp, #24]
    add x20, x9, #16
    add x22, x20, #8
    ldr x15, [x22]
    cmp x14, x15
    b.ne L10_79
L10_78:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #16
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x24, x0
    sub x25, x29, #544
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #8]
    sub x27, x29, #592
    movz x10, #9362
    movk x10, #37449, lsl #16
    movk x10, #18724, lsl #32
    movk x10, #146, lsl #48
    cmp x24, x10
    b.ls L10_82
L10_81:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L10_83
L10_82:
    movz x10, #112
    mul x28, x24, x10
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L10_84
    b L10_85
L10_85:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L10_84:
    ldr x21, [x15]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x28
    movz x2, #8
    sub x8, x29, #616
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #616
    add x21, x26, #16
    ldrb w21, [x21]
    mov x10, #0
    cmp x28, x10
    cset w23, ne
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    and w21, w23, w21
    cbnz w21, L10_86
    b L10_87
L10_86:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L10_83
L10_87:
    ldr x14, [x26]
    str x14, [x27]
    add x14, x27, #8
    str x24, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
L10_83:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, L10_89
    b L10_88
L10_89:
    add x14, x27, #16
    sub x19, x29, #200
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_88:
    mov x10, x27
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ls L10_92
L10_91:
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_gpu_Draw
    b L10_93
L10_92:
L10_93:
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L10_95
L10_94:
    sub x15, x29, #632
    ldr x21, [x20]
    mov x9, x14
    movz x10, #112
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x21, [x15]
    add x21, x15, #8
    str x23, [x21]
    ldr x9, [sp, #8]
    ldr x21, [x9]
    ldr x9, [sp, #8]
    add x23, x9, #8
    ldr x23, [x23]
    cbnz x23, L10_98
    b L10_97
L10_98:
    add x14, x23, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_97:
    b L10_96
L10_95:
L10_96:
    mov x10, x25
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L10_80
L10_79:
L10_80:
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #88]
    ldr x21, [x9]
    ldr x9, [sp, #104]
    ldr x23, [x9]
    add x14, x21, #1
    cmp x23, x14
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x21
    b.ls L10_99
L10_100:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
L10_99:
    lsl x14, x23, #5
    add x14, x14, x15
    sub x24, x21, x23
    sub x25, x29, #648
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    ldr x9, [sp, #112]
    ldr x14, [x9]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #120]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_gpu_Vertex
    ldr x14, [x19]
    ldr x24, [x20]
    ldr x25, [x22]
    cmp x14, x25
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #112
    mul x14, x14, x10
    add x24, x24, x14
    sub x25, x29, #760
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    ldr x9, [sp, #104]
    ldr x14, [x9]
    str x14, [x25]
    ldr x9, [sp, #112]
    ldr x14, [x9]
    add x26, x25, #8
    str x14, [x26]
    sub x14, x29, #240
    add x26, x25, #16
    mov x10, x14
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #256
    ldrb w14, [x14]
    add x26, x25, #32
    strb w14, [x26]
    add x14, x25, #40
    ldr x10, [sp, #16]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
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
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldr x9, [sp, #96]
    ldr x10, [sp, #104]
    str x9, [x10]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    sub x14, x29, #200
    add x24, x14, #24
    mov x9, #0
    strb w9, [x24]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    ldr d11, [sp, #792]
    ldr d12, [sp, #784]
    ldr d13, [sp, #776]
    ldr d14, [sp, #768]
    ldr d15, [sp, #760]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_10canvas_min
_lb_gpu_10canvas_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.hs L11_2
L11_1:
    mov x15, x14
    b L11_3
L11_2:
L11_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_10canvas_max
_lb_gpu_10canvas_max:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.ls L12_2
L12_1:
    mov x15, x14
    b L12_3
L12_2:
L12_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_11canvas_mask
_lb_gpu_11canvas_mask:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1088
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1056]
    str x20, [sp, #1048]
    str x21, [sp, #1040]
    str x22, [sp, #1032]
    str x23, [sp, #1024]
    str x24, [sp, #1016]
    str x25, [sp, #1008]
    str x26, [sp, #1000]
    str x27, [sp, #992]
    str x28, [sp, #984]
    str d8, [sp, #976]
    str d9, [sp, #968]
    str d10, [sp, #960]
    str d11, [sp, #952]
    str d12, [sp, #944]
    str d13, [sp, #936]
    str d14, [sp, #928]
    str d15, [sp, #920]
    sub x16, x29, #216
    str x0, [x16]
    sub x16, x29, #232
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #248
    str w3, [x16]
    sub x16, x29, #264
    str w4, [x16]
    sub x16, x29, #296
    str d0, [x16, #0]
    sub x16, x29, #296
    str d1, [x16, #8]
    sub x16, x29, #296
    str d2, [x16, #16]
    sub x16, x29, #296
    str d3, [x16, #24]
    sub x16, x29, #320
    str d4, [x16, #0]
    sub x16, x29, #320
    str d5, [x16, #8]
    sub x16, x29, #320
    str d6, [x16, #16]
    sub x16, x29, #336
    str x5, [x16]
    str x6, [x16, #8]
    sub x16, x29, #352
    str d7, [x16]
    ldr x9, [x29, #16]
    sub x16, x29, #368
    str x9, [x16]
    sub x9, x29, #320
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #400
    bl _lb_gpu_11check_color
    sub x15, x29, #400
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
    sub x19, x29, #200
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_1:
    sub x14, x29, #248
    ldr w9, [x14]
    str w9, [sp, #64]
    ldr w9, [sp, #64]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    cbnz w14, L13_69
    b L13_7
L13_69:
    mov w15, w14
    b L13_8
L13_7:
    sub x14, x29, #264
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L13_8:
    and w14, w15, #255
    cbnz w14, L13_70
    b L13_9
L13_70:
    mov w15, w14
    b L13_10
L13_9:
    ldr w9, [sp, #64]
    movz x10, #16384
    cmp w9, w10
    cset w15, hi
L13_10:
    and w14, w15, #255
    cbnz w14, L13_71
    b L13_11
L13_71:
    mov w15, w14
    b L13_12
L13_11:
    sub x14, x29, #264
    ldr w14, [x14]
    movz x10, #16384
    cmp w14, w10
    cset w15, hi
L13_12:
    and w14, w15, #255
    cbnz w14, L13_72
    b L13_13
L13_72:
    mov w15, w14
    b L13_14
L13_13:
    sub x14, x29, #232
    add x14, x14, #8
    ldr x14, [x14]
    ldr w9, [sp, #64]
    mov w15, w9
    sub x21, x29, #264
    ldr w21, [x21]
    mov w21, w21
    mul x15, x15, x21
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L13_14:
    and w14, w15, #255
    cbnz w14, L13_4
    b L13_5
L13_4:
    sub x19, x29, #200
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_50@PAGE
    add x14, x14, l_text_50@PAGEOFF
    sub x15, x29, #416
    str x14, [x15]
    add x14, x15, #8
    movz x9, #65
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_5:
L13_6:
    sub x9, x29, #296
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x14, x9, #16
    ldr d8, [x14]
    mov x9, #0
    fmov d24, x9
    fcmp d8, d24
    cset w14, eq
    cbnz w14, L13_73
    b L13_19
L13_73:
    mov w15, w14
    b L13_20
L13_19:
    ldr x9, [sp, #56]
    add x14, x9, #24
    ldr d25, [x14]
    fcmp d24, d25
    cset w15, eq
L13_20:
    and w14, w15, #255
    cbnz w14, L13_74
    b L13_21
L13_74:
    mov w15, w14
    b L13_22
L13_21:
    sub x14, x29, #336
    add x14, x14, #8
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L13_22:
    and w14, w15, #255
    cbnz w14, L13_75
    b L13_23
L13_75:
    mov w15, w14
    b L13_24
L13_23:
    sub x14, x29, #336
    add x14, x14, #12
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L13_24:
    and w14, w15, #255
    cbnz w14, L13_16
    b L13_17
L13_16:
    sub x14, x29, #200
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_17:
L13_18:
    sub x9, x29, #232
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x14, x9, #8
    ldr x9, [x14]
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
L13_27:
    movz x10, #4
    udiv x9, x14, x10
    str x9, [sp, #32]
    sub x15, x29, #216
    ldr x9, [x15]
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x26, x9, #64
    ldr x15, [x26]
    movz x9, #64, lsl #16
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #32]
    cmp x9, x15
    b.ls L13_29
L13_28:
    sub x19, x29, #200
    adrp x14, _lb_gpu_13command_limit@PAGE
    add x14, x14, _lb_gpu_13command_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    sub x15, x29, #432
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_29:
L13_30:
    ldr x14, [x26]
    ldr x9, [sp, #32]
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #16]
    ldr x9, [sp, #24]
    add x28, x9, #48
    add x20, x28, #8
    ldr x14, [x20]
    ldr x9, [sp, #16]
    cmp x9, x14
    b.ls L13_33
L13_32:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_55@PAGE
    add x0, x0, l_text_55@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #1024
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    movz x0, #64, lsl #16
    mov x1, x14
    bl _lb_gpu_10canvas_min
    mov x14, x0
    ldr x0, [sp, #16]
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x23, x0
    sub x24, x29, #448
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #8]
    sub x25, x29, #496
    movz x10, #4096, lsl #48
    cmp x23, x10
    b.ls L13_36
L13_35:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L13_37
L13_36:
    lsl x27, x23, #2
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L13_38
    b L13_39
L13_39:
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L13_38:
    ldr x19, [x15]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #4
    sub x8, x29, #520
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #520
    add x19, x22, #16
    ldrb w19, [x19]
    mov x10, #0
    cmp x27, x10
    cset w21, ne
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    and w19, w21, w19
    cbnz w19, L13_40
    b L13_41
L13_40:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L13_37
L13_41:
    ldr x14, [x22]
    str x14, [x25]
    add x14, x25, #8
    str x23, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L13_37:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L13_43
    b L13_42
L13_43:
    add x14, x25, #16
    sub x19, x29, #200
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_42:
    mov x10, x25
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x26]
    mov x10, #0
    cmp x14, x10
    b.ls L13_46
L13_45:
    ldr x14, [x26]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x28
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u32
    b L13_47
L13_46:
L13_47:
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ls L13_49
L13_48:
    sub x14, x29, #536
    ldr x15, [x28]
    ldr x19, [x20]
    mov x9, x19
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x19, x9, #8
    ldr x19, [x19]
    cbnz x19, L13_52
    b L13_51
L13_52:
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
L13_51:
    b L13_50
L13_49:
L13_50:
    mov x10, x24
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L13_34
L13_33:
L13_34:
    ldr x9, [sp, #56]
    ldr d9, [x9]
    movz x9, #16384, lsl #48
    fmov d24, x9
    fmul d25, d9, d24
    sub x14, x29, #352
    ldr d26, [x14]
    fdiv d25, d25, d26
    movz x9, #16368, lsl #48
    fmov d27, x9
    fsub d25, d25, d27
    fcvt s10, d25
    fadd d25, d8, d9
    fmul d25, d24, d25
    fdiv d25, d25, d26
    fsub d25, d25, d27
    fcvt s11, d25
    ldr x9, [sp, #56]
    add x14, x9, #8
    ldr d12, [x14]
    fmul d25, d24, d12
    sub x14, x29, #368
    ldr d26, [x14]
    fdiv d25, d25, d26
    fsub d25, d27, d25
    fcvt s13, d25
    ldr x9, [sp, #56]
    add x14, x9, #24
    ldr d14, [x14]
    fadd d25, d12, d14
    fmul d24, d24, d25
    fdiv d24, d24, d26
    fsub d24, d27, d24
    fcvt s15, d24
    sub x19, x29, #568
    sub x21, x29, #600
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str s10, [x21]
    add x14, x21, #4
    str s13, [x14]
    ldr x9, [sp, #72]
    ldr d24, [x9]
    fcvt s24, d24
    add x14, x21, #16
    str s24, [x14]
    ldr x9, [sp, #72]
    add x14, x9, #8
    ldr d24, [x14]
    fcvt s24, d24
    add x14, x21, #20
    str s24, [x14]
    ldr x9, [sp, #72]
    add x14, x9, #16
    ldr d24, [x14]
    fcvt s24, d24
    add x14, x21, #24
    str s24, [x14]
    movz x9, #16256, lsl #16
    fmov s24, w9
    add x14, x21, #12
    str s24, [x14]
    add x14, x21, #28
    str s24, [x14]
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x21, x29, #632
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x22, x29, #664
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x23, x29, #696
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    str s11, [x21]
    str s11, [x22]
    add x14, x22, #4
    str s15, [x14]
    add x14, x23, #4
    str s15, [x14]
    sub x24, x29, #888
    mov x10, x19
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #32
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #64
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #96
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #128
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #160
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x19, x29, #904
    str x24, [x19]
    add x14, x19, #8
    movz x9, #6
    str x9, [x14]
    sub x21, x29, #336
    sub x22, x29, #944
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x0, [sp, #24]
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x21
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, #0
    mov x9, x22
    mov x6, x9
    sub x8, x29, #976
    bl _lb_gpu_Canvas_triangles
    sub x15, x29, #976
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L13_54
    b L13_53
L13_54:
    sub x19, x29, #200
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_53:
    ldr x9, [sp, #48]
    ldr x14, [x9]
    mov x9, #0
    mov x15, x9
L13_56:
    ldr x10, [sp, #32]
    cmp x15, x10
    b.hs L13_59
L13_57:
    mov x9, #0
    mov w19, w9
    mov x9, #0
    mov x21, x9
L13_60:
    movz x10, #4
    cmp x21, x10
    b.hs L13_63
L13_61:
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    mov x9, x22
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    ldr x10, [sp, #40]
    cmp x22, x10
    b.hs L13_65
L13_64:
    add x23, x22, x14
    ldrb w23, [x23]
    mov w23, w23
    lsl x24, x21, #3
    mov w25, w24
    movz x10, #32
    cmp x25, x10
    b.lo L13_68
L13_67:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L13_68:
    lsl w22, w23, w24
    orr w22, w22, w19
    b L13_66
L13_65:
    mov w22, w19
L13_66:
L13_62:
    add x23, x21, #1
    mov w19, w22
    mov x21, x23
    b L13_60
L13_63:
    ldr x21, [x26]
    mov x9, x21
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x22, [x28]
    ldr x23, [x20]
    cmp x21, x23
    b.lo 1f
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x21, x21, #2
    add x21, x22, x21
    str w19, [x21]
L13_58:
    add x19, x15, #1
    mov x15, x19
    b L13_56
L13_59:
    ldr x9, [sp, #24]
    add x14, x9, #40
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #24]
    add x15, x9, #16
    ldr x19, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #112
    mul x14, x14, x10
    add x14, x19, x14
    add x19, x14, #80
    sub x20, x29, #1008
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    fcvt s24, d9
    str s24, [x20]
    fcvt s24, d12
    add x14, x20, #4
    str s24, [x14]
    fcvt s24, d8
    add x14, x20, #8
    str s24, [x14]
    fcvt s24, d14
    add x14, x20, #12
    str s24, [x14]
    add x14, x20, #16
    ldr w9, [sp, #64]
    str w9, [x14]
    sub x14, x29, #264
    ldr w14, [x14]
    add x15, x20, #20
    str w14, [x15]
    ldr x14, [x26]
    mov x9, x14
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x15, x20, #24
    str w14, [x15]
    add x14, x20, #28
    mov x9, #0
    str w9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #16]
    str x9, [x26]
    sub x14, x29, #200
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
    ldr x19, [sp, #1056]
    ldr x20, [sp, #1048]
    ldr x21, [sp, #1040]
    ldr x22, [sp, #1032]
    ldr x23, [sp, #1024]
    ldr x24, [sp, #1016]
    ldr x25, [sp, #1008]
    ldr x26, [sp, #1000]
    ldr x27, [sp, #992]
    ldr x28, [sp, #984]
    ldr d8, [sp, #976]
    ldr d9, [sp, #968]
    ldr d10, [sp, #960]
    ldr d11, [sp, #952]
    ldr d12, [sp, #944]
    ldr d13, [sp, #936]
    ldr d14, [sp, #928]
    ldr d15, [sp, #920]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Surface_open
_lb_gpu_Surface_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #608
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #576]
    str x20, [sp, #568]
    str x21, [sp, #560]
    str x22, [sp, #552]
    str x23, [sp, #544]
    str x24, [sp, #536]
    str x25, [sp, #528]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    sub x14, x29, #136
    mov x0, x14
    sub x8, x29, #192
    bl _lb_gpu_Device_checked
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_2
    b L14_1
L14_2:
    add x14, x15, #8
    sub x19, x29, #120
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_3:
L14_1:
    ldr x19, [x15]
    sub x20, x29, #200
    sub x14, x29, #152
    mov x0, x14
    sub x8, x29, #240
    bl _lb_window_Window_20acquire_presentation
    sub x21, x29, #240
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L14_5
    b L14_4
L14_5:
    add x14, x21, #8
    sub x19, x29, #120
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_6:
L14_4:
    mov x10, x21
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x10, x29, #464
    str x19, [x10]
    mov x10, x20
    sub x11, x29, #480
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldrb w14, [x19]
    movz x10, #1
    cmp w14, w10
    b.ne L14_20
L14_19:
    add x14, x19, #8
    ldr x14, [x14]
    sub x15, x29, #480
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    sub x8, x29, #520
    bl _lb_gpu_18metal_surface_open
    sub x15, x29, #520
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_23
    b L14_22
L14_23:
    add x14, x15, #8
    sub x21, x29, #448
    add x22, x21, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #280
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L14_27
L14_24:
L14_22:
    ldr x14, [x15]
    sub x21, x29, #448
    str x14, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #280
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L14_27
L14_25:
    b L14_21
L14_20:
L14_21:
    sub x21, x29, #448
    add x14, x21, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_106@PAGE
    add x15, x15, l_text_106@PAGEOFF
    sub x22, x29, #536
    str x15, [x22]
    add x15, x22, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #280
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L14_27
L14_26:
    adrp x0, l_text_110@PAGE
    add x0, x0, l_text_110@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L14_27:
    sub x15, x29, #280
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_8
    b L14_7
L14_8:
    add x14, x15, #8
    sub x19, x29, #120
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_Presentation_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_9:
L14_7:
    ldr x21, [x15]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x22, x29, #296
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #336
    ldr x14, [x22]
    add x22, x22, #8
    ldr x22, [x22]
    cbnz x22, L14_10
    b L14_11
L14_11:
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L14_10:
    ldr x15, [x22]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #40
    movz x2, #8
    sub x8, x29, #360
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #360
    add x15, x24, #16
    ldrb w15, [x15]
    cbnz w15, L14_12
    b L14_13
L14_13:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L14_14
L14_12:
    ldr x22, [x24]
    sub x25, x29, #400
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    str x19, [x25]
    add x14, x25, #8
    mov x10, x20
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x25, #16
    str x21, [x14]
    add x14, x25, #24
    movz x9, #1
    str x9, [x14]
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x22, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L14_14:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L14_16
    b L14_15
L14_16:
    add x14, x23, #8
    sub x22, x29, #120
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #552
    str x19, [x10]
    mov x10, x20
    sub x11, x29, #568
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x10, x29, #584
    str x21, [x10]
    ldrb w14, [x19]
    movz x10, #1
    cmp w14, w10
    b.ne L14_29
L14_28:
    sub x14, x29, #568
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    b L14_32
L14_31:
    b L14_30
L14_29:
L14_30:
    adrp x14, l_text_113@PAGE
    add x14, x14, l_text_113@PAGEOFF
    sub x15, x29, #600
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
    str x9, [x14]
    adrp x14, l_text_114@PAGE
    add x14, x14, l_text_114@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L14_32:
    mov x0, x20
    bl _lb_window_Presentation_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_17:
L14_15:
    ldr x20, [x23]
    add x14, x19, #16
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    sub x21, x29, #408
    mov x11, x21
    str xzr, [x11, #0]
    str x20, [x21]
    sub x20, x29, #120
    mov x10, x21
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_18:
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_size
_lb_gpu_Surface_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_gpu_Surface_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L15_2
    b L15_1
L15_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_3:
L15_1:
    ldr x14, [x15]
    add x14, x14, #8
    mov x0, x14
    sub x8, x29, #232
    bl _lb_window_Presentation_size
    sub x19, x29, #232
    add x14, x19, #64
    ldrb w14, [x14]
    cbnz w14, L15_5
    b L15_4
L15_5:
    add x14, x19, #40
    sub x20, x29, #112
    add x15, x20, #40
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_6:
L15_4:
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_7:
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_13clear_present
_lb_gpu_Surface_13clear_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #736
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #704]
    str x20, [sp, #696]
    str x21, [sp, #688]
    str x22, [sp, #680]
    str x23, [sp, #672]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    sub x9, x29, #112
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #176
    bl _lb_gpu_Surface_checked
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_2
    b L16_1
L16_2:
    add x14, x15, #8
    sub x19, x29, #104
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_3:
L16_1:
    ldr x19, [x15]
    sub x20, x29, #136
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #208
    bl _lb_gpu_11check_color
    sub x21, x29, #208
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L16_5
    b L16_4
L16_5:
    sub x19, x29, #104
    add x14, x19, #8
    mov x10, x21
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_6:
L16_4:
    add x21, x19, #8
    mov x0, x21
    sub x8, x29, #280
    bl _lb_window_Presentation_size
    sub x15, x29, #280
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L16_8
    b L16_7
L16_8:
    add x14, x15, #40
    sub x19, x29, #104
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_9:
L16_7:
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L16_10
    b L16_11
L16_10:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, _lb_gpu_12frame_in_use@PAGE
    add x15, x15, _lb_gpu_12frame_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_66@PAGE
    add x15, x15, l_text_66@PAGEOFF
    sub x20, x29, #296
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_13:
    b L16_12
L16_11:
L16_12:
    ldr x22, [x19]
    add x14, x19, #16
    ldr x23, [x14]
    sub x10, x29, #392
    str x22, [x10]
    mov x10, x21
    sub x11, x29, #408
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x10, x29, #424
    str x23, [x10]
    mov x10, x20
    sub x11, x29, #448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldrb w14, [x22]
    movz x10, #1
    cmp w14, w10
    b.ne L16_19
L16_18:
    add x14, x22, #8
    ldr x19, [x14]
    sub x14, x29, #408
    sub x20, x29, #448
    sub x10, x29, #560
    str x19, [x10]
    mov x10, x14
    sub x11, x29, #576
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x10, x29, #592
    str x23, [x10]
    mov x10, x20
    sub x11, x29, #616
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x14, x29, #576
    sub x20, x29, #624
    mov x10, x14
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #696
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    sub x14, x29, #616
    mov x9, x14
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    mov x9, x20
    ldr x1, [x9]
    mov x2, x23
    mov x9, x21
    mov x3, x9
    sub x8, x29, #736
    bl _lb_gpu_12metal_render
    sub x15, x29, #736
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_27
    b L16_26
L16_27:
    add x14, x15, #8
    sub x19, x29, #544
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #488
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_30
L16_28:
L16_26:
    ldrb w14, [x15]
    sub x19, x29, #544
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #488
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_30
L16_29:
    adrp x0, l_text_207@PAGE
    add x0, x0, l_text_207@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L16_30:
    sub x15, x29, #488
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_22
    b L16_21
L16_22:
    add x14, x15, #8
    sub x19, x29, #376
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #336
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_31
L16_23:
L16_21:
    ldrb w14, [x15]
    sub x19, x29, #376
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #336
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_31
L16_24:
    b L16_20
L16_19:
L16_20:
    sub x19, x29, #376
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_106@PAGE
    add x15, x15, l_text_106@PAGEOFF
    sub x20, x29, #504
    str x15, [x20]
    add x15, x20, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #336
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L16_31
L16_25:
    adrp x0, l_text_111@PAGE
    add x0, x0, l_text_111@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L16_31:
    sub x15, x29, #336
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_15
    b L16_14
L16_15:
    add x14, x15, #8
    sub x19, x29, #104
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_16:
L16_14:
    ldrb w14, [x15]
    sub x19, x29, #104
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_17:
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_render
_lb_gpu_Surface_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x9, x29, #104
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #240
    bl _lb_gpu_Surface_checked
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L17_2
    b L17_1
L17_2:
    add x14, x15, #8
    sub x19, x29, #96
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_3:
L17_1:
    ldr x19, [x15]
    sub x20, x29, #200
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #272
    bl _lb_gpu_11check_color
    sub x21, x29, #272
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L17_5
    b L17_4
L17_5:
    sub x19, x29, #96
    add x14, x19, #8
    mov x10, x21
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
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_6:
L17_4:
    add x21, x19, #8
    mov x0, x21
    sub x8, x29, #344
    bl _lb_window_Presentation_size
    sub x15, x29, #344
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L17_8
    b L17_7
L17_8:
    add x14, x15, #40
    sub x19, x29, #96
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_9:
L17_7:
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L17_10
    b L17_11
L17_10:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_gpu_12frame_in_use@PAGE
    add x15, x15, _lb_gpu_12frame_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_66@PAGE
    add x15, x15, l_text_66@PAGEOFF
    sub x20, x29, #360
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_13:
    b L17_12
L17_11:
L17_12:
    ldr x14, [x19]
    add x15, x19, #16
    ldr x15, [x15]
    sub x22, x29, #176
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    mov x2, x15
    mov x9, x22
    mov x3, x9
    sub x8, x29, #400
    bl _lb_gpu_14backend_render
    sub x15, x29, #400
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L17_15
    b L17_14
L17_15:
    add x14, x15, #8
    sub x19, x29, #96
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_16:
L17_14:
    ldrb w14, [x15]
    sub x19, x29, #96
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
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
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_17:
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_frame
_lb_gpu_Surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #496]
    str x20, [sp, #488]
    str x21, [sp, #480]
    str x22, [sp, #472]
    str x23, [sp, #464]
    str x24, [sp, #456]
    str x25, [sp, #448]
    str x26, [sp, #440]
    sub x16, x29, #136
    str x0, [x16]
    sub x9, x29, #136
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #176
    bl _lb_gpu_Surface_checked
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_2
    b L18_1
L18_2:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_3:
L18_1:
    ldr x19, [x15]
    add x20, x19, #33
    ldrb w14, [x20]
    cbnz w14, L18_4
    b L18_5
L18_4:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_12frame_in_use@PAGE
    add x15, x15, _lb_gpu_12frame_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_69@PAGE
    add x15, x15, l_text_69@PAGEOFF
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #39
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_7:
    b L18_6
L18_5:
L18_6:
    sub x21, x29, #232
    add x14, x19, #8
    mov x0, x14
    sub x8, x29, #304
    bl _lb_window_Presentation_size
    sub x15, x29, #304
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L18_9
    b L18_8
L18_9:
    add x14, x15, #40
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_10:
L18_8:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #320
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #360
    ldr x22, [x23]
    add x14, x23, #8
    ldr x23, [x14]
    cbnz x23, L18_11
    b L18_12
L18_12:
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L18_11:
    ldr x14, [x23]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    movz x1, #40
    movz x2, #8
    sub x8, x29, #384
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #384
    add x14, x25, #16
    ldrb w14, [x14]
    cbnz w14, L18_13
    b L18_14
L18_14:
    add x14, x24, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #32
    movz x9, #1
    strb w9, [x14]
    b L18_15
L18_13:
    ldr x26, [x25]
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x0, x26
    mov x9, x21
    mov x1, x9
    sub x8, x29, #416
    bl _lb_gpu_Frame_init
    sub x15, x29, #416
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L18_17
    b L18_16
L18_17:
    add x14, x24, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x24, #32
    movz x9, #1
    strb w9, [x14]
    cbnz x23, L18_19
    b L18_18
L18_19:
    add x14, x23, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x25
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L18_18:
    b L18_15
L18_16:
    str x26, [x24]
    add x14, x24, #32
    mov x9, #0
    strb w9, [x14]
L18_15:
    add x14, x24, #32
    ldrb w14, [x14]
    cbnz w14, L18_21
    b L18_20
L18_21:
    add x14, x24, #8
    sub x19, x29, #128
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_22:
L18_20:
    ldr x21, [x24]
    sub x25, x29, #424
    adrp x22, _lb_gpu_10frame_type@PAGE
    add x22, x22, _lb_gpu_10frame_type@PAGEOFF
    sub x23, x29, #440
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    mov x9, x22
    mov x1, x9
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #480
    bl _lb_interop_Reference_0g1_gpu_Frame_adopt
    sub x15, x29, #480
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_24
    b L18_23
L18_24:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_25:
L18_23:
    mov x10, x15
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x21
    sub x8, x29, #520
    bl _lb_gpu_Frame_11state_value
    sub x22, x29, #520
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L18_27
    b L18_26
L18_27:
    add x14, x22, #8
    sub x19, x29, #128
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x25]
    mov x0, x14
    bl _lb_ownership_release
L18_30:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_28:
L18_26:
    mov x0, x22
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x14, x0
    add x15, x14, #112
    str x19, [x15]
    add x15, x14, #120
    adrp x21, _lb_gpu_19check_surface_frame@GOTPAGE
    ldr x21, [x21, _lb_gpu_19check_surface_frame@GOTPAGEOFF]
    str x21, [x15]
    add x15, x14, #128
    adrp x21, _lb_gpu_20submit_surface_frame@GOTPAGE
    ldr x21, [x21, _lb_gpu_20submit_surface_frame@GOTPAGEOFF]
    str x21, [x15]
    add x14, x14, #136
    adrp x15, _lb_gpu_21release_surface_frame@GOTPAGE
    ldr x15, [x15, _lb_gpu_21release_surface_frame@GOTPAGEOFF]
    str x15, [x14]
    add x14, x19, #24
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    movz x9, #1
    strb w9, [x20]
    sub x21, x29, #128
    mov x10, x25
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_29:
    adrp x0, l_text_72@PAGE
    add x0, x0, l_text_72@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_9wait_idle
_lb_gpu_Surface_9wait_idle:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_gpu_Surface_checked
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L19_2
    b L19_1
L19_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_3:
L19_1:
    ldr x14, [x15]
    ldr x19, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    sub x10, x29, #200
    str x19, [x10]
    sub x10, x29, #216
    str x14, [x10]
    ldrb w19, [x19]
    movz x10, #1
    cmp w19, w10
    b.ne L19_8
L19_7:
    mov x0, x14
    sub x8, x29, #248
    bl _lb_gpu_18metal_surface_wait
    sub x19, x29, #248
    add x15, x19, #24
    ldrb w15, [x15]
    cbnz w15, L19_11
    b L19_10
L19_11:
    sub x20, x29, #184
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L19_15
L19_12:
L19_10:
    sub x14, x29, #184
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L19_15
L19_13:
    b L19_9
L19_8:
L19_9:
    sub x19, x29, #184
    adrp x14, _lb_gpu_unsupported@PAGE
    add x14, x14, _lb_gpu_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_106@PAGE
    add x14, x14, l_text_106@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L19_15
L19_14:
    sub x14, x29, #184
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L19_15:
    sub x15, x29, #152
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L19_5
    b L19_4
L19_5:
    sub x19, x29, #72
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_6:
L19_4:
    sub x14, x29, #72
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Surface_destroy
_lb_gpu_Surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L20_1
    b L20_2
L20_1:
    b L20_3
L20_2:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_4:
L20_3:
    sub x8, x29, #96
    bl _lb_gpu_12check_thread
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L20_8
    b L20_7
L20_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L20_5
L20_7:
    b L20_6
L20_5:
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L20_6:
L20_9:
    mov x9, #0
    str x9, [x19]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_gpu_15release_surface
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Surface_checked
_lb_gpu_Surface_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    sub x8, x29, #120
    bl _lb_gpu_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L21_2
    b L21_1
L21_2:
    sub x19, x29, #80
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_3:
L21_1:
    ldr x14, [x19]
    cbnz x14, L21_4
    b L21_5
L21_4:
    b L21_6
L21_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_closed@PAGE
    add x15, x15, _lb_gpu_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_73@PAGE
    add x15, x15, l_text_73@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_7:
L21_6:
    add x15, x14, #32
    ldrb w15, [x15]
    cbnz w15, L21_8
    b L21_9
L21_8:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_closed@PAGE
    add x15, x15, _lb_gpu_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_73@PAGE
    add x15, x15, l_text_73@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_11:
    b L21_10
L21_9:
L21_10:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_12:
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_15release_surface
_lb_gpu_15release_surface:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    sub x16, x29, #64
    str x0, [x16]
    sub x14, x29, #64
    ldr x19, [x14]
    add x14, x19, #24
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L22_2
L22_1:
    ldr x20, [x19]
    add x21, x19, #8
    add x14, x19, #16
    ldr x22, [x14]
    sub x10, x29, #96
    str x20, [x10]
    mov x10, x21
    sub x11, x29, #112
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x10, x29, #128
    str x22, [x10]
    ldrb w14, [x20]
    movz x10, #1
    cmp w14, w10
    b.ne L22_7
L22_6:
    sub x14, x29, #112
    mov x0, x22
    mov x9, x14
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    b L22_10
L22_9:
    b L22_8
L22_7:
L22_8:
    adrp x14, l_text_113@PAGE
    add x14, x14, l_text_113@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
    str x9, [x14]
    adrp x14, l_text_114@PAGE
    add x14, x14, l_text_114@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L22_10:
    mov x0, x21
    bl _lb_window_Presentation_destroy
    ldr x14, [x19]
    mov x0, x14
    bl _lb_gpu_14release_device
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #80
    str x19, [x15]
    add x20, x15, #8
    movz x9, #40
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L22_5
    b L22_4
L22_5:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L22_4:
    b L22_3
L22_2:
L22_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_19check_surface_frame
_lb_gpu_19check_surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x0, x29, #128
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x14, x29, #88
    ldr x19, [x14]
    sub x8, x29, #160
    bl _lb_gpu_12check_thread
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L23_2
    b L23_1
L23_2:
    sub x19, x29, #72
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_3:
L23_1:
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L23_4
    b L23_5
L23_4:
    sub x19, x29, #72
    adrp x14, _lb_gpu_closed@PAGE
    add x14, x14, _lb_gpu_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_76@PAGE
    add x14, x14, l_text_76@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_7:
    b L23_6
L23_5:
L23_6:
    sub x20, x29, #216
    add x14, x19, #8
    mov x0, x14
    sub x8, x29, #288
    bl _lb_window_Presentation_size
    sub x15, x29, #288
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L23_9
    b L23_8
L23_9:
    add x14, x15, #40
    sub x19, x29, #72
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_10:
L23_8:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr d24, [x20]
    sub x14, x29, #128
    ldr d25, [x14]
    fcmp d24, d25
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    cbnz w19, L23_21
    b L23_14
L23_21:
    mov w15, w19
    b L23_15
L23_14:
    add x15, x20, #8
    ldr d24, [x15]
    add x15, x14, #8
    ldr d25, [x15]
    fcmp d24, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L23_15:
    and w19, w15, #255
    cbnz w19, L23_22
    b L23_16
L23_22:
    mov w15, w19
    b L23_17
L23_16:
    add x15, x20, #16
    ldr d24, [x15]
    add x15, x14, #16
    ldr d25, [x15]
    fcmp d24, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L23_17:
    and w19, w15, #255
    cbnz w19, L23_23
    b L23_18
L23_23:
    mov w14, w19
    b L23_19
L23_18:
    add x15, x20, #24
    ldr d24, [x15]
    add x15, x14, #24
    ldr d25, [x15]
    fcmp d24, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L23_19:
    and w15, w14, #255
    cbnz w15, L23_11
    b L23_12
L23_11:
    sub x19, x29, #72
    adrp x14, _lb_gpu_13frame_resized@PAGE
    add x14, x14, _lb_gpu_13frame_resized@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_77@PAGE
    add x14, x14, l_text_77@PAGEOFF
    sub x15, x29, #304
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_20:
    b L23_13
L23_12:
L23_13:
    sub x14, x29, #72
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_20submit_surface_frame
_lb_gpu_20submit_surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #104
    ldr x14, [x14]
    ldr x15, [x14]
    add x19, x14, #8
    add x14, x14, #16
    ldr x14, [x14]
    sub x20, x29, #176
    sub x21, x29, #200
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x15
    mov x9, x19
    ldr x1, [x9]
    mov x2, x14
    mov x9, x20
    mov x3, x9
    sub x8, x29, #240
    bl _lb_gpu_14backend_render
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L24_2
    b L24_1
L24_2:
    add x14, x15, #8
    sub x19, x29, #88
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_3:
L24_1:
    ldrb w14, [x15]
    sub x19, x29, #88
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_4:
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21release_surface_frame
_lb_gpu_21release_surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #32
    str x0, [x16]
    sub x8, x29, #88
    bl _lb_gpu_12check_thread
    sub x15, x29, #88
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L25_4
    b L25_3
L25_4:
    sub x14, x29, #56
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L25_1
L25_3:
    b L25_2
L25_1:
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L25_2:
L25_5:
    sub x14, x29, #32
    ldr x14, [x14]
    add x15, x14, #33
    mov x9, #0
    strb w9, [x15]
    mov x0, x14
    bl _lb_gpu_15release_surface
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_FrameState_check
_lb_gpu_FrameState_check:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #144
    ldrb w14, [x14]
    cbnz w14, L26_1
    b L26_2
L26_1:
    sub x19, x29, #80
    adrp x14, _lb_gpu_14frame_finished@PAGE
    add x14, x14, _lb_gpu_14frame_finished@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_79@PAGE
    add x14, x14, l_text_79@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_4:
    b L26_3
L26_2:
L26_3:
    add x14, x15, #112
    ldr x14, [x14]
    cbnz x14, L26_8
    b L26_6
L26_8:
L26_5:
    add x19, x15, #120
    ldr x19, [x19]
    cbnz x19, L26_9
    b L26_10
L26_9:
    b L26_11
L26_10:
    adrp x14, l_text_80@PAGE
    add x14, x14, l_text_80@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    adrp x14, l_text_81@PAGE
    add x14, x14, l_text_81@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L26_11:
    add x20, x15, #72
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x20
    mov x1, x9
    sub x8, x29, #152
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #152
    add x20, x21, #24
    ldrb w20, [x20]
    cbnz w20, L26_13
    b L26_12
L26_13:
    sub x19, x29, #80
    mov x10, x21
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_14:
L26_12:
    b L26_7
L26_6:
L26_7:
    sub x14, x29, #80
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_FrameState_close
_lb_gpu_FrameState_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    str x22, [sp, #160]
    str x23, [sp, #152]
    sub x16, x29, #64
    str x0, [x16]
    sub x9, x29, #64
    ldr x20, [x9]
    add x14, x20, #144
    movz x9, #1
    strb w9, [x14]
    add x14, x20, #48
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L27_9
L27_8:
    adrp x19, _lb_memory_heap@PAGE
    add x19, x19, _lb_memory_heap@PAGEOFF
    sub x21, x29, #96
    ldr x22, [x14]
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x22, [x21]
    add x22, x21, #8
    str x23, [x22]
    ldr x22, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L27_12
    b L27_11
L27_12:
    add x14, x19, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L27_11:
    b L27_10
L27_9:
L27_10:
    add x14, x20, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L27_14
L27_13:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x19, x29, #112
    ldr x21, [x20]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x21, [x19]
    add x21, x19, #8
    str x22, [x21]
    ldr x21, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L27_17
    b L27_16
L27_17:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L27_16:
    b L27_15
L27_14:
L27_15:
    add x14, x20, #16
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L27_19
L27_18:
    adrp x19, _lb_memory_heap@PAGE
    add x19, x19, _lb_memory_heap@PAGEOFF
    sub x21, x29, #128
    ldr x22, [x14]
    mov x9, x15
    movz x10, #112
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x22, [x21]
    add x22, x21, #8
    str x23, [x22]
    ldr x22, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L27_22
    b L27_21
L27_22:
    add x14, x19, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L27_21:
    b L27_20
L27_19:
L27_20:
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x10, x19
    mov x11, x20
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
L27_23:
    add x14, x20, #112
    ldr x15, [x14]
    cbnz x15, L27_4
    b L27_2
L27_4:
L27_1:
    mov x9, #0
    str x9, [x14]
    add x19, x20, #136
    ldr x19, [x19]
    cbnz x19, L27_5
    b L27_6
L27_5:
    b L27_7
L27_6:
    adrp x14, l_text_82@PAGE
    add x14, x14, l_text_82@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    adrp x14, l_text_83@PAGE
    add x14, x14, l_text_83@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_83@PAGE
    add x0, x0, l_text_83@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L27_7:
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    ldr x17, [sp], #16
    blr x17
    b L27_3
L27_2:
L27_3:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Frame_init
_lb_gpu_Frame_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #816
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #784]
    str x20, [sp, #776]
    str x21, [sp, #768]
    str x22, [sp, #760]
    str x23, [sp, #752]
    str x24, [sp, #744]
    str x25, [sp, #736]
    str d8, [sp, #728]
    str d9, [sp, #720]
    str d10, [sp, #712]
    str d11, [sp, #704]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #192
    str x1, [x16]
    sub x0, x29, #192
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #152
    ldr x21, [x9]
    sub x19, x29, #192
    mov x10, x19
    sub x11, x29, #768
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x20, x29, #768
    ldr d8, [x20]
    mov x9, #0
    fmov d9, x9
    fcmp d8, d9
    cset w14, ge
    cbnz w14, L28_21
    b L28_54
L28_54:
    mov w15, w14
    b L28_22
L28_21:
    movz x9, #16592, lsl #48
    fmov d24, x9
    fcmp d8, d24
    cset w15, ls
L28_22:
    and w14, w15, #255
    cbnz w14, L28_23
    b L28_55
L28_55:
    mov w15, w14
    b L28_24
L28_23:
    add x14, x20, #8
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, ge
L28_24:
    and w14, w15, #255
    cbnz w14, L28_25
    b L28_56
L28_56:
    mov w15, w14
    b L28_26
L28_25:
    add x14, x20, #8
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L28_26:
    and w14, w15, #255
    cbnz w14, L28_27
    b L28_57
L28_57:
    mov w15, w14
    b L28_28
L28_27:
    add x14, x20, #16
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, ge
L28_28:
    and w14, w15, #255
    cbnz w14, L28_29
    b L28_58
L28_58:
    mov w15, w14
    b L28_30
L28_29:
    add x14, x20, #16
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L28_30:
    and w14, w15, #255
    cbnz w14, L28_31
    b L28_59
L28_59:
    mov w15, w14
    b L28_32
L28_31:
    add x14, x20, #24
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, ge
L28_32:
    and w14, w15, #255
    cbnz w14, L28_33
    b L28_60
L28_60:
    mov w15, w14
    b L28_34
L28_33:
    add x14, x20, #24
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L28_34:
    and w14, w15, #255
    cbnz w14, L28_35
    b L28_61
L28_61:
    mov w15, w14
    b L28_36
L28_35:
    add x14, x20, #32
    ldr d24, [x14]
    fcmp d24, d9
    cset w15, gt
L28_36:
    and w14, w15, #255
    cbnz w14, L28_37
    b L28_62
L28_62:
    mov w15, w14
    b L28_38
L28_37:
    add x14, x20, #32
    ldr d24, [x14]
    movz x9, #16432, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L28_38:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L28_19
L28_18:
    sub x20, x29, #728
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_99@PAGE
    add x14, x14, l_text_99@PAGEOFF
    sub x15, x29, #784
    str x14, [x15]
    add x14, x15, #8
    movz x9, #73
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L28_52
L28_39:
    b L28_20
L28_19:
L28_20:
    add x14, x20, #16
    ldr d10, [x14]
    fmov d16, d10
    fmov d0, d16
    bl _lb_math_floor
    fmov d24, d0
    fcmp d10, d24
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L28_63
    b L28_43
L28_63:
    mov w15, w14
    b L28_44
L28_43:
    add x14, x20, #24
    ldr d11, [x14]
    fmov d16, d11
    fmov d0, d16
    bl _lb_math_floor
    fmov d24, d0
    fcmp d11, d24
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L28_44:
    and w14, w15, #255
    cbnz w14, L28_40
    b L28_41
L28_40:
    sub x20, x29, #728
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_100@PAGE
    add x14, x14, l_text_100@PAGEOFF
    sub x15, x29, #800
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L28_52
L28_45:
    b L28_42
L28_41:
L28_42:
    fcmp d8, d9
    cset w14, eq
    fcmp d9, d10
    cset w15, eq
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L28_64
    b L28_49
L28_64:
    mov w15, w14
    b L28_50
L28_49:
    add x14, x20, #8
    ldr d24, [x14]
    fcmp d9, d24
    cset w14, eq
    add x15, x20, #24
    ldr d24, [x15]
    fcmp d9, d24
    cset w15, eq
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L28_50:
    and w14, w15, #255
    cbnz w14, L28_46
    b L28_47
L28_46:
    sub x20, x29, #728
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_101@PAGE
    add x14, x14, l_text_101@PAGEOFF
    sub x15, x29, #816
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L28_52
L28_51:
    b L28_48
L28_47:
L28_48:
    sub x14, x29, #728
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L28_52:
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L28_2
    b L28_1
L28_2:
    sub x19, x29, #144
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_3:
L28_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x20, x29, #240
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #280
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L28_4
    b L28_5
L28_5:
    adrp x0, l_text_84@PAGE
    add x0, x0, l_text_84@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L28_4:
    ldr x20, [x15]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #152
    movz x2, #8
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #304
    add x20, x23, #16
    ldrb w20, [x20]
    cbnz w20, L28_6
    b L28_7
L28_7:
    add x14, x22, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    b L28_8
L28_6:
    ldr x20, [x23]
    sub x24, x29, #456
    mov x0, x24
    mov x1, #0
    movz x2, #152
    bl _memset
    sub x25, x29, #528
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
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
    add x14, x24, #72
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    mov x0, x20
    mov x1, x24
    movz x2, #152
    bl _memcpy
    str x20, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
L28_8:
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L28_10
    b L28_9
L28_10:
    add x14, x22, #8
    sub x19, x29, #144
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_11:
L28_9:
    ldr x19, [x22]
    sub x24, x29, #536
    adrp x20, _lb_gpu_16frame_state_type@PAGE
    add x20, x20, _lb_gpu_16frame_state_type@PAGEOFF
    sub x23, x29, #552
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x9, x20
    mov x1, x9
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #592
    bl _lb_interop_Reference_0g1_gpu_FrameState_adopt
    sub x15, x29, #592
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L28_13
    b L28_12
L28_13:
    add x14, x15, #8
    sub x19, x29, #144
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_14:
L28_12:
    mov x10, x15
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x19, x29, #608
    mov x0, x24
    sub x8, x29, #656
    bl _lb_interop_Reference_0g1_gpu_FrameState_lease
    sub x20, x29, #656
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, L28_16
    b L28_15
L28_16:
    add x14, x20, #16
    sub x19, x29, #144
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x24]
    mov x0, x14
    bl _lb_ownership_release
L28_53:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_17:
L28_15:
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #672
    mov x10, x24
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x22, #8
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x22, x21, #16
    sub x23, x29, #696
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x14, x29, #144
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
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    ldr x21, [sp, #768]
    ldr x22, [sp, #760]
    ldr x23, [sp, #752]
    ldr x24, [sp, #744]
    ldr x25, [sp, #736]
    ldr d8, [sp, #728]
    ldr d9, [sp, #720]
    ldr d10, [sp, #712]
    ldr d11, [sp, #704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Frame_11state_value
_lb_gpu_Frame_11state_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L29_1
    b L29_2
L29_1:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L29_3
L29_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_14frame_finished@PAGE
    add x15, x15, _lb_gpu_14frame_finished@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_79@PAGE
    add x15, x15, l_text_79@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_4:
L29_3:
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_5:
    adrp x0, l_text_85@PAGE
    add x0, x0, l_text_85@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_size
_lb_gpu_Frame_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    sub x19, x29, #128
    mov x0, x14
    sub x8, x29, #168
    bl _lb_gpu_Frame_11state_value
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L30_2
    b L30_1
L30_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_3:
L30_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x19
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x14, x0
    mov x0, x14
    sub x8, x29, #200
    bl _lb_gpu_FrameState_check
    sub x20, x29, #200
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L30_5
    b L30_4
L30_5:
    sub x19, x29, #112
    add x14, x19, #40
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_6:
L30_4:
    mov x0, x19
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x14, x0
    add x14, x14, #72
    sub x20, x29, #112
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_7:
    adrp x0, l_text_86@PAGE
    add x0, x0, l_text_86@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_target
_lb_gpu_Frame_target:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str x24, [sp, #392]
    str x25, [sp, #384]
    str x26, [sp, #376]
    sub x16, x29, #136
    str x0, [x16]
    sub x9, x29, #136
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #176
    bl _lb_gpu_Frame_11state_value
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L31_2
    b L31_1
L31_2:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_3:
L31_1:
    mov x0, x15
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x20, x0
    mov x0, x20
    sub x8, x29, #208
    bl _lb_gpu_FrameState_check
    sub x21, x29, #208
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L31_5
    b L31_4
L31_5:
    sub x19, x29, #128
    add x14, x19, #8
    mov x10, x21
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_6:
L31_4:
    sub x21, x29, #224
    add x15, x19, #16
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L31_7
    b L31_8
L31_7:
    sub x19, x29, #240
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L31_9
L31_8:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_14frame_finished@PAGE
    add x15, x15, _lb_gpu_14frame_finished@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_79@PAGE
    add x15, x15, l_text_79@PAGEOFF
    sub x20, x29, #256
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_10:
L31_9:
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #288
    sub x23, x29, #320
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x24, x20, #72
    ldr d24, [x24]
    add x14, x23, #16
    str d24, [x14]
    add x14, x24, #8
    ldr d24, [x14]
    add x14, x23, #24
    str d24, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x23, x29, #336
    sub x25, x29, #352
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    add x14, x24, #16
    ldr d24, [x14]
    adrp x26, l_text_87@PAGE
    add x26, x26, l_text_87@PAGEOFF
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x25, #8
    str w14, [x15]
    add x14, x24, #24
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x25, #12
    str w14, [x15]
    mov x10, x25
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #424
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str x20, [x24]
    add x14, x24, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #24
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #56
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x9, x24
    mov x0, x9
    mov x9, x14
    mov x1, x9
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #464
    bl _lb_interop_View_0g1_gpu_RenderTarget_make
    sub x15, x29, #464
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L31_12
    b L31_11
L31_12:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_13:
L31_11:
    sub x19, x29, #128
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_14:
    adrp x0, l_text_88@PAGE
    add x0, x0, l_text_88@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_present
_lb_gpu_Frame_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    str x23, [sp, #288]
    str x24, [sp, #280]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #144
    str d0, [x16, #0]
    sub x16, x29, #144
    str d1, [x16, #8]
    sub x16, x29, #144
    str d2, [x16, #16]
    sub x9, x29, #120
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #184
    bl _lb_gpu_Frame_11state_value
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L32_2
    b L32_1
L32_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_3:
L32_1:
    mov x0, x15
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x20, x0
    mov x0, x20
    sub x8, x29, #216
    bl _lb_gpu_FrameState_check
    sub x21, x29, #216
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L32_5
    b L32_4
L32_5:
    sub x20, x29, #112
    add x14, x20, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_6:
L32_4:
    sub x21, x29, #144
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #248
    bl _lb_gpu_11check_color
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L32_8
    b L32_7
L32_8:
    sub x20, x29, #112
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_9:
L32_7:
    add x14, x20, #112
    ldr x22, [x14]
    cbnz x22, L32_10
    b L32_11
L32_10:
    b L32_12
L32_11:
    sub x20, x29, #112
    add x14, x20, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_89@PAGE
    add x15, x15, l_text_89@PAGEOFF
    sub x21, x29, #264
    str x15, [x21]
    add x15, x21, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_13:
L32_12:
    add x14, x20, #128
    ldr x23, [x14]
    cbnz x23, L32_14
    b L32_15
L32_14:
    b L32_16
L32_15:
    adrp x14, l_text_90@PAGE
    add x14, x14, l_text_90@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    adrp x14, l_text_91@PAGE
    add x14, x14, l_text_91@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_91@PAGE
    add x0, x0, l_text_91@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L32_16:
    add x15, x19, #16
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L32_17
    b L32_18
L32_17:
    sub x24, x29, #296
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L32_19
L32_18:
    adrp x14, l_text_92@PAGE
    add x14, x14, l_text_92@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    adrp x14, l_text_93@PAGE
    add x14, x14, l_text_93@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_93@PAGE
    add x0, x0, l_text_93@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L32_19:
    mov x0, x24
    bl _lb_interop_Lease_invalidate
    add x14, x20, #144
    movz x9, #1
    strb w9, [x14]
    mov x17, x23
    str x17, [sp, #-16]!
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x22
    mov x9, x20
    mov x1, x9
    sub x8, x29, #352
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L32_21
    b L32_20
L32_21:
    add x14, x15, #8
    sub x20, x29, #112
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_22:
L32_20:
    ldrb w14, [x15]
    sub x20, x29, #112
    strb w14, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_Frame_close
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_23:
    mov x0, x14
    bl _lb_gpu_Frame_close
    adrp x0, l_text_94@PAGE
    add x0, x0, l_text_94@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Frame_close
_lb_gpu_Frame_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    add x20, x19, #16
    add x14, x20, #16
    ldrb w14, [x14]
    cbnz w14, L33_4
    b L33_2
L33_4:
    sub x21, x29, #72
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L33_1:
    sub x22, x29, #96
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x0, x21
    bl _lb_interop_Lease_invalidate
    mov x0, x21
    bl _lb_interop_Lease_release
    b L33_3
L33_2:
L33_3:
    add x14, x19, #8
    ldrb w14, [x14]
    cbnz w14, L33_8
    b L33_6
L33_8:
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
L33_5:
    sub x21, x29, #120
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    bl _lb_interop_Reference_0g1_gpu_FrameState_close
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_release
L33_9:
    b L33_7
L33_6:
L33_7:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Frame_trace
_lb_gpu_Frame_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str x2, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    add x14, x19, #8
    ldrb w14, [x14]
    cbnz w14, L34_4
    b L34_2
L34_4:
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
L34_1:
    sub x14, x29, #72
    ldr x21, [x14]
    sub x14, x29, #88
    ldr x22, [x14]
    sub x10, x29, #128
    str x21, [x10]
    sub x10, x29, #144
    str x22, [x10]
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_12check_thread
    ldr x14, [x20]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    ldr x17, [sp], #16
    blr x17
L34_9:
    b L34_3
L34_2:
L34_3:
    add x15, x19, #16
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, L34_8
    b L34_6
L34_8:
    sub x19, x29, #112
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L34_5:
    sub x14, x29, #72
    ldr x14, [x14]
    sub x15, x29, #88
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl _lb_interop_Lease_trace
    b L34_7
L34_6:
L34_7:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_RenderTarget_size
_lb_gpu_RenderTarget_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str d8, [sp, #168]
    str d9, [sp, #160]
    sub x16, x29, #144
    str x0, [x16]
    sub x9, x29, #144
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #176
    bl _lb_gpu_FrameState_check
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_2
    b L35_1
L35_2:
    sub x19, x29, #136
    add x14, x19, #40
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr d8, [sp, #168]
    ldr d9, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_3:
L35_1:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d9, d0
    sub x20, x29, #216
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    add x14, x19, #24
    add x15, x14, #16
    ldr d24, [x15]
    str d24, [x20]
    add x14, x14, #24
    ldr d25, [x14]
    add x14, x20, #8
    str d25, [x14]
    fmul d24, d8, d24
    add x14, x20, #16
    str d24, [x14]
    fmul d24, d9, d25
    add x14, x20, #24
    str d24, [x14]
    ldr x14, [x19]
    add x14, x14, #72
    add x14, x14, #32
    ldr d24, [x14]
    add x14, x20, #32
    str d24, [x14]
    sub x21, x29, #136
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x21, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr d8, [sp, #168]
    ldr d9, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_4:
    adrp x0, l_text_95@PAGE
    add x0, x0, l_text_95@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_RenderTarget_region
_lb_gpu_RenderTarget_region:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str d8, [sp, #392]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #152
    str d0, [x16, #0]
    sub x16, x29, #152
    str d1, [x16, #8]
    sub x16, x29, #152
    str d2, [x16, #16]
    sub x16, x29, #152
    str d3, [x16, #24]
    sub x9, x29, #120
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #184
    bl _lb_gpu_FrameState_check
    sub x15, x29, #184
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L36_2
    b L36_1
L36_2:
    sub x19, x29, #112
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_3:
L36_1:
    sub x20, x29, #152
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #216
    bl _lb_gpu_12check_region
    sub x15, x29, #216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L36_5
    b L36_4
L36_5:
    sub x19, x29, #112
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_6:
L36_4:
    sub x21, x29, #248
    sub x22, x29, #280
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x19, #24
    ldr d24, [x14]
    ldr d25, [x20]
    fadd d24, d24, d25
    str d24, [x22]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x20, #8
    ldr d25, [x14]
    fadd d24, d24, d25
    add x14, x22, #8
    str d24, [x14]
    add x14, x20, #16
    ldr d24, [x14]
    add x14, x22, #16
    str d24, [x14]
    add x14, x20, #24
    ldr d24, [x14]
    add x14, x22, #24
    str d24, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #312
    bl _lb_gpu_12check_region
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L36_8
    b L36_7
L36_8:
    sub x19, x29, #112
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_9:
L36_7:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d24, d0
    sub x20, x29, #328
    add x14, x19, #56
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    fmov d16, d8
    fmov d4, d16
    fmov d16, d24
    fmov d5, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_gpu_14intersect_clip
    sub x16, x29, #344
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #344
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #416
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x14, [x19]
    str x14, [x22]
    add x23, x19, #8
    add x14, x22, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x22, #56
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x9, x22
    mov x0, x9
    mov x9, x14
    mov x1, x9
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #456
    bl _lb_interop_View_0g1_gpu_RenderTarget_make
    sub x15, x29, #456
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L36_11
    b L36_10
L36_11:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_12:
L36_10:
    sub x19, x29, #112
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr d8, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_13:
    adrp x0, l_text_96@PAGE
    add x0, x0, l_text_96@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_RenderTarget_clipped
_lb_gpu_RenderTarget_clipped:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str x24, [sp, #392]
    str d8, [sp, #384]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    sub x16, x29, #160
    str d3, [x16, #24]
    sub x9, x29, #128
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #192
    bl _lb_gpu_FrameState_check
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_2
    b L37_1
L37_2:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_3:
L37_1:
    sub x20, x29, #160
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #224
    bl _lb_gpu_12check_region
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_5
    b L37_4
L37_5:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_6:
L37_4:
    sub x21, x29, #256
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x23, x19, #24
    ldr d24, [x23]
    ldr d25, [x20]
    fadd d24, d24, d25
    str d24, [x22]
    add x14, x23, #8
    ldr d24, [x14]
    add x14, x20, #8
    ldr d25, [x14]
    fadd d24, d24, d25
    add x14, x22, #8
    str d24, [x14]
    add x14, x20, #16
    ldr d24, [x14]
    add x14, x22, #16
    str d24, [x14]
    add x14, x20, #24
    ldr d24, [x14]
    add x14, x22, #24
    str d24, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #320
    bl _lb_gpu_12check_region
    sub x15, x29, #320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_8
    b L37_7
L37_8:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_9:
L37_7:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d24, d0
    sub x20, x29, #336
    add x14, x19, #56
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    fmov d16, d8
    fmov d4, d16
    fmov d16, d24
    fmov d5, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_gpu_14intersect_clip
    sub x16, x29, #352
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #352
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #424
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x14, [x19]
    str x14, [x22]
    add x24, x19, #8
    add x14, x22, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x22, #56
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_18render_target_type@PAGE
    add x14, x14, _lb_gpu_18render_target_type@PAGEOFF
    mov x9, x22
    mov x0, x9
    mov x9, x14
    mov x1, x9
    mov x9, x24
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #464
    bl _lb_interop_View_0g1_gpu_RenderTarget_make
    sub x15, x29, #464
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L37_11
    b L37_10
L37_11:
    add x14, x15, #8
    sub x19, x29, #120
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_12:
L37_10:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr d8, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_13:
    adrp x0, l_text_97@PAGE
    add x0, x0, l_text_97@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_RenderTarget_triangles
_lb_gpu_RenderTarget_triangles:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    str x24, [sp, #264]
    str x25, [sp, #256]
    str d8, [sp, #248]
    str d9, [sp, #240]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #168
    str w3, [x16]
    sub x9, x29, #136
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_gpu_FrameState_check
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L38_2
    b L38_1
L38_2:
    sub x19, x29, #128
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr d8, [sp, #248]
    ldr d9, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_3:
L38_1:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d9, d0
    sub x20, x29, #232
    sub x21, x29, #264
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x19, #24
    ldr d24, [x14]
    fmul d24, d8, d24
    str d24, [x21]
    add x15, x14, #8
    ldr d24, [x15]
    fmul d24, d9, d24
    add x15, x21, #8
    str d24, [x15]
    add x15, x14, #16
    ldr d24, [x15]
    fmul d24, d8, d24
    add x15, x21, #16
    str d24, [x15]
    add x14, x14, #24
    ldr d24, [x14]
    fmul d24, d9, d24
    add x14, x21, #24
    str d24, [x14]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x21, [x19]
    sub x22, x29, #152
    add x23, x19, #56
    sub x14, x29, #168
    ldrb w24, [x14]
    sub x25, x29, #304
    mov x10, x20
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x25, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x23
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, x24
    mov x9, x25
    mov x6, x9
    sub x8, x29, #336
    bl _lb_gpu_Canvas_triangles
    sub x15, x29, #336
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L38_5
    b L38_4
L38_5:
    sub x19, x29, #128
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr d8, [sp, #248]
    ldr d9, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_6:
L38_4:
    sub x14, x29, #128
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr d8, [sp, #248]
    ldr d9, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_RenderTarget_mask
_lb_gpu_RenderTarget_mask:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #384]
    str x20, [sp, #376]
    str x21, [sp, #368]
    str x22, [sp, #360]
    str x23, [sp, #352]
    str x24, [sp, #344]
    str x25, [sp, #336]
    str x26, [sp, #328]
    str x27, [sp, #320]
    str d8, [sp, #312]
    str d9, [sp, #304]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str w3, [x16]
    sub x16, x29, #200
    str w4, [x16]
    sub x16, x29, #232
    str d0, [x16, #0]
    sub x16, x29, #232
    str d1, [x16, #8]
    sub x16, x29, #232
    str d2, [x16, #16]
    sub x16, x29, #232
    str d3, [x16, #24]
    sub x16, x29, #256
    str d4, [x16, #0]
    sub x16, x29, #256
    str d5, [x16, #8]
    sub x16, x29, #256
    str d6, [x16, #16]
    sub x9, x29, #152
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #288
    bl _lb_gpu_FrameState_check
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L39_2
    b L39_1
L39_2:
    sub x19, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_3:
L39_1:
    sub x20, x29, #232
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    sub x8, x29, #320
    bl _lb_gpu_12check_region
    sub x15, x29, #320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L39_5
    b L39_4
L39_5:
    sub x19, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_6:
L39_4:
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #16
    ldr d24, [x15]
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d8, d0
    ldr x14, [x19]
    add x14, x14, #72
    add x15, x14, #24
    ldr d24, [x15]
    add x14, x14, #8
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_gpu_11frame_scale
    fmov d9, d0
    sub x21, x29, #352
    sub x22, x29, #384
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    add x14, x19, #24
    ldr d24, [x14]
    ldr d25, [x20]
    fadd d24, d24, d25
    fmul d24, d8, d24
    str d24, [x22]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x20, #8
    ldr d25, [x14]
    fadd d24, d24, d25
    fmul d24, d9, d24
    add x14, x22, #8
    str d24, [x14]
    add x14, x20, #16
    ldr d24, [x14]
    fmul d24, d8, d24
    add x14, x22, #16
    str d24, [x14]
    add x14, x20, #24
    ldr d24, [x14]
    fmul d24, d9, d24
    add x14, x22, #24
    str d24, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x19]
    sub x15, x29, #168
    sub x22, x29, #184
    ldr w22, [x22]
    sub x23, x29, #200
    ldr w23, [x23]
    sub x24, x29, #256
    add x25, x19, #56
    add x26, x14, #72
    add x27, x26, #16
    ldr d24, [x27]
    add x26, x26, #24
    ldr d25, [x26]
    movz x16, #16
    sub sp, sp, x16
    fmov d16, d25
    str d16, [sp, #0]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x9, x24
    ldr d4, [x9, #0]
    ldr d5, [x9, #8]
    ldr d6, [x9, #16]
    fmov d16, d24
    fmov d7, d16
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x22
    mov x4, x23
    mov x9, x25
    ldr x5, [x9]
    ldr x6, [x9, #8]
    sub x8, x29, #416
    bl _lb_gpu_11canvas_mask
    movz x16, #16
    add sp, sp, x16
    sub x15, x29, #416
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L39_8
    b L39_7
L39_8:
    sub x19, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_9:
L39_7:
    sub x14, x29, #144
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_11frame_scale
_lb_gpu_11frame_scale:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #48
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, gt
    cbnz w14, L40_1
    b L40_2
L40_1:
    sub x14, x29, #32
    ldr d25, [x14]
    fdiv d25, d25, d24
    b L40_3
L40_2:
L40_3:
    fmov d16, d25
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_4:
    adrp x0, l_text_98@PAGE
    add x0, x0, l_text_98@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_12check_region
_lb_gpu_12check_region:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x16, x29, #96
    str d3, [x16, #24]
    sub x14, x29, #96
    ldr d24, [x14]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fneg d26, d25
    fcmp d24, d26
    cset w15, ge
    cbnz w15, L41_4
    b L41_19
L41_19:
    mov w19, w15
    b L41_5
L41_4:
    fcmp d24, d25
    cset w19, ls
L41_5:
    and w15, w19, #255
    cbnz w15, L41_6
    b L41_20
L41_20:
    mov w19, w15
    b L41_7
L41_6:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d26
    cset w19, ge
L41_7:
    and w15, w19, #255
    cbnz w15, L41_8
    b L41_21
L41_21:
    mov w19, w15
    b L41_9
L41_8:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ls
L41_9:
    and w15, w19, #255
    cbnz w15, L41_10
    b L41_22
L41_22:
    mov w19, w15
    b L41_11
L41_10:
    add x15, x14, #16
    ldr d24, [x15]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w19, ge
L41_11:
    and w15, w19, #255
    cbnz w15, L41_12
    b L41_23
L41_23:
    mov w19, w15
    b L41_13
L41_12:
    add x15, x14, #16
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ls
L41_13:
    and w15, w19, #255
    cbnz w15, L41_14
    b L41_24
L41_24:
    mov w19, w15
    b L41_15
L41_14:
    add x15, x14, #24
    ldr d24, [x15]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w19, ge
L41_15:
    and w15, w19, #255
    cbnz w15, L41_16
    b L41_25
L41_25:
    mov w14, w15
    b L41_17
L41_16:
    add x15, x14, #24
    ldr d24, [x15]
    fcmp d24, d25
    cset w15, ls
    mov w14, w15
L41_17:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L41_2
L41_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_102@PAGE
    add x14, x14, l_text_102@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_18:
    b L41_3
L41_2:
L41_3:
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_14intersect_clip
_lb_gpu_14intersect_clip:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str d8, [sp, #184]
    str d9, [sp, #176]
    str d10, [sp, #168]
    str d11, [sp, #160]
    str d12, [sp, #152]
    str d13, [sp, #144]
    str d14, [sp, #136]
    str d15, [sp, #128]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    sub x16, x29, #160
    str d3, [x16, #24]
    sub x16, x29, #176
    str d4, [x16]
    sub x16, x29, #192
    str d5, [x16]
    sub x19, x29, #128
    ldr w14, [x19]
    mov w14, w14
    ucvtf d8, x14
    sub x20, x29, #160
    ldr d9, [x20]
    sub x14, x29, #176
    ldr d10, [x14]
    fmul d24, d9, d10
    fmov d16, d8
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    bl _lb_math_max
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_floor
    fmov d11, d0
    add x14, x19, #4
    ldr w14, [x14]
    mov w14, w14
    ucvtf d12, x14
    add x14, x20, #8
    ldr d13, [x14]
    sub x14, x29, #192
    ldr d14, [x14]
    fmul d24, d13, d14
    fmov d16, d12
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    bl _lb_math_max
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_floor
    fmov d15, d0
    add x14, x19, #8
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    fadd d24, d8, d24
    add x14, x20, #16
    ldr d25, [x14]
    fadd d25, d9, d25
    fmul d25, d10, d25
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_math_min
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_ceil
    fmov d8, d0
    add x14, x19, #12
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    fadd d24, d12, d24
    add x14, x20, #24
    ldr d25, [x14]
    fadd d25, d13, d25
    fmul d25, d14, d25
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _lb_math_min
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_ceil
    fmov d9, d0
    fcmp d8, d11
    cset w14, ls
    cbnz w14, L42_8
    b L42_4
L42_8:
    mov w15, w14
    b L42_5
L42_4:
    fcmp d9, d15
    cset w15, ls
L42_5:
    and w14, w15, #255
    cbnz w14, L42_1
    b L42_2
L42_1:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr d8, [sp, #184]
    ldr d9, [sp, #176]
    ldr d10, [sp, #168]
    ldr d11, [sp, #160]
    ldr d12, [sp, #152]
    ldr d13, [sp, #144]
    ldr d14, [sp, #136]
    ldr d15, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_6:
    b L42_3
L42_2:
L42_3:
    sub x19, x29, #224
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    adrp x20, l_text_103@PAGE
    add x20, x20, l_text_103@PAGEOFF
    fmov d16, d11
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    str w14, [x19]
    fmov d16, d15
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x19, #4
    str w14, [x15]
    fsub d24, d8, d11
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x19, #8
    str w14, [x15]
    fsub d24, d9, d15
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x20
    bl _lb_core_6f_to_u
    mov x14, x0
    add x15, x19, #12
    str w14, [x15]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr d8, [sp, #184]
    ldr d9, [sp, #176]
    ldr d10, [sp, #168]
    ldr d11, [sp, #160]
    ldr d12, [sp, #152]
    ldr d13, [sp, #144]
    ldr d14, [sp, #136]
    ldr d15, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_7:
    adrp x0, l_text_103@PAGE
    add x0, x0, l_text_103@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_14backend_render
_lb_gpu_14backend_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    sub x16, x29, #216
    str x3, [x16]
    sub x16, x29, #240
    str d0, [x16, #0]
    sub x16, x29, #240
    str d1, [x16, #8]
    sub x16, x29, #240
    str d2, [x16, #16]
    sub x0, x29, #216
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #112
    ldr x14, [x14]
    ldrb w15, [x14]
    movz x10, #1
    cmp w15, w10
    b.ne L43_2
L43_1:
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #128
    sub x20, x29, #144
    ldr x20, [x20]
    sub x21, x29, #216
    sub x22, x29, #240
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x15
    mov x9, x19
    ldr x1, [x9]
    mov x2, x20
    mov x9, x21
    mov x3, x9
    sub x8, x29, #280
    bl _lb_gpu_12metal_render
    sub x19, x29, #280
    add x15, x19, #32
    ldrb w15, [x15]
    cbnz w15, L43_5
    b L43_4
L43_5:
    add x14, x19, #8
    sub x20, x29, #96
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_6:
L43_4:
    ldrb w14, [x19]
    sub x15, x29, #96
    strb w14, [x15]
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_7:
    b L43_3
L43_2:
L43_3:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_106@PAGE
    add x15, x15, l_text_106@PAGEOFF
    sub x20, x29, #296
    str x15, [x20]
    add x15, x20, #8
    movz x9, #34
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_8:
    adrp x0, l_text_112@PAGE
    add x0, x0, l_text_112@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_11metal_class
_lb_gpu_11metal_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str x0, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl _objc_getClass
    mov x14, x0
    cbnz x14, L44_1
    b L44_2
L44_1:
    b L44_3
L44_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_117@PAGE
    add x15, x15, l_text_117@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #62
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_4:
L44_3:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_5:
    adrp x0, l_text_118@PAGE
    add x0, x0, l_text_118@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_20metal_device_destroy
_lb_gpu_20metal_device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L45_1
    b L45_2
L45_2:
    adrp x0, l_text_127@PAGE
    add x0, x0, l_text_127@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L45_1:
    sub x14, x29, #56
    ldr x20, [x14]
    add x14, x20, #8
    ldr x21, [x14]
    cbnz x21, L45_6
    b L45_4
L45_6:
L45_3:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #88
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L45_13
    b L45_14
L45_14:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L45_13:
    b L45_16
L45_15:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L45_16:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L45_5
L45_4:
L45_5:
    ldr x21, [x20]
    cbnz x21, L45_10
    b L45_8
L45_10:
L45_7:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #88
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L45_17
    b L45_18
L45_18:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L45_17:
    b L45_20
L45_19:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L45_20:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L45_9
L45_8:
L45_9:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #72
    str x20, [x15]
    add x21, x15, #8
    movz x9, #16
    str x9, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L45_12
    b L45_11
L45_12:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L45_11:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_10metal_text
_lb_gpu_10metal_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #96
    str x0, [x16]
    adrp x14, l_text_129@PAGE
    add x14, x14, l_text_129@PAGEOFF
    mov x0, x14
    sub x8, x29, #136
    bl _lb_gpu_11metal_class
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L46_2
    b L46_1
L46_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_3:
L46_1:
    ldr x19, [x15]
    adrp x14, l_text_130@PAGE
    add x14, x14, l_text_130@PAGEOFF
    sub x10, x29, #168
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L46_9
    b L46_10
L46_10:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L46_9:
    b L46_12
L46_11:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L46_12:
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L46_4
    b L46_5
L46_4:
    b L46_6
L46_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_131@PAGE
    add x15, x15, l_text_131@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #34
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_7:
L46_6:
    sub x14, x29, #80
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_8:
    adrp x0, l_text_132@PAGE
    add x0, x0, l_text_132@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_18metal_drawing_open
_lb_gpu_18metal_drawing_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #688
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #656]
    str x20, [sp, #648]
    str x21, [sp, #640]
    str x22, [sp, #632]
    str x23, [sp, #624]
    str x24, [sp, #616]
    str x25, [sp, #608]
    str x26, [sp, #600]
    str x27, [sp, #592]
    str x28, [sp, #584]
    sub x16, x29, #160
    str x0, [x16]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x19, x29, #176
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #216
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cbnz x15, L47_1
    b L47_2
L47_2:
    adrp x0, l_text_133@PAGE
    add x0, x0, l_text_133@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L47_1:
    ldr x19, [x15]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #48
    movz x2, #8
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #240
    add x19, x21, #16
    ldrb w19, [x19]
    cbnz w19, L47_3
    b L47_4
L47_4:
    add x14, x20, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    b L47_5
L47_3:
    ldr x19, [x21]
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    mov x10, x22
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    str x19, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
L47_5:
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L47_7
    b L47_6
L47_7:
    add x14, x20, #8
    sub x19, x29, #144
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_8:
L47_6:
    ldr x19, [x20]
    adrp x14, l_text_134@PAGE
    add x14, x14, l_text_134@PAGEOFF
    mov x0, x14
    sub x8, x29, #328
    bl _lb_gpu_10metal_text
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L47_10
    b L47_9
L47_10:
    add x14, x15, #8
    sub x20, x29, #144
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_11:
L47_9:
    ldr x20, [x15]
    sub x21, x29, #336
    mov x9, #0
    str x9, [x21]
    sub x14, x29, #160
    ldr x14, [x14]
    ldr x22, [x14]
    sub x10, x29, #640
    str x22, [x10]
    cbnz x22, L47_57
    b L47_58
L47_57:
    b L47_59
L47_58:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #656
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_59:
    b L47_61
L47_60:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_61:
    adrp x14, l_text_135@PAGE
    add x14, x14, l_text_135@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_62
    b L47_63
L47_63:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_62:
    b L47_65
L47_64:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_65:
    mov x0, x22
    mov x1, x14
    mov x2, x20
    mov x3, #0
    mov x4, x21
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L47_12
    b L47_13
L47_12:
    b L47_14
L47_13:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_136@PAGE
    add x15, x15, l_text_136@PAGEOFF
    sub x21, x29, #352
    str x15, [x21]
    add x15, x21, #8
    movz x9, #48
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_15:
L47_14:
    adrp x20, l_text_137@PAGE
    add x20, x20, l_text_137@PAGEOFF
    sub x10, x29, #672
    str x20, [x10]
    mov x0, x20
    bl _sel_registerName
    mov x24, x0
    cbnz x24, L47_66
    b L47_67
L47_67:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_66:
    b L47_69
L47_68:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_69:
    adrp x14, l_text_138@PAGE
    add x14, x14, l_text_138@PAGEOFF
    mov x0, x14
    sub x8, x29, #392
    bl _lb_gpu_10metal_text
    sub x15, x29, #392
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L47_17
    b L47_16
L47_17:
    add x14, x15, #8
    sub x20, x29, #144
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_70
    b L47_71
L47_71:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_70:
    b L47_73
L47_72:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_73:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_18:
L47_16:
    ldr x14, [x15]
    mov x0, x23
    mov x1, x24
    mov x2, x14
    bl _objc_msgSend
    mov x25, x0
    cbnz x25, L47_19
    b L47_20
L47_19:
    b L47_21
L47_20:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_139@PAGE
    add x15, x15, l_text_139@PAGEOFF
    sub x21, x29, #408
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_74
    b L47_75
L47_75:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_74:
    b L47_77
L47_76:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_77:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_22:
L47_21:
    sub x10, x29, #672
    str x20, [x10]
    mov x0, x20
    bl _sel_registerName
    mov x24, x0
    cbnz x24, L47_78
    b L47_79
L47_79:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_78:
    b L47_81
L47_80:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_81:
    adrp x14, l_text_140@PAGE
    add x14, x14, l_text_140@PAGEOFF
    mov x0, x14
    sub x8, x29, #448
    bl _lb_gpu_10metal_text
    sub x15, x29, #448
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L47_24
    b L47_23
L47_24:
    add x14, x15, #8
    sub x20, x29, #144
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x21, l_text_128@PAGE
    add x21, x21, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x21, [x10]
    mov x0, x21
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_82
    b L47_83
L47_83:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_82:
    b L47_85
L47_84:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_85:
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x21, [x10]
    mov x0, x21
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_86
    b L47_87
L47_87:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_86:
    b L47_89
L47_88:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_89:
    mov x0, x23
    mov x1, x15
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_25:
L47_23:
    ldr x14, [x15]
    mov x0, x23
    mov x1, x24
    mov x2, x14
    bl _objc_msgSend
    mov x20, x0
    cbnz x20, L47_26
    b L47_27
L47_26:
    b L47_28
L47_27:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_141@PAGE
    add x15, x15, l_text_141@PAGEOFF
    sub x21, x29, #464
    str x15, [x21]
    add x15, x21, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x21, l_text_128@PAGE
    add x21, x21, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x21, [x10]
    mov x0, x21
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_90
    b L47_91
L47_91:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_90:
    b L47_93
L47_92:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_93:
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x21, [x10]
    mov x0, x21
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_94
    b L47_95
L47_95:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_94:
    b L47_97
L47_96:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_97:
    mov x0, x23
    mov x1, x15
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_29:
L47_28:
    adrp x14, l_text_142@PAGE
    add x14, x14, l_text_142@PAGEOFF
    mov x0, x14
    sub x8, x29, #504
    bl _lb_gpu_11metal_class
    sub x15, x29, #504
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L47_31
    b L47_30
L47_31:
    add x14, x15, #8
    sub x21, x29, #144
    add x22, x21, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_128@PAGE
    add x22, x22, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_98
    b L47_99
L47_99:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_98:
    b L47_101
L47_100:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_101:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_102
    b L47_103
L47_103:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_102:
    b L47_105
L47_104:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_105:
    mov x0, x25
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_106
    b L47_107
L47_107:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_106:
    b L47_109
L47_108:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_109:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_32:
L47_30:
    ldr x24, [x15]
    adrp x26, l_text_143@PAGE
    add x26, x26, l_text_143@PAGEOFF
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_110
    b L47_111
L47_111:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_110:
    b L47_113
L47_112:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_113:
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x27, x0
    cbnz x27, L47_33
    b L47_34
L47_33:
    b L47_35
L47_34:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_144@PAGE
    add x15, x15, l_text_144@PAGEOFF
    sub x22, x29, #520
    str x15, [x22]
    add x15, x22, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_128@PAGE
    add x22, x22, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_114
    b L47_115
L47_115:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_114:
    b L47_117
L47_116:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_117:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_118
    b L47_119
L47_119:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_118:
    b L47_121
L47_120:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_121:
    mov x0, x25
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_122
    b L47_123
L47_123:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_122:
    b L47_125
L47_124:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_125:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_36:
L47_35:
    adrp x14, l_text_145@PAGE
    add x14, x14, l_text_145@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_126
    b L47_127
L47_127:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_126:
    b L47_129
L47_128:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_129:
    mov x0, x27
    mov x1, x14
    mov x2, x25
    bl _objc_msgSend
    adrp x15, l_text_146@PAGE
    add x15, x15, l_text_146@PAGEOFF
    sub x10, x29, #672
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_130
    b L47_131
L47_131:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_130:
    b L47_133
L47_132:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_133:
    mov x0, x27
    mov x1, x15
    mov x2, x20
    bl _objc_msgSend
    adrp x14, l_text_147@PAGE
    add x14, x14, l_text_147@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_134
    b L47_135
L47_135:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_134:
    b L47_137
L47_136:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_137:
    mov x0, x27
    mov x1, x14
    movz x2, #252
    bl _objc_msgSend
    adrp x15, l_text_148@PAGE
    add x15, x15, l_text_148@PAGEOFF
    sub x10, x29, #672
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_138
    b L47_139
L47_139:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_138:
    b L47_141
L47_140:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_141:
    mov x0, x27
    mov x1, x15
    bl _objc_msgSend
    mov x24, x0
    sub x10, x29, #640
    str x24, [x10]
    cbnz x24, L47_142
    b L47_143
L47_142:
    b L47_144
L47_143:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #656
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_144:
    b L47_146
L47_145:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_146:
    adrp x14, l_text_149@PAGE
    add x14, x14, l_text_149@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_147
    b L47_148
L47_148:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_147:
    b L47_150
L47_149:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_150:
    mov x0, x24
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov x28, x0
    sub x10, x29, #640
    str x28, [x10]
    cbnz x28, L47_151
    b L47_152
L47_151:
    b L47_153
L47_152:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #656
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_153:
    b L47_155
L47_154:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_155:
    adrp x14, l_text_150@PAGE
    add x14, x14, l_text_150@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_156
    b L47_157
L47_157:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_156:
    b L47_159
L47_158:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_159:
    mov x0, x28
    mov x1, x14
    movz x2, #81
    bl _objc_msgSend
    adrp x15, l_text_151@PAGE
    add x15, x15, l_text_151@PAGEOFF
    sub x10, x29, #672
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_160
    b L47_161
L47_161:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_160:
    b L47_163
L47_162:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_163:
    mov x0, x28
    mov x1, x15
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_152@PAGE
    add x14, x14, l_text_152@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_164
    b L47_165
L47_165:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_164:
    b L47_167
L47_166:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_167:
    mov x0, x28
    mov x1, x14
    movz x2, #4
    bl _objc_msgSend
    adrp x15, l_text_153@PAGE
    add x15, x15, l_text_153@PAGEOFF
    sub x10, x29, #672
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_168
    b L47_169
L47_169:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_168:
    b L47_171
L47_170:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_171:
    mov x0, x28
    mov x1, x15
    movz x2, #5
    bl _objc_msgSend
    adrp x14, l_text_154@PAGE
    add x14, x14, l_text_154@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_172
    b L47_173
L47_173:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_172:
    b L47_175
L47_174:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_175:
    mov x0, x28
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x15, l_text_155@PAGE
    add x15, x15, l_text_155@PAGEOFF
    sub x10, x29, #672
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_176
    b L47_177
L47_177:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_176:
    b L47_179
L47_178:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_179:
    mov x0, x28
    mov x1, x15
    movz x2, #5
    bl _objc_msgSend
    adrp x14, l_text_156@PAGE
    add x14, x14, l_text_156@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_180
    b L47_181
L47_181:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_180:
    b L47_183
L47_182:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_183:
    mov x0, x22
    mov x1, x14
    mov x2, x27
    mov x3, x21
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L47_37
    b L47_38
L47_37:
    b L47_39
L47_38:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_157@PAGE
    add x15, x15, l_text_157@PAGEOFF
    sub x22, x29, #536
    str x15, [x22]
    add x15, x22, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_128@PAGE
    add x22, x22, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_184
    b L47_185
L47_185:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_184:
    b L47_187
L47_186:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_187:
    mov x0, x27
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_188
    b L47_189
L47_189:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_188:
    b L47_191
L47_190:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_191:
    mov x0, x20
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_192
    b L47_193
L47_193:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_192:
    b L47_195
L47_194:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_195:
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_196
    b L47_197
L47_197:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_196:
    b L47_199
L47_198:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_199:
    mov x0, x23
    mov x1, x15
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_40:
L47_39:
    str x15, [x19]
    adrp x14, l_text_158@PAGE
    add x14, x14, l_text_158@PAGEOFF
    mov x0, x14
    sub x8, x29, #576
    bl _lb_gpu_11metal_class
    sub x21, x29, #576
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L47_42
    b L47_41
L47_42:
    add x14, x21, #8
    sub x22, x29, #144
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    adrp x24, l_text_128@PAGE
    add x24, x24, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_200
    b L47_201
L47_201:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_200:
    b L47_203
L47_202:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_203:
    mov x0, x27
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_204
    b L47_205
L47_205:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_204:
    b L47_207
L47_206:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_207:
    mov x0, x20
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_208
    b L47_209
L47_209:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_208:
    b L47_211
L47_210:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_211:
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_212
    b L47_213
L47_213:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_212:
    b L47_215
L47_214:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_215:
    mov x0, x23
    mov x1, x15
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_43:
L47_41:
    ldr x24, [x21]
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_216
    b L47_217
L47_217:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_216:
    b L47_219
L47_218:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_219:
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L47_44
    b L47_45
L47_44:
    b L47_46
L47_45:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_159@PAGE
    add x15, x15, l_text_159@PAGEOFF
    sub x22, x29, #592
    str x15, [x22]
    add x15, x22, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_128@PAGE
    add x22, x22, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_220
    b L47_221
L47_221:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_220:
    b L47_223
L47_222:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_223:
    mov x0, x27
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_224
    b L47_225
L47_225:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_224:
    b L47_227
L47_226:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_227:
    mov x0, x20
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_228
    b L47_229
L47_229:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_228:
    b L47_231
L47_230:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_231:
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_232
    b L47_233
L47_233:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_232:
    b L47_235
L47_234:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_235:
    mov x0, x23
    mov x1, x15
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_47:
L47_46:
    adrp x24, l_text_160@PAGE
    add x24, x24, l_text_160@PAGEOFF
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_236
    b L47_237
L47_237:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_236:
    b L47_239
L47_238:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_239:
    mov x0, x21
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x9, l_text_161@PAGE
    add x9, x9, l_text_161@PAGEOFF
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    sub x10, x29, #672
    str x9, [x10]
    ldr x0, [sp, #8]
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_240
    b L47_241
L47_241:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_240:
    b L47_243
L47_242:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_243:
    mov x0, x21
    mov x1, x15
    movz x2, #1
    bl _objc_msgSend
    add x26, x19, #8
    adrp x28, l_text_162@PAGE
    add x28, x28, l_text_162@PAGEOFF
    sub x10, x29, #672
    str x28, [x10]
    mov x0, x28
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_244
    b L47_245
L47_245:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_244:
    b L47_247
L47_246:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_247:
    mov x0, x22
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L47_48
    b L47_49
L47_48:
    b L47_50
L47_49:
    sub x22, x29, #144
    add x14, x22, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_163@PAGE
    add x15, x15, l_text_163@PAGEOFF
    sub x24, x29, #608
    str x15, [x24]
    add x15, x24, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    adrp x24, l_text_128@PAGE
    add x24, x24, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_248
    b L47_249
L47_249:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_248:
    b L47_251
L47_250:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_251:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_252
    b L47_253
L47_253:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_252:
    b L47_255
L47_254:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_255:
    mov x0, x27
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_256
    b L47_257
L47_257:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_256:
    b L47_259
L47_258:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_259:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_260
    b L47_261
L47_261:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_260:
    b L47_263
L47_262:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_263:
    mov x0, x25
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_264
    b L47_265
L47_265:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_264:
    b L47_267
L47_266:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_267:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_51:
L47_50:
    str x15, [x26]
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_268
    b L47_269
L47_269:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_268:
    b L47_271
L47_270:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_271:
    mov x0, x21
    mov x1, x14
    movz x2, #7
    bl _objc_msgSend
    ldr x9, [sp, #8]
    sub x10, x29, #672
    str x9, [x10]
    ldr x0, [sp, #8]
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_272
    b L47_273
L47_273:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_272:
    b L47_275
L47_274:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_275:
    mov x0, x21
    mov x1, x15
    mov x2, #0
    bl _objc_msgSend
    add x24, x19, #16
    sub x10, x29, #672
    str x28, [x10]
    mov x0, x28
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_276
    b L47_277
L47_277:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_276:
    b L47_279
L47_278:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_279:
    mov x0, x22
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L47_52
    b L47_53
L47_52:
    b L47_54
L47_53:
    sub x22, x29, #144
    add x14, x22, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_164@PAGE
    add x15, x15, l_text_164@PAGEOFF
    sub x24, x29, #624
    str x15, [x24]
    add x15, x24, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    adrp x24, l_text_128@PAGE
    add x24, x24, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_280
    b L47_281
L47_281:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_280:
    b L47_283
L47_282:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_283:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_284
    b L47_285
L47_285:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_284:
    b L47_287
L47_286:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_287:
    mov x0, x27
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_288
    b L47_289
L47_289:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_288:
    b L47_291
L47_290:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_291:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_292
    b L47_293
L47_293:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_292:
    b L47_295
L47_294:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_295:
    mov x0, x25
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_296
    b L47_297
L47_297:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_296:
    b L47_299
L47_298:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_299:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_55:
L47_54:
    str x15, [x24]
    sub x22, x29, #144
    str x19, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    adrp x26, l_text_128@PAGE
    add x26, x26, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_300
    b L47_301
L47_301:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_300:
    b L47_303
L47_302:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_303:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_304
    b L47_305
L47_305:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_304:
    b L47_307
L47_306:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_307:
    mov x0, x27
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_308
    b L47_309
L47_309:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_308:
    b L47_311
L47_310:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_311:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L47_312
    b L47_313
L47_313:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_312:
    b L47_315
L47_314:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_315:
    mov x0, x25
    mov x1, x15
    bl _objc_msgSend
    sub x10, x29, #672
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_316
    b L47_317
L47_317:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_316:
    b L47_319
L47_318:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_319:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_56:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    sub x14, x29, #672
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_320
    b L47_321
L47_321:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_320:
    mov x15, x14
    b L47_323
L47_322:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_323:
    mov x19, x15
    mov x0, x14
    mov x1, x19
    bl _objc_msgSend
    adrp x19, l_text_128@PAGE
    add x19, x19, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x19, [x10]
    sub x19, x29, #672
    ldr x19, [x19]
    mov x0, x19
    bl _sel_registerName
    mov x19, x0
    cbnz x19, L47_324
    b L47_325
L47_325:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_324:
    mov x15, x19
    b L47_327
L47_326:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_327:
    mov x14, x15
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    sub x14, x29, #672
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_328
    b L47_329
L47_329:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_328:
    mov x15, x14
    b L47_331
L47_330:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_331:
    mov x14, x15
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    sub x14, x29, #672
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_332
    b L47_333
L47_333:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_332:
    mov x15, x14
    b L47_335
L47_334:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_335:
    mov x14, x15
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #672
    str x14, [x10]
    sub x14, x29, #672
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L47_336
    b L47_337
L47_337:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L47_336:
    mov x15, x14
    b L47_339
L47_338:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_339:
    mov x14, x15
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    adrp x0, l_text_165@PAGE
    add x0, x0, l_text_165@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_11metal_depth
_lb_gpu_11metal_depth:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    str x25, [sp, #240]
    str x26, [sp, #232]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    sub x16, x29, #192
    str x3, [x16]
    sub x14, x29, #160
    ldr x19, [x14]
    add x20, x19, #32
    ldr x14, [x20]
    sub x15, x29, #176
    ldr x21, [x15]
    cmp x14, x21
    cset w14, eq
    cbnz w14, L48_4
    b L48_81
L48_81:
    mov w15, w14
    b L48_5
L48_4:
    add x14, x19, #40
    ldr x14, [x14]
    sub x15, x29, #192
    ldr x15, [x15]
    cmp x14, x15
    cset w15, eq
L48_5:
    and w14, w15, #255
    cbnz w14, L48_1
    b L48_2
L48_1:
    add x14, x19, #24
    ldr x14, [x14]
    sub x10, x29, #280
    str x14, [x10]
    cbnz x14, L48_23
    b L48_24
L48_23:
    b L48_25
L48_24:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_25:
    b L48_27
L48_26:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_27:
    sub x15, x29, #128
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_6:
    b L48_3
L48_2:
L48_3:
    adrp x14, l_text_166@PAGE
    add x14, x14, l_text_166@PAGEOFF
    mov x0, x14
    sub x8, x29, #232
    bl _lb_gpu_11metal_class
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L48_8
    b L48_7
L48_8:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_9:
L48_7:
    ldr x22, [x15]
    adrp x14, l_text_143@PAGE
    add x14, x14, l_text_143@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_28
    b L48_29
L48_29:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_28:
    b L48_31
L48_30:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_31:
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L48_10
    b L48_11
L48_10:
    b L48_12
L48_11:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_167@PAGE
    add x15, x15, l_text_167@PAGEOFF
    sub x20, x29, #248
    str x15, [x20]
    add x15, x20, #8
    movz x9, #47
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_13:
L48_12:
    adrp x14, l_text_168@PAGE
    add x14, x14, l_text_168@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_32
    b L48_33
L48_33:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_32:
    b L48_35
L48_34:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_35:
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    sub x10, x29, #312
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L48_36
    b L48_37
L48_37:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_36:
    b L48_39
L48_38:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_39:
    mov x0, x23
    mov x1, x15
    movz x2, #252
    bl _objc_msgSend
    adrp x14, l_text_169@PAGE
    add x14, x14, l_text_169@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_40
    b L48_41
L48_41:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_40:
    b L48_43
L48_42:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_43:
    mov x0, x23
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    adrp x15, l_text_170@PAGE
    add x15, x15, l_text_170@PAGEOFF
    sub x10, x29, #312
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L48_44
    b L48_45
L48_45:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_44:
    b L48_47
L48_46:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_47:
    sub x14, x29, #192
    ldr x22, [x14]
    mov x0, x23
    mov x1, x15
    mov x2, x22
    bl _objc_msgSend
    adrp x14, l_text_171@PAGE
    add x14, x14, l_text_171@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_48
    b L48_49
L48_49:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_48:
    b L48_51
L48_50:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_51:
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    adrp x15, l_text_172@PAGE
    add x15, x15, l_text_172@PAGEOFF
    sub x10, x29, #312
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L48_52
    b L48_53
L48_53:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_52:
    b L48_55
L48_54:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_55:
    mov x0, x23
    mov x1, x15
    movz x2, #4
    bl _objc_msgSend
    sub x14, x29, #144
    ldr x14, [x14]
    ldr x24, [x14]
    sub x10, x29, #280
    str x24, [x10]
    cbnz x24, L48_56
    b L48_57
L48_56:
    b L48_58
L48_57:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_58:
    b L48_60
L48_59:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_60:
    adrp x14, l_text_173@PAGE
    add x14, x14, l_text_173@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_61
    b L48_62
L48_62:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_61:
    b L48_64
L48_63:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_64:
    mov x0, x24
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    mov x25, x0
    cbnz x25, L48_14
    b L48_15
L48_14:
    b L48_16
L48_15:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_174@PAGE
    add x15, x15, l_text_174@PAGEOFF
    sub x20, x29, #264
    str x15, [x20]
    add x15, x20, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_65
    b L48_66
L48_66:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_65:
    b L48_68
L48_67:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_68:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_17:
L48_16:
    add x24, x19, #24
    ldr x26, [x24]
    cbnz x26, L48_21
    b L48_19
L48_21:
L48_18:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_69
    b L48_70
L48_70:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_69:
    b L48_72
L48_71:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_72:
    mov x0, x26
    mov x1, x14
    bl _objc_msgSend
    b L48_20
L48_19:
L48_20:
    str x25, [x24]
    str x21, [x20]
    add x14, x19, #40
    str x22, [x14]
    sub x26, x29, #128
    str x25, [x26]
    add x14, x26, #32
    mov x9, #0
    strb w9, [x14]
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_73
    b L48_74
L48_74:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_73:
    b L48_76
L48_75:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_76:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x1, x26
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_22:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #312
    str x14, [x10]
    sub x14, x29, #312
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L48_77
    b L48_78
L48_78:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L48_77:
    mov x15, x14
    b L48_80
L48_79:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L48_80:
    mov x19, x15
    mov x0, x14
    mov x1, x19
    bl _objc_msgSend
    adrp x0, l_text_175@PAGE
    add x0, x0, l_text_175@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21metal_drawing_destroy
_lb_gpu_21metal_drawing_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    add x14, x19, #24
    ldr x20, [x14]
    cbnz x20, L49_4
    b L49_2
L49_4:
L49_1:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #80
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L49_19
    b L49_20
L49_20:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L49_19:
    b L49_22
L49_21:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L49_22:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L49_3
L49_2:
L49_3:
    ldr x20, [x19]
    cbnz x20, L49_8
    b L49_6
L49_8:
L49_5:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #80
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L49_23
    b L49_24
L49_24:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L49_23:
    b L49_26
L49_25:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L49_26:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L49_7
L49_6:
L49_7:
    add x14, x19, #8
    ldr x20, [x14]
    cbnz x20, L49_12
    b L49_10
L49_12:
L49_9:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #80
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L49_27
    b L49_28
L49_28:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L49_27:
    b L49_30
L49_29:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L49_30:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L49_11
L49_10:
L49_11:
    add x14, x19, #16
    ldr x20, [x14]
    cbnz x20, L49_16
    b L49_14
L49_16:
L49_13:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #80
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L49_31
    b L49_32
L49_32:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L49_31:
    b L49_34
L49_33:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L49_34:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L49_15
L49_14:
L49_15:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #64
    str x19, [x15]
    add x20, x15, #8
    movz x9, #48
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L49_18
    b L49_17
L49_18:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L49_17:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_12metal_encode
_lb_gpu_12metal_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #960
    str x19, [sp, #936]
    str x20, [sp, #928]
    str x21, [sp, #920]
    str x22, [sp, #912]
    str x23, [sp, #904]
    str x24, [sp, #896]
    str x25, [sp, #888]
    str x26, [sp, #880]
    str x27, [sp, #872]
    str x28, [sp, #864]
    str d8, [sp, #856]
    str d9, [sp, #848]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x16, x29, #160
    str x2, [x16]
    sub x16, x29, #176
    str x3, [x16]
    sub x16, x29, #248
    str x4, [x16]
    sub x16, x29, #264
    str x5, [x16]
    sub x16, x29, #280
    str x6, [x16]
    sub x0, x29, #248
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #128
    ldr x9, [x14]
    str x9, [sp, #320]
    adrp x14, l_text_176@PAGE
    add x14, x14, l_text_176@PAGEOFF
    sub x10, x29, #632
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L50_19
    b L50_20
L50_20:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_19:
    b L50_22
L50_21:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_22:
    sub x15, x29, #144
    ldr x20, [x15]
    ldr x15, [x20]
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    adrp x15, l_text_177@PAGE
    add x15, x15, l_text_177@PAGEOFF
    sub x10, x29, #632
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L50_23
    b L50_24
L50_24:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_23:
    b L50_26
L50_25:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_26:
    sub x14, x29, #160
    ldr x14, [x14]
    ldr x0, [sp, #320]
    mov x1, x15
    mov x2, x14
    mov x3, #0
    mov x4, #0
    bl _objc_msgSend
    adrp x14, l_text_178@PAGE
    add x14, x14, l_text_178@PAGEOFF
    sub x10, x29, #632
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L50_27
    b L50_28
L50_28:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_27:
    b L50_30
L50_29:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_30:
    sub x15, x29, #176
    ldr x15, [x15]
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    mov x3, #0
    mov x4, #0
    bl _objc_msgSend
    sub x15, x29, #248
    add x21, x15, #16
    ldr x22, [x21]
    add x21, x21, #8
    ldr x21, [x21]
    add x15, x15, #40
    ldr x9, [x15]
    str x9, [sp, #24]
    add x15, x21, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_179@PAGE
    add x0, x0, l_text_179@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_179@PAGE
    add x0, x0, l_text_179@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #24]
    cmp x9, x10
    b.ls L50_5
L50_6:
    adrp x0, l_text_179@PAGE
    add x0, x0, l_text_179@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
L50_5:
    sub x14, x29, #296
    str x22, [x14]
    add x14, x14, #8
    ldr x9, [sp, #24]
    str x9, [x14]
    sub x21, x29, #408
    add x24, x21, #16
    sub x25, x29, #264
    add x26, x24, #4
    sub x9, x29, #280
    str x9, [sp, #304]
    add x9, x24, #8
    str x9, [sp, #288]
    add x9, x24, #12
    str x9, [sp, #280]
    sub x9, x29, #440
    str x9, [sp, #16]
    add x9, x21, #40
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #32
    str x9, [sp, #272]
    sub x9, x29, #504
    str x9, [sp, #256]
    ldr x9, [sp, #256]
    add x9, x9, #16
    str x9, [sp, #248]
    ldr x9, [sp, #256]
    add x9, x9, #24
    str x9, [sp, #240]
    sub x9, x29, #472
    str x9, [sp, #232]
    sub x9, x29, #472
    str x9, [sp, #264]
    sub x9, x29, #472
    str x9, [sp, #224]
    adrp x9, l_text_182@PAGE
    add x9, x9, l_text_182@PAGEOFF
    str x9, [sp, #216]
    sub x9, x29, #552
    str x9, [sp, #208]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #200]
    ldr x9, [sp, #208]
    add x9, x9, #8
    str x9, [sp, #192]
    ldr x9, [sp, #16]
    add x9, x9, #16
    str x9, [sp, #184]
    ldr x9, [sp, #208]
    add x9, x9, #16
    str x9, [sp, #176]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #168]
    ldr x9, [sp, #208]
    add x9, x9, #24
    str x9, [sp, #160]
    mov x9, #0
    fmov d8, x9
    ldr x9, [sp, #208]
    add x9, x9, #32
    str x9, [sp, #152]
    movz x9, #16368, lsl #48
    fmov d9, x9
    ldr x9, [sp, #208]
    add x9, x9, #40
    str x9, [sp, #144]
    adrp x9, l_text_183@PAGE
    add x9, x9, l_text_183@PAGEOFF
    str x9, [sp, #136]
    sub x9, x29, #584
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #8
    str x9, [sp, #120]
    ldr x9, [sp, #128]
    add x9, x9, #16
    str x9, [sp, #112]
    ldr x9, [sp, #128]
    add x9, x9, #24
    str x9, [sp, #104]
    adrp x9, l_text_184@PAGE
    add x9, x9, l_text_184@PAGEOFF
    str x9, [sp, #96]
    add x9, x21, #32
    str x9, [sp, #88]
    add x9, x20, #16
    str x9, [sp, #72]
    add x9, x20, #8
    str x9, [sp, #80]
    sub x9, x29, #616
    str x9, [sp, #64]
    add x9, x21, #80
    str x9, [sp, #56]
    adrp x9, l_text_185@PAGE
    add x9, x9, l_text_185@PAGEOFF
    str x9, [sp, #48]
    adrp x9, l_text_186@PAGE
    add x9, x9, l_text_186@PAGEOFF
    str x9, [sp, #40]
    add x9, x21, #8
    str x9, [sp, #32]
    mov x9, #0
    mov x19, x9
L50_1:
    ldr x10, [sp, #24]
    cmp x19, x10
    b.hs L50_4
L50_2:
    movz x10, #112
    mul x14, x19, x10
    add x14, x14, x22
    mov x10, x14
    mov x11, x21
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
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldr w14, [x24]
    mov w14, w14
    ldr x20, [x25]
    mov x0, x14
    mov x1, x20
    bl _lb_gpu_9metal_min
    str x0, [sp, #312]
    ldr w14, [x26]
    mov w14, w14
    ldr x9, [sp, #304]
    ldr x28, [x9]
    mov x0, x14
    mov x1, x28
    bl _lb_gpu_9metal_min
    str x0, [sp, #296]
    ldr x9, [sp, #288]
    ldr w14, [x9]
    mov w14, w14
    mov x9, x20
    ldr x10, [sp, #312]
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_180@PAGE
    add x0, x0, l_text_180@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_9metal_min
    mov x23, x0
    ldr x9, [sp, #280]
    ldr w14, [x9]
    mov w14, w14
    mov x9, x28
    ldr x10, [sp, #296]
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_181@PAGE
    add x0, x0, l_text_181@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_9metal_min
    mov x27, x0
    mov x10, #0
    cmp x23, x10
    cset w14, eq
    cbnz w14, L50_51
    b L50_10
L50_51:
    mov w15, w14
    b L50_11
L50_10:
    mov x10, #0
    cmp x27, x10
    cset w15, eq
L50_11:
    and w14, w15, #255
    cbnz w14, L50_7
    b L50_8
L50_7:
    b L50_3
L50_12:
    b L50_9
L50_8:
L50_9:
    ldr x9, [sp, #272]
    ldrb w14, [x9]
    cbnz w14, L50_13
    b L50_14
L50_13:
    ldr x10, [sp, #8]
    ldr x11, [sp, #264]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L50_15
L50_14:
    ldr x11, [sp, #256]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ucvtf d24, x20
    ldr x10, [sp, #248]
    str d24, [x10]
    ucvtf d24, x28
    ldr x10, [sp, #240]
    str d24, [x10]
    ldr x10, [sp, #256]
    ldr x11, [sp, #232]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L50_15:
    ldr x10, [sp, #224]
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #216]
    sub x10, x29, #632
    str x9, [x10]
    ldr x0, [sp, #216]
    bl _sel_registerName
    mov x20, x0
    cbnz x20, L50_31
    b L50_32
L50_32:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_31:
    b L50_34
L50_33:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_34:
    ldr x11, [sp, #208]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    ldr x9, [sp, #16]
    ldr d24, [x9]
    ldr x10, [sp, #208]
    str d24, [x10]
    ldr x9, [sp, #200]
    ldr d24, [x9]
    ldr x10, [sp, #192]
    str d24, [x10]
    ldr x9, [sp, #184]
    ldr d24, [x9]
    ldr x10, [sp, #176]
    str d24, [x10]
    ldr x9, [sp, #168]
    ldr d24, [x9]
    ldr x10, [sp, #160]
    str d24, [x10]
    ldr x10, [sp, #152]
    str d8, [x10]
    ldr x10, [sp, #144]
    str d9, [x10]
    ldr x0, [sp, #320]
    mov x1, x20
    ldr x9, [sp, #208]
    mov x2, x9
    bl _objc_msgSend
    ldr x9, [sp, #136]
    sub x10, x29, #632
    str x9, [x10]
    ldr x0, [sp, #136]
    bl _sel_registerName
    mov x28, x0
    cbnz x28, L50_35
    b L50_36
L50_36:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_35:
    b L50_38
L50_37:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_38:
    ldr x11, [sp, #128]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x9, [sp, #312]
    ldr x10, [sp, #128]
    str x9, [x10]
    ldr x9, [sp, #296]
    ldr x10, [sp, #120]
    str x9, [x10]
    ldr x10, [sp, #112]
    str x23, [x10]
    ldr x10, [sp, #104]
    str x27, [x10]
    ldr x0, [sp, #320]
    mov x1, x28
    ldr x9, [sp, #128]
    mov x2, x9
    bl _objc_msgSend
    ldr x9, [sp, #96]
    sub x10, x29, #632
    str x9, [x10]
    ldr x0, [sp, #96]
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L50_39
    b L50_40
L50_40:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_39:
    b L50_42
L50_41:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_42:
    ldr x9, [sp, #88]
    ldrb w15, [x9]
    cbnz w15, L50_16
    b L50_17
L50_16:
    ldr x9, [sp, #80]
    ldr x15, [x9]
    b L50_18
L50_17:
    ldr x9, [sp, #72]
    ldr x15, [x9]
L50_18:
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    ldr x10, [sp, #56]
    ldr x11, [sp, #64]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #48]
    sub x10, x29, #632
    str x9, [x10]
    ldr x0, [sp, #48]
    bl _sel_registerName
    mov x20, x0
    cbnz x20, L50_43
    b L50_44
L50_44:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_43:
    b L50_46
L50_45:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_46:
    ldr x0, [sp, #320]
    mov x1, x20
    ldr x2, [sp, #64]
    movz x3, #32
    movz x4, #1
    bl _objc_msgSend
    ldr x9, [sp, #40]
    sub x10, x29, #632
    str x9, [x10]
    ldr x0, [sp, #40]
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L50_47
    b L50_48
L50_48:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L50_47:
    b L50_50
L50_49:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_50:
    ldr x15, [x21]
    ldr x9, [sp, #32]
    ldr x20, [x9]
    ldr x0, [sp, #320]
    mov x1, x14
    movz x2, #3
    mov x3, x15
    mov x4, x20
    bl _objc_msgSend
L50_3:
    add x14, x19, #1
    mov x19, x14
    b L50_1
L50_4:
    ldr x19, [sp, #936]
    ldr x20, [sp, #928]
    ldr x21, [sp, #920]
    ldr x22, [sp, #912]
    ldr x23, [sp, #904]
    ldr x24, [sp, #896]
    ldr x25, [sp, #888]
    ldr x26, [sp, #880]
    ldr x27, [sp, #872]
    ldr x28, [sp, #864]
    ldr d8, [sp, #856]
    ldr d9, [sp, #848]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_9metal_min
_lb_gpu_9metal_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.hs L51_2
L51_1:
    mov x15, x14
    b L51_3
L51_2:
L51_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_4:
    adrp x0, l_text_187@PAGE
    add x0, x0, l_text_187@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_18metal_surface_open
_lb_gpu_18metal_surface_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    str x23, [sp, #336]
    str x24, [sp, #328]
    str x25, [sp, #320]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L52_1
    b L52_2
L52_2:
    adrp x0, l_text_188@PAGE
    add x0, x0, l_text_188@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_1:
    sub x20, x29, #152
    mov x0, x20
    sub x8, x29, #192
    bl _lb_window_Presentation_10macos_view
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L52_4
    b L52_3
L52_4:
    add x14, x15, #8
    sub x20, x29, #120
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_5:
L52_3:
    ldr x21, [x15]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x22, x29, #208
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #248
    ldr x14, [x22]
    add x22, x22, #8
    ldr x22, [x22]
    cbnz x22, L52_6
    b L52_7
L52_7:
    adrp x0, l_text_189@PAGE
    add x0, x0, l_text_189@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L52_6:
    ldr x15, [x22]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #32
    movz x2, #8
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #272
    add x15, x24, #16
    ldrb w15, [x15]
    cbnz w15, L52_8
    b L52_9
L52_9:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L52_10
L52_8:
    ldr x22, [x24]
    sub x25, x29, #304
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    str x22, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L52_10:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L52_12
    b L52_11
L52_12:
    add x14, x23, #8
    sub x20, x29, #120
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_13:
L52_11:
    ldr x22, [x23]
    adrp x14, l_text_190@PAGE
    add x14, x14, l_text_190@PAGEOFF
    mov x0, x14
    sub x8, x29, #344
    bl _lb_gpu_11metal_class
    sub x15, x29, #344
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L52_15
    b L52_14
L52_15:
    add x14, x15, #8
    sub x21, x29, #120
    add x23, x21, #8
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    mov x9, x20
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_16:
L52_14:
    ldr x23, [x15]
    adrp x14, l_text_143@PAGE
    add x14, x14, l_text_143@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_26
    b L52_27
L52_27:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_26:
    b L52_29
L52_28:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_29:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x24, x0
    cbnz x24, L52_17
    b L52_18
L52_17:
    b L52_19
L52_18:
    sub x21, x29, #120
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_191@PAGE
    add x15, x15, l_text_191@PAGEOFF
    sub x23, x29, #360
    str x15, [x23]
    add x15, x23, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    mov x9, x20
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_20:
L52_19:
    str x24, [x22]
    adrp x14, l_text_192@PAGE
    add x14, x14, l_text_192@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_30
    b L52_31
L52_31:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_30:
    b L52_33
L52_32:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_33:
    sub x15, x29, #136
    ldr x15, [x15]
    ldr x15, [x15]
    mov x0, x24
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    sub x10, x29, #392
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_34
    b L52_35
L52_35:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_34:
    b L52_37
L52_36:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_37:
    mov x0, x24
    mov x1, x15
    movz x2, #81
    bl _objc_msgSend
    adrp x14, l_text_193@PAGE
    add x14, x14, l_text_193@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_38
    b L52_39
L52_39:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_38:
    b L52_41
L52_40:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_41:
    mov x0, x24
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x15, l_text_194@PAGE
    add x15, x15, l_text_194@PAGEOFF
    sub x10, x29, #392
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_42
    b L52_43
L52_43:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_42:
    b L52_45
L52_44:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_45:
    mov x0, x24
    mov x1, x15
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_195@PAGE
    add x14, x14, l_text_195@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_46
    b L52_47
L52_47:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_46:
    b L52_49
L52_48:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_49:
    mov x0, x24
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x15, l_text_196@PAGE
    add x15, x15, l_text_196@PAGEOFF
    sub x10, x29, #392
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_50
    b L52_51
L52_51:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_50:
    b L52_53
L52_52:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_53:
    mov x0, x24
    mov x1, x15
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_197@PAGE
    add x14, x14, l_text_197@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_54
    b L52_55
L52_55:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_54:
    b L52_57
L52_56:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_57:
    mov x0, x24
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x15, _kCGColorSpaceSRGB@GOTPAGE
    ldr x15, [x15, _kCGColorSpaceSRGB@GOTPAGEOFF]
    ldr x15, [x15]
    mov x0, x15
    bl _CGColorSpaceCreateWithName
    mov x23, x0
    cbnz x23, L52_21
    b L52_22
L52_21:
    b L52_23
L52_22:
    sub x21, x29, #120
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_198@PAGE
    add x15, x15, l_text_198@PAGEOFF
    sub x23, x29, #376
    str x15, [x23]
    add x15, x23, #8
    movz x9, #50
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    mov x9, x20
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_24:
L52_23:
    adrp x14, l_text_199@PAGE
    add x14, x14, l_text_199@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_58
    b L52_59
L52_59:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_58:
    b L52_61
L52_60:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_61:
    mov x0, x24
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x15, l_text_200@PAGE
    add x15, x15, l_text_200@PAGEOFF
    sub x10, x29, #392
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_62
    b L52_63
L52_63:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_62:
    b L52_65
L52_64:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_65:
    mov x0, x21
    mov x1, x15
    mov x2, x24
    bl _objc_msgSend
    adrp x14, l_text_201@PAGE
    add x14, x14, l_text_201@PAGEOFF
    sub x10, x29, #392
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_66
    b L52_67
L52_67:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L52_66:
    b L52_69
L52_68:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L52_69:
    mov x0, x21
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    sub x20, x29, #120
    str x22, [x20]
    add x15, x20, #32
    mov x9, #0
    strb w9, [x15]
    mov x0, x23
    bl _CGColorSpaceRelease
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_25:
    mov x0, x14
    bl _CGColorSpaceRelease
    mov x14, x19
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_202@PAGE
    add x0, x0, l_text_202@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_18metal_surface_wait
_lb_gpu_18metal_surface_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    sub x16, x29, #96
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L53_1
    b L53_2
L53_2:
    adrp x0, l_text_203@PAGE
    add x0, x0, l_text_203@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L53_1:
    sub x14, x29, #96
    ldr x20, [x14]
    add x14, x20, #8
    ldr x21, [x14]
    cbnz x21, L53_6
    b L53_4
L53_6:
L53_3:
    mov x9, #0
    str x9, [x14]
    adrp x15, l_text_204@PAGE
    add x15, x15, l_text_204@PAGEOFF
    sub x10, x29, #128
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L53_14
    b L53_15
L53_15:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L53_14:
    b L53_17
L53_16:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L53_17:
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    adrp x14, l_text_205@PAGE
    add x14, x14, l_text_205@PAGEOFF
    sub x10, x29, #128
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_18
    b L53_19
L53_19:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L53_18:
    b L53_21
L53_20:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L53_21:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    movz x10, #4
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L53_8
L53_7:
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    b L53_9
L53_8:
L53_9:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #128
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_22
    b L53_23
L53_23:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L53_22:
    b L53_25
L53_24:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L53_25:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L53_5
L53_4:
L53_5:
    add x14, x20, #16
    ldrb w14, [x14]
    cbnz w14, L53_10
    b L53_11
L53_10:
    sub x20, x29, #80
    adrp x14, _lb_gpu_16execution_failed@PAGE
    add x14, x14, _lb_gpu_16execution_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_206@PAGE
    add x14, x14, l_text_206@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_13:
    b L53_12
L53_11:
L53_12:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    sub x14, x29, #80
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_12metal_render
_lb_gpu_12metal_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #928
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #896]
    str x20, [sp, #888]
    str x21, [sp, #880]
    str x22, [sp, #872]
    str x23, [sp, #864]
    str x24, [sp, #856]
    str x25, [sp, #848]
    str x26, [sp, #840]
    str x27, [sp, #832]
    str x28, [sp, #824]
    str d8, [sp, #816]
    str d9, [sp, #808]
    str d10, [sp, #800]
    sub x16, x29, #184
    str x0, [x16]
    sub x16, x29, #200
    str x1, [x16]
    sub x16, x29, #216
    str x2, [x16]
    sub x16, x29, #288
    str x3, [x16]
    sub x16, x29, #312
    str d0, [x16, #0]
    sub x16, x29, #312
    str d1, [x16, #8]
    sub x16, x29, #312
    str d2, [x16, #16]
    sub x0, x29, #288
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L54_1
    b L54_2
L54_2:
    adrp x0, l_text_208@PAGE
    add x0, x0, l_text_208@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_1:
    sub x14, x29, #216
    ldr x9, [x14]
    str x9, [sp, #40]
    ldr x0, [sp, #40]
    sub x8, x29, #344
    bl _lb_gpu_18metal_surface_wait
    sub x15, x29, #344
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L54_4
    b L54_3
L54_4:
    sub x20, x29, #168
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_5:
L54_3:
    sub x21, x29, #200
    mov x0, x21
    sub x8, x29, #384
    bl _lb_window_Presentation_visible
    sub x15, x29, #384
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L54_10
    b L54_9
L54_10:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_11:
L54_9:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    b.ne L54_7
L54_6:
    sub x20, x29, #168
    movz x9, #1
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_12:
    b L54_8
L54_7:
L54_8:
    sub x22, x29, #424
    mov x0, x21
    sub x8, x29, #496
    bl _lb_window_Presentation_size
    sub x15, x29, #496
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L54_14
    b L54_13
L54_14:
    add x14, x15, #40
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_15:
L54_13:
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x22, #16
    ldr d8, [x14]
    mov x9, #0
    fmov d24, x9
    fcmp d8, d24
    cset w14, ls
    cbnz w14, L54_224
    b L54_19
L54_224:
    mov w15, w14
    b L54_20
L54_19:
    add x14, x22, #24
    ldr d25, [x14]
    fcmp d25, d24
    cset w15, ls
L54_20:
    and w14, w15, #255
    cbnz w14, L54_16
    b L54_17
L54_16:
    sub x20, x29, #168
    movz x9, #1
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_21:
    b L54_18
L54_17:
L54_18:
    adrp x14, _lb_gpu_19metal_surface_limit@PAGE
    add x14, x14, _lb_gpu_19metal_surface_limit@PAGEOFF
    ldr d24, [x14]
    fcmp d8, d24
    cset w14, gt
    cbnz w14, L54_225
    b L54_25
L54_225:
    mov w15, w14
    b L54_26
L54_25:
    add x14, x22, #24
    ldr d25, [x14]
    fcmp d25, d24
    cset w15, gt
L54_26:
    and w14, w15, #255
    cbnz w14, L54_22
    b L54_23
L54_22:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_17surface_too_large@PAGE
    add x15, x15, _lb_gpu_17surface_too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_209@PAGE
    add x15, x15, l_text_209@PAGEOFF
    sub x21, x29, #512
    str x15, [x21]
    add x15, x21, #8
    movz x9, #70
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_27:
    b L54_24
L54_23:
L54_24:
    ldr x9, [sp, #40]
    ldr x21, [x9]
    sub x10, x29, #848
    str x21, [x10]
    cbnz x21, L54_88
    b L54_89
L54_88:
    b L54_90
L54_89:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_90:
    b L54_92
L54_91:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_92:
    adrp x14, l_text_210@PAGE
    add x14, x14, l_text_210@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_93
    b L54_94
L54_94:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_93:
    b L54_96
L54_95:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_96:
    add x15, x22, #32
    ldr d24, [x15]
    fmov d16, d24
    fmov d0, d16
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    adrp x15, l_text_211@PAGE
    add x15, x15, l_text_211@PAGEOFF
    sub x10, x29, #880
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x23, x0
    cbnz x23, L54_97
    b L54_98
L54_98:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_97:
    b L54_100
L54_99:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_100:
    sub x24, x29, #528
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str d8, [x24]
    add x14, x22, #24
    ldr d9, [x14]
    add x14, x24, #8
    str d9, [x14]
    mov x9, x24
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x21
    mov x1, x23
    bl _objc_msgSend
    adrp x14, l_text_212@PAGE
    add x14, x14, l_text_212@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_101
    b L54_102
L54_102:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_101:
    b L54_104
L54_103:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_104:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    str x0, [sp, #8]
    ldr x9, [sp, #8]
    cbnz x9, L54_28
    b L54_29
L54_28:
    b L54_30
L54_29:
    sub x20, x29, #168
    movz x9, #1
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_31:
L54_30:
    adrp x14, l_text_213@PAGE
    add x14, x14, l_text_213@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_105
    b L54_106
L54_106:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_105:
    b L54_108
L54_107:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_108:
    ldr x0, [sp, #8]
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L54_32
    b L54_33
L54_32:
    b L54_34
L54_33:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_214@PAGE
    add x15, x15, l_text_214@PAGEOFF
    sub x21, x29, #544
    str x15, [x21]
    add x15, x21, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_35:
L54_34:
    adrp x14, l_text_215@PAGE
    add x14, x14, l_text_215@PAGEOFF
    mov x0, x14
    sub x8, x29, #584
    bl _lb_gpu_11metal_class
    sub x15, x29, #584
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L54_37
    b L54_36
L54_37:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_38:
L54_36:
    ldr x23, [x15]
    adrp x14, l_text_216@PAGE
    add x14, x14, l_text_216@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_109
    b L54_110
L54_110:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_109:
    b L54_112
L54_111:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_112:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    str x0, [sp, #0]
    ldr x9, [sp, #0]
    cbnz x9, L54_39
    b L54_40
L54_39:
    b L54_41
L54_40:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_217@PAGE
    add x15, x15, l_text_217@PAGEOFF
    sub x21, x29, #600
    str x15, [x21]
    add x15, x21, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_42:
L54_41:
    adrp x14, l_text_148@PAGE
    add x14, x14, l_text_148@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_113
    b L54_114
L54_114:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_113:
    b L54_116
L54_115:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_116:
    ldr x0, [sp, #0]
    mov x1, x14
    bl _objc_msgSend
    mov x23, x0
    sub x10, x29, #848
    str x23, [x10]
    cbnz x23, L54_117
    b L54_118
L54_117:
    b L54_119
L54_118:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_119:
    b L54_121
L54_120:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_121:
    adrp x14, l_text_149@PAGE
    add x14, x14, l_text_149@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_122
    b L54_123
L54_123:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_122:
    b L54_125
L54_124:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_125:
    mov x0, x23
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov x25, x0
    sub x10, x29, #848
    str x25, [x10]
    cbnz x25, L54_126
    b L54_127
L54_126:
    b L54_128
L54_127:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_128:
    b L54_130
L54_129:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_130:
    adrp x23, l_text_218@PAGE
    add x23, x23, l_text_218@PAGEOFF
    sub x10, x29, #880
    str x23, [x10]
    mov x0, x23
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_131
    b L54_132
L54_132:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_131:
    b L54_134
L54_133:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_134:
    mov x0, x25
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    adrp x26, l_text_219@PAGE
    add x26, x26, l_text_219@PAGEOFF
    sub x10, x29, #880
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L54_135
    b L54_136
L54_136:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_135:
    b L54_138
L54_137:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_138:
    mov x0, x25
    mov x1, x15
    movz x2, #2
    bl _objc_msgSend
    adrp x9, l_text_220@PAGE
    add x9, x9, l_text_220@PAGEOFF
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    sub x10, x29, #880
    str x9, [x10]
    ldr x0, [sp, #32]
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_139
    b L54_140
L54_140:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_139:
    b L54_142
L54_141:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_142:
    mov x0, x25
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x15, l_text_221@PAGE
    add x15, x15, l_text_221@PAGEOFF
    sub x10, x29, #880
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x27, x0
    cbnz x27, L54_143
    b L54_144
L54_144:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_143:
    b L54_146
L54_145:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_146:
    sub x28, x29, #632
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #312
    ldr d24, [x14]
    str d24, [x28]
    add x15, x14, #8
    ldr d24, [x15]
    add x15, x28, #8
    str d24, [x15]
    add x14, x14, #16
    ldr d24, [x14]
    add x14, x28, #16
    str d24, [x14]
    movz x9, #16368, lsl #48
    fmov d10, x9
    add x14, x28, #24
    str d10, [x14]
    mov x9, x28
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x25
    mov x1, x27
    bl _objc_msgSend
    sub x28, x29, #640
    mov x9, #0
    str x9, [x28]
    sub x22, x29, #648
    mov x9, #0
    str x9, [x22]
    sub x9, x29, #288
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #32
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L54_44
L54_43:
    ldr x9, [sp, #40]
    add x25, x9, #24
    ldr x14, [x25]
    mov x10, #0
    cmp x14, x10
    b.ne L54_47
L54_46:
    sub x14, x29, #184
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #688
    bl _lb_gpu_18metal_drawing_open
    sub x15, x29, #688
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L54_50
    b L54_49
L54_50:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_51:
L54_49:
    ldr x14, [x15]
    str x14, [x25]
    b L54_48
L54_47:
L54_48:
    ldr x27, [x25]
    cbnz x27, L54_52
    b L54_53
L54_52:
    b L54_54
L54_53:
    adrp x14, l_text_222@PAGE
    add x14, x14, l_text_222@PAGEOFF
    sub x15, x29, #704
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, l_text_223@PAGE
    add x14, x14, l_text_223@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_223@PAGE
    add x0, x0, l_text_223@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_54:
    adrp x14, l_text_224@PAGE
    add x14, x14, l_text_224@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_147
    b L54_148
L54_148:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_147:
    b L54_150
L54_149:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_150:
    ldr x0, [sp, #0]
    mov x1, x14
    bl _objc_msgSend
    mov x25, x0
    sub x10, x29, #848
    str x25, [x10]
    cbnz x25, L54_151
    b L54_152
L54_151:
    b L54_153
L54_152:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_153:
    b L54_155
L54_154:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_155:
    sub x10, x29, #880
    str x23, [x10]
    mov x0, x23
    bl _sel_registerName
    mov x20, x0
    cbnz x20, L54_156
    b L54_157
L54_157:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_156:
    b L54_159
L54_158:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_159:
    sub x14, x29, #184
    ldr x23, [x14]
    adrp x24, l_text_225@PAGE
    add x24, x24, l_text_225@PAGEOFF
    fmov d16, d8
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x24
    bl _lb_core_6f_to_u
    mov x21, x0
    fmov d16, d9
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x24
    bl _lb_core_6f_to_u
    mov x14, x0
    mov x0, x23
    mov x1, x27
    mov x2, x21
    mov x3, x14
    sub x8, x29, #744
    bl _lb_gpu_11metal_depth
    sub x15, x29, #744
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L54_56
    b L54_55
L54_56:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_57:
L54_55:
    ldr x14, [x15]
    mov x0, x25
    mov x1, x20
    mov x2, x14
    bl _objc_msgSend
    sub x10, x29, #880
    str x26, [x10]
    mov x0, x26
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_160
    b L54_161
L54_161:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_160:
    b L54_163
L54_162:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_163:
    mov x0, x25
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    ldr x9, [sp, #32]
    sub x10, x29, #880
    str x9, [x10]
    ldr x0, [sp, #32]
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L54_164
    b L54_165
L54_165:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_164:
    b L54_167
L54_166:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_167:
    mov x0, x25
    mov x1, x15
    mov x2, #0
    bl _objc_msgSend
    adrp x14, l_text_226@PAGE
    add x14, x14, l_text_226@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_168
    b L54_169
L54_169:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_168:
    b L54_171
L54_170:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_171:
    fmov d16, d10
    fmov d0, d16
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    ldr x20, [x23]
    sub x10, x29, #848
    str x20, [x10]
    cbnz x20, L54_172
    b L54_173
L54_172:
    b L54_174
L54_173:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_174:
    b L54_176
L54_175:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_176:
    adrp x14, l_text_227@PAGE
    add x14, x14, l_text_227@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_177
    b L54_178
L54_178:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_177:
    b L54_180
L54_179:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_180:
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    ldr x21, [x9]
    mov x9, x21
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_228@PAGE
    add x0, x0, l_text_228@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x21
    mov x4, #0
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L54_58
    b L54_59
L54_58:
    b L54_60
L54_59:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_229@PAGE
    add x15, x15, l_text_229@PAGEOFF
    sub x21, x29, #760
    str x15, [x21]
    add x15, x21, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_61:
L54_60:
    str x15, [x22]
    b L54_45
L54_44:
L54_45:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L54_63
L54_62:
    sub x14, x29, #764
    mov x9, #0
    str w9, [x14]
    ldr x9, [sp, #24]
    add x20, x9, #64
    ldr x15, [x20]
    mov x10, #0
    cmp x15, x10
    b.ls L54_66
L54_65:
    ldr x9, [sp, #24]
    add x14, x9, #48
    ldr x14, [x14]
    mov x21, x14
    b L54_67
L54_66:
    mov x21, x14
L54_67:
    sub x14, x29, #184
    ldr x14, [x14]
    ldr x23, [x14]
    sub x10, x29, #848
    str x23, [x10]
    cbnz x23, L54_181
    b L54_182
L54_181:
    b L54_183
L54_182:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_183:
    b L54_185
L54_184:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_185:
    adrp x14, l_text_227@PAGE
    add x14, x14, l_text_227@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x24, x0
    cbnz x24, L54_186
    b L54_187
L54_187:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_186:
    b L54_189
L54_188:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_189:
    ldr x14, [x20]
    movz x0, #1
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    mov x9, x14
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_230@PAGE
    add x0, x0, l_text_230@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x0, x23
    mov x1, x24
    mov x2, x21
    mov x3, x14
    mov x4, #0
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L54_68
    b L54_69
L54_68:
    b L54_70
L54_69:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_231@PAGE
    add x15, x15, l_text_231@PAGEOFF
    sub x21, x29, #784
    str x15, [x21]
    add x15, x21, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_71:
L54_70:
    str x14, [x28]
    b L54_64
L54_63:
L54_64:
    sub x14, x29, #184
    ldr x14, [x14]
    add x14, x14, #8
    ldr x20, [x14]
    sub x10, x29, #848
    str x20, [x10]
    cbnz x20, L54_190
    b L54_191
L54_190:
    b L54_192
L54_191:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_192:
    b L54_194
L54_193:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_194:
    adrp x14, l_text_232@PAGE
    add x14, x14, l_text_232@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_195
    b L54_196
L54_196:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_195:
    b L54_198
L54_197:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_198:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L54_72
    b L54_73
L54_72:
    b L54_74
L54_73:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_233@PAGE
    add x15, x15, l_text_233@PAGEOFF
    sub x21, x29, #800
    str x15, [x21]
    add x15, x21, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_75:
L54_74:
    adrp x14, l_text_234@PAGE
    add x14, x14, l_text_234@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_199
    b L54_200
L54_200:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_199:
    b L54_202
L54_201:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_202:
    mov x0, x21
    mov x1, x14
    ldr x2, [sp, #0]
    bl _objc_msgSend
    mov x20, x0
    cbnz x20, L54_76
    b L54_77
L54_76:
    b L54_78
L54_77:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_235@PAGE
    add x15, x15, l_text_235@PAGEOFF
    sub x21, x29, #816
    str x15, [x21]
    add x15, x21, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_79:
L54_78:
    ldr x23, [x22]
    cbnz x23, L54_83
    b L54_81
L54_83:
L54_80:
    ldr x9, [sp, #40]
    add x14, x9, #24
    ldr x24, [x14]
    cbnz x24, L54_84
    b L54_85
L54_84:
    b L54_86
L54_85:
    adrp x14, l_text_236@PAGE
    add x14, x14, l_text_236@PAGEOFF
    sub x15, x29, #832
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    adrp x14, l_text_237@PAGE
    add x14, x14, l_text_237@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_86:
    ldr x25, [x28]
    sub x10, x29, #848
    str x25, [x10]
    cbnz x25, L54_203
    b L54_204
L54_203:
    b L54_205
L54_204:
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #864
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_205:
    b L54_207
L54_206:
    adrp x0, l_text_120@PAGE
    add x0, x0, l_text_120@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_207:
    adrp x26, l_text_237@PAGE
    add x26, x26, l_text_237@PAGEOFF
    fmov d16, d8
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x27, x0
    fmov d16, d9
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x14, x0
    mov x0, x20
    mov x1, x24
    mov x2, x23
    mov x3, x25
    ldr x9, [sp, #24]
    mov x4, x9
    mov x5, x27
    mov x6, x14
    bl _lb_gpu_12metal_encode
    b L54_82
L54_81:
L54_82:
    adrp x14, l_text_238@PAGE
    add x14, x14, l_text_238@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_208
    b L54_209
L54_209:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_208:
    b L54_211
L54_210:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_211:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    adrp x15, l_text_239@PAGE
    add x15, x15, l_text_239@PAGEOFF
    sub x10, x29, #880
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L54_212
    b L54_213
L54_213:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_212:
    b L54_215
L54_214:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_215:
    mov x0, x21
    mov x1, x15
    ldr x2, [sp, #8]
    bl _objc_msgSend
    ldr x9, [sp, #40]
    add x20, x9, #8
    adrp x14, l_text_240@PAGE
    add x14, x14, l_text_240@PAGEOFF
    sub x10, x29, #880
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_216
    b L54_217
L54_217:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_216:
    b L54_219
L54_218:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_219:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    str x15, [x20]
    adrp x15, l_text_241@PAGE
    add x15, x15, l_text_241@PAGEOFF
    sub x10, x29, #880
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L54_220
    b L54_221
L54_221:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L54_220:
    b L54_223
L54_222:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_223:
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    sub x20, x29, #168
    mov x9, #0
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x22
    bl _lb_gpu_18metal_release_slot
    mov x0, x28
    bl _lb_gpu_18metal_release_slot
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    ldr d9, [sp, #808]
    ldr d10, [sp, #800]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_87:
    sub x14, x29, #648
    mov x0, x14
    bl _lb_gpu_18metal_release_slot
    sub x14, x29, #640
    mov x0, x14
    bl _lb_gpu_18metal_release_slot
    mov x14, x19
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_242@PAGE
    add x0, x0, l_text_242@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21metal_surface_destroy
_lb_gpu_21metal_surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #264]
    str x20, [sp, #256]
    str x21, [sp, #248]
    str x22, [sp, #240]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L55_1
    b L55_2
L55_2:
    adrp x0, l_text_243@PAGE
    add x0, x0, l_text_243@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L55_1:
    sub x14, x29, #64
    ldr x20, [x14]
    mov x0, x20
    sub x8, x29, #136
    bl _lb_gpu_18metal_surface_wait
    sub x15, x29, #136
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L55_6
    b L55_5
L55_6:
    sub x14, x29, #104
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L55_3
L55_5:
    b L55_4
L55_3:
L55_4:
    sub x14, x29, #80
    sub x10, x29, #168
    str x20, [x10]
    mov x10, x14
    sub x11, x29, #184
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #184
    mov x0, x14
    sub x8, x29, #248
    bl _lb_window_Presentation_10macos_view
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L55_20
    b L55_19
L55_20:
    add x14, x15, #8
    sub x21, x29, #208
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L55_17
L55_19:
    ldr x21, [x15]
    b L55_18
L55_17:
    b L55_41
L55_21:
L55_18:
    ldr x22, [x20]
    cbnz x22, L55_25
    b L55_23
L55_25:
L55_22:
    adrp x14, l_text_244@PAGE
    add x14, x14, l_text_244@PAGEOFF
    sub x10, x29, #264
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L55_29
    b L55_30
L55_30:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L55_29:
    b L55_32
L55_31:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L55_32:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cmp x15, x22
    b.ne L55_27
L55_26:
    adrp x14, l_text_200@PAGE
    add x14, x14, l_text_200@PAGEOFF
    sub x10, x29, #264
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L55_33
    b L55_34
L55_34:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L55_33:
    b L55_36
L55_35:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L55_36:
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x15, l_text_201@PAGE
    add x15, x15, l_text_201@PAGEOFF
    sub x10, x29, #264
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L55_37
    b L55_38
L55_38:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L55_37:
    b L55_40
L55_39:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L55_40:
    mov x0, x21
    mov x1, x15
    mov x2, #0
    bl _objc_msgSend
    b L55_28
L55_27:
L55_28:
    b L55_24
L55_23:
L55_24:
L55_41:
    add x14, x20, #24
    ldr x14, [x14]
    cbnz x14, L55_10
    b L55_8
L55_10:
L55_7:
    mov x0, x14
    bl _lb_gpu_21metal_drawing_destroy
    b L55_9
L55_8:
L55_9:
    ldr x21, [x20]
    cbnz x21, L55_14
    b L55_12
L55_14:
L55_11:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #280
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L55_42
    b L55_43
L55_43:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L55_42:
    b L55_45
L55_44:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L55_45:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L55_13
L55_12:
L55_13:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #152
    str x20, [x15]
    add x21, x15, #8
    movz x9, #32
    str x9, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L55_16
    b L55_15
L55_16:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L55_15:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_18metal_release_slot
_lb_gpu_18metal_release_slot:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    ldr x19, [x14]
    cbnz x19, L56_4
    b L56_2
L56_4:
L56_1:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    sub x10, x29, #56
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L56_5
    b L56_6
L56_6:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L56_5:
    b L56_8
L56_7:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L56_8:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    b L56_3
L56_2:
L56_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_22vulkan_windows_support
_lb_gpu_22vulkan_windows_support:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    bl _vkGetPhysicalDeviceWin32PresentationSupportKHR
    mov w14, w0
    adrp x15, _lb_gpu_8VK_FALSE@PAGE
    add x15, x15, _lb_gpu_8VK_FALSE@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L57_1:
    adrp x0, l_text_249@PAGE
    add x0, x0, l_text_249@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_22vulkan_windows_surface
_lb_gpu_22vulkan_windows_surface:
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
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x19, x29, #176
    sub x20, x29, #216
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR@PAGE
    add x14, x14, _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    mov x0, #0
    bl _GetModuleHandleW
    mov x14, x0
    cbnz x14, L58_1
    b L58_2
L58_2:
    adrp x0, l_text_250@PAGE
    add x0, x0, l_text_250@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L58_1:
    add x15, x20, #24
    str x14, [x15]
    sub x15, x29, #136
    mov x0, x15
    sub x8, x29, #256
    bl _lb_window_Presentation_14windows_handle
    sub x21, x29, #256
    add x15, x21, #32
    ldrb w15, [x15]
    cbnz w15, L58_4
    b L58_3
L58_4:
    add x14, x21, #8
    sub x19, x29, #104
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_5:
L58_3:
    ldr x14, [x21]
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
    sub x22, x29, #264
    mov x9, #0
    str x9, [x22]
    sub x14, x29, #120
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    mov x2, #0
    mov x3, x22
    bl _vkCreateWin32SurfaceKHR
    mov w23, w0
    adrp x14, l_text_251@PAGE
    add x14, x14, l_text_251@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    sub x10, x29, #360
    str w23, [x10]
    mov x10, x15
    sub x11, x29, #376
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_10VK_SUCCESS@PAGE
    add x14, x14, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x14]
    cmp w23, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L58_11
L58_10:
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
    sub x11, x29, #312
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L58_14
L58_13:
    b L58_12
L58_11:
L58_12:
    sub x14, x29, #344
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #312
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L58_14:
    sub x15, x29, #312
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L58_7
    b L58_6
L58_7:
    sub x19, x29, #104
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_8:
L58_6:
    ldr x14, [x22]
    sub x15, x29, #104
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_9:
    adrp x0, l_text_252@PAGE
    add x0, x0, l_text_252@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_18vulkan_device_open
_lb_gpu_18vulkan_device_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2288]
    str x20, [sp, #2280]
    str x21, [sp, #2272]
    str x22, [sp, #2264]
    str x23, [sp, #2256]
    str x24, [sp, #2248]
    str x25, [sp, #2240]
    str x26, [sp, #2232]
    str x27, [sp, #2224]
    str x28, [sp, #2216]
    str d8, [sp, #2208]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x19, x29, #168
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #208
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cbnz x15, L59_1
    b L59_2
L59_2:
    adrp x0, l_text_253@PAGE
    add x0, x0, l_text_253@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L59_1:
    ldr x19, [x15]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #560
    movz x2, #8
    sub x8, x29, #232
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #232
    add x19, x21, #16
    ldrb w19, [x19]
    cbnz w19, L59_3
    b L59_4
L59_4:
    add x14, x20, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    b L59_5
L59_3:
    ldr x19, [x21]
    sub x22, x29, #792
    mov x0, x22
    mov x1, #0
    movz x2, #560
    bl _memset
    mov x0, x19
    mov x1, x22
    movz x2, #560
    bl _memcpy
    str x19, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
L59_5:
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L59_7
    b L59_6
L59_7:
    add x14, x20, #8
    sub x19, x29, #152
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_8:
L59_6:
    ldr x19, [x20]
    sub x21, x29, #840
    sub x22, x29, #888
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO@PAGE
    add x14, x14, _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    adrp x14, l_text_254@PAGE
    add x14, x14, l_text_254@PAGEOFF
    add x15, x22, #16
    str x14, [x15]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, _lb_gpu_22vulkan_api_version_1_0@PAGE
    add x14, x14, _lb_gpu_22vulkan_api_version_1_0@PAGEOFF
    ldr w14, [x14]
    add x15, x22, #44
    str w14, [x15]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x25, x29, #904
    sub x22, x29, #1816
    add x14, x22, #16
    adrp x9, _lb_gpu_unavailable@PAGE
    add x9, x9, _lb_gpu_unavailable@PAGEOFF
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_245@PAGE
    add x15, x15, l_text_245@PAGEOFF
    sub x24, x29, #1832
    str x15, [x24]
    add x15, x24, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #952
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L59_83
L59_82:
    adrp x0, l_text_246@PAGE
    add x0, x0, l_text_246@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L59_83:
    sub x15, x29, #952
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L59_10
    b L59_9
L59_10:
    add x14, x15, #16
    sub x20, x29, #152
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_11:
L59_9:
    mov x10, x15
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #1016
    sub x22, x29, #1080
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    add x14, x22, #24
    str x21, [x14]
    add x14, x25, #8
    ldr x14, [x14]
    add x24, x22, #48
    str w14, [x24]
    ldr x14, [x25]
    add x24, x22, #56
    str x14, [x24]
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    mov x0, x20
    mov x1, #0
    mov x2, x19
    bl _vkCreateInstance
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L59_13
L59_12:
    sub x20, x29, #152
    add x14, x20, #8
    ldr x9, [sp, #40]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_255@PAGE
    add x15, x15, l_text_255@PAGEOFF
    sub x21, x29, #1096
    str x15, [x21]
    add x15, x21, #8
    movz x9, #57
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_15:
    b L59_14
L59_13:
L59_14:
    sub x20, x29, #1100
    mov x9, #0
    str w9, [x20]
    ldr x14, [x19]
    mov x0, x14
    mov x1, x20
    mov x2, #0
    bl _vkEnumeratePhysicalDevices
    mov w21, w0
    adrp x14, l_text_256@PAGE
    add x14, x14, l_text_256@PAGEOFF
    sub x15, x29, #1120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    sub x10, x29, #1880
    str w21, [x10]
    mov x10, x15
    sub x11, x29, #1896
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x22, _lb_gpu_10VK_SUCCESS@PAGE
    add x22, x22, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x22]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L59_85
L59_84:
    sub x21, x29, #1864
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #1896
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #1152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L59_88
L59_87:
    b L59_86
L59_85:
L59_86:
    sub x14, x29, #1864
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L59_88:
    sub x15, x29, #1152
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L59_17
    b L59_16
L59_17:
    sub x20, x29, #152
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_18:
L59_16:
    ldr w14, [x20]
    mov x10, #0
    cmp w14, w10
    b.ne L59_20
L59_19:
    sub x20, x29, #152
    add x14, x20, #8
    ldr x9, [sp, #40]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_257@PAGE
    add x15, x15, l_text_257@PAGEOFF
    sub x21, x29, #1168
    str x15, [x21]
    add x15, x21, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_22:
    b L59_21
L59_20:
L59_21:
    sub x9, x29, #1184
    str x9, [sp, #32]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #24]
    mov w25, w14
    sub x26, x29, #1232
    movz x10, #2048, lsl #48
    cmp x25, x10
    b.ls L59_24
L59_23:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L59_25
L59_24:
    lsl x27, x25, #3
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L59_26
    b L59_27
L59_27:
    adrp x0, l_text_258@PAGE
    add x0, x0, l_text_258@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L59_26:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #8
    sub x8, x29, #1256
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #1256
    add x28, x24, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x27, x10
    cset w23, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w23, w23, w28
    cbnz w23, L59_28
    b L59_29
L59_28:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L59_25
L59_29:
    ldr x14, [x24]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L59_25:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L59_31
    b L59_30
L59_31:
    add x14, x26, #16
    sub x20, x29, #152
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_32:
L59_30:
    mov x10, x26
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x9, [sp, #32]
    ldr x9, [x9]
    str x9, [sp, #376]
    mov x0, x14
    mov x1, x20
    ldr x2, [sp, #376]
    bl _vkEnumeratePhysicalDevices
    mov w24, w0
    adrp x14, l_text_259@PAGE
    add x14, x14, l_text_259@PAGEOFF
    sub x15, x29, #1272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    sub x10, x29, #1880
    str w24, [x10]
    mov x10, x15
    sub x11, x29, #1896
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x22]
    cmp w24, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L59_90
L59_89:
    sub x22, x29, #1864
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    sub x14, x29, #1896
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #1304
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L59_93
L59_92:
    b L59_91
L59_90:
L59_91:
    sub x14, x29, #1864
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1304
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L59_93:
    sub x15, x29, #1304
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L59_34
    b L59_33
L59_34:
    sub x20, x29, #152
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1320
    ldr x9, [sp, #32]
    add x22, x9, #8
    ldr x22, [x22]
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_260@PAGE
    add x0, x0, l_text_260@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    ldr x9, [sp, #376]
    str x9, [x14]
    add x24, x14, #8
    str x22, [x24]
    ldr x9, [sp, #24]
    ldr x22, [x9]
    ldr x9, [sp, #24]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L59_36
    b L59_35
L59_36:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L59_35:
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_37:
L59_33:
    ldr w14, [x20]
    mov w9, w14
    str x9, [sp, #368]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #360]
    sub x9, x29, #1324
    str x9, [sp, #352]
    sub x28, x29, #1344
    sub x25, x29, #1392
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #304]
    sub x9, x29, #1416
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #296]
    add x9, x25, #8
    str x9, [sp, #248]
    add x9, x25, #40
    str x9, [sp, #240]
    add x9, x25, #16
    str x9, [sp, #288]
    adrp x9, l_text_17@PAGE
    add x9, x9, l_text_17@PAGEOFF
    str x9, [sp, #280]
    ldr x9, [sp, #288]
    add x9, x9, #8
    str x9, [sp, #272]
    ldr x9, [sp, #288]
    add x9, x9, #16
    str x9, [sp, #264]
    add x9, x25, #40
    str x9, [sp, #256]
    add x9, x25, #16
    str x9, [sp, #344]
    adrp x9, l_text_33@PAGE
    add x9, x9, l_text_33@PAGEOFF
    str x9, [sp, #336]
    ldr x9, [sp, #344]
    add x9, x9, #8
    str x9, [sp, #328]
    ldr x9, [sp, #344]
    add x9, x9, #16
    str x9, [sp, #320]
    add x9, x25, #40
    str x9, [sp, #312]
    add x9, x25, #40
    str x9, [sp, #232]
    add x9, x28, #8
    str x9, [sp, #224]
    adrp x9, _lb_gpu_21VK_QUEUE_GRAPHICS_BIT@PAGE
    add x9, x9, _lb_gpu_21VK_QUEUE_GRAPHICS_BIT@PAGEOFF
    str x9, [sp, #216]
    sub x9, x29, #1436
    str x9, [sp, #208]
    movz x9, #16256, lsl #16
    fmov s8, w9
    sub x9, x29, #1480
    str x9, [sp, #200]
    sub x9, x29, #1520
    str x9, [sp, #192]
    adrp x9, _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO@PAGE
    add x9, x9, _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO@PAGEOFF
    str x9, [sp, #184]
    ldr x9, [sp, #192]
    add x9, x9, #20
    str x9, [sp, #176]
    ldr x9, [sp, #192]
    add x9, x9, #24
    str x9, [sp, #168]
    ldr x9, [sp, #192]
    add x9, x9, #32
    str x9, [sp, #160]
    sub x9, x29, #1528
    str x9, [sp, #152]
    adrp x9, _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME@PAGE
    add x9, x9, _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME@PAGEOFF
    str x9, [sp, #144]
    sub x9, x29, #1600
    str x9, [sp, #136]
    sub x9, x29, #1672
    str x9, [sp, #128]
    adrp x9, _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO@PAGE
    add x9, x9, _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO@PAGEOFF
    str x9, [sp, #120]
    ldr x9, [sp, #128]
    add x9, x9, #20
    str x9, [sp, #112]
    ldr x9, [sp, #128]
    add x9, x9, #24
    str x9, [sp, #104]
    ldr x9, [sp, #128]
    add x9, x9, #48
    str x9, [sp, #96]
    ldr x9, [sp, #128]
    add x9, x9, #56
    str x9, [sp, #88]
    add x9, x19, #16
    str x9, [sp, #80]
    sub x9, x29, #1720
    str x9, [sp, #72]
    add x9, x28, #8
    str x9, [sp, #64]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #56]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #16]
L59_38:
    ldr x9, [sp, #16]
    ldr x10, [sp, #368]
    cmp x9, x10
    b.hs L59_41
L59_39:
    ldr x9, [sp, #360]
    ldr x20, [x9]
    ldr x9, [sp, #16]
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_261@PAGE
    add x0, x0, l_text_261@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    lsl x14, x9, #3
    ldr x9, [sp, #376]
    add x14, x9, x14
    ldr x22, [x14]
    mov x9, #0
    ldr x10, [sp, #352]
    str w9, [x10]
    mov x0, x22
    ldr x1, [sp, #352]
    mov x2, #0
    bl _vkGetPhysicalDeviceQueueFamilyProperties
    ldr x9, [sp, #352]
    ldr w14, [x9]
    mov w21, w14
    movz x10, #43690
    movk x10, #43690, lsl #16
    movk x10, #43690, lsl #32
    movk x10, #682, lsl #48
    cmp x21, x10
    b.ls L59_43
L59_42:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #344]
    str w9, [x10]
    ldr x9, [sp, #336]
    ldr x10, [sp, #328]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #320]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #312]
    strb w9, [x10]
    b L59_44
L59_43:
    movz x10, #24
    mul x24, x21, x10
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #304]
    ldr x15, [x9]
    cbnz x15, L59_45
    b L59_46
L59_46:
    adrp x0, l_text_262@PAGE
    add x0, x0, l_text_262@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L59_45:
    ldr x26, [x15]
    mov x17, x26
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #4
    sub x8, x29, #1416
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #296]
    ldrb w26, [x9]
    mov x10, #0
    cmp x24, x10
    cset w27, ne
    mov x10, #0
    cmp w26, w10
    cset w26, eq
    and w26, w27, w26
    cbnz w26, L59_47
    b L59_48
L59_47:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #288]
    str w9, [x10]
    ldr x9, [sp, #280]
    ldr x10, [sp, #272]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #264]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #256]
    strb w9, [x10]
    b L59_44
L59_48:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    str x14, [x25]
    ldr x10, [sp, #248]
    str x21, [x10]
    mov x9, #0
    ldr x10, [sp, #240]
    strb w9, [x10]
L59_44:
    ldr x9, [sp, #232]
    ldrb w14, [x9]
    cbnz w14, L59_50
    b L59_49
L59_50:
    add x14, x25, #16
    sub x21, x29, #152
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1432
    mov x9, x20
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_262@PAGE
    add x0, x0, l_text_262@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #376]
    str x9, [x14]
    add x22, x14, #8
    str x15, [x22]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L59_52
    b L59_51
L59_52:
    add x20, x22, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L59_51:
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_53:
L59_49:
    mov x10, x25
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x28]
    mov x0, x22
    ldr x1, [sp, #352]
    mov x2, x21
    bl _vkGetPhysicalDeviceQueueFamilyProperties
    ldr x9, [sp, #352]
    ldr w14, [x9]
    mov w24, w14
    mov x9, #0
    mov x26, x9
L59_54:
    cmp x26, x24
    b.hs L59_57
L59_55:
    ldr x9, [sp, #224]
    ldr x27, [x9]
    cmp x26, x27
    b.lo 1f
    adrp x0, l_text_263@PAGE
    add x0, x0, l_text_263@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x26, x10
    add x14, x21, x14
    add x15, x14, #4
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L59_96
    b L59_61
L59_96:
    mov w14, w15
    b L59_62
L59_61:
    ldr w15, [x14]
    ldr x9, [sp, #216]
    ldr w23, [x9]
    and w15, w15, w23
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L59_62:
    and w15, w14, #255
    cbnz w15, L59_97
    b L59_63
L59_97:
    mov w14, w15
    b L59_64
L59_63:
    sub x10, x29, #1912
    str x22, [x10]
    sub x10, x29, #1928
    str w26, [x10]
    mov x9, #0
    sub x10, x29, #1936
    str w9, [x10]
    b L59_95
L59_94:
    adrp x0, l_text_247@PAGE
    add x0, x0, l_text_247@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L59_95:
    movz x9, #1
    mov w14, w9
L59_64:
    and w15, w14, #255
    cbnz w15, L59_58
    b L59_59
L59_58:
    b L59_56
L59_65:
    b L59_60
L59_59:
L59_60:
    ldr x10, [sp, #208]
    str s8, [x10]
    ldr x11, [sp, #192]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x9, [sp, #184]
    ldr w14, [x9]
    ldr x10, [sp, #192]
    str w14, [x10]
    ldr x10, [sp, #176]
    str w26, [x10]
    movz x9, #1
    ldr x10, [sp, #168]
    str w9, [x10]
    ldr x9, [sp, #208]
    ldr x10, [sp, #160]
    str x9, [x10]
    ldr x10, [sp, #192]
    ldr x11, [sp, #200]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x9, [sp, #144]
    ldr x14, [x9]
    ldr x10, [sp, #152]
    str x14, [x10]
    ldr x11, [sp, #128]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x9, [sp, #120]
    ldr w14, [x9]
    ldr x10, [sp, #128]
    str w14, [x10]
    movz x9, #1
    ldr x10, [sp, #112]
    str w9, [x10]
    ldr x9, [sp, #200]
    ldr x10, [sp, #104]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #96]
    str w9, [x10]
    ldr x9, [sp, #152]
    ldr x10, [sp, #88]
    str x9, [x10]
    ldr x10, [sp, #128]
    ldr x11, [sp, #136]
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
    mov x0, x22
    ldr x1, [sp, #136]
    mov x2, #0
    ldr x3, [sp, #80]
    bl _vkCreateDevice
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L59_67
L59_66:
    b L59_56
L59_69:
    b L59_68
L59_67:
L59_68:
    add x14, x19, #8
    str x22, [x14]
    add x14, x19, #32
    str w26, [x14]
    ldr x9, [sp, #80]
    ldr x14, [x9]
    add x15, x19, #24
    mov x0, x14
    mov x1, x26
    mov x2, #0
    mov x3, x15
    bl _vkGetDeviceQueue
    add x14, x19, #40
    mov x0, x22
    mov x1, x14
    bl _vkGetPhysicalDeviceMemoryProperties
    sub x23, x29, #152
    str x19, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #1688
    mov x9, x27
    movz x10, #24
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_264@PAGE
    add x0, x0, l_text_264@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x21, [x14]
    add x24, x14, #8
    str x15, [x24]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    add x24, x9, #8
    ldr x25, [x24]
    cbnz x25, L59_71
    b L59_70
L59_71:
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
L59_70:
    sub x14, x29, #1704
    mov x9, x20
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_264@PAGE
    add x0, x0, l_text_264@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #376]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x19, [x24]
    cbnz x19, L59_73
    b L59_72
L59_73:
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
L59_72:
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_74:
L59_56:
    add x14, x26, #1
    mov x26, x14
    b L59_54
L59_57:
    ldr x9, [sp, #64]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #24
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_264@PAGE
    add x0, x0, l_text_264@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #72]
    str x21, [x10]
    ldr x10, [sp, #56]
    str x14, [x10]
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    cbnz x15, L59_76
    b L59_75
L59_76:
    add x20, x15, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #88]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L59_75:
L59_40:
    ldr x9, [sp, #16]
    add x14, x9, #1
    mov x9, x14
    str x9, [sp, #16]
    b L59_38
L59_41:
    sub x20, x29, #152
    add x14, x20, #8
    ldr x9, [sp, #40]
    ldr w15, [x9]
    str w15, [x14]
    adrp x15, l_text_265@PAGE
    add x15, x15, l_text_265@PAGEOFF
    sub x21, x29, #1736
    str x15, [x21]
    add x15, x21, #8
    movz x9, #53
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1752
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_266@PAGE
    add x0, x0, l_text_266@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #376]
    str x9, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    ldr x9, [sp, #24]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L59_78
    b L59_77
L59_78:
    add x22, x21, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L59_77:
    mov x0, x19
    bl _lb_gpu_21vulkan_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2288]
    ldr x20, [sp, #2280]
    ldr x21, [sp, #2272]
    ldr x22, [sp, #2264]
    ldr x23, [sp, #2256]
    ldr x24, [sp, #2248]
    ldr x25, [sp, #2240]
    ldr x26, [sp, #2232]
    ldr x27, [sp, #2224]
    ldr x28, [sp, #2216]
    ldr d8, [sp, #2208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_79:
    sub x14, x29, #1184
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #1768
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_266@PAGE
    add x0, x0, l_text_266@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L59_81
    b L59_80
L59_81:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L59_80:
    adrp x0, l_text_266@PAGE
    add x0, x0, l_text_266@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21vulkan_device_destroy
_lb_gpu_21vulkan_device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    add x20, x19, #16
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L60_2
L60_1:
    ldr x14, [x20]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    ldr x14, [x20]
    mov x0, x14
    mov x1, #0
    bl _vkDestroyDevice
    b L60_3
L60_2:
L60_3:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L60_5
L60_4:
    ldr x14, [x19]
    mov x0, x14
    mov x1, #0
    bl _vkDestroyInstance
    b L60_6
L60_5:
L60_6:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #64
    str x19, [x15]
    add x20, x15, #8
    movz x9, #560
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_8
    b L60_7
L60_8:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_7:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_13vulkan_memory
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
L61_1:
    cmp x22, x15
    b.hs L61_4
L61_2:
    mov w24, w22
    movz x10, #32
    cmp x24, x10
    b.lo L61_9
L61_8:
    adrp x0, l_text_267@PAGE
    add x0, x0, l_text_267@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
L61_9:
    movz x9, #1
    lsl w24, w9, w22
    and w24, w24, w23
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    cbnz w24, L61_10
    b L61_22
L61_22:
    mov w25, w24
    b L61_11
L61_10:
    movz x10, #32
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_267@PAGE
    add x0, x0, l_text_267@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x22, #3
    add x24, x14, x24
    ldr w24, [x24]
    and w24, w24, w21
    cmp w21, w24
    cset w25, eq
L61_11:
    and w24, w25, #255
    cbnz w24, L61_5
    b L61_6
L61_5:
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
    adrp x14, l_text_268@PAGE
    add x14, x14, l_text_268@PAGEOFF
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
    b.ne L61_18
L61_17:
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
    b L61_21
L61_20:
    b L61_19
L61_18:
L61_19:
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
L61_21:
    sub x15, x29, #296
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L61_13
    b L61_12
L61_13:
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
L61_14:
L61_12:
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
L61_15:
    b L61_7
L61_6:
L61_7:
L61_3:
    add x24, x22, #1
    mov x22, x24
    b L61_1
L61_4:
    sub x19, x29, #120
    add x14, x19, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_269@PAGE
    add x15, x15, l_text_269@PAGEOFF
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
L61_16:
    adrp x0, l_text_270@PAGE
    add x0, x0, l_text_270@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_19vulkan_surface_open
_lb_gpu_19vulkan_surface_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #944
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #912]
    str x20, [sp, #904]
    str x21, [sp, #896]
    str x22, [sp, #888]
    str x23, [sp, #880]
    str x24, [sp, #872]
    str x25, [sp, #864]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x19, x29, #168
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #208
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cbnz x15, L62_1
    b L62_2
L62_2:
    adrp x0, l_text_271@PAGE
    add x0, x0, l_text_271@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L62_1:
    ldr x19, [x15]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #144
    movz x2, #8
    sub x8, x29, #232
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #232
    add x19, x21, #16
    ldrb w19, [x19]
    cbnz w19, L62_3
    b L62_4
L62_4:
    add x14, x20, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    b L62_5
L62_3:
    ldr x19, [x21]
    sub x22, x29, #376
    mov x0, x22
    mov x1, #0
    movz x2, #144
    bl _memset
    add x14, x22, #136
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    mov x1, x22
    movz x2, #144
    bl _memcpy
    str x19, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
L62_5:
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L62_7
    b L62_6
L62_7:
    add x14, x20, #8
    sub x19, x29, #120
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_8:
L62_6:
    ldr x19, [x20]
    sub x14, x29, #136
    ldr x21, [x14]
    ldr x14, [x21]
    sub x15, x29, #152
    sub x10, x29, #848
    str x14, [x10]
    mov x10, x15
    sub x11, x29, #864
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x22, x29, #832
    add x14, x22, #8
    adrp x23, _lb_gpu_unavailable@PAGE
    add x23, x23, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x23]
    str w15, [x14]
    adrp x15, l_text_245@PAGE
    add x15, x15, l_text_245@PAGEOFF
    sub x24, x29, #880
    str x15, [x24]
    add x15, x24, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #416
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L62_30
L62_29:
    adrp x0, l_text_248@PAGE
    add x0, x0, l_text_248@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L62_30:
    sub x15, x29, #416
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L62_10
    b L62_9
L62_10:
    add x14, x15, #8
    sub x20, x29, #120
    add x22, x20, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x1, x19
    bl _lb_gpu_22vulkan_surface_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_11:
L62_9:
    ldr x14, [x15]
    str x14, [x19]
    sub x20, x29, #420
    mov x9, #0
    str w9, [x20]
    add x14, x21, #8
    ldr x14, [x14]
    add x22, x21, #32
    ldr w24, [x22]
    ldr x25, [x19]
    mov x0, x14
    mov x1, x24
    mov x2, x25
    mov x3, x20
    bl _vkGetPhysicalDeviceSurfaceSupportKHR
    mov w24, w0
    adrp x14, l_text_272@PAGE
    add x14, x14, l_text_272@PAGEOFF
    sub x25, x29, #440
    str x14, [x25]
    add x14, x25, #8
    movz x9, #48
    str x9, [x14]
    sub x10, x29, #928
    str w24, [x10]
    mov x10, x25
    sub x11, x29, #944
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x25, _lb_gpu_10VK_SUCCESS@PAGE
    add x25, x25, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x25]
    cmp w24, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L62_32
L62_31:
    sub x24, x29, #912
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    sub x14, x29, #944
    add x15, x24, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x24
    sub x11, x29, #472
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L62_35
L62_34:
    b L62_33
L62_32:
L62_33:
    sub x14, x29, #912
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #472
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L62_35:
    sub x15, x29, #472
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L62_13
    b L62_12
L62_13:
    sub x20, x29, #120
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x1, x19
    bl _lb_gpu_22vulkan_surface_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_14:
L62_12:
    ldr w14, [x20]
    mov x10, #0
    cmp w14, w10
    b.ne L62_16
L62_15:
    sub x20, x29, #120
    add x14, x20, #8
    ldr w15, [x23]
    str w15, [x14]
    adrp x15, l_text_273@PAGE
    add x15, x15, l_text_273@PAGEOFF
    sub x22, x29, #488
    str x15, [x22]
    add x15, x22, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x1, x19
    bl _lb_gpu_22vulkan_surface_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_18:
    b L62_17
L62_16:
L62_17:
    sub x20, x29, #512
    sub x23, x29, #536
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    adrp x14, _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    ldr w14, [x22]
    add x15, x23, #20
    str w14, [x15]
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x23, x21, #16
    ldr x14, [x23]
    add x24, x19, #112
    mov x0, x14
    mov x1, x20
    mov x2, #0
    mov x3, x24
    bl _vkCreateCommandPool
    mov w20, w0
    adrp x14, l_text_274@PAGE
    add x14, x14, l_text_274@PAGEOFF
    sub x15, x29, #552
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    sub x10, x29, #928
    str w20, [x10]
    mov x10, x15
    sub x11, x29, #944
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x25]
    cmp w20, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L62_37
L62_36:
    sub x20, x29, #912
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #944
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L62_40
L62_39:
    b L62_38
L62_37:
L62_38:
    sub x14, x29, #912
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L62_40:
    sub x15, x29, #584
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L62_20
    b L62_19
L62_20:
    sub x20, x29, #120
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x1, x19
    bl _lb_gpu_22vulkan_surface_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_21:
L62_19:
    sub x20, x29, #616
    sub x22, x29, #648
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO@PAGE
    add x14, x14, _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    ldr x14, [x24]
    add x15, x22, #16
    str x14, [x15]
    add x14, x22, #28
    movz x9, #1
    str w9, [x14]
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x23]
    add x15, x19, #120
    mov x0, x14
    mov x1, x20
    mov x2, x15
    bl _vkAllocateCommandBuffers
    mov w20, w0
    adrp x14, l_text_275@PAGE
    add x14, x14, l_text_275@PAGEOFF
    sub x15, x29, #664
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
    str x9, [x14]
    sub x10, x29, #928
    str w20, [x10]
    mov x10, x15
    sub x11, x29, #944
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x25]
    cmp w20, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L62_42
L62_41:
    sub x20, x29, #912
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #944
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #696
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L62_45
L62_44:
    b L62_43
L62_42:
L62_43:
    sub x14, x29, #912
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #696
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L62_45:
    sub x15, x29, #696
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L62_23
    b L62_22
L62_23:
    sub x20, x29, #120
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x1, x19
    bl _lb_gpu_22vulkan_surface_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_24:
L62_22:
    sub x20, x29, #720
    sub x22, x29, #744
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    adrp x14, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x14, [x23]
    add x15, x19, #128
    mov x0, x14
    mov x1, x20
    mov x2, #0
    mov x3, x15
    bl _vkCreateSemaphore
    mov w20, w0
    adrp x14, l_text_276@PAGE
    add x14, x14, l_text_276@PAGEOFF
    sub x15, x29, #760
    str x14, [x15]
    add x14, x15, #8
    movz x9, #53
    str x9, [x14]
    sub x10, x29, #928
    str w20, [x10]
    mov x10, x15
    sub x11, x29, #944
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x25]
    cmp w20, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L62_47
L62_46:
    sub x20, x29, #912
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #944
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L62_50
L62_49:
    b L62_48
L62_47:
L62_48:
    sub x14, x29, #912
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L62_50:
    sub x15, x29, #792
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L62_26
    b L62_25
L62_26:
    sub x20, x29, #120
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    mov x1, x19
    bl _lb_gpu_22vulkan_surface_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_27:
L62_25:
    sub x14, x29, #120
    str x19, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #912]
    ldr x20, [sp, #904]
    ldr x21, [sp, #896]
    ldr x22, [sp, #888]
    ldr x23, [sp, #880]
    ldr x24, [sp, #872]
    ldr x25, [sp, #864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L62_28:
    adrp x0, l_text_277@PAGE
    add x0, x0, l_text_277@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_17vulkan_image_view
_lb_gpu_17vulkan_image_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
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
    mov w19, w0
    adrp x14, l_text_278@PAGE
    add x14, x14, l_text_278@PAGEOFF
    sub x15, x29, #360
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    sub x10, x29, #440
    str w19, [x10]
    mov x10, x15
    sub x11, x29, #456
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_10VK_SUCCESS@PAGE
    add x14, x14, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x14]
    cmp w19, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L63_6
L63_5:
    sub x19, x29, #424
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    sub x14, x29, #456
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #392
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L63_9
L63_8:
    b L63_7
L63_6:
L63_7:
    sub x14, x29, #424
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #392
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L63_9:
    sub x15, x29, #392
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L63_2
    b L63_1
L63_2:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63_3:
L63_1:
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63_4:
    adrp x0, l_text_279@PAGE
    add x0, x0, l_text_279@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_16vulkan_swapchain
_lb_gpu_16vulkan_swapchain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2944
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2912]
    str x20, [sp, #2904]
    str x21, [sp, #2896]
    str x22, [sp, #2888]
    str x23, [sp, #2880]
    str x24, [sp, #2872]
    str x25, [sp, #2864]
    str x26, [sp, #2856]
    str x27, [sp, #2848]
    str x28, [sp, #2840]
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
    str x9, [sp, #496]
    ldr x9, [sp, #496]
    add x9, x9, #16
    str x9, [sp, #488]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w21, w0
    adrp x14, l_text_280@PAGE
    add x14, x14, l_text_280@PAGEOFF
    sub x15, x29, #216
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    sub x10, x29, #1872
    str w21, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x9, _lb_gpu_10VK_SUCCESS@PAGE
    add x9, x9, _lb_gpu_10VK_SUCCESS@PAGEOFF
    str x9, [sp, #168]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_156
L64_155:
    sub x21, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #1888
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #248
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_159
L64_158:
    b L64_157
L64_156:
L64_157:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #248
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_159:
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_2
    b L64_1
L64_2:
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
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_3:
L64_1:
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #480]
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    sub x9, x29, #300
    str x9, [sp, #472]
    ldr x11, [sp, #472]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str wzr, [x11, #48]
    ldr x9, [sp, #496]
    add x9, x9, #8
    str x9, [sp, #464]
    ldr x9, [sp, #464]
    ldr x14, [x9]
    ldr x9, [sp, #480]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #472]
    bl _vkGetPhysicalDeviceSurfaceCapabilitiesKHR
    mov w25, w0
    adrp x14, l_text_281@PAGE
    add x14, x14, l_text_281@PAGEOFF
    sub x15, x29, #320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    sub x10, x29, #1872
    str w25, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w25, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_161
L64_160:
    sub x25, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x25]
    sub x14, x29, #1888
    add x15, x25, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x25, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x25
    sub x11, x29, #352
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_164
L64_163:
    b L64_162
L64_161:
L64_162:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #352
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_164:
    sub x15, x29, #352
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_5
    b L64_4
L64_5:
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
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_6:
L64_4:
    sub x9, x29, #360
    str x9, [sp, #456]
    ldr x9, [sp, #472]
    add x14, x9, #8
    mov x10, x14
    ldr x11, [sp, #456]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x9, [sp, #456]
    ldr w14, [x9]
    movz x10, #65535
    movk x10, #65535, lsl #16
    cmp w14, w10
    b.ne L64_8
L64_7:
    ldr x9, [sp, #472]
    add x26, x9, #16
    ldr w14, [x26]
    mov w27, w14
    sub x14, x29, #184
    ldr w14, [x14]
    mov w14, w14
    ldr x9, [sp, #472]
    add x28, x9, #24
    ldr w15, [x28]
    mov w15, w15
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_10canvas_min
    mov x14, x0
    mov x0, x27
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x27, x0
    ldr x10, [sp, #456]
    str w27, [x10]
    ldr x9, [sp, #456]
    add x20, x9, #4
    add x14, x26, #4
    ldr w14, [x14]
    mov w26, w14
    sub x14, x29, #200
    ldr w14, [x14]
    mov w14, w14
    add x15, x28, #4
    ldr w15, [x15]
    mov w15, w15
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_10canvas_min
    mov x14, x0
    mov x0, x26
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    str w14, [x20]
    mov w9, w27
    str w9, [sp, #8]
    b L64_9
L64_8:
    mov w9, w14
    str w9, [sp, #8]
L64_9:
    ldr w9, [sp, #8]
    mov x10, #0
    cmp w9, w10
    cset w14, eq
    cbnz w14, L64_227
    b L64_13
L64_227:
    mov w15, w14
    b L64_14
L64_13:
    ldr x9, [sp, #456]
    add x14, x9, #4
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L64_14:
    and w14, w15, #255
    cbnz w14, L64_10
    b L64_11
L64_10:
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
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_15:
    b L64_12
L64_11:
L64_12:
    ldr w9, [sp, #8]
    movz x10, #16384
    cmp w9, w10
    cset w14, hi
    cbnz w14, L64_228
    b L64_19
L64_228:
    mov w15, w14
    b L64_20
L64_19:
    ldr x9, [sp, #456]
    add x14, x9, #4
    ldr w14, [x14]
    movz x10, #16384
    cmp w14, w10
    cset w15, hi
L64_20:
    and w14, w15, #255
    cbnz w14, L64_16
    b L64_17
L64_16:
    sub x20, x29, #136
    adrp x14, _lb_gpu_17surface_too_large@PAGE
    add x14, x14, _lb_gpu_17surface_too_large@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_282@PAGE
    add x14, x14, l_text_282@PAGEOFF
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
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_21:
    b L64_18
L64_17:
L64_18:
    ldr x9, [sp, #472]
    add x14, x9, #48
    ldr w14, [x14]
    adrp x9, _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT@PAGE
    add x9, x9, _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT@PAGEOFF
    str x9, [sp, #448]
    ldr x9, [sp, #448]
    ldr w15, [x9]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L64_229
    b L64_25
L64_229:
    mov w15, w14
    b L64_26
L64_25:
    ldr x9, [sp, #472]
    add x14, x9, #44
    ldr w14, [x14]
    adrp x15, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGE
    add x15, x15, _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR@PAGEOFF
    ldr w15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L64_26:
    and w14, w15, #255
    cbnz w14, L64_22
    b L64_23
L64_22:
    sub x20, x29, #136
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_283@PAGE
    add x14, x14, l_text_283@PAGEOFF
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
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_27:
    b L64_24
L64_23:
L64_24:
    sub x9, x29, #396
    str x9, [sp, #440]
    mov x9, #0
    ldr x10, [sp, #440]
    str w9, [x10]
    ldr x9, [sp, #464]
    ldr x14, [x9]
    ldr x9, [sp, #480]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #440]
    mov x3, #0
    bl _vkGetPhysicalDeviceSurfaceFormatsKHR
    mov w28, w0
    adrp x14, l_text_284@PAGE
    add x14, x14, l_text_284@PAGEOFF
    sub x15, x29, #416
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    sub x10, x29, #1872
    str w28, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w28, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_166
L64_165:
    sub x28, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x28]
    sub x14, x29, #1888
    add x15, x28, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x28, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x28
    sub x11, x29, #448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_169
L64_168:
    b L64_167
L64_166:
L64_167:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_169:
    sub x15, x29, #448
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_29
    b L64_28
L64_29:
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
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_30:
L64_28:
    sub x9, x29, #464
    str x9, [sp, #48]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #40]
    ldr x9, [sp, #440]
    ldr w14, [x9]
    mov w20, w14
    sub x25, x29, #512
    movz x10, #2048, lsl #48
    cmp x20, x10
    b.ls L64_32
L64_31:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L64_33
L64_32:
    lsl x23, x20, #3
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #40]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L64_34
    b L64_35
L64_35:
    adrp x0, l_text_285@PAGE
    add x0, x0, l_text_285@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L64_34:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #4
    sub x8, x29, #536
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #536
    add x27, x26, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x23, x10
    cset w22, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w22, w22, w27
    cbnz w22, L64_36
    b L64_37
L64_36:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L64_33
L64_37:
    ldr x14, [x26]
    str x14, [x25]
    add x14, x25, #8
    str x20, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L64_33:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L64_39
    b L64_38
L64_39:
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
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_40:
L64_38:
    mov x10, x25
    ldr x11, [sp, #48]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #464]
    ldr x14, [x9]
    ldr x9, [sp, #480]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    ldr x9, [x9]
    str x9, [sp, #432]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #440]
    ldr x3, [sp, #432]
    bl _vkGetPhysicalDeviceSurfaceFormatsKHR
    mov w22, w0
    adrp x14, l_text_286@PAGE
    add x14, x14, l_text_286@PAGEOFF
    sub x15, x29, #552
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    sub x10, x29, #1872
    str w22, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_171
L64_170:
    sub x22, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    sub x14, x29, #1888
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_174
L64_173:
    b L64_172
L64_171:
L64_172:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_174:
    sub x15, x29, #584
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_42
    b L64_41
L64_42:
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
    ldr x9, [sp, #48]
    add x23, x9, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_287@PAGE
    add x0, x0, l_text_287@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x24, x14, #8
    str x23, [x24]
    ldr x9, [sp, #40]
    ldr x23, [x9]
    ldr x9, [sp, #40]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L64_44
    b L64_43
L64_44:
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
L64_43:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_45:
L64_41:
    ldr x9, [sp, #440]
    ldr w14, [x9]
    mov w9, w14
    str x9, [sp, #424]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    adrp x9, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGE
    add x9, x9, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGEOFF
    str x9, [sp, #416]
    adrp x23, _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB@PAGE
    add x23, x23, _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB@PAGEOFF
    adrp x25, _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB@PAGE
    add x25, x25, _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB@PAGEOFF
    adrp x26, _lb_gpu_19VK_FORMAT_UNDEFINED@PAGE
    add x26, x26, _lb_gpu_19VK_FORMAT_UNDEFINED@PAGEOFF
    mov x9, #0
    mov w27, w9
    mov x9, #0
    mov x24, x9
L64_46:
    ldr x10, [sp, #424]
    cmp x24, x10
    b.lo L64_47
L64_230:
    mov w9, w27
    str w9, [sp, #32]
    b L64_49
L64_47:
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_288@PAGE
    add x0, x0, l_text_288@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x19, x24, #3
    ldr x9, [sp, #432]
    add x19, x9, x19
    add x14, x19, #4
    ldr w14, [x14]
    ldr x9, [sp, #416]
    ldr w21, [x9]
    cmp w14, w21
    b.ne L64_51
L64_50:
    ldr w14, [x19]
    ldr w21, [x23]
    cmp w14, w21
    cset w14, eq
    cbnz w14, L64_231
    b L64_56
L64_231:
    mov w22, w14
    b L64_57
L64_56:
    ldr w14, [x19]
    ldr w22, [x25]
    cmp w14, w22
    cset w22, eq
L64_57:
    and w14, w22, #255
    cbnz w14, L64_53
    b L64_54
L64_53:
    ldr w14, [x19]
    mov w9, w14
    str w9, [sp, #32]
    b L64_49
L64_58:
    b L64_55
L64_54:
L64_55:
    ldr w14, [x19]
    ldr w22, [x26]
    cmp w14, w22
    b.ne L64_60
L64_59:
    mov w14, w21
    b L64_61
L64_60:
    mov w14, w27
L64_61:
    mov w19, w14
    b L64_52
L64_51:
    mov w19, w27
L64_52:
L64_48:
    add x14, x24, #1
    mov w27, w19
    mov x24, x14
    b L64_46
L64_49:
    ldr w9, [sp, #32]
    mov x10, #0
    cmp w9, w10
    b.ne L64_63
L64_62:
    sub x19, x29, #136
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_292@PAGE
    add x14, x14, l_text_292@PAGEOFF
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
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_293@PAGE
    add x0, x0, l_text_293@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L64_66
    b L64_65
L64_66:
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
L64_65:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_67:
    b L64_64
L64_63:
L64_64:
    ldr x9, [sp, #472]
    ldr w14, [x9]
    mov w9, w14
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_294@PAGE
    add x0, x0, l_text_294@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    ldr x9, [sp, #472]
    add x15, x9, #4
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w21, hi
    cbnz w21, L64_71
    b L64_232
L64_232:
    mov w22, w21
    b L64_72
L64_71:
    cmp w14, w15
    cset w22, hi
L64_72:
    and w21, w22, #255
    cbnz w21, L64_68
    b L64_69
L64_68:
    mov w21, w15
    b L64_70
L64_69:
    mov w21, w14
L64_70:
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
    ldr x9, [sp, #480]
    ldr x14, [x9]
    add x15, x23, #24
    str x14, [x15]
    add x14, x23, #32
    str w21, [x14]
    add x14, x23, #36
    ldr w9, [sp, #32]
    str w9, [x14]
    adrp x14, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGE
    add x14, x14, _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR@PAGEOFF
    ldr w14, [x14]
    add x15, x23, #40
    str w14, [x15]
    add x14, x23, #44
    ldr x10, [sp, #456]
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x23, #52
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #448]
    ldr w14, [x9]
    add x15, x23, #56
    str w14, [x15]
    ldr x9, [sp, #472]
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
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x9, [sp, #480]
    add x23, x9, #8
    mov x0, x14
    mov x1, x22
    mov x2, #0
    mov x3, x23
    bl _vkCreateSwapchainKHR
    mov w22, w0
    adrp x14, l_text_295@PAGE
    add x14, x14, l_text_295@PAGEOFF
    sub x15, x29, #856
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    sub x10, x29, #1872
    str w22, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_176
L64_175:
    sub x21, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #1888
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_179
L64_178:
    b L64_177
L64_176:
L64_177:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_179:
    sub x15, x29, #888
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_74
    b L64_73
L64_74:
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
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_296@PAGE
    add x0, x0, l_text_296@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #40]
    ldr x21, [x9]
    ldr x9, [sp, #40]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L64_76
    b L64_75
L64_76:
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
L64_75:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_77:
L64_73:
    ldr x9, [sp, #480]
    add x21, x9, #32
    ldr w9, [sp, #8]
    str w9, [x21]
    ldr x9, [sp, #480]
    add x22, x9, #36
    ldr x9, [sp, #456]
    add x14, x9, #4
    ldr w9, [x14]
    str w9, [sp, #408]
    ldr w9, [sp, #408]
    str w9, [x22]
    ldr x9, [sp, #480]
    add x14, x9, #40
    ldr w9, [sp, #32]
    str w9, [x14]
    ldr x9, [sp, #496]
    sub x10, x29, #1936
    str x9, [x10]
    ldr x9, [sp, #480]
    sub x10, x29, #1952
    str x9, [x10]
    sub x25, x29, #1968
    mov x11, x25
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr x9, [sp, #464]
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
    b.ne L64_181
L64_180:
    sub x21, x29, #1920
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    adrp x14, l_text_314@PAGE
    add x14, x14, l_text_314@PAGEOFF
    sub x15, x29, #1984
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
    b L64_206
L64_183:
    b L64_182
L64_181:
L64_182:
    sub x25, x29, #2072
    sub x27, x29, #2160
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
    sub x24, x29, #2176
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
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x9, [sp, #480]
    add x24, x9, #88
    mov x0, x14
    mov x1, x25
    mov x2, #0
    mov x3, x24
    bl _vkCreateImage
    mov w25, w0
    adrp x14, l_text_315@PAGE
    add x14, x14, l_text_315@PAGEOFF
    sub x15, x29, #2192
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    sub x10, x29, #2424
    str w25, [x10]
    mov x10, x15
    sub x11, x29, #2440
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w25, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_197
L64_196:
    sub x21, x29, #2408
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #2440
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #2224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_200
L64_199:
    b L64_198
L64_197:
L64_198:
    sub x14, x29, #2408
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #2224
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_200:
    sub x15, x29, #2224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_185
    b L64_184
L64_185:
    sub x21, x29, #1920
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
    b L64_206
L64_186:
L64_184:
    sub x21, x29, #2248
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x15, [x24]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _vkGetImageMemoryRequirements
    ldr x9, [sp, #480]
    add x22, x9, #96
    adrp x14, _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT@PAGE
    add x14, x14, _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT@PAGEOFF
    ldr w14, [x14]
    ldr x0, [sp, #496]
    mov x9, x21
    mov x1, x9
    mov x2, x14
    sub x8, x29, #2288
    bl _lb_gpu_13vulkan_memory
    sub x15, x29, #2288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L64_188
    b L64_187
L64_188:
    add x14, x15, #8
    sub x21, x29, #1920
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
    b L64_206
L64_189:
L64_187:
    ldr x14, [x15]
    str x14, [x22]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x21, [x24]
    ldr x25, [x22]
    mov x0, x14
    mov x1, x21
    mov x2, x25
    mov x3, #0
    bl _vkBindImageMemory
    mov w21, w0
    adrp x14, l_text_316@PAGE
    add x14, x14, l_text_316@PAGEOFF
    sub x25, x29, #2304
    str x14, [x25]
    add x14, x25, #8
    movz x9, #38
    str x9, [x14]
    sub x10, x29, #2424
    str w21, [x10]
    mov x10, x25
    sub x11, x29, #2440
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_202
L64_201:
    sub x21, x29, #2408
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #2440
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #2336
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_205
L64_204:
    b L64_203
L64_202:
L64_203:
    sub x14, x29, #2408
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #2336
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_205:
    sub x15, x29, #2336
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_191
    b L64_190
L64_191:
    sub x21, x29, #1920
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
    b L64_206
L64_192:
L64_190:
    ldr x9, [sp, #480]
    add x22, x9, #104
    ldr x14, [x24]
    ldr w15, [x26]
    adrp x21, _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT@PAGE
    add x21, x21, _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT@PAGEOFF
    ldr w21, [x21]
    ldr x0, [sp, #496]
    mov x1, x14
    mov x2, x15
    mov x3, x21
    sub x8, x29, #2376
    bl _lb_gpu_17vulkan_image_view
    sub x15, x29, #2376
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L64_194
    b L64_193
L64_194:
    add x14, x15, #8
    sub x21, x29, #1920
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
    b L64_206
L64_195:
L64_193:
    ldr x14, [x15]
    str x14, [x22]
    sub x14, x29, #1920
    add x21, x14, #24
    mov x9, #0
    strb w9, [x21]
    mov x10, x14
    sub x11, x29, #936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_206:
    sub x15, x29, #936
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_79
    b L64_78
L64_79:
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
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_297@PAGE
    add x0, x0, l_text_297@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #40]
    ldr x21, [x9]
    ldr x9, [sp, #40]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L64_81
    b L64_80
L64_81:
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
L64_80:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_82:
L64_78:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    sub x8, x29, #984
    bl _lb_gpu_15vulkan_pipeline
    sub x15, x29, #984
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_84
    b L64_83
L64_84:
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
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_298@PAGE
    add x0, x0, l_text_298@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #40]
    ldr x21, [x9]
    ldr x9, [sp, #40]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L64_86
    b L64_85
L64_86:
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
L64_85:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_87:
L64_83:
    mov x9, #0
    ldr x10, [sp, #440]
    str w9, [x10]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x15, [x23]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #440]
    mov x3, #0
    bl _vkGetSwapchainImagesKHR
    mov w21, w0
    adrp x14, l_text_299@PAGE
    add x14, x14, l_text_299@PAGEOFF
    sub x15, x29, #1016
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    sub x10, x29, #1872
    str w21, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_208
L64_207:
    sub x21, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #1888
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #1048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_211
L64_210:
    b L64_209
L64_208:
L64_209:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_211:
    sub x15, x29, #1048
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_89
    b L64_88
L64_89:
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
    ldr x9, [sp, #48]
    add x21, x9, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_300@PAGE
    add x0, x0, l_text_300@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x22, x14, #8
    str x21, [x22]
    ldr x9, [sp, #40]
    ldr x21, [x9]
    ldr x9, [sp, #40]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L64_91
    b L64_90
L64_91:
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
L64_90:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_92:
L64_88:
    sub x9, x29, #1080
    str x9, [sp, #24]
    ldr x9, [sp, #440]
    ldr w14, [x9]
    mov w22, w14
    sub x24, x29, #1128
    movz x10, #2048, lsl #48
    cmp x22, x10
    b.ls L64_94
L64_93:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L64_95
L64_94:
    lsl x25, x22, #3
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #40]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L64_96
    b L64_97
L64_97:
    adrp x0, l_text_301@PAGE
    add x0, x0, l_text_301@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L64_96:
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
    cbnz w26, L64_98
    b L64_99
L64_98:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L64_95
L64_99:
    ldr x14, [x19]
    str x14, [x24]
    add x14, x24, #8
    str x22, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L64_95:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L64_101
    b L64_100
L64_101:
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
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_301@PAGE
    add x0, x0, l_text_301@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L64_103
    b L64_102
L64_103:
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
L64_102:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_104:
L64_100:
    mov x10, x24
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x15, [x23]
    ldr x9, [sp, #24]
    ldr x19, [x9]
    mov x0, x14
    mov x1, x15
    ldr x2, [sp, #440]
    mov x3, x19
    bl _vkGetSwapchainImagesKHR
    mov w22, w0
    adrp x14, l_text_302@PAGE
    add x14, x14, l_text_302@PAGEOFF
    sub x15, x29, #1184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    sub x10, x29, #1872
    str w22, [x10]
    mov x10, x15
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_213
L64_212:
    sub x22, x29, #1856
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    sub x14, x29, #1888
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #1216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_216
L64_215:
    b L64_214
L64_213:
L64_214:
    sub x14, x29, #1856
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_216:
    sub x15, x29, #1216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L64_106
    b L64_105
L64_106:
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
    ldr x9, [sp, #24]
    add x23, x9, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_303@PAGE
    add x0, x0, l_text_303@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x19, [x14]
    add x24, x14, #8
    str x23, [x24]
    ldr x9, [sp, #40]
    ldr x23, [x9]
    ldr x9, [sp, #40]
    add x24, x9, #8
    ldr x25, [x24]
    cbnz x25, L64_108
    b L64_107
L64_108:
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
L64_107:
    sub x14, x29, #1248
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_303@PAGE
    add x0, x0, l_text_303@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x24]
    cbnz x19, L64_110
    b L64_109
L64_110:
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
L64_109:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_111:
L64_105:
    ldr x9, [sp, #480]
    add x9, x9, #16
    str x9, [sp, #16]
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    ldr x9, [sp, #440]
    ldr w14, [x9]
    mov w23, w14
    sub x24, x29, #1296
    movz x10, #512, lsl #48
    cmp x23, x10
    b.ls L64_113
L64_112:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L64_114
L64_113:
    lsl x26, x23, #5
    ldr x14, [x15]
    add x25, x15, #8
    ldr x25, [x25]
    cbnz x25, L64_115
    b L64_116
L64_116:
    adrp x0, l_text_304@PAGE
    add x0, x0, l_text_304@PAGEOFF
    adrp x1, l_text_15@PAGE
    add x1, x1, l_text_15@PAGEOFF
    bl _lb_core_7trap_at
L64_115:
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
    cbnz w15, L64_117
    b L64_118
L64_117:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_17@PAGE
    add x15, x15, l_text_17@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L64_114
L64_118:
    ldr x14, [x22]
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L64_114:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L64_120
    b L64_119
L64_120:
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
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_304@PAGE
    add x0, x0, l_text_304@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x23, x9, #8
    ldr x25, [x23]
    cbnz x25, L64_122
    b L64_121
L64_122:
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
L64_121:
    sub x14, x29, #1352
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_304@PAGE
    add x0, x0, l_text_304@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x23]
    cbnz x19, L64_124
    b L64_123
L64_124:
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
L64_123:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_125:
L64_119:
    mov x10, x24
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #440]
    ldr w14, [x9]
    mov w9, w14
    str x9, [sp, #400]
    ldr x9, [sp, #16]
    add x23, x9, #8
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #392]
    adrp x9, _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT@PAGE
    add x9, x9, _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT@PAGEOFF
    str x9, [sp, #384]
    sub x26, x29, #1392
    add x9, x26, #32
    str x9, [sp, #376]
    sub x9, x29, #1440
    str x9, [sp, #368]
    sub x9, x29, #1456
    str x9, [sp, #360]
    ldr x9, [sp, #480]
    add x9, x9, #104
    str x9, [sp, #352]
    ldr x9, [sp, #360]
    add x9, x9, #8
    str x9, [sp, #344]
    sub x9, x29, #1520
    str x9, [sp, #336]
    sub x9, x29, #1584
    str x9, [sp, #328]
    adrp x9, _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO@PAGE
    add x9, x9, _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO@PAGEOFF
    str x9, [sp, #320]
    ldr x9, [sp, #480]
    add x9, x9, #48
    str x9, [sp, #312]
    ldr x9, [sp, #328]
    add x9, x9, #24
    str x9, [sp, #304]
    ldr x9, [sp, #328]
    add x9, x9, #32
    str x9, [sp, #296]
    ldr x9, [sp, #328]
    add x9, x9, #40
    str x9, [sp, #288]
    ldr x9, [sp, #328]
    add x9, x9, #48
    str x9, [sp, #280]
    ldr x9, [sp, #328]
    add x9, x9, #52
    str x9, [sp, #272]
    ldr x9, [sp, #328]
    add x9, x9, #56
    str x9, [sp, #264]
    adrp x9, l_text_310@PAGE
    add x9, x9, l_text_310@PAGEOFF
    str x9, [sp, #256]
    sub x9, x29, #1600
    str x9, [sp, #248]
    ldr x9, [sp, #248]
    add x9, x9, #8
    str x9, [sp, #240]
    sub x9, x29, #1856
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #24
    str x9, [sp, #112]
    sub x9, x29, #1856
    str x9, [sp, #160]
    adrp x9, _lb_gpu_failed@PAGE
    add x9, x9, _lb_gpu_failed@PAGEOFF
    str x9, [sp, #152]
    sub x9, x29, #1888
    str x9, [sp, #144]
    ldr x9, [sp, #160]
    add x9, x9, #8
    str x9, [sp, #136]
    ldr x9, [sp, #160]
    add x9, x9, #24
    str x9, [sp, #128]
    sub x28, x29, #1632
    add x9, x28, #24
    str x9, [sp, #232]
    sub x9, x29, #1688
    str x9, [sp, #224]
    sub x9, x29, #1712
    str x9, [sp, #216]
    adrp x9, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGE
    add x9, x9, _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO@PAGEOFF
    str x9, [sp, #208]
    adrp x9, l_text_312@PAGE
    add x9, x9, l_text_312@PAGEOFF
    str x9, [sp, #200]
    sub x9, x29, #1728
    str x9, [sp, #192]
    ldr x9, [sp, #192]
    add x9, x9, #8
    str x9, [sp, #184]
    sub x9, x29, #1856
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #24
    str x9, [sp, #56]
    sub x9, x29, #1856
    str x9, [sp, #104]
    adrp x9, _lb_gpu_failed@PAGE
    add x9, x9, _lb_gpu_failed@PAGEOFF
    str x9, [sp, #96]
    sub x9, x29, #1888
    str x9, [sp, #88]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #80]
    ldr x9, [sp, #104]
    add x9, x9, #24
    str x9, [sp, #72]
    sub x20, x29, #1760
    add x9, x20, #24
    str x9, [sp, #176]
    mov x9, #0
    mov x27, x9
L64_126:
    ldr x10, [sp, #400]
    cmp x27, x10
    b.hs L64_129
L64_127:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x15, [x23]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_305@PAGE
    add x0, x0, l_text_305@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x24, x27, #5
    add x14, x14, x24
    ldr x9, [sp, #392]
    ldr x22, [x9]
    cmp x27, x22
    b.lo 1f
    adrp x0, l_text_305@PAGE
    add x0, x0, l_text_305@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x27, #3
    add x15, x19, x15
    ldr x21, [x15]
    str x21, [x14]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x21, [x23]
    cmp x27, x21
    b.lo 1f
    adrp x0, l_text_306@PAGE
    add x0, x0, l_text_306@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x24, x14
    add x21, x14, #8
    ldr x14, [x15]
    ldr x9, [sp, #384]
    ldr w15, [x9]
    ldr x0, [sp, #496]
    mov x1, x14
    ldr x2, [sp, #32]
    mov x3, x15
    sub x8, x29, #1392
    bl _lb_gpu_17vulkan_image_view
    ldr x9, [sp, #376]
    ldrb w14, [x9]
    cbnz w14, L64_131
    b L64_130
L64_131:
    add x14, x26, #8
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
    adrp x0, l_text_306@PAGE
    add x0, x0, l_text_306@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x23, [x21]
    cbnz x23, L64_133
    b L64_132
L64_133:
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
L64_132:
    sub x14, x29, #1424
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_306@PAGE
    add x0, x0, l_text_306@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x21]
    cbnz x19, L64_135
    b L64_134
L64_135:
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
L64_134:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_136:
L64_130:
    ldr x14, [x26]
    str x14, [x21]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x15, [x23]
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_307@PAGE
    add x0, x0, l_text_307@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x24, x14
    add x14, x14, #8
    ldr x14, [x14]
    ldr x10, [sp, #360]
    str x14, [x10]
    ldr x9, [sp, #352]
    ldr x14, [x9]
    ldr x10, [sp, #344]
    str x14, [x10]
    ldr x10, [sp, #360]
    ldr x11, [sp, #368]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x11, [sp, #328]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    ldr x9, [sp, #320]
    ldr w14, [x9]
    ldr x10, [sp, #328]
    str w14, [x10]
    ldr x9, [sp, #312]
    ldr x14, [x9]
    ldr x10, [sp, #304]
    str x14, [x10]
    movz x9, #2
    ldr x10, [sp, #296]
    str w9, [x10]
    ldr x9, [sp, #368]
    ldr x10, [sp, #288]
    str x9, [x10]
    ldr w9, [sp, #8]
    ldr x10, [sp, #280]
    str w9, [x10]
    ldr w9, [sp, #408]
    ldr x10, [sp, #272]
    str w9, [x10]
    movz x9, #1
    ldr x10, [sp, #264]
    str w9, [x10]
    ldr x10, [sp, #328]
    ldr x11, [sp, #336]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x25, [x23]
    cmp x27, x25
    b.lo 1f
    adrp x0, l_text_309@PAGE
    add x0, x0, l_text_309@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x24, x15
    add x15, x15, #16
    mov x0, x14
    ldr x1, [sp, #336]
    mov x2, #0
    mov x3, x15
    bl _vkCreateFramebuffer
    mov w25, w0
    ldr x9, [sp, #256]
    ldr x10, [sp, #248]
    str x9, [x10]
    movz x9, #41
    ldr x10, [sp, #240]
    str x9, [x10]
    sub x10, x29, #1872
    str w25, [x10]
    ldr x10, [sp, #248]
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w25, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_218
L64_217:
    ldr x9, [sp, #152]
    ldr w14, [x9]
    ldr x10, [sp, #160]
    str w14, [x10]
    ldr x10, [sp, #144]
    ldr x11, [sp, #136]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #128]
    strb w9, [x10]
    ldr x10, [sp, #160]
    sub x11, x29, #1632
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_221
L64_220:
    b L64_219
L64_218:
L64_219:
    mov x9, #0
    ldr x10, [sp, #112]
    strb w9, [x10]
    ldr x10, [sp, #120]
    sub x11, x29, #1632
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_221:
    ldr x9, [sp, #232]
    ldrb w14, [x9]
    cbnz w14, L64_138
    b L64_137
L64_138:
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
    sub x14, x29, #1648
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_309@PAGE
    add x0, x0, l_text_309@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x21, x9, #8
    ldr x23, [x21]
    cbnz x23, L64_140
    b L64_139
L64_140:
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
L64_139:
    sub x14, x29, #1664
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_309@PAGE
    add x0, x0, l_text_309@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x21]
    cbnz x19, L64_142
    b L64_141
L64_142:
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
L64_141:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_143:
L64_137:
    ldr x11, [sp, #216]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x9, [sp, #208]
    ldr w14, [x9]
    ldr x10, [sp, #216]
    str w14, [x10]
    ldr x10, [sp, #216]
    ldr x11, [sp, #224]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #488]
    ldr x14, [x9]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x21, [x23]
    cmp x27, x21
    b.lo 1f
    adrp x0, l_text_311@PAGE
    add x0, x0, l_text_311@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x24, x15
    add x15, x15, #24
    mov x0, x14
    ldr x1, [sp, #224]
    mov x2, #0
    mov x3, x15
    bl _vkCreateSemaphore
    mov w21, w0
    ldr x9, [sp, #200]
    ldr x10, [sp, #192]
    str x9, [x10]
    movz x9, #52
    ldr x10, [sp, #184]
    str x9, [x10]
    sub x10, x29, #1872
    str w21, [x10]
    ldr x10, [sp, #192]
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldrsw x14, [x9]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L64_223
L64_222:
    ldr x9, [sp, #96]
    ldr w14, [x9]
    ldr x10, [sp, #104]
    str w14, [x10]
    ldr x10, [sp, #88]
    ldr x11, [sp, #80]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #72]
    strb w9, [x10]
    ldr x10, [sp, #104]
    sub x11, x29, #1760
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L64_226
L64_225:
    b L64_224
L64_223:
L64_224:
    mov x9, #0
    ldr x10, [sp, #56]
    strb w9, [x10]
    ldr x10, [sp, #64]
    sub x11, x29, #1760
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L64_226:
    ldr x9, [sp, #176]
    ldrb w14, [x9]
    cbnz w14, L64_145
    b L64_144
L64_145:
    sub x21, x29, #136
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #1776
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_311@PAGE
    add x0, x0, l_text_311@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x23, x9, #8
    ldr x24, [x23]
    cbnz x24, L64_147
    b L64_146
L64_147:
    add x19, x24, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_146:
    sub x14, x29, #1792
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_311@PAGE
    add x0, x0, l_text_311@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x23]
    cbnz x19, L64_149
    b L64_148
L64_149:
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
L64_148:
    ldr x0, [sp, #496]
    ldr x1, [sp, #480]
    bl _lb_gpu_24vulkan_swapchain_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_150:
L64_144:
L64_128:
    add x14, x27, #1
    mov x27, x14
    b L64_126
L64_129:
    ldr x9, [sp, #480]
    add x14, x9, #136
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #1808
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_313@PAGE
    add x0, x0, l_text_313@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x19, [x14]
    add x20, x14, #8
    str x15, [x20]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #40]
    add x20, x9, #8
    ldr x21, [x20]
    cbnz x21, L64_152
    b L64_151
L64_152:
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
L64_151:
    sub x14, x29, #1824
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_313@PAGE
    add x0, x0, l_text_313@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #432]
    str x9, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x19, [x20]
    cbnz x19, L64_154
    b L64_153
L64_154:
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
L64_153:
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
    ldr x19, [sp, #2912]
    ldr x20, [sp, #2904]
    ldr x21, [sp, #2896]
    ldr x22, [sp, #2888]
    ldr x23, [sp, #2880]
    ldr x24, [sp, #2872]
    ldr x25, [sp, #2864]
    ldr x26, [sp, #2856]
    ldr x27, [sp, #2848]
    ldr x28, [sp, #2840]
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
L65_1:
    cmp x22, x23
    b.hs L65_4
L65_2:
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
    b.ne L65_6
L65_5:
    ldr x15, [x26]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroyFramebuffer
    b L65_7
L65_6:
L65_7:
    ldr x14, [x27]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L65_9
L65_8:
    ldr x15, [x28]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroyImageView
    b L65_10
L65_9:
L65_10:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L65_12
L65_11:
    ldr x15, [x20]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroySemaphore
    b L65_13
L65_12:
L65_13:
L65_3:
    add x14, x22, #1
    mov x22, x14
    b L65_1
L65_4:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L65_15
L65_14:
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
    adrp x0, l_text_317@PAGE
    add x0, x0, l_text_317@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x19, [x15]
    add x19, x15, #8
    str x20, [x19]
    ldr x19, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L65_18
    b L65_17
L65_18:
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
L65_17:
    b L65_16
L65_15:
L65_16:
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
    b.ne L65_20
L65_19:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyPipeline
    b L65_21
L65_20:
L65_21:
    ldr x9, [sp, #24]
    add x20, x9, #80
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_23
L65_22:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyPipeline
    b L65_24
L65_23:
L65_24:
    ldr x9, [sp, #24]
    add x21, x9, #56
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_26
L65_25:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyDescriptorSetLayout
    b L65_27
L65_26:
L65_27:
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
    b.ne L65_29
L65_28:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x22]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyPipelineLayout
    b L65_30
L65_29:
L65_30:
    ldr x9, [sp, #24]
    add x21, x9, #48
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_32
L65_31:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyRenderPass
    b L65_33
L65_32:
L65_33:
    ldr x9, [sp, #24]
    add x23, x9, #104
    ldr x14, [x23]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_35
L65_34:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x23]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyImageView
    b L65_36
L65_35:
L65_36:
    ldr x9, [sp, #24]
    add x24, x9, #88
    ldr x14, [x24]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_38
L65_37:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x24]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroyImage
    b L65_39
L65_38:
L65_39:
    ldr x9, [sp, #24]
    add x25, x9, #96
    ldr x14, [x25]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_41
L65_40:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x25]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkFreeMemory
    b L65_42
L65_41:
L65_42:
    ldr x9, [sp, #24]
    add x26, x9, #8
    ldr x14, [x26]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L65_44
L65_43:
    sub x14, x29, #112
    ldr x14, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    ldr x15, [x26]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroySwapchainKHR
    b L65_45
L65_44:
L65_45:
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

    .p2align 2
    .globl _lb_gpu_22vulkan_surface_destroy
_lb_gpu_22vulkan_surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x14, x29, #64
    ldr x19, [x14]
    add x20, x19, #16
    ldr x14, [x20]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    sub x14, x29, #80
    ldr x21, [x14]
    mov x0, x19
    mov x1, x21
    bl _lb_gpu_24vulkan_swapchain_destroy
    add x14, x21, #128
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L66_2
L66_1:
    ldr x15, [x20]
    ldr x22, [x14]
    mov x0, x15
    mov x1, x22
    mov x2, #0
    bl _vkDestroySemaphore
    b L66_3
L66_2:
L66_3:
    add x14, x21, #112
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L66_5
L66_4:
    ldr x15, [x20]
    ldr x22, [x14]
    mov x0, x15
    mov x1, x22
    mov x2, #0
    bl _vkDestroyCommandPool
    b L66_6
L66_5:
L66_6:
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L66_8
L66_7:
    ldr x14, [x19]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _vkDestroySurfaceKHR
    b L66_9
L66_8:
L66_9:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #96
    str x21, [x15]
    add x19, x15, #8
    movz x9, #144
    str x9, [x19]
    ldr x19, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L66_11
    b L66_10
L66_11:
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
L66_10:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_13vulkan_shader
_lb_gpu_13vulkan_shader:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
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
    adrp x0, l_text_318@PAGE
    add x0, x0, l_text_318@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
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
    mov w19, w0
    adrp x14, l_text_319@PAGE
    add x14, x14, l_text_319@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    sub x10, x29, #304
    str w19, [x10]
    mov x10, x15
    sub x11, x29, #320
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_gpu_10VK_SUCCESS@PAGE
    add x14, x14, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x14]
    cmp w19, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L67_6
L67_5:
    sub x19, x29, #288
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    sub x14, x29, #320
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L67_9
L67_8:
    b L67_7
L67_6:
L67_7:
    sub x14, x29, #288
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L67_9:
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L67_2
    b L67_1
L67_2:
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L67_3:
L67_1:
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L67_4:
    adrp x0, l_text_320@PAGE
    add x0, x0, l_text_320@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_15vulkan_pipeline
_lb_gpu_15vulkan_pipeline:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3264
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #3232]
    str x20, [sp, #3224]
    str x21, [sp, #3216]
    str x22, [sp, #3208]
    str x23, [sp, #3200]
    str x24, [sp, #3192]
    str x25, [sp, #3184]
    str x26, [sp, #3176]
    str x27, [sp, #3168]
    str x28, [sp, #3160]
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
    str x9, [sp, #208]
    ldr x9, [sp, #208]
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
    str x9, [sp, #200]
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x9, [sp, #208]
    add x9, x9, #48
    str x9, [sp, #192]
    mov x0, x14
    mov x1, x21
    mov x2, #0
    ldr x3, [sp, #192]
    bl _vkCreateRenderPass
    mov w21, w0
    adrp x14, l_text_322@PAGE
    add x14, x14, l_text_322@PAGEOFF
    sub x15, x29, #760
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    sub x10, x29, #3032
    str w21, [x10]
    mov x10, x15
    sub x11, x29, #3048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x9, _lb_gpu_10VK_SUCCESS@PAGE
    add x9, x9, _lb_gpu_10VK_SUCCESS@PAGEOFF
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    ldrsw x14, [x9]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L68_23
L68_22:
    sub x21, x29, #3016
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #3048
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L68_26
L68_25:
    b L68_24
L68_23:
L68_24:
    sub x14, x29, #3016
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L68_26:
    sub x15, x29, #792
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L68_2
    b L68_1
L68_2:
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_3:
L68_1:
    sub x21, x29, #816
    sub x26, x29, #840
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x9, #0
    str w9, [x26]
    adrp x14, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGE
    add x14, x14, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGEOFF
    ldr w14, [x14]
    add x15, x26, #4
    str w14, [x15]
    add x14, x26, #8
    movz x9, #1
    str w9, [x14]
    adrp x27, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGE
    add x27, x27, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGEOFF
    ldr w14, [x27]
    add x15, x26, #12
    str w14, [x15]
    mov x10, x26
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x26, x29, #872
    sub x28, x29, #904
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x28]
    add x14, x28, #20
    movz x9, #1
    str w9, [x14]
    add x14, x28, #24
    str x21, [x14]
    mov x10, x28
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x9, [sp, #208]
    add x21, x9, #56
    mov x0, x14
    mov x1, x26
    mov x2, #0
    mov x3, x21
    bl _vkCreateDescriptorSetLayout
    mov w26, w0
    adrp x14, l_text_323@PAGE
    add x14, x14, l_text_323@PAGEOFF
    sub x15, x29, #920
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    sub x10, x29, #3032
    str w26, [x10]
    mov x10, x15
    sub x11, x29, #3048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #0]
    ldrsw x14, [x9]
    cmp w26, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L68_28
L68_27:
    sub x26, x29, #3016
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x26]
    sub x14, x29, #3048
    add x15, x26, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x26, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x26
    sub x11, x29, #952
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L68_31
L68_30:
    b L68_29
L68_28:
L68_29:
    sub x14, x29, #3016
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #952
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L68_31:
    sub x15, x29, #952
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L68_5
    b L68_4
L68_5:
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_6:
L68_4:
    sub x26, x29, #968
    sub x28, x29, #984
    mov x11, x28
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr w14, [x27]
    str w14, [x28]
    add x14, x28, #8
    movz x9, #32
    str w9, [x14]
    mov x10, x28
    mov x11, x26
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    sub x28, x29, #1032
    sub x24, x29, #1080
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    add x14, x24, #20
    movz x9, #1
    str w9, [x14]
    add x14, x24, #24
    str x21, [x14]
    add x14, x24, #32
    movz x9, #1
    str w9, [x14]
    add x14, x24, #40
    str x26, [x14]
    mov x10, x24
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x9, [sp, #208]
    add x9, x9, #64
    str x9, [sp, #184]
    mov x0, x14
    mov x1, x28
    mov x2, #0
    ldr x3, [sp, #184]
    bl _vkCreatePipelineLayout
    mov w26, w0
    adrp x14, l_text_324@PAGE
    add x14, x14, l_text_324@PAGEOFF
    sub x15, x29, #1096
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    sub x10, x29, #3032
    str w26, [x10]
    mov x10, x15
    sub x11, x29, #3048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #0]
    ldrsw x14, [x9]
    cmp w26, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L68_33
L68_32:
    sub x21, x29, #3016
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #3048
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #1128
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L68_36
L68_35:
    b L68_34
L68_33:
L68_34:
    sub x14, x29, #3016
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1128
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L68_36:
    sub x15, x29, #1128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L68_8
    b L68_7
L68_8:
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_9:
L68_7:
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
    cbnz w14, L68_11
    b L68_10
L68_11:
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_12:
L68_10:
    ldr x21, [x15]
    adrp x14, _lb_gpu_17vulkan_frag_words@PAGE
    add x14, x14, _lb_gpu_17vulkan_frag_words@PAGEOFF
    sub x26, x29, #1200
    str x14, [x26]
    add x14, x26, #8
    movz x9, #1021
    str x9, [x14]
    mov x0, x19
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1240
    bl _lb_gpu_13vulkan_shader
    sub x26, x29, #1240
    add x14, x26, #32
    ldrb w14, [x14]
    cbnz w14, L68_14
    b L68_13
L68_14:
    add x14, x26, #8
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
    ldr x9, [sp, #200]
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_15:
L68_13:
    ldr x9, [x26]
    str x9, [sp, #176]
    sub x28, x29, #1336
    sub x9, x29, #1432
    str x9, [sp, #168]
    sub x9, x29, #1480
    str x9, [sp, #160]
    ldr x11, [sp, #160]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO@PAGEOFF
    ldr w20, [x14]
    ldr x10, [sp, #160]
    str w20, [x10]
    adrp x14, _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT@PAGE
    add x14, x14, _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT@PAGEOFF
    ldr w14, [x14]
    ldr x9, [sp, #160]
    add x15, x9, #20
    str w14, [x15]
    ldr x9, [sp, #160]
    add x14, x9, #24
    str x21, [x14]
    adrp x9, l_text_325@PAGE
    add x9, x9, l_text_325@PAGEOFF
    str x9, [sp, #152]
    ldr x9, [sp, #160]
    add x14, x9, #32
    ldr x9, [sp, #152]
    str x9, [x14]
    ldr x10, [sp, #160]
    ldr x11, [sp, #168]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x9, x29, #1528
    str x9, [sp, #144]
    ldr x11, [sp, #144]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    ldr x10, [sp, #144]
    str w20, [x10]
    ldr w14, [x27]
    ldr x9, [sp, #144]
    add x15, x9, #20
    str w14, [x15]
    ldr x9, [sp, #144]
    add x14, x9, #24
    ldr x9, [sp, #176]
    str x9, [x14]
    ldr x9, [sp, #144]
    add x14, x9, #32
    ldr x9, [sp, #152]
    str x9, [x14]
    ldr x9, [sp, #168]
    add x14, x9, #48
    ldr x10, [sp, #144]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x10, [sp, #168]
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
    str x9, [sp, #136]
    ldr x11, [sp, #136]
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    ldr x9, [sp, #136]
    add x14, x9, #4
    movz x9, #32
    str w9, [x14]
    ldr x10, [sp, #136]
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    sub x9, x29, #1592
    str x9, [sp, #128]
    sub x9, x29, #1624
    str x9, [sp, #120]
    sub x9, x29, #1640
    str x9, [sp, #112]
    ldr x11, [sp, #112]
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    ldr x10, [sp, #112]
    str w9, [x10]
    adrp x14, _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT@PAGE
    add x14, x14, _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT@PAGEOFF
    ldr w19, [x14]
    ldr x9, [sp, #112]
    add x14, x9, #8
    str w19, [x14]
    ldr x9, [sp, #112]
    add x14, x9, #12
    mov x9, #0
    str w9, [x14]
    ldr x10, [sp, #112]
    ldr x11, [sp, #120]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #1656
    str x9, [sp, #104]
    ldr x11, [sp, #104]
    stp xzr, xzr, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #104]
    str w9, [x10]
    ldr x9, [sp, #104]
    add x14, x9, #8
    str w19, [x14]
    ldr x9, [sp, #104]
    add x14, x9, #12
    movz x9, #16
    str w9, [x14]
    ldr x9, [sp, #120]
    add x14, x9, #16
    ldr x10, [sp, #104]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #120]
    ldr x11, [sp, #128]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x19, x29, #1704
    sub x9, x29, #1752
    str x9, [sp, #96]
    ldr x11, [sp, #96]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #96]
    str w14, [x10]
    ldr x9, [sp, #96]
    add x14, x9, #20
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #96]
    add x14, x9, #24
    str x20, [x14]
    ldr x9, [sp, #96]
    add x14, x9, #32
    movz x9, #2
    str w9, [x14]
    ldr x9, [sp, #96]
    add x14, x9, #40
    ldr x9, [sp, #128]
    str x9, [x14]
    ldr x10, [sp, #96]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x20, x29, #1784
    sub x9, x29, #1816
    str x9, [sp, #88]
    ldr x11, [sp, #88]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #88]
    str w14, [x10]
    adrp x14, _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST@PAGE
    add x14, x14, _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST@PAGEOFF
    ldr w14, [x14]
    ldr x9, [sp, #88]
    add x15, x9, #20
    str w14, [x15]
    ldr x10, [sp, #88]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x9, x29, #1864
    str x9, [sp, #80]
    sub x9, x29, #1912
    str x9, [sp, #72]
    ldr x11, [sp, #72]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #72]
    str w14, [x10]
    ldr x9, [sp, #72]
    add x14, x9, #20
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #72]
    add x14, x9, #32
    movz x9, #1
    str w9, [x14]
    ldr x10, [sp, #72]
    ldr x11, [sp, #80]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x9, x29, #1976
    str x9, [sp, #64]
    sub x9, x29, #2040
    str x9, [sp, #56]
    ldr x11, [sp, #56]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #56]
    str w14, [x10]
    movz x9, #16256, lsl #16
    fmov s24, w9
    ldr x9, [sp, #56]
    add x14, x9, #56
    str s24, [x14]
    ldr x10, [sp, #56]
    ldr x11, [sp, #64]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    sub x9, x29, #2088
    str x9, [sp, #48]
    sub x9, x29, #2136
    str x9, [sp, #40]
    ldr x11, [sp, #40]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    ldr x10, [sp, #40]
    str w14, [x10]
    ldr w14, [x23]
    ldr x9, [sp, #40]
    add x15, x9, #20
    str w14, [x15]
    ldr x10, [sp, #40]
    ldr x11, [sp, #48]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    sub x9, x29, #2240
    str x9, [sp, #32]
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
    ldr x11, [sp, #32]
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
    str x9, [sp, #24]
    ldr x9, [sp, #24]
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
    str x9, [sp, #16]
    ldr x10, [sp, #16]
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
    str x9, [sp, #8]
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
    ldr x11, [sp, #8]
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
    ldr x9, [sp, #80]
    str x9, [x14]
    add x14, x24, #64
    ldr x9, [sp, #64]
    str x9, [x14]
    add x14, x24, #72
    ldr x9, [sp, #48]
    str x9, [x14]
    add x14, x24, #80
    ldr x9, [sp, #32]
    str x9, [x14]
    add x14, x24, #88
    ldr x9, [sp, #8]
    str x9, [x14]
    add x14, x24, #96
    str x25, [x14]
    ldr x9, [sp, #184]
    ldr x14, [x9]
    add x15, x24, #104
    str x14, [x15]
    ldr x9, [sp, #192]
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
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x9, [sp, #208]
    add x15, x9, #72
    mov x0, x14
    mov x1, #0
    movz x2, #1
    mov x3, x22
    mov x4, #0
    mov x5, x15
    bl _vkCreateGraphicsPipelines
    mov w19, w0
    adrp x14, l_text_329@PAGE
    add x14, x14, l_text_329@PAGEOFF
    sub x15, x29, #2904
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
    str x9, [x14]
    sub x10, x29, #3032
    str w19, [x10]
    mov x10, x15
    sub x11, x29, #3048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #0]
    ldrsw x14, [x9]
    cmp w19, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L68_38
L68_37:
    sub x19, x29, #3016
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    sub x14, x29, #3048
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #2936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L68_41
L68_40:
    b L68_39
L68_38:
L68_39:
    sub x14, x29, #3016
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #2936
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L68_41:
    sub x15, x29, #2936
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L68_17
    b L68_16
L68_17:
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
    ldr x9, [sp, #200]
    ldr x14, [x9]
    mov x0, x14
    ldr x1, [sp, #176]
    mov x2, #0
    bl _vkDestroyShaderModule
    ldr x9, [sp, #200]
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_18:
L68_16:
    ldr x9, [sp, #32]
    add x14, x9, #20
    ldr x9, [sp, #24]
    ldr w15, [x9]
    str w15, [x14]
    ldr x9, [sp, #32]
    add x14, x9, #24
    str w15, [x14]
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x9, [sp, #208]
    add x15, x9, #80
    mov x0, x14
    mov x1, #0
    movz x2, #1
    mov x3, x22
    mov x4, #0
    mov x5, x15
    bl _vkCreateGraphicsPipelines
    mov w19, w0
    adrp x14, l_text_330@PAGE
    add x14, x14, l_text_330@PAGEOFF
    sub x15, x29, #2952
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
    str x9, [x14]
    sub x10, x29, #3032
    str w19, [x10]
    mov x10, x15
    sub x11, x29, #3048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #0]
    ldrsw x14, [x9]
    cmp w19, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L68_43
L68_42:
    sub x19, x29, #3016
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    sub x14, x29, #3048
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #2984
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L68_46
L68_45:
    b L68_44
L68_43:
L68_44:
    sub x14, x29, #3016
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #2984
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L68_46:
    sub x15, x29, #2984
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L68_20
    b L68_19
L68_20:
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
    ldr x9, [sp, #200]
    ldr x14, [x9]
    mov x0, x14
    ldr x1, [sp, #176]
    mov x2, #0
    bl _vkDestroyShaderModule
    ldr x9, [sp, #200]
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_21:
L68_19:
    ldr x9, [sp, #200]
    ldr x14, [x9]
    mov x0, x14
    ldr x1, [sp, #176]
    mov x2, #0
    bl _vkDestroyShaderModule
    ldr x9, [sp, #200]
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
    ldr x19, [sp, #3232]
    ldr x20, [sp, #3224]
    ldr x21, [sp, #3216]
    ldr x22, [sp, #3208]
    ldr x23, [sp, #3200]
    ldr x24, [sp, #3192]
    ldr x25, [sp, #3184]
    ldr x26, [sp, #3176]
    ldr x27, [sp, #3168]
    ldr x28, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_21vulkan_upload_destroy
_lb_gpu_21vulkan_upload_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x0, x29, #72
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x19, x29, #72
    add x14, x19, #16
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L69_2
L69_1:
    sub x15, x29, #40
    ldr x15, [x15]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroyDescriptorPool
    b L69_3
L69_2:
L69_3:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L69_5
L69_4:
    sub x15, x29, #40
    ldr x15, [x15]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkDestroyBuffer
    b L69_6
L69_5:
L69_6:
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L69_8
L69_7:
    sub x15, x29, #40
    ldr x15, [x15]
    add x15, x15, #16
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    mov x2, #0
    bl _vkFreeMemory
    b L69_9
L69_8:
L69_9:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_13vulkan_upload
_lb_gpu_13vulkan_upload:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1264
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1232]
    str x20, [sp, #1224]
    str x21, [sp, #1216]
    str x22, [sp, #1208]
    str x23, [sp, #1200]
    str x24, [sp, #1192]
    str x25, [sp, #1184]
    str x26, [sp, #1176]
    str x27, [sp, #1168]
    str x28, [sp, #1160]
    sub x16, x29, #184
    str x0, [x16]
    sub x16, x29, #256
    str x1, [x16]
    sub x16, x29, #272
    str x2, [x16]
    sub x0, x29, #256
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x19, x29, #304
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x20, x29, #256
    add x14, x20, #32
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L70_2
L70_1:
    sub x20, x29, #168
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x20, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_2:
L70_3:
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_331@PAGE
    add x0, x0, l_text_331@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #24]
    add x22, x20, #64
    ldr x15, [x22]
    movz x0, #1
    mov x1, x15
    bl _lb_gpu_10canvas_max
    mov x15, x0
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_332@PAGE
    add x0, x0, l_text_332@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    movz x10, #31
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_333@PAGE
    add x0, x0, l_text_333@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
L70_6:
    movz x10, #32
    udiv x14, x15, x10
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_333@PAGE
    add x0, x0, l_text_333@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #8]
    ldr x9, [sp, #24]
    ldr x10, [sp, #8]
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_334@PAGE
    add x0, x0, l_text_334@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    sub x26, x29, #360
    sub x27, x29, #416
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    adrp x14, _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x27]
    add x14, x27, #24
    str x25, [x14]
    adrp x14, _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT@PAGE
    add x14, x14, _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT@PAGEOFF
    ldr w14, [x14]
    adrp x28, _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT@PAGE
    add x28, x28, _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT@PAGEOFF
    ldr w28, [x28]
    orr w14, w14, w28
    add x28, x27, #32
    str w14, [x28]
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x14, x29, #184
    ldr x27, [x14]
    add x28, x27, #16
    ldr x14, [x28]
    mov x0, x14
    mov x1, x26
    mov x2, #0
    mov x3, x19
    bl _vkCreateBuffer
    mov w26, w0
    adrp x14, l_text_335@PAGE
    add x14, x14, l_text_335@PAGEOFF
    sub x23, x29, #432
    str x14, [x23]
    add x14, x23, #8
    movz x9, #45
    str x9, [x14]
    sub x10, x29, #1216
    str w26, [x10]
    mov x10, x23
    sub x11, x29, #1232
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x23, _lb_gpu_10VK_SUCCESS@PAGE
    add x23, x23, _lb_gpu_10VK_SUCCESS@PAGEOFF
    ldrsw x14, [x23]
    cmp w26, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L70_34
L70_33:
    sub x26, x29, #1200
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x26]
    sub x14, x29, #1232
    add x15, x26, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x26, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x26
    sub x11, x29, #464
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L70_37
L70_34:
L70_35:
    sub x14, x29, #1200
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #464
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L70_37:
    sub x15, x29, #464
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L70_8
    b L70_7
L70_8:
    sub x20, x29, #168
    add x14, x20, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_7:
    sub x26, x29, #488
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x14, [x28]
    ldr x15, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x26
    bl _vkGetBufferMemoryRequirements
    add x21, x19, #8
    adrp x14, _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT@PAGE
    add x14, x14, _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT@PAGE
    add x15, x15, _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    mov x0, x27
    mov x9, x26
    mov x1, x9
    mov x2, x14
    sub x8, x29, #528
    bl _lb_gpu_13vulkan_memory
    sub x15, x29, #528
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L70_11
    b L70_10
L70_11:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #32
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_10:
    ldr x14, [x15]
    str x14, [x21]
    ldr x26, [x28]
    ldr x24, [x19]
    mov x0, x26
    mov x1, x24
    mov x2, x14
    mov x3, #0
    bl _vkBindBufferMemory
    mov w24, w0
    adrp x14, l_text_336@PAGE
    add x14, x14, l_text_336@PAGEOFF
    sub x26, x29, #544
    str x14, [x26]
    add x14, x26, #8
    movz x9, #39
    str x9, [x14]
    sub x10, x29, #1216
    str w24, [x10]
    mov x10, x26
    sub x11, x29, #1232
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x23]
    cmp w24, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L70_39
L70_38:
    sub x24, x29, #1200
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    sub x14, x29, #1232
    add x15, x24, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x24
    sub x11, x29, #576
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L70_42
L70_39:
L70_40:
    sub x14, x29, #1200
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #576
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L70_42:
    sub x15, x29, #576
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L70_14
    b L70_13
L70_14:
    sub x20, x29, #168
    add x14, x20, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_13:
    sub x24, x29, #584
    mov x9, #0
    str x9, [x24]
    ldr x14, [x28]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    mov x3, x25
    mov x4, #0
    mov x5, x24
    bl _vkMapMemory
    mov w26, w0
    adrp x14, l_text_337@PAGE
    add x14, x14, l_text_337@PAGEOFF
    sub x15, x29, #600
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    sub x10, x29, #1216
    str w26, [x10]
    mov x10, x15
    sub x11, x29, #1232
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x23]
    cmp w26, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L70_44
L70_43:
    sub x25, x29, #1200
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x25]
    sub x14, x29, #1232
    add x15, x25, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x25, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x25
    sub x11, x29, #632
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L70_47
L70_44:
L70_45:
    sub x14, x29, #1200
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #632
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L70_47:
    sub x15, x29, #632
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L70_17
    b L70_16
L70_17:
    sub x20, x29, #168
    add x14, x20, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_16:
    ldr x25, [x24]
    cbnz x25, L70_19
    b L70_20
L70_19:
    b L70_21
L70_20:
    sub x20, x29, #168
    add x14, x20, #32
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_338@PAGE
    add x15, x15, l_text_338@PAGEOFF
    sub x21, x29, #648
    str x15, [x21]
    add x15, x21, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_21:
    sub x24, x29, #664
    ldr x14, [x22]
    movz x0, #1
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x26, x0
    sub x14, x29, #680
    str x25, [x14]
    add x15, x14, #8
    str x26, [x15]
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    cmp x9, x26
    b.lo 1f
    adrp x0, l_text_339@PAGE
    add x0, x0, l_text_339@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    str w9, [x25]
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls L70_24
L70_23:
    add x15, x20, #48
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u32
    b L70_25
L70_24:
L70_25:
    ldr x9, [sp, #8]
    add x14, x9, x25
    sub x15, x29, #696
    str x14, [x15]
    add x14, x15, #8
    ldr x9, [sp, #24]
    str x9, [x14]
    ldr x14, [x20]
    sub x22, x29, #712
    str x14, [x22]
    add x14, x22, #8
    ldr x9, [sp, #24]
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    ldr x4, [sp, #24]
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x28]
    ldr x15, [x21]
    mov x0, x14
    mov x1, x15
    bl _vkUnmapMemory
    sub x22, x29, #720
    sub x24, x29, #728
    mov x11, x24
    str xzr, [x11, #0]
    adrp x9, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGE
    add x9, x9, _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@PAGEOFF
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    ldr w14, [x9]
    str w14, [x24]
    add x14, x24, #4
    movz x9, #1
    str w9, [x14]
    mov x10, x24
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x24, x29, #768
    sub x26, x29, #808
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO@PAGE
    add x14, x14, _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x26]
    add x14, x26, #20
    movz x9, #1
    str w9, [x14]
    add x14, x26, #24
    movz x9, #1
    str w9, [x14]
    add x14, x26, #32
    str x22, [x14]
    mov x10, x26
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x14, [x28]
    add x22, x19, #16
    mov x0, x14
    mov x1, x24
    mov x2, #0
    mov x3, x22
    bl _vkCreateDescriptorPool
    mov w24, w0
    adrp x14, l_text_340@PAGE
    add x14, x14, l_text_340@PAGEOFF
    sub x15, x29, #824
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
    str x9, [x14]
    sub x10, x29, #1216
    str w24, [x10]
    mov x10, x15
    sub x11, x29, #1232
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x23]
    cmp w24, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L70_49
L70_48:
    sub x20, x29, #1200
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #1232
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #856
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L70_52
L70_49:
L70_50:
    sub x14, x29, #1200
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #856
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L70_52:
    sub x15, x29, #856
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L70_27
    b L70_26
L70_27:
    sub x20, x29, #168
    add x14, x20, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_26:
    sub x20, x29, #864
    sub x14, x29, #272
    ldr x14, [x14]
    str x14, [x20]
    sub x21, x29, #904
    sub x24, x29, #944
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO@PAGE
    add x14, x14, _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    ldr x14, [x22]
    add x15, x24, #16
    str x14, [x15]
    add x14, x24, #24
    movz x9, #1
    str w9, [x14]
    add x14, x24, #32
    str x20, [x14]
    mov x10, x24
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x14, [x28]
    add x20, x19, #24
    mov x0, x14
    mov x1, x21
    mov x2, x20
    bl _vkAllocateDescriptorSets
    mov w21, w0
    adrp x14, l_text_341@PAGE
    add x14, x14, l_text_341@PAGEOFF
    sub x15, x29, #960
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
    str x9, [x14]
    sub x10, x29, #1216
    str w21, [x10]
    mov x10, x15
    sub x11, x29, #1232
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrsw x14, [x23]
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L70_54
L70_53:
    sub x21, x29, #1200
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    sub x14, x29, #1232
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #992
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L70_57
L70_54:
L70_55:
    sub x14, x29, #1200
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #992
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L70_57:
    sub x15, x29, #992
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L70_30
    b L70_29
L70_30:
    sub x20, x29, #168
    add x14, x20, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x27
    mov x9, x19
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_29:
    sub x21, x29, #1016
    sub x22, x29, #1040
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x14, [x19]
    str x14, [x22]
    add x14, x22, #16
    ldr x9, [sp, #16]
    str x9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x22, x29, #1104
    sub x23, x29, #1168
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET@PAGE
    add x14, x14, _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    ldr x14, [x20]
    add x15, x23, #16
    str x14, [x15]
    add x14, x23, #32
    movz x9, #1
    str w9, [x14]
    ldr x9, [sp, #0]
    ldr w14, [x9]
    add x15, x23, #36
    str w14, [x15]
    add x14, x23, #48
    str x21, [x14]
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
    ldr x14, [x28]
    mov x0, x14
    movz x1, #1
    mov x2, x22
    mov x3, #0
    mov x4, #0
    bl _vkUpdateDescriptorSets
    sub x21, x29, #168
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x21, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1232]
    ldr x20, [sp, #1224]
    ldr x21, [sp, #1216]
    ldr x22, [sp, #1208]
    ldr x23, [sp, #1200]
    ldr x24, [sp, #1192]
    ldr x25, [sp, #1184]
    ldr x26, [sp, #1176]
    ldr x27, [sp, #1168]
    ldr x28, [sp, #1160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_13vulkan_render
_lb_gpu_13vulkan_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2208]
    str x20, [sp, #2200]
    str x21, [sp, #2192]
    str x22, [sp, #2184]
    str x23, [sp, #2176]
    str x24, [sp, #2168]
    str x25, [sp, #2160]
    str x26, [sp, #2152]
    str x27, [sp, #2144]
    str x28, [sp, #2136]
    str d8, [sp, #2128]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    sub x16, x29, #200
    str x2, [x16]
    sub x16, x29, #272
    str x3, [x16]
    sub x16, x29, #296
    str d0, [x16, #0]
    sub x16, x29, #296
    str d1, [x16, #8]
    sub x16, x29, #296
    str d2, [x16, #16]
    sub x0, x29, #272
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #200
    ldr x19, [x14]
    add x9, x19, #137
    str x9, [sp, #400]
    ldr x9, [sp, #400]
    ldrb w14, [x9]
    cbnz w14, L71_1
    b L71_2
L71_1:
    sub x19, x29, #152
    add x14, x19, #8
    adrp x15, _lb_gpu_16execution_failed@PAGE
    add x15, x15, _lb_gpu_16execution_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_343@PAGE
    add x15, x15, l_text_343@PAGEOFF
    sub x20, x29, #312
    str x15, [x20]
    add x15, x20, #8
    movz x9, #57
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
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_2:
L71_3:
    sub x21, x29, #184
    mov x0, x21
    sub x8, x29, #352
    bl _lb_window_Presentation_visible
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L71_9
    b L71_8
L71_9:
    add x14, x15, #8
    sub x19, x29, #152
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_8:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    b.ne L71_6
L71_5:
    sub x14, x29, #152
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_6:
L71_7:
    sub x22, x29, #392
    mov x0, x21
    sub x8, x29, #464
    bl _lb_window_Presentation_size
    sub x15, x29, #464
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L71_13
    b L71_12
L71_13:
    add x14, x15, #40
    sub x19, x29, #152
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_12:
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x22, #16
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, ls
    cbnz w14, L71_151
    b L71_18
L71_151:
    mov w15, w14
    b L71_19
L71_18:
    add x14, x22, #24
    ldr d26, [x14]
    fcmp d26, d25
    cset w15, ls
L71_19:
    and w14, w15, #255
    cbnz w14, L71_15
    b L71_16
L71_15:
    sub x14, x29, #152
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_16:
L71_17:
    movz x9, #16592, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w14, gt
    cbnz w14, L71_152
    b L71_24
L71_152:
    mov w15, w14
    b L71_25
L71_24:
    add x14, x22, #24
    ldr d26, [x14]
    fcmp d26, d25
    cset w15, gt
L71_25:
    and w14, w15, #255
    cbnz w14, L71_21
    b L71_22
L71_21:
    sub x19, x29, #152
    add x14, x19, #8
    adrp x15, _lb_gpu_17surface_too_large@PAGE
    add x15, x15, _lb_gpu_17surface_too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_282@PAGE
    add x15, x15, l_text_282@PAGEOFF
    sub x20, x29, #480
    str x15, [x20]
    add x15, x20, #8
    movz x9, #63
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
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_22:
L71_23:
    adrp x14, l_text_344@PAGE
    add x14, x14, l_text_344@PAGEOFF
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x14
    bl _lb_core_6f_to_u
    mov x21, x0
    add x14, x22, #24
    ldr d25, [x14]
    adrp x14, l_text_345@PAGE
    add x14, x14, l_text_345@PAGEOFF
    fmov d16, d25
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x14
    bl _lb_core_6f_to_u
    mov x14, x0
    add x9, x19, #136
    str x9, [sp, #392]
    ldr x9, [sp, #392]
    ldrb w15, [x9]
    cbnz w15, L71_153
    b L71_30
L71_153:
    mov w22, w15
    b L71_31
L71_30:
    add x15, x19, #32
    ldr w15, [x15]
    cmp w21, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w22, eq
L71_31:
    and w15, w22, #255
    cbnz w15, L71_154
    b L71_32
L71_154:
    mov w22, w15
    b L71_33
L71_32:
    add x15, x19, #36
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w22, eq
L71_33:
    and w15, w22, #255
    cbnz w15, L71_27
    b L71_28
L71_27:
    sub x15, x29, #168
    ldr x15, [x15]
    mov x0, x15
    mov x1, x19
    mov x2, x21
    mov x3, x14
    sub x8, x29, #512
    bl _lb_gpu_16vulkan_swapchain
    sub x22, x29, #512
    add x15, x22, #24
    ldrb w15, [x15]
    cbnz w15, L71_35
    b L71_34
L71_35:
    sub x19, x29, #152
    add x14, x19, #8
    mov x10, x22
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
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_34:
    b L71_29
L71_28:
L71_29:
    add x9, x19, #8
    str x9, [sp, #384]
    ldr x9, [sp, #384]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne L71_38
L71_37:
    sub x14, x29, #152
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_38:
L71_39:
    sub x9, x29, #544
    str x9, [sp, #16]
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #376]
    sub x9, x29, #272
    str x9, [sp, #368]
    add x14, x19, #56
    ldr x14, [x14]
    ldr x0, [sp, #376]
    ldr x9, [sp, #368]
    mov x1, x9
    mov x2, x14
    sub x8, x29, #608
    bl _lb_gpu_13vulkan_upload
    sub x15, x29, #608
    add x14, x15, #56
    ldrb w14, [x14]
    cbnz w14, L71_42
    b L71_41
L71_42:
    add x14, x15, #32
    sub x19, x29, #152
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_41:
    mov x10, x15
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #376]
    add x9, x9, #16
    str x9, [sp, #360]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    add x27, x19, #112
    ldr x27, [x27]
    mov x0, x14
    mov x1, x27
    mov x2, #0
    bl _vkResetCommandPool
    mov w27, w0
    adrp x14, l_text_346@PAGE
    add x14, x14, l_text_346@PAGEOFF
    sub x28, x29, #624
    str x14, [x28]
    add x14, x28, #8
    movz x9, #42
    str x9, [x14]
    sub x10, x29, #1800
    str w27, [x10]
    mov x10, x28
    sub x11, x29, #1816
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x9, _lb_gpu_10VK_SUCCESS@PAGE
    add x9, x9, _lb_gpu_10VK_SUCCESS@PAGEOFF
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    cmp w27, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L71_122
L71_121:
    sub x27, x29, #1784
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x27]
    sub x14, x29, #1816
    add x15, x27, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x27, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x27
    sub x11, x29, #656
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L71_125
L71_122:
L71_123:
    sub x14, x29, #1784
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #656
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L71_125:
    sub x15, x29, #656
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L71_45
    b L71_44
L71_45:
    sub x19, x29, #152
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
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_44:
    sub x9, x29, #660
    str x9, [sp, #352]
    mov x9, #0
    ldr x10, [sp, #352]
    str w9, [x10]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    ldr x9, [sp, #384]
    ldr x15, [x9]
    add x9, x19, #128
    str x9, [sp, #344]
    ldr x9, [sp, #344]
    ldr x24, [x9]
    mov x0, x14
    mov x1, x15
    movz x2, #51712
    movk x2, #15258, lsl #16
    mov x3, x24
    mov x4, #0
    ldr x5, [sp, #352]
    bl _vkAcquireNextImageKHR
    str w0, [sp, #336]
    adrp x14, _lb_gpu_12VK_NOT_READY@PAGE
    add x14, x14, _lb_gpu_12VK_NOT_READY@PAGEOFF
    ldrsw x14, [x14]
    ldr w9, [sp, #336]
    cmp w9, w14
    cset w14, eq
    cbnz w14, L71_155
    b L71_50
L71_155:
    mov w15, w14
    b L71_51
L71_50:
    adrp x14, _lb_gpu_10VK_TIMEOUT@PAGE
    add x14, x14, _lb_gpu_10VK_TIMEOUT@PAGEOFF
    ldrsw x14, [x14]
    ldr w9, [sp, #336]
    cmp w9, w14
    cset w15, eq
L71_51:
    and w14, w15, #255
    cbnz w14, L71_47
    b L71_48
L71_47:
    sub x19, x29, #152
    movz x9, #1
    strb w9, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_48:
L71_49:
    adrp x9, _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR@PAGE
    add x9, x9, _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR@PAGEOFF
    str x9, [sp, #328]
    ldr x9, [sp, #328]
    ldrsw x14, [x9]
    ldr w9, [sp, #336]
    cmp w9, w14
    b.ne L71_54
L71_53:
    movz x9, #1
    ldr x10, [sp, #392]
    strb w9, [x10]
    sub x19, x29, #152
    movz x9, #1
    strb w9, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_54:
L71_55:
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    ldr w9, [sp, #336]
    cmp w9, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L71_60
    b L71_156
L71_156:
    mov w15, w14
    b L71_61
L71_60:
    adrp x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGE
    add x14, x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGEOFF
    ldrsw x14, [x14]
    ldr w9, [sp, #336]
    cmp w9, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L71_61:
    and w14, w15, #255
    cbnz w14, L71_57
    b L71_58
L71_57:
    sub x19, x29, #152
    add x14, x19, #8
    adrp x15, _lb_gpu_16execution_failed@PAGE
    add x15, x15, _lb_gpu_16execution_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_347@PAGE
    add x15, x15, l_text_347@PAGEOFF
    sub x20, x29, #680
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
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_58:
L71_59:
    sub x23, x29, #712
    sub x24, x29, #744
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO@PAGE
    add x14, x14, _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x24]
    adrp x14, _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT@PAGE
    add x14, x14, _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT@PAGEOFF
    ldr w14, [x14]
    add x15, x24, #16
    str w14, [x15]
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x9, x19, #120
    str x9, [sp, #320]
    ldr x9, [sp, #320]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x23
    bl _vkBeginCommandBuffer
    mov w23, w0
    adrp x14, l_text_348@PAGE
    add x14, x14, l_text_348@PAGEOFF
    sub x15, x29, #760
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    sub x10, x29, #1800
    str w23, [x10]
    mov x10, x15
    sub x11, x29, #1816
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    cmp w23, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L71_127
L71_126:
    sub x23, x29, #1784
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    sub x14, x29, #1816
    add x15, x23, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x23
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L71_130
L71_127:
L71_128:
    sub x14, x29, #1784
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #792
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L71_130:
    sub x15, x29, #792
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L71_64
    b L71_63
L71_64:
    sub x21, x29, #152
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    sub x10, x29, #1832
    str x19, [x10]
    movz x9, #1
    ldr x10, [sp, #400]
    strb w9, [x10]
L71_131:
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_63:
    sub x23, x29, #824
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #840
    sub x15, x29, #296
    ldr d24, [x15]
    fcvt s24, d24
    str s24, [x14]
    add x21, x15, #8
    ldr d24, [x21]
    fcvt s24, d24
    add x21, x14, #4
    str s24, [x21]
    add x15, x15, #16
    ldr d24, [x15]
    fcvt s24, d24
    add x15, x14, #8
    str s24, [x15]
    movz x9, #16256, lsl #16
    fmov s8, w9
    add x15, x14, #12
    str s8, [x15]
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    str s8, [x14]
    sub x21, x29, #904
    sub x22, x29, #968
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO@PAGE
    add x14, x14, _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    add x14, x19, #48
    ldr x14, [x14]
    add x15, x22, #16
    str x14, [x15]
    ldr x9, [sp, #352]
    ldr w14, [x9]
    mov w14, w14
    add x9, x19, #16
    str x9, [sp, #312]
    ldr x9, [sp, #312]
    ldr x15, [x9]
    ldr x9, [sp, #312]
    add x9, x9, #8
    str x9, [sp, #304]
    ldr x9, [sp, #304]
    ldr x20, [x9]
    cmp x14, x20
    b.lo 1f
    adrp x0, l_text_351@PAGE
    add x0, x0, l_text_351@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x14, x15, x14
    add x14, x14, #16
    ldr x14, [x14]
    add x15, x22, #24
    str x14, [x15]
    sub x20, x29, #984
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x26, x29, #992
    mov x11, x26
    str xzr, [x11, #0]
    add x9, x19, #32
    str x9, [sp, #296]
    ldr x9, [sp, #296]
    ldr w14, [x9]
    str w14, [x26]
    add x28, x19, #36
    ldr w14, [x28]
    add x15, x26, #4
    str w14, [x15]
    add x14, x20, #8
    mov x10, x26
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x22, #32
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #48
    movz x9, #2
    str w9, [x14]
    add x14, x22, #56
    str x23, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x9, [sp, #320]
    ldr x14, [x9]
    adrp x15, _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE@PAGE
    add x15, x15, _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE@PAGEOFF
    ldr w15, [x15]
    mov x0, x14
    mov x1, x21
    mov x2, x15
    bl _vkCmdBeginRenderPass
    ldr x9, [sp, #368]
    add x14, x9, #32
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L71_67
L71_66:
    sub x20, x29, #1000
    ldr x9, [sp, #16]
    ldr x14, [x9]
    str x14, [x20]
    sub x14, x29, #1008
    ldr x9, [sp, #16]
    add x15, x9, #24
    ldr x15, [x15]
    str x15, [x14]
    ldr x9, [sp, #320]
    ldr x15, [x9]
    adrp x9, _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS@PAGE
    add x9, x9, _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS@PAGEOFF
    str x9, [sp, #288]
    ldr x9, [sp, #288]
    ldr w22, [x9]
    add x9, x19, #64
    str x9, [sp, #280]
    ldr x9, [sp, #280]
    ldr x26, [x9]
    mov x0, x15
    mov x1, x22
    mov x2, x26
    mov x3, #0
    movz x4, #1
    mov x5, x14
    mov x6, #0
    mov x7, #0
    bl _vkCmdBindDescriptorSets
    sub x22, x29, #1016
    ldr x9, [sp, #368]
    add x14, x9, #64
    ldr x14, [x14]
    movz x0, #1
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    mov x9, x14
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_352@PAGE
    add x0, x0, l_text_352@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    movz x10, #31
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_352@PAGE
    add x0, x0, l_text_352@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
L71_70:
    movz x10, #32
    udiv x15, x14, x10
    mov x9, x15
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_352@PAGE
    add x0, x0, l_text_352@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x22]
    ldr x9, [sp, #320]
    ldr x15, [x9]
    mov x0, x15
    mov x1, #0
    movz x2, #1
    mov x3, x20
    mov x4, x22
    bl _vkCmdBindVertexBuffers
    ldr x9, [sp, #368]
    add x15, x9, #16
    ldr x27, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    ldr x9, [sp, #368]
    add x26, x9, #40
    ldr x9, [x26]
    str x9, [sp, #8]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_353@PAGE
    add x0, x0, l_text_353@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_353@PAGE
    add x0, x0, l_text_353@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls L71_75
L71_76:
    adrp x0, l_text_353@PAGE
    add x0, x0, l_text_353@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
L71_75:
    sub x14, x29, #1032
    str x27, [x14]
    add x14, x14, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    sub x20, x29, #1144
    add x9, x20, #16
    str x9, [sp, #272]
    ldr x9, [sp, #272]
    add x9, x9, #4
    str x9, [sp, #264]
    sub x9, x29, #1160
    str x9, [sp, #256]
    sub x9, x29, #1176
    str x9, [sp, #248]
    sub x9, x29, #1184
    str x9, [sp, #240]
    ldr x9, [sp, #272]
    add x9, x9, #4
    str x9, [sp, #232]
    ldr x9, [sp, #240]
    add x9, x9, #4
    str x9, [sp, #224]
    sub x9, x29, #1192
    str x9, [sp, #216]
    ldr x9, [sp, #272]
    add x9, x9, #8
    str x9, [sp, #208]
    ldr x9, [sp, #272]
    add x9, x9, #12
    str x9, [sp, #200]
    ldr x9, [sp, #216]
    add x9, x9, #4
    str x9, [sp, #192]
    ldr x9, [sp, #248]
    add x9, x9, #8
    str x9, [sp, #184]
    ldr x9, [sp, #256]
    add x14, x9, #8
    sub x23, x29, #1216
    sub x9, x29, #1240
    str x9, [sp, #176]
    ldr x9, [sp, #176]
    add x9, x9, #8
    str x9, [sp, #168]
    ldr x9, [sp, #176]
    add x9, x9, #12
    str x9, [sp, #160]
    ldr x9, [sp, #176]
    add x9, x9, #20
    str x9, [sp, #152]
    add x9, x20, #40
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #32
    str x9, [sp, #144]
    sub x9, x29, #1272
    str x9, [sp, #136]
    add x9, x23, #4
    str x9, [sp, #128]
    ldr x9, [sp, #136]
    add x9, x9, #8
    str x9, [sp, #120]
    add x9, x23, #8
    str x9, [sp, #112]
    ldr x9, [sp, #136]
    add x9, x9, #16
    str x9, [sp, #104]
    add x9, x23, #12
    str x9, [sp, #96]
    ldr x9, [sp, #136]
    add x9, x9, #24
    str x9, [sp, #88]
    add x9, x20, #32
    str x9, [sp, #80]
    add x9, x19, #72
    str x9, [sp, #64]
    add x9, x19, #80
    str x9, [sp, #72]
    sub x9, x29, #1304
    str x9, [sp, #56]
    add x9, x20, #80
    str x9, [sp, #48]
    adrp x9, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGE
    add x9, x9, _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT@PAGEOFF
    str x9, [sp, #40]
    add x9, x20, #8
    str x9, [sp, #32]
    mov x9, #0
    mov x24, x9
L71_71:
    ldr x10, [sp, #8]
    cmp x24, x10
    b.hs L71_74
L71_72:
    movz x10, #112
    mul x14, x24, x10
    add x14, x14, x27
    mov x10, x14
    mov x11, x20
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
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldr x9, [sp, #272]
    ldr w26, [x9]
    ldr x9, [sp, #296]
    ldr w14, [x9]
    cmp w26, w14
    cset w14, hs
    cbnz w14, L71_157
    b L71_80
L71_157:
    mov w15, w14
    b L71_81
L71_80:
    ldr x9, [sp, #264]
    ldr w14, [x9]
    ldr w15, [x28]
    cmp w14, w15
    cset w15, hs
L71_81:
    and w14, w15, #255
    cbnz w14, L71_77
    b L71_78
L71_77:
    b L71_73
L71_78:
L71_79:
    ldr x11, [sp, #248]
    stp xzr, xzr, [x11, #0]
    ldr x11, [sp, #240]
    str xzr, [x11, #0]
    mov w14, w26
    ldr x10, [sp, #240]
    str w14, [x10]
    ldr x9, [sp, #232]
    ldr w22, [x9]
    mov w14, w22
    ldr x10, [sp, #224]
    str w14, [x10]
    ldr x10, [sp, #240]
    ldr x11, [sp, #248]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x11, [sp, #216]
    str xzr, [x11, #0]
    ldr x9, [sp, #208]
    ldr w14, [x9]
    mov w14, w14
    ldr x9, [sp, #296]
    ldr w15, [x9]
    mov w9, w15
    mov w10, w26
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_354@PAGE
    add x0, x0, l_text_354@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    mov w15, w15
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_10canvas_min
    mov x25, x0
    ldr x10, [sp, #216]
    str w25, [x10]
    ldr x9, [sp, #200]
    ldr w14, [x9]
    mov w14, w14
    ldr w15, [x28]
    mov w9, w15
    mov w10, w22
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_354@PAGE
    add x0, x0, l_text_354@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    mov w15, w15
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_10canvas_min
    mov x22, x0
    ldr x10, [sp, #192]
    str w22, [x10]
    ldr x10, [sp, #216]
    ldr x11, [sp, #184]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #248]
    ldr x11, [sp, #256]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, #0
    cmp w25, w10
    cset w14, eq
    cbnz w14, L71_158
    b L71_86
L71_158:
    mov w15, w14
    b L71_87
L71_86:
    mov x10, #0
    cmp w22, w10
    cset w15, eq
L71_87:
    and w14, w15, #255
    cbnz w14, L71_83
    b L71_84
L71_83:
    b L71_73
L71_84:
L71_85:
    ldr x11, [sp, #176]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x9, [sp, #296]
    ldr w14, [x9]
    mov w14, w14
    ucvtf s24, x14
    ldr x10, [sp, #168]
    str s24, [x10]
    ldr w14, [x28]
    mov w14, w14
    ucvtf s24, x14
    ldr x10, [sp, #160]
    str s24, [x10]
    ldr x10, [sp, #152]
    str s8, [x10]
    ldr x10, [sp, #176]
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #144]
    ldrb w14, [x9]
    cbnz w14, L71_92
    b L71_90
L71_92:
    ldr x10, [sp, #0]
    ldr x11, [sp, #136]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L71_89:
    ldr x9, [sp, #136]
    ldr d24, [x9]
    fcvt s24, d24
    str s24, [x23]
    ldr x9, [sp, #120]
    ldr d24, [x9]
    fcvt s24, d24
    ldr x10, [sp, #128]
    str s24, [x10]
    ldr x9, [sp, #104]
    ldr d24, [x9]
    fcvt s24, d24
    ldr x10, [sp, #112]
    str s24, [x10]
    ldr x9, [sp, #88]
    ldr d24, [x9]
    fcvt s24, d24
    ldr x10, [sp, #96]
    str s24, [x10]
    b L71_91
L71_90:
L71_91:
    ldr x9, [sp, #320]
    ldr x14, [x9]
    mov x0, x14
    mov x1, #0
    movz x2, #1
    mov x3, x23
    bl _vkCmdSetViewport
    ldr x9, [sp, #320]
    ldr x14, [x9]
    mov x0, x14
    mov x1, #0
    movz x2, #1
    ldr x3, [sp, #256]
    bl _vkCmdSetScissor
    ldr x9, [sp, #320]
    ldr x14, [x9]
    ldr x9, [sp, #288]
    ldr w15, [x9]
    ldr x9, [sp, #80]
    ldrb w22, [x9]
    cbnz w22, L71_93
    b L71_94
L71_93:
    ldr x9, [sp, #72]
    ldr x22, [x9]
    b L71_95
L71_94:
    ldr x9, [sp, #64]
    ldr x22, [x9]
L71_95:
    mov x0, x14
    mov x1, x15
    mov x2, x22
    bl _vkCmdBindPipeline
    ldr x10, [sp, #48]
    ldr x11, [sp, #56]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #320]
    ldr x25, [x9]
    ldr x9, [sp, #280]
    ldr x26, [x9]
    ldr x9, [sp, #40]
    ldr w21, [x9]
    mov x0, x25
    mov x1, x26
    mov x2, x21
    mov x3, #0
    movz x4, #32
    ldr x5, [sp, #56]
    bl _vkCmdPushConstants
    ldr x9, [sp, #320]
    ldr x21, [x9]
    ldr x9, [sp, #32]
    ldr x25, [x9]
    ldr x26, [x20]
    mov x0, x21
    mov x1, x25
    movz x2, #1
    mov x3, x26
    mov x4, #0
    bl _vkCmdDraw
L71_73:
    add x14, x24, #1
    mov x24, x14
    b L71_71
L71_74:
    b L71_68
L71_67:
L71_68:
    ldr x9, [sp, #320]
    ldr x14, [x9]
    mov x0, x14
    bl _vkCmdEndRenderPass
    ldr x9, [sp, #320]
    ldr x14, [x9]
    mov x0, x14
    bl _vkEndCommandBuffer
    mov w20, w0
    adrp x14, l_text_355@PAGE
    add x14, x14, l_text_355@PAGEOFF
    sub x15, x29, #1320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    sub x10, x29, #1800
    str w20, [x10]
    mov x10, x15
    sub x11, x29, #1816
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    cmp w20, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L71_133
L71_132:
    sub x20, x29, #1784
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #1816
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #1352
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L71_136
L71_133:
L71_134:
    sub x14, x29, #1784
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1352
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L71_136:
    sub x15, x29, #1352
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L71_97
    b L71_96
L71_97:
    sub x20, x29, #152
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    sub x10, x29, #1832
    str x19, [x10]
    movz x9, #1
    ldr x10, [sp, #400]
    strb w9, [x10]
L71_137:
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_96:
    sub x20, x29, #1356
    adrp x14, _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT@PAGE
    add x14, x14, _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x21, x29, #1368
    ldr x9, [sp, #352]
    ldr w14, [x9]
    mov w14, w14
    ldr x9, [sp, #312]
    ldr x15, [x9]
    ldr x9, [sp, #304]
    ldr x22, [x9]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_356@PAGE
    add x0, x0, l_text_356@PAGEOFF
    adrp x1, l_text_40@PAGE
    add x1, x1, l_text_40@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x14, x15, x14
    add x14, x14, #24
    ldr x14, [x14]
    str x14, [x21]
    sub x22, x29, #1440
    sub x23, x29, #1512
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    adrp x14, _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO@PAGE
    add x14, x14, _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    add x14, x23, #16
    movz x9, #1
    str w9, [x14]
    add x14, x23, #24
    ldr x9, [sp, #344]
    str x9, [x14]
    add x14, x23, #32
    str x20, [x14]
    add x14, x23, #40
    movz x9, #1
    str w9, [x14]
    add x14, x23, #48
    ldr x9, [sp, #320]
    str x9, [x14]
    add x14, x23, #56
    movz x9, #1
    str w9, [x14]
    add x14, x23, #64
    str x21, [x14]
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
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    ldr x9, [sp, #376]
    add x20, x9, #24
    ldr x14, [x20]
    mov x0, x14
    movz x1, #1
    mov x2, x22
    mov x3, #0
    bl _vkQueueSubmit
    mov w22, w0
    adrp x14, l_text_357@PAGE
    add x14, x14, l_text_357@PAGEOFF
    sub x15, x29, #1528
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    sub x10, x29, #1800
    str w22, [x10]
    mov x10, x15
    sub x11, x29, #1816
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L71_139
L71_138:
    sub x22, x29, #1784
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    sub x14, x29, #1816
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #1560
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L71_142
L71_139:
L71_140:
    sub x14, x29, #1784
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1560
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L71_142:
    sub x15, x29, #1560
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L71_100
    b L71_99
L71_100:
    sub x20, x29, #152
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    sub x10, x29, #1832
    str x19, [x10]
    movz x9, #1
    ldr x10, [sp, #400]
    strb w9, [x10]
L71_143:
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_99:
    sub x22, x29, #1624
    sub x23, x29, #1688
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    adrp x14, _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR@PAGE
    add x14, x14, _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    add x14, x23, #16
    movz x9, #1
    str w9, [x14]
    add x14, x23, #24
    str x21, [x14]
    add x14, x23, #32
    movz x9, #1
    str w9, [x14]
    add x14, x23, #40
    ldr x9, [sp, #384]
    str x9, [x14]
    add x14, x23, #48
    ldr x9, [sp, #352]
    str x9, [x14]
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
    ldr x14, [x20]
    mov x0, x14
    mov x1, x22
    bl _vkQueuePresentKHR
    mov w22, w0
    ldr x14, [x20]
    mov x0, x14
    bl _vkQueueWaitIdle
    mov w23, w0
    adrp x14, l_text_358@PAGE
    add x14, x14, l_text_358@PAGEOFF
    sub x15, x29, #1704
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    sub x10, x29, #1800
    str w23, [x10]
    mov x10, x15
    sub x11, x29, #1816
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    cmp w23, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L71_145
L71_144:
    sub x20, x29, #1784
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    sub x14, x29, #1816
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #1736
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L71_148
L71_145:
L71_146:
    sub x14, x29, #1784
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #1736
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L71_148:
    sub x15, x29, #1736
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L71_103
    b L71_102
L71_103:
    sub x20, x29, #152
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    sub x10, x29, #1832
    str x19, [x10]
    movz x9, #1
    ldr x10, [sp, #400]
    strb w9, [x10]
L71_149:
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_102:
    ldr x9, [sp, #328]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    cbnz w14, L71_159
    b L71_108
L71_159:
    mov w15, w14
    b L71_109
L71_108:
    adrp x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGE
    add x14, x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGEOFF
    ldrsw x14, [x14]
    cmp w22, w14
    cset w15, eq
L71_109:
    and w14, w15, #255
    cbnz w14, L71_160
    b L71_110
L71_160:
    mov w15, w14
    b L71_111
L71_110:
    adrp x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGE
    add x14, x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGEOFF
    ldrsw x14, [x14]
    ldr w9, [sp, #336]
    cmp w9, w14
    cset w15, eq
L71_111:
    and w14, w15, #255
    cbnz w14, L71_105
    b L71_106
L71_105:
    movz x9, #1
    ldr x10, [sp, #392]
    strb w9, [x10]
    b L71_107
L71_106:
L71_107:
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L71_115
    b L71_161
L71_161:
    mov w15, w14
    b L71_116
L71_115:
    ldr x9, [sp, #328]
    ldrsw x14, [x9]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L71_116:
    and w14, w15, #255
    cbnz w14, L71_117
    b L71_162
L71_162:
    mov w15, w14
    b L71_118
L71_117:
    adrp x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGE
    add x14, x14, _lb_gpu_17VK_SUBOPTIMAL_KHR@PAGEOFF
    ldrsw x14, [x14]
    cmp w22, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L71_118:
    and w14, w15, #255
    cbnz w14, L71_112
    b L71_113
L71_112:
    sub x20, x29, #152
    add x14, x20, #8
    adrp x15, _lb_gpu_16execution_failed@PAGE
    add x15, x15, _lb_gpu_16execution_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_359@PAGE
    add x15, x15, l_text_359@PAGEOFF
    sub x21, x29, #1752
    str x15, [x21]
    add x15, x21, #8
    movz x9, #26
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x14
    bl _vkDeviceWaitIdle
    mov w14, w0
    sub x10, x29, #1832
    str x19, [x10]
    movz x9, #1
    ldr x10, [sp, #400]
    strb w9, [x10]
L71_150:
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_113:
L71_114:
    sub x19, x29, #152
    mov x9, #0
    strb w9, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    ldr x0, [sp, #376]
    ldr x9, [sp, #16]
    mov x1, x9
    bl _lb_gpu_21vulkan_upload_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2208]
    ldr x20, [sp, #2200]
    ldr x21, [sp, #2192]
    ldr x22, [sp, #2184]
    ldr x23, [sp, #2176]
    ldr x24, [sp, #2168]
    ldr x25, [sp, #2160]
    ldr x26, [sp, #2152]
    ldr x27, [sp, #2144]
    ldr x28, [sp, #2136]
    ldr d8, [sp, #2128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_gpu_Vertex
    .weak_definition _lb_memory_copy_0g1_gpu_Vertex
_lb_memory_copy_0g1_gpu_Vertex:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #88
    str x4, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x20, x29, #56
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L72_11
    b L72_4
L72_11:
    mov w15, w14
    b L72_5
L72_4:
    sub x14, x29, #72
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L72_5:
    and w14, w15, #255
    cbnz w14, L72_1
    b L72_2
L72_1:
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_361@PAGE
    add x14, x14, l_text_361@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L72_3
L72_2:
L72_3:
    mov x10, #0
    cmp x19, x10
    b.ls L72_7
L72_6:
    ldr x14, [x20]
    sub x15, x29, #72
    ldr x15, [x15]
    mov x9, x19
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _memcpy
    mov x14, x0
    cbnz x14, L72_9
    b L72_10
L72_10:
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L72_9:
    b L72_8
L72_7:
L72_8:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_gpu_Draw
    .weak_definition _lb_memory_copy_0g1_gpu_Draw
_lb_memory_copy_0g1_gpu_Draw:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #88
    str x4, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x20, x29, #56
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L73_11
    b L73_4
L73_11:
    mov w15, w14
    b L73_5
L73_4:
    sub x14, x29, #72
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L73_5:
    and w14, w15, #255
    cbnz w14, L73_1
    b L73_2
L73_1:
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_361@PAGE
    add x14, x14, l_text_361@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L73_3
L73_2:
L73_3:
    mov x10, #0
    cmp x19, x10
    b.ls L73_7
L73_6:
    ldr x14, [x20]
    sub x15, x29, #72
    ldr x15, [x15]
    mov x9, x19
    movz x10, #112
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _memcpy
    mov x14, x0
    cbnz x14, L73_9
    b L73_10
L73_10:
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L73_9:
    b L73_8
L73_7:
L73_8:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u32
    .weak_definition _lb_memory_copy_0g1_u32
_lb_memory_copy_0g1_u32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #88
    str x4, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x20, x29, #56
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L74_11
    b L74_4
L74_11:
    mov w15, w14
    b L74_5
L74_4:
    sub x14, x29, #72
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L74_5:
    and w14, w15, #255
    cbnz w14, L74_1
    b L74_2
L74_1:
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_361@PAGE
    add x14, x14, l_text_361@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L74_3
L74_2:
L74_3:
    mov x10, #0
    cmp x19, x10
    b.ls L74_7
L74_6:
    ldr x14, [x20]
    sub x15, x29, #72
    ldr x15, [x15]
    mov x9, x19
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _memcpy
    mov x14, x0
    cbnz x14, L74_9
    b L74_10
L74_10:
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L74_9:
    b L74_8
L74_7:
L74_8:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_Frame_adopt
    .weak_definition _lb_interop_Reference_0g1_gpu_Frame_adopt
_lb_interop_Reference_0g1_gpu_Frame_adopt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    str x24, [sp, #296]
    str x25, [sp, #288]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #192
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x19, x29, #208
    sub x15, x29, #192
    ldr x14, [x15]
    cbnz x14, L75_1
    b L75_2
L75_1:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L75_3
L75_2:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #224
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L75_3:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #232
    sub x20, x29, #272
    mov x11, x20
    str xzr, [x11, #0]
    sub x21, x29, #176
    mov x0, x20
    mov x9, x21
    mov x1, x9
    sub x8, x29, #304
    bl _lb_interop_Reservation_0g1_gpu_Frame_init
    sub x22, x29, #304
    sub x25, x29, #344
    add x23, x25, #8
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    ldrb w14, [x14]
    add x22, x25, #32
    strb w14, [x22]
    mov x10, x20
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldrb w14, [x22]
    cbnz w14, L75_7
    b L75_6
L75_7:
    sub x20, x29, #264
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L75_4
L75_6:
    sub x20, x29, #240
    mov x10, x25
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L75_5
L75_4:
    add x14, x21, #16
    ldr x14, [x14]
    sub x15, x29, #136
    ldr x22, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    ldr x17, [sp], #16
    blr x17
    sub x14, x29, #360
    str x22, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x22, [x22]
    cbnz x22, L75_9
    b L75_8
L75_9:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L75_8:
    sub x19, x29, #120
    add x14, x19, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_10:
L75_5:
    mov x10, x20
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x24
    mov x1, x14
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_interop_Reservation_0g1_gpu_Frame_publish
    sub x16, x29, #368
    str x0, [x16, #0]
    sub x14, x29, #368
    sub x21, x29, #120
    mov x10, x14
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_11:
    adrp x0, l_text_363@PAGE
    add x0, x0, l_text_363@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_value
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_value
_lb_interop_Reference_0g1_gpu_FrameState_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #96
    bl _lb_interop_Reference_0g1_gpu_FrameState_get
    sub x15, x29, #96
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L76_4
    b L76_3
L76_4:
    add x14, x15, #8
    sub x19, x29, #56
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L76_1
L76_3:
    ldr x14, [x15]
    b L76_2
L76_1:
    add x14, x19, #8
    adrp x15, l_text_364@PAGE
    add x15, x15, l_text_364@PAGEOFF
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    mov x9, #0
    mov x14, x9
L76_2:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_5:
    adrp x0, l_text_364@PAGE
    add x0, x0, l_text_364@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_Frame_release
    .weak_definition _lb_interop_Reference_0g1_gpu_Frame_release
_lb_interop_Reference_0g1_gpu_Frame_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_adopt
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_adopt
_lb_interop_Reference_0g1_gpu_FrameState_adopt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    str x24, [sp, #296]
    str x25, [sp, #288]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #192
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x19, x29, #208
    sub x15, x29, #192
    ldr x14, [x15]
    cbnz x14, L78_1
    b L78_2
L78_1:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L78_3
L78_2:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #224
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L78_3:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #232
    sub x20, x29, #272
    mov x11, x20
    str xzr, [x11, #0]
    sub x21, x29, #176
    mov x0, x20
    mov x9, x21
    mov x1, x9
    sub x8, x29, #304
    bl _lb_interop_Reservation_0g1_gpu_FrameState_init
    sub x22, x29, #304
    sub x25, x29, #344
    add x23, x25, #8
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    ldrb w14, [x14]
    add x22, x25, #32
    strb w14, [x22]
    mov x10, x20
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldrb w14, [x22]
    cbnz w14, L78_7
    b L78_6
L78_7:
    sub x20, x29, #264
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L78_4
L78_6:
    sub x20, x29, #240
    mov x10, x25
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L78_5
L78_4:
    add x14, x21, #16
    ldr x14, [x14]
    sub x15, x29, #136
    ldr x22, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    ldr x17, [sp], #16
    blr x17
    sub x14, x29, #360
    str x22, [x14]
    add x15, x14, #8
    movz x9, #152
    str x9, [x15]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x22, [x22]
    cbnz x22, L78_9
    b L78_8
L78_9:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L78_8:
    sub x19, x29, #120
    add x14, x19, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L78_10:
L78_5:
    mov x10, x20
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x24
    mov x1, x14
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_interop_Reservation_0g1_gpu_FrameState_publish
    sub x16, x29, #368
    str x0, [x16, #0]
    sub x14, x29, #368
    sub x21, x29, #120
    mov x10, x14
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L78_11:
    adrp x0, l_text_363@PAGE
    add x0, x0, l_text_363@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_lease
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_lease
_lb_interop_Reference_0g1_gpu_FrameState_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    str x22, [sp, #200]
    str x23, [sp, #192]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #160
    bl _lb_interop_Reference_0g1_gpu_FrameState_get
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L79_2
    b L79_1
L79_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L79_3:
L79_1:
    sub x20, x29, #176
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x19]
    adrp x15, _lb_interop_Owner_0g1_gpu_FrameState_7is_open@GOTPAGE
    ldr x15, [x15, _lb_interop_Owner_0g1_gpu_FrameState_7is_open@GOTPAGEOFF]
    adrp x21, _lb_interop_Owner_0g1_gpu_FrameState_enter@GOTPAGE
    ldr x21, [x21, _lb_interop_Owner_0g1_gpu_FrameState_enter@GOTPAGEOFF]
    adrp x22, _lb_interop_Owner_0g1_gpu_FrameState_leave@GOTPAGE
    ldr x22, [x22, _lb_interop_Owner_0g1_gpu_FrameState_leave@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x21
    mov x4, x22
    sub x8, x29, #208
    bl _lb_interop_Lease_init
    sub x21, x29, #208
    sub x23, x29, #256
    add x22, x23, #16
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    ldrb w14, [x14]
    add x21, x23, #40
    strb w14, [x21]
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w14, [x21]
    cbnz w14, L79_5
    b L79_4
L79_5:
    sub x19, x29, #112
    add x14, x19, #16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L79_6:
L79_4:
    sub x19, x29, #112
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    ldr x23, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L79_7:
    adrp x0, l_text_365@PAGE
    add x0, x0, l_text_365@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_release
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_release
_lb_interop_Reference_0g1_gpu_FrameState_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_View_0g1_gpu_RenderTarget_make
    .weak_definition _lb_interop_View_0g1_gpu_RenderTarget_make
_lb_interop_View_0g1_gpu_RenderTarget_make:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    sub x16, x29, #176
    str x0, [x16]
    sub x16, x29, #200
    str x1, [x16]
    sub x16, x29, #216
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x0, x29, #200
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x19, x29, #216
    mov x0, x19
    sub x8, x29, #248
    bl _lb_interop_Lease_check
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L81_2
    b L81_1
L81_2:
    sub x19, x29, #104
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_3:
L81_1:
    sub x20, x29, #304
    sub x21, x29, #360
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    sub x22, x29, #200
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #16
    movz x9, #232
    str x9, [x14]
    add x14, x21, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view@GOTPAGE
    ldr x14, [x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view@GOTPAGEOFF]
    add x15, x21, #32
    str x14, [x15]
    adrp x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view@GOTPAGE
    ldr x14, [x14, _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view@GOTPAGEOFF]
    add x15, x21, #40
    str x14, [x15]
    add x14, x21, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x21, x29, #376
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x20
    movz x1, #232
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #416
    bl _lb_ownership_reserve
    sub x15, x29, #416
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L81_5
    b L81_4
L81_5:
    add x14, x15, #8
    sub x19, x29, #104
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_6:
L81_4:
    ldr x21, [x15]
    add x23, x21, #64
    mov x10, x20
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x21, #16
    str x23, [x14]
    add x14, x21, #120
    sub x23, x29, #176
    mov x10, x23
    mov x11, x14
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
    add x14, x21, #192
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x23, x21, #216
    mov x0, x19
    bl _lb_interop_Lease_clone
    sub x16, x29, #432
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #432
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #440
    mov x11, x23
    str xzr, [x11, #0]
    sub x10, x29, #456
    str x21, [x10]
    mov x0, x21
    bl _lb_ownership_11check_alive
    str x21, [x23]
L81_8:
    sub x19, x29, #104
    mov x10, x23
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_7:
    adrp x0, l_text_366@PAGE
    add x0, x0, l_text_366@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_close
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_close
_lb_interop_Reference_0g1_gpu_FrameState_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_11check_alive
    ldr x14, [x19]
    add x14, x14, #120
    add x14, x14, #32
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L82_2
L82_1:
    adrp x14, l_text_367@PAGE
    add x14, x14, l_text_367@PAGEOFF
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
    str x9, [x14]
    adrp x14, l_text_368@PAGE
    add x14, x14, l_text_368@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L82_3
L82_2:
L82_3:
    ldr x14, [x19]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_gpu_FrameState
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_trace
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_trace
_lb_interop_Reference_0g1_gpu_FrameState_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    ldr x15, [x19]
    sub x19, x29, #64
    ldr x19, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L84_11
    b L84_4
L84_11:
    mov w15, w14
    b L84_5
L84_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L84_5:
    and w14, w15, #255
    cbnz w14, L84_1
    b L84_2
L84_1:
    adrp x14, l_text_40@PAGE
    add x14, x14, l_text_40@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_361@PAGE
    add x14, x14, l_text_361@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L84_3
L84_2:
L84_3:
    mov x10, #0
    cmp x19, x10
    b.ls L84_7
L84_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L84_9
    b L84_10
L84_10:
    adrp x0, l_text_362@PAGE
    add x0, x0, l_text_362@PAGEOFF
    adrp x1, l_text_115@PAGE
    add x1, x1, l_text_115@PAGEOFF
    bl _lb_core_7trap_at
L84_9:
    b L84_8
L84_7:
L84_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_Frame_init
    .weak_definition _lb_interop_Reservation_0g1_gpu_Frame_init
_lb_interop_Reservation_0g1_gpu_Frame_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x0, x29, #144
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #104
    ldr x20, [x9]
    sub x19, x29, #144
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L85_4
    b L85_10
L85_10:
    mov w15, w14
    b L85_5
L85_4:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L85_5:
    and w14, w15, #255
    cbnz w14, L85_1
    b L85_2
L85_1:
    sub x19, x29, #96
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_369@PAGE
    add x14, x14, l_text_369@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_6:
    b L85_3
L85_2:
L85_3:
    sub x21, x29, #216
    sub x22, x29, #272
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #16
    movz x9, #200
    str x9, [x14]
    adrp x14, _lb_interop_Owner_0g1_gpu_Frame_12finish_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_Frame_12finish_owner@GOTPAGEOFF]
    add x15, x22, #24
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_Frame_10drop_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_Frame_10drop_owner@GOTPAGEOFF]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_Frame_11trace_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_Frame_11trace_owner@GOTPAGEOFF]
    add x15, x22, #40
    str x14, [x15]
    add x14, x22, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    movz x1, #200
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #328
    bl _lb_ownership_reserve
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L85_8
    b L85_7
L85_8:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_9:
L85_7:
    ldr x22, [x15]
    add x23, x22, #64
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x22, #16
    str x23, [x14]
    add x14, x22, #120
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x22, [x20]
    sub x14, x29, #96
    add x22, x14, #24
    mov x9, #0
    strb w9, [x22]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_Frame_publish
    .weak_definition _lb_interop_Reservation_0g1_gpu_Frame_publish
_lb_interop_Reservation_0g1_gpu_Frame_publish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x9, x29, #64
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L86_1
    b L86_2
L86_1:
    b L86_3
L86_2:
    adrp x14, l_text_370@PAGE
    add x14, x14, l_text_370@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    adrp x14, l_text_371@PAGE
    add x14, x14, l_text_371@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_371@PAGE
    add x0, x0, l_text_371@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L86_3:
    add x14, x20, #160
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    add x21, x20, #168
    sub x15, x29, #96
    ldr x14, [x15]
    cbnz x14, L86_4
    b L86_5
L86_4:
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L86_6
L86_5:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L86_6:
    sub x14, x29, #128
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x22, x29, #136
    mov x11, x22
    str xzr, [x11, #0]
    sub x10, x29, #152
    str x20, [x10]
    mov x0, x20
    bl _lb_ownership_11check_alive
    str x20, [x22]
L86_8:
    sub x19, x29, #56
    mov x10, x22
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86_7:
    adrp x0, l_text_372@PAGE
    add x0, x0, l_text_372@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_get
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_get
_lb_interop_Reference_0g1_gpu_FrameState_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_11check_alive
    ldr x14, [x19]
    add x15, x14, #184
    ldrb w15, [x15]
    cbnz w15, L87_1
    b L87_2
L87_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_interop_invalid@PAGE
    add x15, x15, _lb_interop_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_373@PAGE
    add x15, x15, l_text_373@PAGEOFF
    sub x20, x29, #104
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87_4:
    b L87_3
L87_2:
L87_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L87_5
    b L87_6
L87_5:
    b L87_7
L87_6:
    adrp x14, l_text_374@PAGE
    add x14, x14, l_text_374@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_375@PAGE
    add x14, x14, l_text_375@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_375@PAGE
    add x0, x0, l_text_375@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L87_7:
    sub x14, x29, #80
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87_8:
    adrp x0, l_text_375@PAGE
    add x0, x0, l_text_375@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_FrameState_init
    .weak_definition _lb_interop_Reservation_0g1_gpu_FrameState_init
_lb_interop_Reservation_0g1_gpu_FrameState_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x0, x29, #144
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #104
    ldr x20, [x9]
    sub x19, x29, #144
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L88_4
    b L88_10
L88_10:
    mov w15, w14
    b L88_5
L88_4:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L88_5:
    and w14, w15, #255
    cbnz w14, L88_1
    b L88_2
L88_1:
    sub x19, x29, #96
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_369@PAGE
    add x14, x14, l_text_369@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88_6:
    b L88_3
L88_2:
L88_3:
    sub x21, x29, #216
    sub x22, x29, #272
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #16
    movz x9, #200
    str x9, [x14]
    adrp x14, _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner@GOTPAGEOFF]
    add x15, x22, #24
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner@GOTPAGEOFF]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner@GOTPAGEOFF]
    add x15, x22, #40
    str x14, [x15]
    add x14, x22, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    movz x1, #200
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #328
    bl _lb_ownership_reserve
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L88_8
    b L88_7
L88_8:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88_9:
L88_7:
    ldr x22, [x15]
    add x23, x22, #64
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x22, #16
    str x23, [x14]
    add x14, x22, #120
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x22, [x20]
    sub x14, x29, #96
    add x22, x14, #24
    mov x9, #0
    strb w9, [x22]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_FrameState_publish
    .weak_definition _lb_interop_Reservation_0g1_gpu_FrameState_publish
_lb_interop_Reservation_0g1_gpu_FrameState_publish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x9, x29, #64
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L89_1
    b L89_2
L89_1:
    b L89_3
L89_2:
    adrp x14, l_text_370@PAGE
    add x14, x14, l_text_370@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    adrp x14, l_text_371@PAGE
    add x14, x14, l_text_371@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_371@PAGE
    add x0, x0, l_text_371@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L89_3:
    add x14, x20, #160
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    add x21, x20, #168
    sub x15, x29, #96
    ldr x14, [x15]
    cbnz x14, L89_4
    b L89_5
L89_4:
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L89_6
L89_5:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L89_6:
    sub x14, x29, #128
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x22, x29, #136
    mov x11, x22
    str xzr, [x11, #0]
    sub x10, x29, #152
    str x20, [x10]
    mov x0, x20
    bl _lb_ownership_11check_alive
    str x20, [x22]
L89_8:
    sub x19, x29, #56
    mov x10, x22
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89_7:
    adrp x0, l_text_372@PAGE
    add x0, x0, l_text_372@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_7is_open
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_7is_open
_lb_interop_Owner_0g1_gpu_FrameState_7is_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x14, x19, #184
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L90_1:
    adrp x0, l_text_376@PAGE
    add x0, x0, l_text_376@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_enter
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_enter
_lb_interop_Owner_0g1_gpu_FrameState_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_retain
    mov x14, x0
    add x14, x19, #192
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_377@PAGE
    add x0, x0, l_text_377@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_leave
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_leave
_lb_interop_Owner_0g1_gpu_FrameState_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x20, x19, #192
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L92_2
L92_1:
    adrp x14, l_text_378@PAGE
    add x14, x14, l_text_378@PAGEOFF
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    adrp x14, l_text_379@PAGE
    add x14, x14, l_text_379@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L92_3
L92_2:
L92_3:
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_380@PAGE
    add x0, x0, l_text_380@PAGEOFF
    adrp x1, l_text_383@PAGE
    add x1, x1, l_text_383@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    add x15, x19, #184
    ldrb w15, [x15]
    cbnz w15, L92_7
    b L92_9
L92_9:
    mov w14, w15
    b L92_8
L92_7:
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    mov w14, w15
L92_8:
    and w15, w14, #255
    cbnz w15, L92_4
    b L92_5
L92_4:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_gpu_FrameState
    b L92_6
L92_5:
L92_6:
    mov x0, x19
    bl _lb_ownership_release
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view
    .weak_definition _lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view
_lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #216
    mov x0, x14
    bl _lb_interop_Lease_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view
    .weak_definition _lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view
_lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    add x14, x14, #216
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _lb_interop_Lease_trace
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_View_0g1_gpu_RenderTarget_init
    .weak_definition _lb_interop_View_0g1_gpu_RenderTarget_init
_lb_interop_View_0g1_gpu_RenderTarget_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_11close_owner_0g1_gpu_FrameState
    .weak_definition _lb_interop_11close_owner_0g1_gpu_FrameState
_lb_interop_11close_owner_0g1_gpu_FrameState:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x14, x19, #184
    ldrb w15, [x14]
    cbnz w15, L96_1
    b L96_2
L96_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96_4:
    b L96_3
L96_2:
L96_3:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #192
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L96_6
L96_5:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_gpu_FrameState
    b L96_7
L96_6:
L96_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_Frame_12finish_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_Frame_12finish_owner
_lb_interop_Owner_0g1_gpu_Frame_12finish_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_gpu_Frame
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_Frame_10drop_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_Frame_10drop_owner
_lb_interop_Owner_0g1_gpu_Frame_10drop_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    add x19, x14, #160
    ldr x20, [x19]
    cbnz x20, L98_4
    b L98_2
L98_4:
L98_1:
    sub x22, x29, #88
    add x15, x14, #168
    ldr x21, [x15]
    cbnz x21, L98_5
    b L98_6
L98_5:
    sub x23, x29, #104
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L98_7
L98_6:
    adrp x14, l_text_381@PAGE
    add x14, x14, l_text_381@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    adrp x14, l_text_382@PAGE
    add x14, x14, l_text_382@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_382@PAGE
    add x0, x0, l_text_382@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L98_7:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L98_9
    b L98_8
L98_9:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L98_8:
    b L98_3
L98_2:
L98_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_Frame_11trace_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_Frame_11trace_owner
_lb_interop_Owner_0g1_gpu_Frame_11trace_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w15, [x15]
    cbnz w15, L99_1
    b L99_2
L99_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L99_4:
    b L99_3
L99_2:
L99_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L99_8
    b L99_6
L99_8:
L99_5:
    add x19, x14, #120
    add x19, x19, #24
    ldr x19, [x19]
    cbnz x19, L99_12
    b L99_10
L99_12:
L99_9:
    sub x14, x29, #64
    ldr x14, [x14]
    sub x20, x29, #80
    ldr x20, [x20]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x14
    mov x2, x20
    ldr x17, [sp], #16
    blr x17
    b L99_11
L99_10:
L99_11:
    b L99_7
L99_6:
L99_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_Frame_init
    .weak_definition _lb_interop_Reference_0g1_gpu_Frame_init
_lb_interop_Reference_0g1_gpu_Frame_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
_lb_interop_Owner_0g1_gpu_FrameState_12finish_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_gpu_FrameState
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
_lb_interop_Owner_0g1_gpu_FrameState_10drop_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    add x19, x14, #160
    ldr x20, [x19]
    cbnz x20, L102_4
    b L102_2
L102_4:
L102_1:
    sub x22, x29, #88
    add x15, x14, #168
    ldr x21, [x15]
    cbnz x21, L102_5
    b L102_6
L102_5:
    sub x23, x29, #104
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L102_7
L102_6:
    adrp x14, l_text_381@PAGE
    add x14, x14, l_text_381@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    adrp x14, l_text_382@PAGE
    add x14, x14, l_text_382@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_382@PAGE
    add x0, x0, l_text_382@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L102_7:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #152
    str x9, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L102_9
    b L102_8
L102_9:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L102_8:
    b L102_3
L102_2:
L102_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
_lb_interop_Owner_0g1_gpu_FrameState_11trace_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w15, [x15]
    cbnz w15, L103_1
    b L103_2
L103_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L103_4:
    b L103_3
L103_2:
L103_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L103_8
    b L103_6
L103_8:
L103_5:
    add x19, x14, #120
    add x19, x19, #24
    ldr x19, [x19]
    cbnz x19, L103_12
    b L103_10
L103_12:
L103_9:
    sub x14, x29, #64
    ldr x14, [x14]
    sub x20, x29, #80
    ldr x20, [x20]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x14
    mov x2, x20
    ldr x17, [sp], #16
    blr x17
    b L103_11
L103_10:
L103_11:
    b L103_7
L103_6:
L103_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_init
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_init
_lb_interop_Reference_0g1_gpu_FrameState_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_13dispose_owner_0g1_gpu_FrameState
    .weak_definition _lb_interop_13dispose_owner_0g1_gpu_FrameState
_lb_interop_13dispose_owner_0g1_gpu_FrameState:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w19, [x15]
    cbnz w19, L105_1
    b L105_2
L105_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L105_4:
    b L105_3
L105_2:
L105_3:
    movz x9, #1
    strb w9, [x15]
    add x19, x14, #160
    ldr x19, [x19]
    cbnz x19, L105_8
    b L105_6
L105_8:
L105_5:
    add x15, x14, #120
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    b L105_7
L105_6:
L105_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_11close_owner_0g1_gpu_Frame
    .weak_definition _lb_interop_11close_owner_0g1_gpu_Frame
_lb_interop_11close_owner_0g1_gpu_Frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x14, x19, #184
    ldrb w15, [x14]
    cbnz w15, L106_1
    b L106_2
L106_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L106_4:
    b L106_3
L106_2:
L106_3:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #192
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L106_6
L106_5:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_gpu_Frame
    b L106_7
L106_6:
L106_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_13dispose_owner_0g1_gpu_Frame
    .weak_definition _lb_interop_13dispose_owner_0g1_gpu_Frame
_lb_interop_13dispose_owner_0g1_gpu_Frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w19, [x15]
    cbnz w19, L107_1
    b L107_2
L107_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L107_4:
    b L107_3
L107_2:
L107_3:
    movz x9, #1
    strb w9, [x15]
    add x19, x14, #160
    ldr x19, [x19]
    cbnz x19, L107_8
    b L107_6
L107_8:
L107_5:
    add x15, x14, #120
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    b L107_7
L107_6:
L107_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_0init

    .section __TEXT,__const
l_text_0:
    .asciz "GPU frame state"
l_text_1:
    .asciz "GPU frame"
l_text_2:
    .asciz "GPU render target"
l_text_3:
    .asciz "VK_KHR_surface"
l_text_4:
    .asciz "VK_KHR_swapchain"
l_text_5:
    .asciz "VK_KHR_win32_surface"
l_text_6:
    .asciz "shift count out of range"
l_text_7:
    .asciz "gpu:1:1"
l_text_8:
    .asciz "unreachable"
l_text_9:
    .asciz "src/std/gpu/module.lucb:38:5"
l_text_10:
    .asciz "no GPU backend is implemented for this target"
l_text_11:
    .asciz "GPU operations currently require the main thread"
l_text_12:
    .asciz "GPU destruction requires the main thread"
l_text_13:
    .asciz "src/std/gpu/module.lucb:67:9"
l_text_14:
    .asciz "GPU clear colors must be finite linear sRGB values in 0..1"
l_text_15:
    .asciz "memory.unset"
l_text_16:
    .asciz "src/std/gpu/device.lucb:13:9"
l_text_17:
    .asciz "memory.exhausted"
l_text_18:
    .asciz "src/std/gpu/device.lucb:14:9"
l_text_19:
    .asciz "src/std/gpu/device.lucb:17:9"
l_text_20:
    .asciz "the GPU device is closed"
l_text_21:
    .asciz "src/std/gpu/device.lucb:27:9"
l_text_22:
    .asciz "src/std/gpu/device.lucb:35:5"
l_text_23:
    .asciz "src/std/gpu/canvas.lucb:50:9"
l_text_24:
    .asciz "division by zero"
l_text_25:
    .asciz "src/std/gpu/canvas.lucb:61:9"
l_text_26:
    .asciz "triangle input must contain a multiple of three vertices"
l_text_27:
    .asciz "vertices need finite positions and linear colors in 0..1"
l_text_28:
    .asciz "GPU viewport origins must be finite and in -16384..16384; extents in 0..16384"
l_text_29:
    .asciz "src/std/gpu/canvas.lucb:73:9"
l_text_30:
    .asciz "a canvas supports at most 1048576 vertices and 4096 draws"
l_text_31:
    .asciz "src/std/gpu/canvas.lucb:75:9"
l_text_32:
    .asciz "src/std/gpu/canvas.lucb:77:13"
l_text_33:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_34:
    .asciz "src/std/gpu/canvas.lucb:78:13"
l_text_35:
    .asciz "src/std/gpu/canvas.lucb:82:17"
l_text_36:
    .asciz "src/std/gpu/canvas.lucb:85:13"
l_text_37:
    .asciz "src/std/gpu/canvas.lucb:86:13"
l_text_38:
    .asciz "src/std/gpu/canvas.lucb:90:17"
l_text_39:
    .asciz "src/std/gpu/canvas.lucb:92:9"
l_text_40:
    .asciz "index out of bounds"
l_text_41:
    .asciz "src/std/gpu/canvas.lucb:93:9"
l_text_42:
    .asciz "src/std/gpu/canvas.lucb:95:9"
l_text_43:
    .asciz "src/std/gpu/canvas.lucb:99:13"
l_text_44:
    .asciz "src/std/gpu/canvas.lucb:101:13"
l_text_45:
    .asciz "src/std/gpu/canvas.lucb:103:13"
l_text_46:
    .asciz "src/std/gpu/canvas.lucb:107:5"
l_text_47:
    .asciz "src/std/gpu/canvas.lucb:110:5"
l_text_48:
    .asciz "src/std/gpu/canvas.lucb:113:5"
l_text_49:
    .asciz "src/std/gpu/mask.lucb:17:5"
l_text_50:
    .asciz "coverage dimensions must match tightly packed pixels, in 1..16384"
l_text_51:
    .asciz "src/std/gpu/mask.lucb:21:5"
l_text_52:
    .asciz "src/std/gpu/mask.lucb:22:5"
l_text_53:
    .asciz "a frame supports at most 16 MiB of coverage images"
l_text_54:
    .asciz "src/std/gpu/mask.lucb:24:5"
l_text_55:
    .asciz "src/std/gpu/mask.lucb:26:9"
l_text_56:
    .asciz "src/std/gpu/mask.lucb:27:9"
l_text_57:
    .asciz "src/std/gpu/mask.lucb:31:13"
l_text_58:
    .asciz "src/std/gpu/mask.lucb:51:13"
l_text_59:
    .asciz "src/std/gpu/mask.lucb:53:17"
l_text_60:
    .asciz "src/std/gpu/mask.lucb:54:9"
l_text_61:
    .asciz "src/std/gpu/mask.lucb:55:5"
l_text_62:
    .asciz "src/std/gpu/surface.lucb:14:9"
l_text_63:
    .asciz "src/std/gpu/surface.lucb:15:9"
l_text_64:
    .asciz "src/std/gpu/surface.lucb:16:9"
l_text_65:
    .asciz "src/std/gpu/surface.lucb:20:9"
l_text_66:
    .asciz "finish the active frame before presenting"
l_text_67:
    .asciz "src/std/gpu/surface.lucb:36:9"
l_text_68:
    .asciz "src/std/gpu/surface.lucb:47:9"
l_text_69:
    .asciz "the surface already has an active frame"
l_text_70:
    .asciz "src/std/gpu/surface.lucb:56:9"
l_text_71:
    .asciz "src/std/gpu/surface.lucb:64:9"
l_text_72:
    .asciz "src/std/gpu/surface.lucb:66:9"
l_text_73:
    .asciz "the GPU surface is closed"
l_text_74:
    .asciz "src/std/gpu/surface.lucb:89:9"
l_text_75:
    .asciz "src/std/gpu/surface.lucb:102:5"
l_text_76:
    .asciz "the frame's surface is closed"
l_text_77:
    .asciz "the surface changed size; begin a new frame"
l_text_78:
    .asciz "src/std/gpu/surface.lucb:121:5"
l_text_79:
    .asciz "the recording frame is finished"
l_text_80:
    .asciz "frame presentation has no validator"
l_text_81:
    .asciz "src/std/gpu/frame.lucb:23:13"
l_text_82:
    .asciz "frame presentation has no release operation"
l_text_83:
    .asciz "src/std/gpu/frame.lucb:30:13"
l_text_84:
    .asciz "src/std/gpu/frame.lucb:43:9"
l_text_85:
    .asciz "src/std/gpu/frame.lucb:51:9"
l_text_86:
    .asciz "src/std/gpu/frame.lucb:56:9"
l_text_87:
    .asciz "src/std/gpu/frame.lucb:63:9"
l_text_88:
    .asciz "src/std/gpu/frame.lucb:64:9"
l_text_89:
    .asciz "a standalone frame has no presentation surface"
l_text_90:
    .asciz "frame presentation has no submit operation"
l_text_91:
    .asciz "src/std/gpu/frame.lucb:74:9"
l_text_92:
    .asciz "an open frame has no lease"
l_text_93:
    .asciz "src/std/gpu/frame.lucb:75:9"
l_text_94:
    .asciz "src/std/gpu/frame.lucb:77:9"
l_text_95:
    .asciz "src/std/gpu/frame.lucb:109:9"
l_text_96:
    .asciz "src/std/gpu/frame.lucb:121:9"
l_text_97:
    .asciz "src/std/gpu/frame.lucb:133:9"
l_text_98:
    .asciz "src/std/gpu/frame.lucb:159:5"
l_text_99:
    .asciz "frame extents must be finite, nonnegative and at most 16384 pixels/points"
l_text_100:
    .asciz "frame backing extents must be whole pixels"
l_text_101:
    .asciz "empty logical and backing dimensions must agree"
l_text_102:
    .asciz "render regions need finite origins and nonnegative extents"
l_text_103:
    .asciz "src/std/gpu/frame.lucb:180:5"
l_text_104:
    .asciz "the requested GPU backend is not implemented"
l_text_105:
    .asciz "src/std/gpu/backend.lucb:13:5"
l_text_106:
    .asciz "the GPU backend is not implemented"
l_text_107:
    .asciz "src/std/gpu/backend.lucb:21:5"
l_text_108:
    .asciz "invalid GPU backend during device destruction"
l_text_109:
    .asciz "src/std/gpu/backend.lucb:31:5"
l_text_110:
    .asciz "src/std/gpu/backend.lucb:39:5"
l_text_111:
    .asciz "src/std/gpu/backend.lucb:47:5"
l_text_112:
    .asciz "src/std/gpu/backend.lucb:65:5"
l_text_113:
    .asciz "invalid GPU backend during surface destruction"
l_text_114:
    .asciz "src/std/gpu/backend.lucb:75:5"
l_text_115:
    .asciz "null_foreign"
l_text_116:
    .asciz "src/std/gpu/metal/objc.lucb:60:5"
l_text_117:
    .asciz "a required Metal class is unavailable; check framework linkage"
l_text_118:
    .asciz "src/std/gpu/metal/objc.lucb:63:5"
l_text_119:
    .asciz "the Metal backend lost an owned object"
l_text_120:
    .asciz "src/std/gpu/metal/objc.lucb:66:5"
l_text_121:
    .asciz "src/std/gpu/metal/device.lucb:6:5"
l_text_122:
    .asciz "src/std/gpu/metal/device.lucb:8:5"
l_text_123:
    .asciz "no Metal device is available"
l_text_124:
    .asciz "newCommandQueue"
l_text_125:
    .asciz "could not create a Metal command queue"
l_text_126:
    .asciz "src/std/gpu/metal/device.lucb:13:5"
l_text_127:
    .asciz "src/std/gpu/metal/device.lucb:16:5"
l_text_128:
    .asciz "release"
l_text_129:
    .asciz "NSString"
l_text_130:
    .asciz "stringWithUTF8String:"
l_text_131:
    .asciz "could not create Metal shader text"
l_text_132:
    .asciz "src/std/gpu/metal/drawing.lucb:13:5"
l_text_133:
    .asciz "src/std/gpu/metal/drawing.lucb:16:5"
l_text_134:
    .asciz "#include <metal_stdlib>\nusing namespace metal;\nstruct V { float4 position [[position]]; float4 color; };\nstruct Mask { float x,y,width,height; uint columns,rows,offset,reserved; };\nvertex V luce_vertex(const device float* data [[buffer(0)]], uint id [[vertex_id]]) {\n uint i=id*8; V v; v.position=float4(data[i],data[i+1],data[i+2],data[i+3]); v.color=float4(data[i+4],data[i+5],data[i+6],data[i+7]); return v;\n}\nfloat coverage(const device uint* data, constant Mask& m, int2 p) {\n p=clamp(p,int2(0),int2(m.columns-1,m.rows-1)); uint i=m.offset+uint(p.y)*m.columns+uint(p.x);\n return float((data[i/4] >> ((i%4)*8)) & 255u)/255.0;\n}\nfragment float4 luce_fragment(V v [[stage_in]], const device uint* data [[buffer(0)]], constant Mask& m [[buffer(1)]]) {\n if(m.columns==0) return v.color;\n float2 p=(v.position.xy-float2(m.x,m.y))/float2(m.width,m.height)*float2(m.columns,m.rows)-0.5;\n int2 q=int2(floor(p)); float2 f=fract(p);\n float a=mix(mix(coverage(data,m,q),coverage(data,m,q+int2(1,0)),f.x),mix(coverage(data,m,q+int2(0,1)),coverage(data,m,q+int2(1,1)),f.x),f.y);\n return float4(v.color.rgb,v.color.a*a);\n}"
l_text_135:
    .asciz "newLibraryWithSource:options:error:"
l_text_136:
    .asciz "could not compile the portable triangle pipeline"
l_text_137:
    .asciz "newFunctionWithName:"
l_text_138:
    .asciz "luce_vertex"
l_text_139:
    .asciz "the GPU vertex entry is missing"
l_text_140:
    .asciz "luce_fragment"
l_text_141:
    .asciz "the GPU fragment entry is missing"
l_text_142:
    .asciz "MTLRenderPipelineDescriptor"
l_text_143:
    .asciz "new"
l_text_144:
    .asciz "could not create a GPU pipeline descriptor"
l_text_145:
    .asciz "setVertexFunction:"
l_text_146:
    .asciz "setFragmentFunction:"
l_text_147:
    .asciz "setDepthAttachmentPixelFormat:"
l_text_148:
    .asciz "colorAttachments"
l_text_149:
    .asciz "objectAtIndexedSubscript:"
l_text_150:
    .asciz "setPixelFormat:"
l_text_151:
    .asciz "setBlendingEnabled:"
l_text_152:
    .asciz "setSourceRGBBlendFactor:"
l_text_153:
    .asciz "setDestinationRGBBlendFactor:"
l_text_154:
    .asciz "setSourceAlphaBlendFactor:"
l_text_155:
    .asciz "setDestinationAlphaBlendFactor:"
l_text_156:
    .asciz "newRenderPipelineStateWithDescriptor:error:"
l_text_157:
    .asciz "could not create the portable triangle pipeline"
l_text_158:
    .asciz "MTLDepthStencilDescriptor"
l_text_159:
    .asciz "could not create a GPU depth descriptor"
l_text_160:
    .asciz "setDepthCompareFunction:"
l_text_161:
    .asciz "setDepthWriteEnabled:"
l_text_162:
    .asciz "newDepthStencilStateWithDescriptor:"
l_text_163:
    .asciz "could not create GPU depth testing"
l_text_164:
    .asciz "could not create GPU overlay state"
l_text_165:
    .asciz "src/std/gpu/metal/drawing.lucb:50:5"
l_text_166:
    .asciz "MTLTextureDescriptor"
l_text_167:
    .asciz "could not create a GPU depth texture descriptor"
l_text_168:
    .asciz "setTextureType:"
l_text_169:
    .asciz "setWidth:"
l_text_170:
    .asciz "setHeight:"
l_text_171:
    .asciz "setStorageMode:"
l_text_172:
    .asciz "setUsage:"
l_text_173:
    .asciz "newTextureWithDescriptor:"
l_text_174:
    .asciz "could not allocate GPU depth storage"
l_text_175:
    .asciz "src/std/gpu/metal/drawing.lucb:69:5"
l_text_176:
    .asciz "setRenderPipelineState:"
l_text_177:
    .asciz "setVertexBuffer:offset:atIndex:"
l_text_178:
    .asciz "setFragmentBuffer:offset:atIndex:"
l_text_179:
    .asciz "src/std/gpu/metal/drawing.lucb:86:5"
l_text_180:
    .asciz "src/std/gpu/metal/drawing.lucb:89:9"
l_text_181:
    .asciz "src/std/gpu/metal/drawing.lucb:90:9"
l_text_182:
    .asciz "setViewport:"
l_text_183:
    .asciz "setScissorRect:"
l_text_184:
    .asciz "setDepthStencilState:"
l_text_185:
    .asciz "setFragmentBytes:length:atIndex:"
l_text_186:
    .asciz "drawPrimitives:vertexStart:vertexCount:"
l_text_187:
    .asciz "src/std/gpu/metal/drawing.lucb:102:5"
l_text_188:
    .asciz "src/std/gpu/metal/surface.lucb:14:5"
l_text_189:
    .asciz "src/std/gpu/metal/surface.lucb:17:5"
l_text_190:
    .asciz "CAMetalLayer"
l_text_191:
    .asciz "could not create a Metal presentation layer"
l_text_192:
    .asciz "setDevice:"
l_text_193:
    .asciz "setFramebufferOnly:"
l_text_194:
    .asciz "setOpaque:"
l_text_195:
    .asciz "setDisplaySyncEnabled:"
l_text_196:
    .asciz "setAllowsNextDrawableTimeout:"
l_text_197:
    .asciz "setPresentsWithTransaction:"
l_text_198:
    .asciz "could not create the sRGB presentation color space"
l_text_199:
    .asciz "setColorspace:"
l_text_200:
    .asciz "setLayer:"
l_text_201:
    .asciz "setWantsLayer:"
l_text_202:
    .asciz "src/std/gpu/metal/surface.lucb:36:5"
l_text_203:
    .asciz "src/std/gpu/metal/surface.lucb:39:5"
l_text_204:
    .asciz "waitUntilCompleted"
l_text_205:
    .asciz "status"
l_text_206:
    .asciz "Metal command execution failed; recreate the GPU surface"
l_text_207:
    .asciz "src/std/gpu/metal/surface.lucb:53:5"
l_text_208:
    .asciz "src/std/gpu/metal/surface.lucb:56:5"
l_text_209:
    .asciz "Metal presentation supports at most 16384 backing pixels per dimension"
l_text_210:
    .asciz "setContentsScale:"
l_text_211:
    .asciz "setDrawableSize:"
l_text_212:
    .asciz "nextDrawable"
l_text_213:
    .asciz "texture"
l_text_214:
    .asciz "Metal returned a drawable without a texture"
l_text_215:
    .asciz "MTLRenderPassDescriptor"
l_text_216:
    .asciz "renderPassDescriptor"
l_text_217:
    .asciz "could not create a Metal render pass"
l_text_218:
    .asciz "setTexture:"
l_text_219:
    .asciz "setLoadAction:"
l_text_220:
    .asciz "setStoreAction:"
l_text_221:
    .asciz "setClearColor:"
l_text_222:
    .asciz "GPU drawing state was not initialized"
l_text_223:
    .asciz "src/std/gpu/metal/surface.lucb:87:9"
l_text_224:
    .asciz "depthAttachment"
l_text_225:
    .asciz "src/std/gpu/metal/surface.lucb:89:9"
l_text_226:
    .asciz "setClearDepth:"
l_text_227:
    .asciz "newBufferWithBytes:length:options:"
l_text_228:
    .asciz "src/std/gpu/metal/surface.lucb:93:9"
l_text_229:
    .asciz "could not upload GPU triangle data"
l_text_230:
    .asciz "src/std/gpu/metal/surface.lucb:97:9"
l_text_231:
    .asciz "could not upload GPU coverage"
l_text_232:
    .asciz "commandBuffer"
l_text_233:
    .asciz "could not create a Metal command buffer"
l_text_234:
    .asciz "renderCommandEncoderWithDescriptor:"
l_text_235:
    .asciz "could not create a Metal render encoder"
l_text_236:
    .asciz "missing GPU drawing state"
l_text_237:
    .asciz "src/std/gpu/metal/surface.lucb:101:9"
l_text_238:
    .asciz "endEncoding"
l_text_239:
    .asciz "presentDrawable:"
l_text_240:
    .asciz "retain"
l_text_241:
    .asciz "commit"
l_text_242:
    .asciz "src/std/gpu/metal/surface.lucb:108:5"
l_text_243:
    .asciz "src/std/gpu/metal/surface.lucb:111:5"
l_text_244:
    .asciz "layer"
l_text_245:
    .asciz "Vulkan presentation is unavailable on this host"
l_text_246:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:7:5"
l_text_247:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:12:5"
l_text_248:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:17:5"
l_text_249:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:8:5"
l_text_250:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:11:5"
l_text_251:
    .asciz "the Vulkan Windows surface could not be created"
l_text_252:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:15:5"
l_text_253:
    .asciz "src/std/gpu/vulkan/device.lucb:17:5"
l_text_254:
    .asciz "Luce"
l_text_255:
    .asciz "a Vulkan instance with native presentation is unavailable"
l_text_256:
    .asciz "Vulkan devices could not be enumerated"
l_text_257:
    .asciz "no Vulkan device is available"
l_text_258:
    .asciz "src/std/gpu/vulkan/device.lucb:30:5"
l_text_259:
    .asciz "Vulkan devices changed during enumeration"
l_text_260:
    .asciz "src/std/gpu/vulkan/device.lucb:32:5"
l_text_261:
    .asciz "src/std/gpu/vulkan/device.lucb:34:9"
l_text_262:
    .asciz "src/std/gpu/vulkan/device.lucb:37:9"
l_text_263:
    .asciz "src/std/gpu/vulkan/device.lucb:41:13"
l_text_264:
    .asciz "src/std/gpu/vulkan/device.lucb:56:13"
l_text_265:
    .asciz "no Vulkan graphics queue supports native presentation"
l_text_266:
    .asciz "src/std/gpu/vulkan/device.lucb:57:5"
l_text_267:
    .asciz "src/std/gpu/vulkan/device.lucb:69:9"
l_text_268:
    .asciz "Vulkan device memory allocation failed"
l_text_269:
    .asciz "no compatible Vulkan memory type is available"
l_text_270:
    .asciz "src/std/gpu/vulkan/device.lucb:75:5"
l_text_271:
    .asciz "src/std/gpu/vulkan/surface.lucb:29:5"
l_text_272:
    .asciz "Vulkan presentation support could not be checked"
l_text_273:
    .asciz "the Vulkan queue cannot present to this window"
l_text_274:
    .asciz "the Vulkan command pool could not be created"
l_text_275:
    .asciz "the Vulkan command buffer could not be allocated"
l_text_276:
    .asciz "the Vulkan acquisition semaphore could not be created"
l_text_277:
    .asciz "src/std/gpu/vulkan/surface.lucb:42:5"
l_text_278:
    .asciz "a Vulkan image view could not be created"
l_text_279:
    .asciz "src/std/gpu/vulkan/surface.lucb:49:5"
l_text_280:
    .asciz "Vulkan could not finish before resizing"
l_text_281:
    .asciz "Vulkan surface capabilities are unavailable"
l_text_282:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
l_text_283:
    .asciz "the Vulkan surface cannot provide opaque color attachments"
l_text_284:
    .asciz "Vulkan surface formats are unavailable"
l_text_285:
    .asciz "src/std/gpu/vulkan/surface.lucb:69:5"
l_text_286:
    .asciz "Vulkan surface formats changed"
l_text_287:
    .asciz "src/std/gpu/vulkan/surface.lucb:71:5"
l_text_288:
    .asciz "src/std/gpu/vulkan/surface.lucb:74:9"
l_text_289:
    .asciz "src/std/gpu/vulkan/surface.lucb:75:13"
l_text_290:
    .asciz "src/std/gpu/vulkan/surface.lucb:76:17"
l_text_291:
    .asciz "src/std/gpu/vulkan/surface.lucb:78:13"
l_text_292:
    .asciz "the Vulkan surface has no sRGB render target"
l_text_293:
    .asciz "src/std/gpu/vulkan/surface.lucb:81:9"
l_text_294:
    .asciz "src/std/gpu/vulkan/surface.lucb:82:5"
l_text_295:
    .asciz "the Vulkan swapchain could not be created"
l_text_296:
    .asciz "src/std/gpu/vulkan/surface.lucb:89:5"
l_text_297:
    .asciz "src/std/gpu/vulkan/surface.lucb:93:5"
l_text_298:
    .asciz "src/std/gpu/vulkan/surface.lucb:94:5"
l_text_299:
    .asciz "Vulkan swapchain images are unavailable"
l_text_300:
    .asciz "src/std/gpu/vulkan/surface.lucb:96:5"
l_text_301:
    .asciz "src/std/gpu/vulkan/surface.lucb:97:5"
l_text_302:
    .asciz "Vulkan swapchain images changed"
l_text_303:
    .asciz "src/std/gpu/vulkan/surface.lucb:99:5"
l_text_304:
    .asciz "src/std/gpu/vulkan/surface.lucb:100:5"
l_text_305:
    .asciz "src/std/gpu/vulkan/surface.lucb:102:9"
l_text_306:
    .asciz "src/std/gpu/vulkan/surface.lucb:103:9"
l_text_307:
    .asciz "src/std/gpu/vulkan/surface.lucb:104:9"
l_text_308:
    .asciz "src/std/gpu/vulkan/surface.lucb:105:9"
l_text_309:
    .asciz "src/std/gpu/vulkan/surface.lucb:107:9"
l_text_310:
    .asciz "a Vulkan framebuffer could not be created"
l_text_311:
    .asciz "src/std/gpu/vulkan/surface.lucb:109:9"
l_text_312:
    .asciz "a Vulkan presentation semaphore could not be created"
l_text_313:
    .asciz "src/std/gpu/vulkan/surface.lucb:110:5"
l_text_314:
    .asciz "the Vulkan device has no 32-bit depth attachment support"
l_text_315:
    .asciz "the Vulkan depth image could not be created"
l_text_316:
    .asciz "Vulkan depth memory could not be bound"
l_text_317:
    .asciz "src/std/gpu/vulkan/surface.lucb:132:9"
l_text_318:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:2:5"
l_text_319:
    .asciz "a Vulkan shader could not be created"
l_text_320:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:5:5"
l_text_321:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:18:5"
l_text_322:
    .asciz "the Vulkan render pass could not be created"
l_text_323:
    .asciz "Vulkan coverage layout could not be created"
l_text_324:
    .asciz "the Vulkan pipeline layout could not be created"
l_text_325:
    .asciz "main"
l_text_326:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:40:5"
l_text_327:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:52:5"
l_text_328:
    .asciz "src/std/gpu/vulkan/pipeline.lucb:53:5"
l_text_329:
    .asciz "the Vulkan overlay pipeline could not be created"
l_text_330:
    .asciz "the Vulkan depth pipeline could not be created"
l_text_331:
    .asciz "src/std/gpu/vulkan/render.lucb:17:5"
l_text_332:
    .asciz "src/std/gpu/vulkan/render.lucb:20:5"
l_text_333:
    .asciz "src/std/gpu/vulkan/render.lucb:21:5"
l_text_334:
    .asciz "src/std/gpu/vulkan/render.lucb:22:5"
l_text_335:
    .asciz "the Vulkan vertex buffer could not be created"
l_text_336:
    .asciz "Vulkan vertex memory could not be bound"
l_text_337:
    .asciz "Vulkan vertex memory could not be mapped"
l_text_338:
    .asciz "Vulkan returned an empty memory mapping"
l_text_339:
    .asciz "src/std/gpu/vulkan/render.lucb:33:5"
l_text_340:
    .asciz "Vulkan coverage descriptors could not be created"
l_text_341:
    .asciz "Vulkan coverage descriptor could not be allocated"
l_text_342:
    .asciz "src/std/gpu/vulkan/render.lucb:47:5"
l_text_343:
    .asciz "a previous Vulkan submission failed; recreate the surface"
l_text_344:
    .asciz "src/std/gpu/vulkan/render.lucb:62:5"
l_text_345:
    .asciz "src/std/gpu/vulkan/render.lucb:63:5"
l_text_346:
    .asciz "the Vulkan command pool could not be reset"
l_text_347:
    .asciz "Vulkan could not acquire a presentation image"
l_text_348:
    .asciz "Vulkan command recording could not begin"
l_text_349:
    .asciz "src/std/gpu/vulkan/render.lucb:87:5"
l_text_350:
    .asciz "src/std/gpu/vulkan/render.lucb:88:5"
l_text_351:
    .asciz "src/std/gpu/vulkan/render.lucb:89:5"
l_text_352:
    .asciz "src/std/gpu/vulkan/render.lucb:97:9"
l_text_353:
    .asciz "src/std/gpu/vulkan/render.lucb:99:9"
l_text_354:
    .asciz "src/std/gpu/vulkan/render.lucb:102:13"
l_text_355:
    .asciz "Vulkan command recording could not finish"
l_text_356:
    .asciz "src/std/gpu/vulkan/render.lucb:122:5"
l_text_357:
    .asciz "Vulkan command submission failed"
l_text_358:
    .asciz "Vulkan execution failed"
l_text_359:
    .asciz "Vulkan presentation failed"
l_text_360:
    .asciz "src/std/gpu/vulkan/render.lucb:135:5"
l_text_361:
    .asciz "src/std/memory.lucb:326:9"
l_text_362:
    .asciz "src/std/memory.lucb:328:9"
l_text_363:
    .asciz "src/std/interop/reference.lucb:17:9"
l_text_364:
    .asciz "src/std/interop/reference.lucb:34:9"
l_text_365:
    .asciz "src/std/interop/reference.lucb:52:9"
l_text_366:
    .asciz "src/std/interop/view.lucb:39:9"
l_text_367:
    .asciz "this native type does not support explicit close"
l_text_368:
    .asciz "src/std/interop/reference.lucb:47:13"
l_text_369:
    .asciz "this native type requires the process main thread"
l_text_370:
    .asciz "native ownership has already been published or cancelled"
l_text_371:
    .asciz "src/std/interop/object.lucb:83:9"
l_text_372:
    .asciz "src/std/interop/object.lucb:87:9"
l_text_373:
    .asciz "a native object is closed"
l_text_374:
    .asciz "a native object has not been initialized"
l_text_375:
    .asciz "src/std/interop/reference.lucb:30:9"
l_text_376:
    .asciz "src/std/interop/object.lucb:15:9"
l_text_377:
    .asciz "src/std/interop/object.lucb:19:9"
l_text_378:
    .asciz "a native call guard was left twice"
l_text_379:
    .asciz "src/std/interop/object.lucb:25:13"
l_text_380:
    .asciz "src/std/interop/object.lucb:26:9"
l_text_381:
    .asciz "native storage has no allocator"
l_text_382:
    .asciz "src/std/interop/object.lucb:37:13"
l_text_383:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_gpu_unsupported
    .zerofill __DATA,__bss,_lb_gpu_unsupported,4,2
    .globl _lb_gpu_unavailable
    .zerofill __DATA,__bss,_lb_gpu_unavailable,4,2
    .globl _lb_gpu_12wrong_thread
    .zerofill __DATA,__bss,_lb_gpu_12wrong_thread,4,2
    .globl _lb_gpu_closed
    .zerofill __DATA,__bss,_lb_gpu_closed,4,2
    .globl _lb_gpu_13invalid_color
    .zerofill __DATA,__bss,_lb_gpu_13invalid_color,4,2
    .globl _lb_gpu_failed
    .zerofill __DATA,__bss,_lb_gpu_failed,4,2
    .globl _lb_gpu_16execution_failed
    .zerofill __DATA,__bss,_lb_gpu_16execution_failed,4,2
    .globl _lb_gpu_17surface_too_large
    .zerofill __DATA,__bss,_lb_gpu_17surface_too_large,4,2
    .globl _lb_gpu_16invalid_geometry
    .zerofill __DATA,__bss,_lb_gpu_16invalid_geometry,4,2
    .globl _lb_gpu_13command_limit
    .zerofill __DATA,__bss,_lb_gpu_13command_limit,4,2
    .globl _lb_gpu_14frame_finished
    .zerofill __DATA,__bss,_lb_gpu_14frame_finished,4,2
    .globl _lb_gpu_12frame_in_use
    .zerofill __DATA,__bss,_lb_gpu_12frame_in_use,4,2
    .globl _lb_gpu_13frame_resized
    .zerofill __DATA,__bss,_lb_gpu_13frame_resized,4,2
    .globl _lb_gpu_16frame_state_type
    .zerofill __DATA,__bss,_lb_gpu_16frame_state_type,40,3
    .globl _lb_gpu_10frame_type
    .zerofill __DATA,__bss,_lb_gpu_10frame_type,40,3
    .globl _lb_gpu_18render_target_type
    .zerofill __DATA,__bss,_lb_gpu_18render_target_type,24,3
    .globl _lb_gpu_19metal_surface_limit
    .zerofill __DATA,__bss,_lb_gpu_19metal_surface_limit,8,3
    .globl _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
    .zerofill __DATA,__bss,_lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT,4,2
    .globl _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
    .zerofill __DATA,__bss,_lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT,4,2
    .globl _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR
    .zerofill __DATA,__bss,_lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR,4,2
    .globl _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE
    .zerofill __DATA,__bss,_lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE,4,2
    .globl _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE
    .zerofill __DATA,__bss,_lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE,4,2
    .globl _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE
    .zerofill __DATA,__bss,_lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE,4,2
    .globl _lb_gpu_19VK_BLEND_FACTOR_ONE
    .zerofill __DATA,__bss,_lb_gpu_19VK_BLEND_FACTOR_ONE,4,2
    .globl _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    .zerofill __DATA,__bss,_lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,4,2
    .globl _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA
    .zerofill __DATA,__bss,_lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA,4,2
    .globl _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
    .zerofill __DATA,__bss,_lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT,4,2
    .globl _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    .zerofill __DATA,__bss,_lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT,4,2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_A_BIT
    .zerofill __DATA,__bss,_lb_gpu_24VK_COLOR_COMPONENT_A_BIT,4,2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_B_BIT
    .zerofill __DATA,__bss,_lb_gpu_24VK_COLOR_COMPONENT_B_BIT,4,2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_G_BIT
    .zerofill __DATA,__bss,_lb_gpu_24VK_COLOR_COMPONENT_G_BIT,4,2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_R_BIT
    .zerofill __DATA,__bss,_lb_gpu_24VK_COLOR_COMPONENT_R_BIT,4,2
    .globl _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
    .zerofill __DATA,__bss,_lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR,4,2
    .globl _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    .zerofill __DATA,__bss,_lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT,4,2
    .globl _lb_gpu_18VK_COMPARE_OP_LESS
    .zerofill __DATA,__bss,_lb_gpu_18VK_COMPARE_OP_LESS,4,2
    .globl _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
    .zerofill __DATA,__bss,_lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR,4,2
    .globl _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
    .zerofill __DATA,__bss,_lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER,4,2
    .globl _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR
    .zerofill __DATA,__bss,_lb_gpu_24VK_DYNAMIC_STATE_SCISSOR,4,2
    .globl _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT
    .zerofill __DATA,__bss,_lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT,4,2
    .globl _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR
    .zerofill __DATA,__bss,_lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR,4,2
    .globl _lb_gpu_8VK_FALSE
    .zerofill __DATA,__bss,_lb_gpu_8VK_FALSE,4,2
    .globl _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB
    .zerofill __DATA,__bss,_lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB,4,2
    .globl _lb_gpu_20VK_FORMAT_D32_SFLOAT
    .zerofill __DATA,__bss,_lb_gpu_20VK_FORMAT_D32_SFLOAT,4,2
    .globl _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
    .zerofill __DATA,__bss,_lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT,4,2
    .globl _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT
    .zerofill __DATA,__bss,_lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT,4,2
    .globl _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB
    .zerofill __DATA,__bss,_lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB,4,2
    .globl _lb_gpu_19VK_FORMAT_UNDEFINED
    .zerofill __DATA,__bss,_lb_gpu_19VK_FORMAT_UNDEFINED,4,2
    .globl _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT
    .zerofill __DATA,__bss,_lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT,4,2
    .globl _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT
    .zerofill __DATA,__bss,_lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT,4,2
    .globl _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
    .zerofill __DATA,__bss,_lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,4,2
    .globl _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    .zerofill __DATA,__bss,_lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL,4,2
    .globl _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
    .zerofill __DATA,__bss,_lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,4,2
    .globl _lb_gpu_16VK_IMAGE_TYPE_2D
    .zerofill __DATA,__bss,_lb_gpu_16VK_IMAGE_TYPE_2D,4,2
    .globl _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
    .zerofill __DATA,__bss,_lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT,4,2
    .globl _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
    .zerofill __DATA,__bss,_lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT,4,2
    .globl _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D
    .zerofill __DATA,__bss,_lb_gpu_21VK_IMAGE_VIEW_TYPE_2D,4,2
    .globl _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    .zerofill __DATA,__bss,_lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME,8,3
    .globl _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME
    .zerofill __DATA,__bss,_lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME,8,3
    .globl _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    .zerofill __DATA,__bss,_lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME,8,3
    .globl _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
    .zerofill __DATA,__bss,_lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT,4,2
    .globl _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
    .zerofill __DATA,__bss,_lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,4,2
    .globl _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    .zerofill __DATA,__bss,_lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT,4,2
    .globl _lb_gpu_12VK_NOT_READY
    .zerofill __DATA,__bss,_lb_gpu_12VK_NOT_READY,4,2
    .globl _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS
    .zerofill __DATA,__bss,_lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS,4,2
    .globl _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
    .zerofill __DATA,__bss,_lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,4,2
    .globl _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
    .zerofill __DATA,__bss,_lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT,4,2
    .globl _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR
    .zerofill __DATA,__bss,_lb_gpu_24VK_PRESENT_MODE_FIFO_KHR,4,2
    .globl _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
    .zerofill __DATA,__bss,_lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST,4,2
    .globl _lb_gpu_21VK_QUEUE_GRAPHICS_BIT
    .zerofill __DATA,__bss,_lb_gpu_21VK_QUEUE_GRAPHICS_BIT,4,2
    .globl _lb_gpu_21VK_SAMPLE_COUNT_1_BIT
    .zerofill __DATA,__bss,_lb_gpu_21VK_SAMPLE_COUNT_1_BIT,4,2
    .globl _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT
    .zerofill __DATA,__bss,_lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT,4,2
    .globl _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT
    .zerofill __DATA,__bss,_lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT,4,2
    .globl _lb_gpu_17VK_SUBOPTIMAL_KHR
    .zerofill __DATA,__bss,_lb_gpu_17VK_SUBOPTIMAL_KHR,4,2
    .globl _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE
    .zerofill __DATA,__bss,_lb_gpu_26VK_SUBPASS_CONTENTS_INLINE,4,2
    .globl _lb_gpu_19VK_SUBPASS_EXTERNAL
    .zerofill __DATA,__bss,_lb_gpu_19VK_SUBPASS_EXTERNAL,4,2
    .globl _lb_gpu_10VK_SUCCESS
    .zerofill __DATA,__bss,_lb_gpu_10VK_SUCCESS,4,2
    .globl _lb_gpu_10VK_TIMEOUT
    .zerofill __DATA,__bss,_lb_gpu_10VK_TIMEOUT,4,2
    .globl _lb_gpu_7VK_TRUE
    .zerofill __DATA,__bss,_lb_gpu_7VK_TRUE,4,2
    .globl _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO
    .zerofill __DATA,__bss,_lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO,4,2
    .globl _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,4,2
    .globl _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,4,2
    .globl _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    .zerofill __DATA,__bss,_lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,4,2
    .globl _lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
    .zerofill __DATA,__bss,_lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO,4,2
    .globl _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,4,2
    .globl _lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
    .zerofill __DATA,__bss,_lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET,4,2
    .globl _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,4,2
    .globl _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,4,2
    .globl _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,4,2
    .globl _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,4,2
    .globl _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,4,2
    .globl _lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,4,2
    .globl _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,4,2
    .globl _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,4,2
    .globl _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,4,2
    .globl _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,4,2
    .globl _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,4,2
    .globl _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,4,2
    .globl _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,4,2
    .globl _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,4,2
    .globl _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,4,2
    .globl _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
    .zerofill __DATA,__bss,_lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,4,2
    .globl _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
    .zerofill __DATA,__bss,_lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,4,2
    .globl _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,4,2
    .globl _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,4,2
    .globl _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
    .zerofill __DATA,__bss,_lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,4,2
    .globl _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO
    .zerofill __DATA,__bss,_lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO,4,2
    .globl _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
    .zerofill __DATA,__bss,_lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,4,2
    .globl _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
    .zerofill __DATA,__bss,_lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,4,2
    .globl _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
    .zerofill __DATA,__bss,_lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,4,2
    .globl _lb_gpu_17vulkan_vert_words
    .zerofill __DATA,__bss,_lb_gpu_17vulkan_vert_words,1084,2
    .globl _lb_gpu_17vulkan_frag_words
    .zerofill __DATA,__bss,_lb_gpu_17vulkan_frag_words,4084,2
    .globl _lb_gpu_25vulkan_windows_extensions
    .zerofill __DATA,__bss,_lb_gpu_25vulkan_windows_extensions,16,3
    .globl _lb_gpu_22vulkan_api_version_1_0
    .zerofill __DATA,__bss,_lb_gpu_22vulkan_api_version_1_0,4,2

