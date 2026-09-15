    .text

    .p2align 4
    .globl lb_gpu_15vulkan_bindings_0init
lb_gpu_15vulkan_bindings_0init:
    .seh_proc lb_gpu_15vulkan_bindings_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $192, %rsp
    .seh_stackalloc 192
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 184(%rbp)
    .seh_savereg %rdi, 184
    movq %rsi, 176(%rbp)
    .seh_savereg %rsi, 176
    movdqu %xmm6, 160(%rbp)
    .seh_savexmm %xmm6, 160
    movdqu %xmm7, 144(%rbp)
    .seh_savexmm %xmm7, 144
    movdqu %xmm8, 128(%rbp)
    .seh_savexmm %xmm8, 128
    movdqu %xmm9, 112(%rbp)
    .seh_savexmm %xmm9, 112
    movdqu %xmm10, 96(%rbp)
    .seh_savexmm %xmm10, 96
    movdqu %xmm11, 80(%rbp)
    .seh_savexmm %xmm11, 80
    movdqu %xmm12, 64(%rbp)
    .seh_savexmm %xmm12, 64
    movdqu %xmm13, 48(%rbp)
    .seh_savexmm %xmm13, 48
    movdqu %xmm14, 32(%rbp)
    .seh_savexmm %xmm14, 32
    movdqu %xmm15, 16(%rbp)
    .seh_savexmm %xmm15, 16
    movq %rbx, 8(%rbp)
    .seh_savereg %rbx, 8
    movq %r12, 0(%rbp)
    .seh_savereg %r12, 0
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
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
    movq 184(%rbp), %rdi
    movq 176(%rbp), %rsi
    movdqu 160(%rbp), %xmm6
    movdqu 144(%rbp), %xmm7
    movdqu 128(%rbp), %xmm8
    movdqu 112(%rbp), %xmm9
    movdqu 96(%rbp), %xmm10
    movdqu 80(%rbp), %xmm11
    movdqu 64(%rbp), %xmm12
    movdqu 48(%rbp), %xmm13
    movdqu 32(%rbp), %xmm14
    movdqu 16(%rbp), %xmm15
    movq 8(%rbp), %rbx
    movq 0(%rbp), %r12
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_15vulkan_bindings_0init
    .text

    .section .rdata,"dr"
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

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
    .p2align 2
lb_gpu_36VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT:
    .zero 4

    .bss
    .globl lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
    .p2align 2
lb_gpu_44VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT:
    .zero 4

    .bss
    .globl lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR
    .p2align 2
lb_gpu_27VK_ATTACHMENT_LOAD_OP_CLEAR:
    .zero 4

    .bss
    .globl lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE
    .p2align 2
lb_gpu_31VK_ATTACHMENT_LOAD_OP_DONT_CARE:
    .zero 4

    .bss
    .globl lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE
    .p2align 2
lb_gpu_32VK_ATTACHMENT_STORE_OP_DONT_CARE:
    .zero 4

    .bss
    .globl lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE
    .p2align 2
lb_gpu_28VK_ATTACHMENT_STORE_OP_STORE:
    .zero 4

    .bss
    .globl lb_gpu_19VK_BLEND_FACTOR_ONE
    .p2align 2
lb_gpu_19VK_BLEND_FACTOR_ONE:
    .zero 4

    .bss
    .globl lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    .p2align 2
lb_gpu_35VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA:
    .zero 4

    .bss
    .globl lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA
    .p2align 2
lb_gpu_25VK_BLEND_FACTOR_SRC_ALPHA:
    .zero 4

    .bss
    .globl lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
    .p2align 2
lb_gpu_34VK_BUFFER_USAGE_STORAGE_BUFFER_BIT:
    .zero 4

    .bss
    .globl lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    .p2align 2
lb_gpu_33VK_BUFFER_USAGE_VERTEX_BUFFER_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_A_BIT
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_A_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_B_BIT
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_B_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_G_BIT
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_G_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_COLOR_COMPONENT_R_BIT
    .p2align 2
lb_gpu_24VK_COLOR_COMPONENT_R_BIT:
    .zero 4

    .bss
    .globl lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
    .p2align 2
lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR:
    .zero 4

    .bss
    .globl lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    .p2align 2
lb_gpu_43VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_18VK_COMPARE_OP_LESS
    .p2align 2
lb_gpu_18VK_COMPARE_OP_LESS:
    .zero 4

    .bss
    .globl lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
    .p2align 2
lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR:
    .zero 4

    .bss
    .globl lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
    .p2align 2
lb_gpu_33VK_DESCRIPTOR_TYPE_STORAGE_BUFFER:
    .zero 4

    .bss
    .globl lb_gpu_24VK_DYNAMIC_STATE_SCISSOR
    .p2align 2
lb_gpu_24VK_DYNAMIC_STATE_SCISSOR:
    .zero 4

    .bss
    .globl lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT
    .p2align 2
lb_gpu_25VK_DYNAMIC_STATE_VIEWPORT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR
    .p2align 2
lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR:
    .zero 4

    .bss
    .globl lb_gpu_8VK_FALSE
    .p2align 2
lb_gpu_8VK_FALSE:
    .zero 4

    .bss
    .globl lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB
    .p2align 2
lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB:
    .zero 4

    .bss
    .globl lb_gpu_20VK_FORMAT_D32_SFLOAT
    .p2align 2
lb_gpu_20VK_FORMAT_D32_SFLOAT:
    .zero 4

    .bss
    .globl lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
    .p2align 2
lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT
    .p2align 2
lb_gpu_29VK_FORMAT_R32G32B32A32_SFLOAT:
    .zero 4

    .bss
    .globl lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB
    .p2align 2
lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB:
    .zero 4

    .bss
    .globl lb_gpu_19VK_FORMAT_UNDEFINED
    .p2align 2
lb_gpu_19VK_FORMAT_UNDEFINED:
    .zero 4

    .bss
    .globl lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT
    .p2align 2
lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT:
    .zero 4

    .bss
    .globl lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT
    .p2align 2
lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT:
    .zero 4

    .bss
    .globl lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
    .p2align 2
lb_gpu_40VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL:
    .zero 4

    .bss
    .globl lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    .p2align 2
lb_gpu_48VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL:
    .zero 4

    .bss
    .globl lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
    .p2align 2
lb_gpu_31VK_IMAGE_LAYOUT_PRESENT_SRC_KHR:
    .zero 4

    .bss
    .globl lb_gpu_16VK_IMAGE_TYPE_2D
    .p2align 2
lb_gpu_16VK_IMAGE_TYPE_2D:
    .zero 4

    .bss
    .globl lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
    .p2align 2
lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
    .p2align 2
lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_21VK_IMAGE_VIEW_TYPE_2D
    .p2align 2
lb_gpu_21VK_IMAGE_VIEW_TYPE_2D:
    .zero 4

    .bss
    .globl lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    .p2align 3
lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME:
    .zero 8

    .bss
    .globl lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME
    .p2align 3
lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME:
    .zero 8

    .bss
    .globl lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    .p2align 3
lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME:
    .zero 8

    .bss
    .globl lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
    .p2align 2
lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT:
    .zero 4

    .bss
    .globl lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
    .p2align 2
lb_gpu_36VK_MEMORY_PROPERTY_HOST_COHERENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    .p2align 2
lb_gpu_35VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT:
    .zero 4

    .bss
    .globl lb_gpu_12VK_NOT_READY
    .p2align 2
lb_gpu_12VK_NOT_READY:
    .zero 4

    .bss
    .globl lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS
    .p2align 2
lb_gpu_31VK_PIPELINE_BIND_POINT_GRAPHICS:
    .zero 4

    .bss
    .globl lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
    .p2align 2
lb_gpu_45VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
    .p2align 2
lb_gpu_42VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT:
    .zero 4

    .bss
    .globl lb_gpu_24VK_PRESENT_MODE_FIFO_KHR
    .p2align 2
lb_gpu_24VK_PRESENT_MODE_FIFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
    .p2align 2
