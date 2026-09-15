    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_15vulkan_bindings_0init
_lb_gpu_15vulkan_bindings_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
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
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    adrp x15, _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME@PAGE
    add x15, x15, _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME@PAGEOFF
    str x14, [x15]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    adrp x15, _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME@PAGE
    add x15, x15, _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME@PAGEOFF
    str x14, [x15]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    adrp x15, _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME@PAGE
    add x15, x15, _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME@PAGEOFF
    str x14, [x15]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_15vulkan_bindings_0init

    .section __TEXT,__const
l_text_0:
    .asciz "VK_KHR_surface"
l_text_1:
    .asciz "VK_KHR_swapchain"
l_text_2:
    .asciz "VK_KHR_win32_surface"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
    .weak_definition _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
    .no_dead_strip _lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
_lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
    .weak_definition _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
    .no_dead_strip _lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
_lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR
    .weak_definition _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR
    .no_dead_strip _lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR
_lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE
    .weak_definition _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE
    .no_dead_strip _lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE
_lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE
    .weak_definition _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE
    .no_dead_strip _lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE
_lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE
    .weak_definition _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE
    .no_dead_strip _lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE
_lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_19VK_BLEND_FACTOR_ONE
    .weak_definition _lb_gpu_19VK_BLEND_FACTOR_ONE
    .no_dead_strip _lb_gpu_19VK_BLEND_FACTOR_ONE
_lb_gpu_19VK_BLEND_FACTOR_ONE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    .weak_definition _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    .no_dead_strip _lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
_lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA
    .weak_definition _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA
    .no_dead_strip _lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA
_lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
    .weak_definition _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
    .no_dead_strip _lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
_lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    .weak_definition _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    .no_dead_strip _lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
_lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_A_BIT
    .weak_definition _lb_gpu_24VK_COLOR_COMPONENT_A_BIT
    .no_dead_strip _lb_gpu_24VK_COLOR_COMPONENT_A_BIT
_lb_gpu_24VK_COLOR_COMPONENT_A_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_B_BIT
    .weak_definition _lb_gpu_24VK_COLOR_COMPONENT_B_BIT
    .no_dead_strip _lb_gpu_24VK_COLOR_COMPONENT_B_BIT
_lb_gpu_24VK_COLOR_COMPONENT_B_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_G_BIT
    .weak_definition _lb_gpu_24VK_COLOR_COMPONENT_G_BIT
    .no_dead_strip _lb_gpu_24VK_COLOR_COMPONENT_G_BIT
_lb_gpu_24VK_COLOR_COMPONENT_G_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_COLOR_COMPONENT_R_BIT
    .weak_definition _lb_gpu_24VK_COLOR_COMPONENT_R_BIT
    .no_dead_strip _lb_gpu_24VK_COLOR_COMPONENT_R_BIT
_lb_gpu_24VK_COLOR_COMPONENT_R_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
    .weak_definition _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
    .no_dead_strip _lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
_lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    .weak_definition _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    .no_dead_strip _lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
_lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_18VK_COMPARE_OP_LESS
    .weak_definition _lb_gpu_18VK_COMPARE_OP_LESS
    .no_dead_strip _lb_gpu_18VK_COMPARE_OP_LESS
_lb_gpu_18VK_COMPARE_OP_LESS:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
    .weak_definition _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
    .no_dead_strip _lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
_lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
    .weak_definition _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
    .no_dead_strip _lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
_lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR
    .weak_definition _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR
    .no_dead_strip _lb_gpu_24VK_DYNAMIC_STATE_SCISSOR
_lb_gpu_24VK_DYNAMIC_STATE_SCISSOR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT
    .weak_definition _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT
    .no_dead_strip _lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT
_lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR
    .weak_definition _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR
    .no_dead_strip _lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR
_lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_8VK_FALSE
    .weak_definition _lb_gpu_8VK_FALSE
    .no_dead_strip _lb_gpu_8VK_FALSE
