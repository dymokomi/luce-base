    .text

    .p2align 4
    .globl lb_gpu_15vulkan_bindings_0init
    .type lb_gpu_15vulkan_bindings_0init, @function
lb_gpu_15vulkan_bindings_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT(%rip), %rbx
    movl $256, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT(%rip), %rbx
    movl $1024, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_19VK_BLEND_FACTOR_ONE(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA(%rip), %rbx
    movl $7, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA(%rip), %rbx
    movl $6, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT(%rip), %rbx
    movl $32, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT(%rip), %rbx
    movl $128, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_COLOR_COMPONENT_A_BIT(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_COLOR_COMPONENT_B_BIT(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_COLOR_COMPONENT_G_BIT(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_COLOR_COMPONENT_R_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_18VK_COMPARE_OP_LESS(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER(%rip), %rbx
    movl $7, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_DYNAMIC_STATE_SCISSOR(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR(%rip), %rbx
    movl $3294966292, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_8VK_FALSE(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB(%rip), %rbx
    movl $50, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_20VK_FORMAT_D32_SFLOAT(%rip), %rbx
    movl $126, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT(%rip), %rbx
    movl $512, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT(%rip), %rbx
    movl $109, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB(%rip), %rbx
    movl $43, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_19VK_FORMAT_UNDEFINED(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR(%rip), %rbx
    movl $1000001002, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_16VK_IMAGE_TYPE_2D(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT(%rip), %rbx
    movl $32, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_21VK_IMAGE_VIEW_TYPE_2D(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_0(%rip), %rbx
    leaq lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME(%rip), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq .Ltext_1(%rip), %rbx
    leaq lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME(%rip), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq .Ltext_2(%rip), %rbx
    leaq lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME(%rip), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_12VK_NOT_READY(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT(%rip), %rbx
    movl $1024, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT(%rip), %rbx
    movl $256, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_24VK_PRESENT_MODE_FIFO_KHR(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_21VK_QUEUE_GRAPHICS_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_21VK_SAMPLE_COUNT_1_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_17VK_SUBOPTIMAL_KHR(%rip), %rbx
    movl $1000001003, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_26VK_SUBPASS_CONTENTS_INLINE(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_19VK_SUBPASS_EXTERNAL(%rip), %rbx
    movl $4294967295, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_10VK_SUCCESS(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_10VK_TIMEOUT(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_7VK_TRUE(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO(%rip), %rbx
    movl $12, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO(%rip), %rbx
    movl $40, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO(%rip), %rbx
    movl $42, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO(%rip), %rbx
    movl $41, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO(%rip), %rbx
    movl $39, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET(%rip), %rbx
    movl $36, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO(%rip), %rbx
    movl $33, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO(%rip), %rbx
    movl $34, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO(%rip), %rbx
    movl $32, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO(%rip), %rbx
    movl $37, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO(%rip), %rbx
    movl $28, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO(%rip), %rbx
    movl $14, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO(%rip), %rbx
    movl $15, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO(%rip), %rbx
    movl $5, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO(%rip), %rbx
    movl $26, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO(%rip), %rbx
    movl $25, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO(%rip), %rbx
    movl $27, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO(%rip), %rbx
    movl $20, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO(%rip), %rbx
    movl $30, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO(%rip), %rbx
    movl $24, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO(%rip), %rbx
    movl $23, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO(%rip), %rbx
    movl $18, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO(%rip), %rbx
    movl $21, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO(%rip), %rbx
    movl $19, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO(%rip), %rbx
    movl $22, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR(%rip), %rbx
    movl $1000001001, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO(%rip), %rbx
    movl $43, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO(%rip), %rbx
    movl $38, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO(%rip), %rbx
    movl $9, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR(%rip), %rbx
    movl $1000001000, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR(%rip), %rbx
    movl $1000009000, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET(%rip), %rbx
    movl $35, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_15vulkan_bindings_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "VK_KHR_surface"
.Ltext_1:
    .asciz "VK_KHR_swapchain"
.Ltext_2:
    .asciz "VK_KHR_win32_surface"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
    .type lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT, @object
    .p2align 2
lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT:
    .zero 4

    .bss
    .globl lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
    .type lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT, @object
    .p2align 2
lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT:
    .zero 4

    .bss
    .globl lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR
    .type lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR, @object
    .p2align 2
lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR:
    .zero 4

    .bss
    .globl lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE
    .type lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE, @object
    .p2align 2
lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE:
    .zero 4

    .bss
    .globl lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE
    .type lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE, @object
    .p2align 2
lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE:
    .zero 4

    .bss
    .globl lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE
    .type lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE, @object
    .p2align 2
lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE:
    .zero 4

    .bss
    .globl lb_gpu_19VK_BLEND_FACTOR_ONE
    .type lb_gpu_19VK_BLEND_FACTOR_ONE, @object
    .p2align 2
lb_gpu_19VK_BLEND_FACTOR_ONE:
    .zero 4

    .bss
    .globl lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    .type lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA, @object
    .p2align 2
lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA:
    .zero 4

    .bss
    .globl lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA
    .type lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA, @object
    .p2align 2
lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA:
    .zero 4

    .bss
    .globl lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
    .type lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT, @object
    .p2align 2
lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT:
    .zero 4

    .bss
    .globl lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    .type lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT, @object
    .p2align 2
lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_A_BIT
    .type lb_gpu_24VK_COLOR_COMPONENT_A_BIT, @object
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_A_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_B_BIT
    .type lb_gpu_24VK_COLOR_COMPONENT_B_BIT, @object
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_B_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_G_BIT
    .type lb_gpu_24VK_COLOR_COMPONENT_G_BIT, @object
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_G_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_R_BIT
    .type lb_gpu_24VK_COLOR_COMPONENT_R_BIT, @object
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_R_BIT:
    .zero 4

    .bss
    .globl lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
    .type lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR, @object
    .p2align 2
lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR:
    .zero 4

    .bss
    .globl lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    .type lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT, @object
    .p2align 2
lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_18VK_COMPARE_OP_LESS
    .type lb_gpu_18VK_COMPARE_OP_LESS, @object
    .p2align 2
lb_gpu_18VK_COMPARE_OP_LESS:
    .zero 4

    .bss
    .globl lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
    .type lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR, @object
    .p2align 2
lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR:
    .zero 4

    .bss
    .globl lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
    .type lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, @object
    .p2align 2
lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER:
    .zero 4

    .bss
    .globl lb_gpu_24VK_DYNAMIC_STATE_SCISSOR
    .type lb_gpu_24VK_DYNAMIC_STATE_SCISSOR, @object
    .p2align 2
lb_gpu_24VK_DYNAMIC_STATE_SCISSOR:
    .zero 4

    .bss
    .globl lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT
    .type lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT, @object
    .p2align 2
lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR
    .type lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR, @object
    .p2align 2
lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR:
    .zero 4

    .bss
    .globl lb_gpu_8VK_FALSE
    .type lb_gpu_8VK_FALSE, @object
    .p2align 2
lb_gpu_8VK_FALSE:
    .zero 4

    .bss
    .globl lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB
    .type lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB, @object
    .p2align 2
lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB:
    .zero 4

    .bss
    .globl lb_gpu_20VK_FORMAT_D32_SFLOAT
    .type lb_gpu_20VK_FORMAT_D32_SFLOAT, @object
    .p2align 2
lb_gpu_20VK_FORMAT_D32_SFLOAT:
    .zero 4

    .bss
    .globl lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
    .type lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT, @object
    .p2align 2
lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT
    .type lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT, @object
    .p2align 2
lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT:
    .zero 4

    .bss
    .globl lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB
    .type lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB, @object
    .p2align 2
lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB:
    .zero 4

    .bss
    .globl lb_gpu_19VK_FORMAT_UNDEFINED
    .type lb_gpu_19VK_FORMAT_UNDEFINED, @object
    .p2align 2
lb_gpu_19VK_FORMAT_UNDEFINED:
    .zero 4

    .bss
    .globl lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT
    .type lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT, @object
    .p2align 2
lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT:
    .zero 4

    .bss
    .globl lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT
    .type lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT, @object
    .p2align 2
lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT:
    .zero 4

    .bss
    .globl lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
    .type lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL, @object
    .p2align 2
lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL:
    .zero 4

    .bss
    .globl lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    .type lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL, @object
    .p2align 2
lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL:
    .zero 4

    .bss
    .globl lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
    .type lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR, @object
    .p2align 2
lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR:
    .zero 4

    .bss
    .globl lb_gpu_16VK_IMAGE_TYPE_2D
    .type lb_gpu_16VK_IMAGE_TYPE_2D, @object
    .p2align 2
lb_gpu_16VK_IMAGE_TYPE_2D:
    .zero 4

    .bss
    .globl lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
    .type lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT, @object
    .p2align 2
lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
    .type lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT, @object
    .p2align 2
lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_21VK_IMAGE_VIEW_TYPE_2D
    .type lb_gpu_21VK_IMAGE_VIEW_TYPE_2D, @object
    .p2align 2
lb_gpu_21VK_IMAGE_VIEW_TYPE_2D:
    .zero 4

    .bss
    .globl lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    .type lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME, @object
    .p2align 3
lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME:
    .zero 8

    .bss
    .globl lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME
    .type lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME, @object
    .p2align 3
lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME:
    .zero 8

    .bss
    .globl lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    .type lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME, @object
    .p2align 3
lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME:
    .zero 8

    .bss
    .globl lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
    .type lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT, @object
    .p2align 2
lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT:
    .zero 4

    .bss
    .globl lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
    .type lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, @object
    .p2align 2
lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    .type lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, @object
    .p2align 2
lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT:
    .zero 4

    .bss
    .globl lb_gpu_12VK_NOT_READY
    .type lb_gpu_12VK_NOT_READY, @object
    .p2align 2
lb_gpu_12VK_NOT_READY:
    .zero 4

    .bss
    .globl lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS
    .type lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS, @object
    .p2align 2
lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS:
    .zero 4

    .bss
    .globl lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
    .type lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT, @object
    .p2align 2
lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
    .type lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT, @object
    .p2align 2
lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_PRESENT_MODE_FIFO_KHR
    .type lb_gpu_24VK_PRESENT_MODE_FIFO_KHR, @object
    .p2align 2
lb_gpu_24VK_PRESENT_MODE_FIFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
    .type lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST, @object
    .p2align 2
lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST:
    .zero 4

    .bss
    .globl lb_gpu_21VK_QUEUE_GRAPHICS_BIT
    .type lb_gpu_21VK_QUEUE_GRAPHICS_BIT, @object
    .p2align 2
lb_gpu_21VK_QUEUE_GRAPHICS_BIT:
    .zero 4

    .bss
    .globl lb_gpu_21VK_SAMPLE_COUNT_1_BIT
    .type lb_gpu_21VK_SAMPLE_COUNT_1_BIT, @object
    .p2align 2
lb_gpu_21VK_SAMPLE_COUNT_1_BIT:
    .zero 4

    .bss
    .globl lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT
    .type lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT, @object
    .p2align 2
lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT
    .type lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT, @object
    .p2align 2
lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT:
    .zero 4

    .bss
    .globl lb_gpu_17VK_SUBOPTIMAL_KHR
    .type lb_gpu_17VK_SUBOPTIMAL_KHR, @object
    .p2align 2
lb_gpu_17VK_SUBOPTIMAL_KHR:
    .zero 4

    .bss
    .globl lb_gpu_26VK_SUBPASS_CONTENTS_INLINE
    .type lb_gpu_26VK_SUBPASS_CONTENTS_INLINE, @object
    .p2align 2
lb_gpu_26VK_SUBPASS_CONTENTS_INLINE:
    .zero 4

    .bss
    .globl lb_gpu_19VK_SUBPASS_EXTERNAL
    .type lb_gpu_19VK_SUBPASS_EXTERNAL, @object
    .p2align 2
lb_gpu_19VK_SUBPASS_EXTERNAL:
    .zero 4

    .bss
    .globl lb_gpu_10VK_SUCCESS
    .type lb_gpu_10VK_SUCCESS, @object
    .p2align 2
lb_gpu_10VK_SUCCESS:
    .zero 4

    .bss
    .globl lb_gpu_10VK_TIMEOUT
    .type lb_gpu_10VK_TIMEOUT, @object
    .p2align 2
lb_gpu_10VK_TIMEOUT:
    .zero 4

    .bss
    .globl lb_gpu_7VK_TRUE
    .type lb_gpu_7VK_TRUE, @object
    .p2align 2
lb_gpu_7VK_TRUE:
    .zero 4

    .bss
    .globl lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO
    .type lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO, @object
    .p2align 2
lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO:
    .zero 4

    .bss
    .globl lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
    .type lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO, @object
    .p2align 2
lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
    .type lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO, @object
    .p2align 2
lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    .type lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO, @object
    .p2align 2
lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO:
    .zero 4

    .bss
    .globl lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
    .type lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO, @object
    .p2align 2
lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
    .type lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO, @object
    .p2align 2
lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
    .type lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET, @object
    .p2align 2
lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET:
    .zero 4

    .bss
    .globl lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
    .type lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO, @object
    .p2align 2
lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
    .type lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO, @object
    .p2align 2
lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
    .type lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO, @object
    .p2align 2
lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
    .type lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO, @object
    .p2align 2
lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
    .type lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO, @object
    .p2align 2
lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
    .type lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO, @object
    .p2align 2
lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
    .type lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO, @object
    .p2align 2
lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
    .type lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO, @object
    .p2align 2
lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
    .type lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO, @object
    .p2align 2
lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
    .type lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO, @object
    .p2align 2
lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    .type lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO, @object
    .p2align 2
lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
    .type lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO, @object
    .p2align 2
lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
    .type lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
    .type lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
    .type lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
    .type lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
    .type lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO, @object
    .p2align 2
lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
    .type lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
    .type lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
    .type lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO, @object
    .p2align 2
lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
    .type lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
    .type lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
    .type lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO, @object
    .p2align 2
lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
    .type lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR, @object
    .p2align 2
lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
    .type lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO, @object
    .p2align 2
lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO:
    .zero 4

    .bss
    .globl lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
    .type lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO, @object
    .p2align 2
lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    .type lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO, @object
    .p2align 2
lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
    .type lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO, @object
    .p2align 2
lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO
    .type lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO, @object
    .p2align 2
lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO:
    .zero 4

    .bss
    .globl lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
    .type lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR, @object
    .p2align 2
lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
    .type lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR, @object
    .p2align 2
lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
    .type lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET, @object
    .p2align 2
lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET:
    .zero 4

    .section .note.GNU-stack,"",@progbits