lb_gpu_35VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST:
    .zero 4

    .bss
    .globl lb_gpu_21VK_QUEUE_GRAPHICS_BIT
    .p2align 2
lb_gpu_21VK_QUEUE_GRAPHICS_BIT:
    .zero 4

    .bss
    .globl lb_gpu_21VK_SAMPLE_COUNT_1_BIT
    .p2align 2
lb_gpu_21VK_SAMPLE_COUNT_1_BIT:
    .zero 4

    .bss
    .globl lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT
    .p2align 2
lb_gpu_28VK_SHADER_STAGE_FRAGMENT_BIT:
    .zero 4

    .bss
    .globl lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT
    .p2align 2
lb_gpu_26VK_SHADER_STAGE_VERTEX_BIT:
    .zero 4

    .bss
    .globl lb_gpu_17VK_SUBOPTIMAL_KHR
    .p2align 2
lb_gpu_17VK_SUBOPTIMAL_KHR:
    .zero 4

    .bss
    .globl lb_gpu_26VK_SUBPASS_CONTENTS_INLINE
    .p2align 2
lb_gpu_26VK_SUBPASS_CONTENTS_INLINE:
    .zero 4

    .bss
    .globl lb_gpu_19VK_SUBPASS_EXTERNAL
    .p2align 2
lb_gpu_19VK_SUBPASS_EXTERNAL:
    .zero 4

    .bss
    .globl lb_gpu_10VK_SUCCESS
    .p2align 2
lb_gpu_10VK_SUCCESS:
    .zero 4

    .bss
    .globl lb_gpu_10VK_TIMEOUT
    .p2align 2
lb_gpu_10VK_TIMEOUT:
    .zero 4

    .bss
    .globl lb_gpu_7VK_TRUE
    .p2align 2
lb_gpu_7VK_TRUE:
    .zero 4

    .bss
    .globl lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO
    .p2align 2
lb_gpu_34VK_STRUCTURE_TYPE_APPLICATION_INFO:
    .zero 4

    .bss
    .globl lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
    .p2align 2
lb_gpu_36VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
    .p2align 2
lb_gpu_46VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    .p2align 2
lb_gpu_43VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO:
    .zero 4

    .bss
    .globl lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
    .p2align 2
lb_gpu_49VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
    .p2align 2
lb_gpu_42VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
    .p2align 2
lb_gpu_37VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET:
    .zero 4

    .bss
    .globl lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
    .p2align 2
lb_gpu_45VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
    .p2align 2
lb_gpu_46VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
    .p2align 2
lb_gpu_51VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
    .p2align 2
lb_gpu_36VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
    .p2align 2
lb_gpu_42VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
    .p2align 2
lb_gpu_35VK_STRUCTURE_TYPE_FENCE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
    .p2align 2
lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
    .p2align 2
lb_gpu_47VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
    .p2align 2
lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
    .p2align 2
lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    .p2align 2
lb_gpu_38VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
    .p2align 2
lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
    .p2align 2
lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
    .p2align 2
lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
    .p2align 2
lb_gpu_52VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
    .p2align 2
lb_gpu_59VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
    .p2align 2
lb_gpu_45VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
    .p2align 2
lb_gpu_56VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
    .p2align 2
lb_gpu_58VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
    .p2align 2
lb_gpu_51VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
    .p2align 2
lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
    .p2align 2
lb_gpu_57VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
    .p2align 2
lb_gpu_53VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
    .p2align 2
lb_gpu_34VK_STRUCTURE_TYPE_PRESENT_INFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
    .p2align 2
lb_gpu_40VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO:
    .zero 4

    .bss
    .globl lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
    .p2align 2
lb_gpu_41VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    .p2align 2
lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
    .p2align 2
lb_gpu_43VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO:
    .zero 4

    .bss
    .globl lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO
    .p2align 2
lb_gpu_29VK_STRUCTURE_TYPE_SUBMIT_INFO:
    .zero 4

    .bss
    .globl lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
    .p2align 2
lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
    .p2align 2
lb_gpu_47VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR:
    .zero 4

    .bss
    .globl lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
    .p2align 2
lb_gpu_38VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET:
    .zero 4