_lb_gpu_8VK_FALSE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB
    .weak_definition _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB
    .no_dead_strip _lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB
_lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_20VK_FORMAT_D32_SFLOAT
    .weak_definition _lb_gpu_20VK_FORMAT_D32_SFLOAT
    .no_dead_strip _lb_gpu_20VK_FORMAT_D32_SFLOAT
_lb_gpu_20VK_FORMAT_D32_SFLOAT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
    .weak_definition _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
    .no_dead_strip _lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
_lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT
    .weak_definition _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT
    .no_dead_strip _lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT
_lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB
    .weak_definition _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB
    .no_dead_strip _lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB
_lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_19VK_FORMAT_UNDEFINED
    .weak_definition _lb_gpu_19VK_FORMAT_UNDEFINED
    .no_dead_strip _lb_gpu_19VK_FORMAT_UNDEFINED
_lb_gpu_19VK_FORMAT_UNDEFINED:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT
    .weak_definition _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT
    .no_dead_strip _lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT
_lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT
    .weak_definition _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT
    .no_dead_strip _lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT
_lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
    .weak_definition _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
    .no_dead_strip _lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
_lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    .weak_definition _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    .no_dead_strip _lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
_lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
    .weak_definition _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
    .no_dead_strip _lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
_lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_16VK_IMAGE_TYPE_2D
    .weak_definition _lb_gpu_16VK_IMAGE_TYPE_2D
    .no_dead_strip _lb_gpu_16VK_IMAGE_TYPE_2D
_lb_gpu_16VK_IMAGE_TYPE_2D:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
    .weak_definition _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
    .no_dead_strip _lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
_lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
    .weak_definition _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
    .no_dead_strip _lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
_lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D
    .weak_definition _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D
    .no_dead_strip _lb_gpu_21VK_IMAGE_VIEW_TYPE_2D
_lb_gpu_21VK_IMAGE_VIEW_TYPE_2D:
    .zero 4
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    .weak_definition _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    .no_dead_strip _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
_lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME:
    .zero 8
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME
    .weak_definition _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME
    .no_dead_strip _lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME
_lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME:
    .zero 8
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    .weak_definition _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    .no_dead_strip _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
_lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME:
    .zero 8
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
    .weak_definition _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
    .no_dead_strip _lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
_lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
    .weak_definition _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
    .no_dead_strip _lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
_lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    .weak_definition _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    .no_dead_strip _lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
_lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_12VK_NOT_READY
    .weak_definition _lb_gpu_12VK_NOT_READY
    .no_dead_strip _lb_gpu_12VK_NOT_READY
_lb_gpu_12VK_NOT_READY:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS
    .weak_definition _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS
    .no_dead_strip _lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS
_lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
    .weak_definition _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
    .no_dead_strip _lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
_lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
    .weak_definition _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
    .no_dead_strip _lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
_lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR
    .weak_definition _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR
    .no_dead_strip _lb_gpu_24VK_PRESENT_MODE_FIFO_KHR
_lb_gpu_24VK_PRESENT_MODE_FIFO_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
    .weak_definition _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
    .no_dead_strip _lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
_lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_21VK_QUEUE_GRAPHICS_BIT
    .weak_definition _lb_gpu_21VK_QUEUE_GRAPHICS_BIT
    .no_dead_strip _lb_gpu_21VK_QUEUE_GRAPHICS_BIT
_lb_gpu_21VK_QUEUE_GRAPHICS_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_21VK_SAMPLE_COUNT_1_BIT
    .weak_definition _lb_gpu_21VK_SAMPLE_COUNT_1_BIT
    .no_dead_strip _lb_gpu_21VK_SAMPLE_COUNT_1_BIT
_lb_gpu_21VK_SAMPLE_COUNT_1_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT
    .weak_definition _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT
    .no_dead_strip _lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT
_lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT
    .weak_definition _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT
    .no_dead_strip _lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT
_lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_17VK_SUBOPTIMAL_KHR
    .weak_definition _lb_gpu_17VK_SUBOPTIMAL_KHR
    .no_dead_strip _lb_gpu_17VK_SUBOPTIMAL_KHR
_lb_gpu_17VK_SUBOPTIMAL_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE
    .weak_definition _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE
    .no_dead_strip _lb_gpu_26VK_SUBPASS_CONTENTS_INLINE
_lb_gpu_26VK_SUBPASS_CONTENTS_INLINE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_19VK_SUBPASS_EXTERNAL
    .weak_definition _lb_gpu_19VK_SUBPASS_EXTERNAL
    .no_dead_strip _lb_gpu_19VK_SUBPASS_EXTERNAL
_lb_gpu_19VK_SUBPASS_EXTERNAL:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_10VK_SUCCESS
    .weak_definition _lb_gpu_10VK_SUCCESS
    .no_dead_strip _lb_gpu_10VK_SUCCESS
_lb_gpu_10VK_SUCCESS:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_10VK_TIMEOUT
    .weak_definition _lb_gpu_10VK_TIMEOUT
    .no_dead_strip _lb_gpu_10VK_TIMEOUT
_lb_gpu_10VK_TIMEOUT:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_7VK_TRUE
    .weak_definition _lb_gpu_7VK_TRUE
    .no_dead_strip _lb_gpu_7VK_TRUE
_lb_gpu_7VK_TRUE:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO
    .weak_definition _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO
    .no_dead_strip _lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO
_lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
    .weak_definition _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
    .no_dead_strip _lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
_lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
    .weak_definition _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
    .no_dead_strip _lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
_lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    .weak_definition _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    .no_dead_strip _lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
_lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
    .weak_definition _lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
_lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
    .weak_definition _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
    .no_dead_strip _lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
_lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
    .weak_definition _lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
_lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
    .weak_definition _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
    .no_dead_strip _lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
_lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
    .weak_definition _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
    .no_dead_strip _lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
_lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
    .weak_definition _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
    .no_dead_strip _lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
_lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
    .weak_definition _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
    .no_dead_strip _lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
_lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
    .weak_definition _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
    .no_dead_strip _lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
_lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
    .weak_definition _lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
_lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
    .weak_definition _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
    .no_dead_strip _lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
_lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
    .weak_definition _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
    .no_dead_strip _lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
_lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
    .weak_definition _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
    .no_dead_strip _lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
_lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
    .weak_definition _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
    .no_dead_strip _lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
_lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    .weak_definition _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    .no_dead_strip _lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
_lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
    .weak_definition _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
    .no_dead_strip _lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
_lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
    .weak_definition _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
_lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
    .weak_definition _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
_lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
    .weak_definition _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
_lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
    .weak_definition _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
_lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
    .weak_definition _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
    .no_dead_strip _lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
_lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
    .weak_definition _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
_lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
    .weak_definition _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
_lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
    .weak_definition _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
    .no_dead_strip _lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
_lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
    .weak_definition _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
_lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
    .weak_definition _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
_lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
    .weak_definition _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
    .no_dead_strip _lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
_lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
    .weak_definition _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
    .no_dead_strip _lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
_lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
    .weak_definition _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
    .no_dead_strip _lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
_lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
    .weak_definition _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
    .no_dead_strip _lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
_lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    .weak_definition _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    .no_dead_strip _lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
_lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
    .weak_definition _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
    .no_dead_strip _lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
_lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO
    .weak_definition _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO
    .no_dead_strip _lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO
_lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
    .weak_definition _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
    .no_dead_strip _lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
_lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
    .weak_definition _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
    .no_dead_strip _lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
_lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
    .weak_definition _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
    .no_dead_strip _lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
_lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET:
    .zero 4

.subsections_via_symbols
