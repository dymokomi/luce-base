    .text

    .p2align 4
    .globl lb_gpu_14vulkan_surface_0init
    .type lb_gpu_14vulkan_surface_0init, @function
lb_gpu_14vulkan_surface_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_17vulkan_image_view
    .type lb_gpu_17vulkan_image_view, @function
lb_gpu_17vulkan_image_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movl %ecx, -128(%rbp)
    movl %r8d, -144(%rbp)
    leaq -224(%rbp), %rbx
    leaq -304(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    leaq lb_gpu_40VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq lb_gpu_21VK_IMAGE_VIEW_TYPE_2D(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq $36, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    leaq -324(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, 16(%r11)
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $56, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl 16(%r10), %eax
    movl %eax, 16(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    leaq -336(%rbp), %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $0, %rdx
    movq %r12, %rcx
    call vkCreateImageView@PLT
    movl %eax, %ebx
    leaq .Ltext_10(%rip), %r13
    leaq -352(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -384(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -384(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_16vulkan_swapchain
    .type lb_gpu_16vulkan_swapchain, @function
lb_gpu_16vulkan_swapchain:
    pushq %rbp
    movq %rsp, %rbp
    subq $3056, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movl %ecx, -128(%rbp)
    movl %r8d, -144(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -2264(%rbp)
    movq -2264(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2272(%rbp)
    movq -2272(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call vkDeviceWaitIdle@PLT
    movl %eax, %r13d
    leaq .Ltext_12(%rip), %r14
    leaq -160(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movl %r13d, %esi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -192(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -192(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -2280(%rbp)
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    leaq -244(%rbp), %rax
    movq %rax, -2288(%rbp)
    movq -2288(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    movq -2264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2296(%rbp)
    movq -2296(%rbp), %r10
    movq (%r10), %r12
    movq -2280(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %r15, %rsi
    movq -2288(%rbp), %rdx
    call vkGetPhysicalDeviceSurfaceCapabilitiesKHR@PLT
    movl %eax, %r12d
    leaq .Ltext_13(%rip), %r15
    leaq -264(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $43, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movl %r12d, %esi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -296(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -296(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_5
    jmp .L2_4
.L2_5:
    leaq -80(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_6:
.L2_4:
    leaq -304(%rbp), %rax
    movq %rax, -2304(%rbp)
    movq -2288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq -2304(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -2304(%rbp), %r10
    movl (%r10), %r14d
    movl $4294967295, %ecx
    cmpl %ecx, %r14d
    jne .L2_8
.L2_7:
    movq -2288(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    leaq -128(%rbp), %rax
    movq %rax, -2312(%rbp)
    movq -2312(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -2320(%rbp)
    movl -2320(%rbp), %eax
    movl %eax, %eax
    movq %rax, -2328(%rbp)
    movq -2288(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2336(%rbp)
    movq -2336(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq -2328(%rbp), %rdi
    movq %r13, %rsi
    call lb_gpu_10canvas_min@PLT
    movq %rax, -2344(%rbp)
    movq %r15, %rdi
    movq -2344(%rbp), %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, -2352(%rbp)
    movl -2352(%rbp), %eax
    movq -2304(%rbp), %r10
    movl %eax, (%r10)
    movq -2304(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $4, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    leaq -144(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq -2336(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %r15, %rdi
    movq %rbx, %rsi
    call lb_gpu_10canvas_min@PLT
    movq %rax, %rbx
    movq %r14, %rdi
    movq %rbx, %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, %rbx
    movq %r13, %r10
    movl %ebx, (%r10)
    movl -2352(%rbp), %eax
    movl %eax, -3056(%rbp)
    jmp .L2_9
.L2_8:
    movl %r14d, %eax
    movl %eax, -3056(%rbp)
.L2_9:
    movl -3056(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_172
    jmp .L2_13
.L2_172:
    movl %r13d, %r14d
    jmp .L2_14
.L2_13:
    movq -2304(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L2_14:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_10
    jmp .L2_11
.L2_10:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_15:
    jmp .L2_12
.L2_11:
.L2_12:
    movl -3056(%rbp), %eax
    movl $16384, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_173
    jmp .L2_19
.L2_173:
    movl %r13d, %r14d
    jmp .L2_20
.L2_19:
    movq -2304(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $16384, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r14d
.L2_20:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_16
    jmp .L2_17
.L2_16:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_17surface_too_large(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq -320(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $63, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_21:
    jmp .L2_18
.L2_17:
.L2_18:
    movq -2288(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    leaq lb_gpu_35VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT(%rip), %rax
    movq %rax, -2360(%rbp)
    movq -2360(%rbp), %r10
    movl (%r10), %r15d
    andl %r15d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_174
    jmp .L2_25
.L2_174:
    movl %r13d, %r15d
    jmp .L2_26
.L2_25:
    movq -2288(%rbp), %rax
    movq $44, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    leaq lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    andl %r15d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L2_26:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L2_22
    jmp .L2_23
.L2_22:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_unavailable(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_15(%rip), %r12
    leaq -336(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $58, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_27:
    jmp .L2_24
.L2_23:
.L2_24:
    leaq -340(%rbp), %rax
    movq %rax, -2368(%rbp)
    movl $0, %eax
    movq -2368(%rbp), %r10
    movl %eax, (%r10)
    movq -2296(%rbp), %r10
    movq (%r10), %r15
    movq -2280(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %rbx, %rsi
    movq -2368(%rbp), %rdx
    movq $0, %rcx
    call vkGetPhysicalDeviceSurfaceFormatsKHR@PLT
    movl %eax, %ebx
    leaq .Ltext_16(%rip), %r15
    leaq -360(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $38, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -392(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -392(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_29
    jmp .L2_28
.L2_29:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_30:
.L2_28:
    leaq -408(%rbp), %rax
    movq %rax, -2928(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -2936(%rbp)
    movq -2368(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, -2944(%rbp)
    leaq -456(%rbp), %rax
    movq %rax, -2952(%rbp)
    movq -2944(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_32
.L2_31:
    movq -2952(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_17(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_33
.L2_32:
    movq -2944(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2936(%rbp), %r10
    movq (%r10), %rbx
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_34
    jmp .L2_35
.L2_35:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_34:
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rsi
    movq %r14, %rdx
    movq $4, %rcx
    leaq -480(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -480(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -2376(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -2376(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -2384(%rbp)
    movl -2384(%rbp), %eax
    testl %eax, %eax
    jne .L2_36
    jmp .L2_37
.L2_36:
    movq -2952(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_33
.L2_37:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -2952(%rbp), %r10
    movq %rbx, (%r10)
    movq -2952(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -2944(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_33:
    movq -2952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_39
    jmp .L2_38
.L2_39:
    movq -2952(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_40:
.L2_38:
    movq -2952(%rbp), %r10
    movq -2928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2296(%rbp), %r10
    movq (%r10), %rbx
    movq -2280(%rbp), %r10
    movq (%r10), %r12
    movq -2928(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2392(%rbp)
    movq %rbx, %rdi
    movq %r12, %rsi
    movq -2368(%rbp), %rdx
    movq -2392(%rbp), %rcx
    call vkGetPhysicalDeviceSurfaceFormatsKHR@PLT
    movl %eax, %ebx
    leaq .Ltext_19(%rip), %r12
    leaq -496(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $30, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -528(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -528(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_42
    jmp .L2_41
.L2_42:
    leaq -80(%rbp), %rax
    movq %rax, -2400(%rbp)
    movq %r12, %r10
    movq -2400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2400(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq -544(%rbp), %r14
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -2392(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %rbx
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_44
    jmp .L2_43
.L2_44:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_43:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq -2400(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_45:
.L2_41:
    movq -2368(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, -2408(%rbp)
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -2416(%rbp)
    leaq lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR(%rip), %rax
    movq %rax, -2424(%rbp)
    leaq lb_gpu_23VK_FORMAT_B8G8R8A8_SRGB(%rip), %rax
    movq %rax, -2432(%rbp)
    leaq lb_gpu_23VK_FORMAT_R8G8B8A8_SRGB(%rip), %rax
    movq %rax, -2440(%rbp)
    leaq lb_gpu_19VK_FORMAT_UNDEFINED(%rip), %rax
    movq %rax, -2448(%rbp)
    movl $0, %eax
    movl %eax, -2960(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L2_46:
    movq -2408(%rbp), %rcx
    cmpq %rcx, %r14
    jb .L2_47
.L2_175:
    movl -2960(%rbp), %eax
    movl %eax, -2968(%rbp)
    jmp .L2_49
.L2_47:
    movq -2416(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r13
    imulq %rcx, %r13
    movq -2392(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq -2424(%rbp), %r10
    movl (%r10), %r15d
    cmpl %r15d, %ebx
    jne .L2_51
.L2_50:
    movq %r13, %r10
    movl (%r10), %ebx
    movq -2432(%rbp), %r10
    movl (%r10), %r15d
    cmpl %r15d, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_176
    jmp .L2_56
.L2_176:
    movl %ebx, %r12d
    jmp .L2_57
.L2_56:
    movq %r13, %r10
    movl (%r10), %ebx
    movq -2440(%rbp), %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r12d
.L2_57:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_53
    jmp .L2_54
.L2_53:
    movq %r13, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl %eax, -2968(%rbp)
    jmp .L2_49
.L2_58:
    jmp .L2_55
.L2_54:
.L2_55:
    movq %r13, %r10
    movl (%r10), %ebx
    movq -2448(%rbp), %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L2_60
.L2_59:
    movl %r15d, %ebx
    jmp .L2_61
.L2_60:
    movl -2960(%rbp), %eax
    movl %eax, %ebx
.L2_61:
    movl %ebx, %r12d
    jmp .L2_52
.L2_51:
    movl -2960(%rbp), %eax
    movl %eax, %r12d
.L2_52:
.L2_48:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl %r12d, %eax
    movl %eax, -2960(%rbp)
    movq %rbx, %r14
    jmp .L2_46
.L2_49:
    movl -2968(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L2_63
.L2_62:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_unavailable(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_25(%rip), %r12
    leaq -560(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -576(%rbp), %r12
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -2392(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r13
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_66
    jmp .L2_65
.L2_66:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L2_65:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_67:
    jmp .L2_64
.L2_63:
.L2_64:
    movq -2288(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movq -2288(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_71
    jmp .L2_177
.L2_177:
    movl %r13d, %r14d
    jmp .L2_72
.L2_71:
    cmpl %r12d, %ebx
    seta %al
    movzbl %al, %r14d
.L2_72:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_68
    jmp .L2_69
.L2_68:
    movl %r12d, %ebx
    jmp .L2_70
.L2_69:
.L2_70:
    leaq -680(%rbp), %r12
    leaq -784(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq $0, 96(%r11)
    leaq lb_gpu_43VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq -2280(%rbp), %r10
    movq (%r10), %r14
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %ebx, (%r10)
    movq $36, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl -2968(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq lb_gpu_33VK_COLOR_SPACE_SRGB_NONLINEAR_KHR(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq $40, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq $44, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -2304(%rbp), %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $52, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq -2360(%rbp), %r10
    movl (%r10), %r14d
    movq $56, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq -2288(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq $80, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    leaq lb_gpu_33VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq $84, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    leaq lb_gpu_24VK_PRESENT_MODE_FIFO_KHR(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq $88, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    leaq lb_gpu_7VK_TRUE(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq $92, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movq 96(%r10), %rax
    movq %rax, 96(%r11)
    movq -2272(%rbp), %r10
    movq (%r10), %r13
    movq -2280(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2456(%rbp)
    movq %r13, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    movq -2456(%rbp), %rcx
    call vkCreateSwapchainKHR@PLT
    movl %eax, %r12d
    leaq .Ltext_28(%rip), %r13
    leaq -800(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $41, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movl %r12d, %esi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -832(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -832(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_74
    jmp .L2_73
.L2_74:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -848(%rbp), %r12
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -2392(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r14
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_76
    jmp .L2_75
.L2_76:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L2_75:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_77:
.L2_73:
    movq -2280(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl -3056(%rbp), %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -2280(%rbp), %rax
    movq $36, %rcx
    addq %rcx, %rax
    movq %rax, -2464(%rbp)
    movq -2304(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -2472(%rbp)
    movq -2472(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -2480(%rbp)
    movl -2480(%rbp), %eax
    movq -2464(%rbp), %r10
    movl %eax, (%r10)
    movq -2280(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl -2968(%rbp), %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq -2264(%rbp), %rax
    leaq -1816(%rbp), %r10
    movq %rax, (%r10)
    movq -2280(%rbp), %rax
    leaq -1832(%rbp), %r10
    movq %rax, (%r10)
    leaq -1848(%rbp), %r15
    movq %r15, %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    movq -2296(%rbp), %r10
    movq (%r10), %r13
    leaq lb_gpu_20VK_FORMAT_D32_SFLOAT(%rip), %rax
    movq %rax, -2856(%rbp)
    movq -2856(%rbp), %r10
    movl (%r10), %r12d
    movq %r13, %rdi
    movl %r12d, %esi
    movq %r15, %rdx
    call vkGetPhysicalDeviceFormatProperties@PLT
    movq $4, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    leaq lb_gpu_46VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_156
.L2_155:
    leaq -1800(%rbp), %rbx
    leaq lb_gpu_unavailable(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_47(%rip), %r12
    leaq -1864(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $56, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_171
.L2_158:
    jmp .L2_157
.L2_156:
.L2_157:
    leaq -1952(%rbp), %rax
    movq %rax, -2864(%rbp)
    leaq -2040(%rbp), %rax
    movq %rax, -2872(%rbp)
    movq -2872(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    leaq lb_gpu_35VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq -2872(%rbp), %r10
    movl %r15d, (%r10)
    leaq lb_gpu_16VK_IMAGE_TYPE_2D(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq -2872(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %r15d, (%r10)
    movq -2856(%rbp), %r10
    movl (%r10), %r12d
    movq -2872(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r12d, (%r10)
    leaq -2056(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    movq %rbx, %r10
    movl (%r10), %r15d
    movq %r12, %r10
    movl %r15d, (%r10)
    movq -2464(%rbp), %r10
    movl (%r10), %r15d
    movq $4, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2880(%rbp)
    movq -2880(%rbp), %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2888(%rbp)
    movl $1, %eax
    movq -2888(%rbp), %r10
    movl %eax, (%r10)
    movq -2872(%rbp), %rax
    movq $28, %rcx
    addq %rcx, %rax
    movq %rax, -2896(%rbp)
    movq %r12, %r10
    movq -2896(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl 8(%r10), %eax
    movl %eax, 8(%r11)
    movq -2872(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -2872(%rbp), %rax
    movq $44, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_gpu_21VK_SAMPLE_COUNT_1_BIT(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq -2872(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -2904(%rbp)
    movq -2904(%rbp), %r10
    movl %r12d, (%r10)
    leaq lb_gpu_43VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq -2872(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, -2912(%rbp)
    movq -2912(%rbp), %r10
    movl %r12d, (%r10)
    movq -2872(%rbp), %r10
    movq -2864(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movq 80(%r10), %rax
    movq %rax, 80(%r11)
    movq -2272(%rbp), %r10
    movq (%r10), %r12
    movq -2280(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -2920(%rbp)
    movq %r12, %rdi
    movq -2864(%rbp), %rsi
    movq $0, %rdx
    movq -2920(%rbp), %rcx
    call vkCreateImage@PLT
    movl %eax, %r12d
    leaq .Ltext_48(%rip), %r15
    leaq -2072(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $43, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movl %r12d, %esi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -2104(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -2104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_160
    jmp .L2_159
.L2_160:
    leaq -1800(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_171
.L2_161:
.L2_159:
    leaq -2128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -2272(%rbp), %r10
    movq (%r10), %r12
    movq -2920(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call vkGetImageMemoryRequirements@PLT
    movq -2280(%rbp), %rax
    movq $96, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_gpu_35VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2264(%rbp), %rsi
    movl %r12d, %edx
    leaq -2168(%rbp), %rdi
    call lb_gpu_13vulkan_memory@PLT
    addq $32, %rsp
    leaq -2168(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_163
    jmp .L2_162
.L2_163:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -1800(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_171
.L2_164:
.L2_162:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -2272(%rbp), %r10
    movq (%r10), %rbx
    movq -2920(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r15, %rsi
    movq %r14, %rdx
    movq $0, %rcx
    call vkBindImageMemory@PLT
    movl %eax, %ebx
    leaq .Ltext_49(%rip), %r14
    leaq -2184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -2216(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -2216(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_166
    jmp .L2_165
.L2_166:
    leaq -1800(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_171
.L2_167:
.L2_165:
    movq -2280(%rbp), %rax
    movq $104, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -2920(%rbp), %r10
    movq (%r10), %rbx
    movq -2856(%rbp), %r10
    movl (%r10), %r12d
    leaq lb_gpu_25VK_IMAGE_ASPECT_DEPTH_BIT(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq -2264(%rbp), %rsi
    movq %rbx, %rdx
    movl %r12d, %ecx
    movl %r13d, %r8d
    leaq -2256(%rbp), %rdi
    call lb_gpu_17vulkan_image_view@PLT
    leaq -2256(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_169
    jmp .L2_168
.L2_169:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -1800(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_171
.L2_170:
.L2_168:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -1800(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_171:
    leaq -880(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_79
    jmp .L2_78
.L2_79:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -896(%rbp), %r13
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -2392(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r14
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_81
    jmp .L2_80
.L2_81:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_80:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_82:
.L2_78:
    movq -2264(%rbp), %rsi
    movq -2280(%rbp), %rdx
    leaq -928(%rbp), %rdi
    call lb_gpu_15vulkan_pipeline@PLT
    leaq -928(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_84
    jmp .L2_83
.L2_84:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -944(%rbp), %r13
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -2392(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r14
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_86
    jmp .L2_85
.L2_86:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_85:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_87:
.L2_83:
    movl $0, %eax
    movq -2368(%rbp), %r10
    movl %eax, (%r10)
    movq -2272(%rbp), %r10
    movq (%r10), %rbx
    movq -2456(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq -2368(%rbp), %rdx
    movq $0, %rcx
    call vkGetSwapchainImagesKHR@PLT
    movl %eax, %ebx
    leaq .Ltext_32(%rip), %r12
    leaq -960(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -992(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -992(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_89
    jmp .L2_88
.L2_89:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -1008(%rbp), %r13
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -2392(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r14
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_91
    jmp .L2_90
.L2_91:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_90:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_92:
.L2_88:
    leaq -1024(%rbp), %rax
    movq %rax, -2976(%rbp)
    movq -2368(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, -2984(%rbp)
    leaq -1072(%rbp), %rax
    movq %rax, -2992(%rbp)
    movq -2984(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_94
.L2_93:
    movq -2992(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_17(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2992(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_95
.L2_94:
    movq -2984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -2936(%rbp), %r10
    movq (%r10), %rbx
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_96
    jmp .L2_97
.L2_97:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_96:
    movq %r15, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -1096(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -1096(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -2488(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -2488(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L2_98
    jmp .L2_99
.L2_98:
    movq -2992(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2992(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_95
.L2_99:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -2992(%rbp), %r10
    movq %rbx, (%r10)
    movq -2992(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -2984(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2992(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_95:
    movq -2992(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_101
    jmp .L2_100
.L2_101:
    movq -2992(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -1112(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r13
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_103
    jmp .L2_102
.L2_103:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L2_102:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_104:
.L2_100:
    movq -2992(%rbp), %r10
    movq -2976(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2272(%rbp), %r10
    movq (%r10), %rbx
    movq -2456(%rbp), %r10
    movq (%r10), %r12
    movq -2976(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2496(%rbp)
    movq %rbx, %rdi
    movq %r12, %rsi
    movq -2368(%rbp), %rdx
    movq -2496(%rbp), %rcx
    call vkGetSwapchainImagesKHR@PLT
    movl %eax, %ebx
    leaq .Ltext_35(%rip), %r12
    leaq -1128(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $31, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1160(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    leaq -1160(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_106
    jmp .L2_105
.L2_106:
    leaq -80(%rbp), %rax
    movq %rax, -2504(%rbp)
    movq %r12, %r10
    movq -2504(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2504(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq -1176(%rbp), %r14
    movq -2976(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2512(%rbp)
    movq -2512(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2520(%rbp)
    movq -2520(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -2528(%rbp)
    movq -2496(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -2528(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %rbx
    movq -2936(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2536(%rbp)
    movq -2536(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_108
    jmp .L2_107
.L2_108:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_107:
    leaq -1192(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq -2536(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_110
    jmp .L2_109
.L2_110:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_109:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq -2504(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_111:
.L2_105:
    movq -2280(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3000(%rbp)
    leaq lb_memory_heap(%rip), %r14
    movq -2368(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, -3008(%rbp)
    leaq -1240(%rbp), %rax
    movq %rax, -3016(%rbp)
    movq -3008(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L2_113
.L2_112:
    movq -3016(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_17(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -3016(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_114
.L2_113:
    movq -3008(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_115
    jmp .L2_116
.L2_116:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_115:
    movq %r13, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -1264(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -1264(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -2544(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -2544(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L2_117
    jmp .L2_118
.L2_117:
    movq -3016(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -3016(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_114
.L2_118:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -3016(%rbp), %r10
    movq %rbx, (%r10)
    movq -3016(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -3008(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -3016(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_114:
    movq -3016(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_120
    jmp .L2_119
.L2_120:
    movq -3016(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %rax
    movq %rax, -2552(%rbp)
    movq %rbx, %r10
    movq -2552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2552(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -1280(%rbp), %rbx
    movq -2976(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -2496(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r13
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_122
    jmp .L2_121
.L2_122:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_121:
    leaq -1296(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_124
    jmp .L2_123
.L2_124:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_123:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq -2552(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_125:
.L2_119:
    movq -3016(%rbp), %r10
    movq -3000(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2368(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, -2560(%rbp)
    movq -3000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2568(%rbp)
    movq -2976(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_gpu_25VK_IMAGE_ASPECT_COLOR_BIT(%rip), %rax
    movq %rax, -2616(%rbp)
    leaq -1336(%rbp), %rax
    movq %rax, -3032(%rbp)
    movq -3032(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -2624(%rbp)
    leaq -1384(%rbp), %rax
    movq %rax, -2640(%rbp)
    leaq -1400(%rbp), %rax
    movq %rax, -2648(%rbp)
    movq -2280(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, -2656(%rbp)
    movq -2648(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2664(%rbp)
    leaq -1464(%rbp), %rax
    movq %rax, -2672(%rbp)
    leaq -1528(%rbp), %rax
    movq %rax, -2680(%rbp)
    leaq lb_gpu_41VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO(%rip), %rax
    movq %rax, -2688(%rbp)
    movq -2280(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -2696(%rbp)
    movq -2680(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2704(%rbp)
    movq -2680(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -2712(%rbp)
    movq -2680(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2720(%rbp)
    movq -2680(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -2728(%rbp)
    movq -2680(%rbp), %rax
    movq $52, %rcx
    addq %rcx, %rax
    movq %rax, -2736(%rbp)
    movq -2680(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, -2744(%rbp)
    leaq .Ltext_43(%rip), %rax
    movq %rax, -2752(%rbp)
    leaq -1544(%rbp), %rax
    movq %rax, -2760(%rbp)
    movq -2760(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2768(%rbp)
    leaq -1576(%rbp), %rax
    movq %rax, -3040(%rbp)
    movq -3040(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2776(%rbp)
    leaq -1632(%rbp), %rax
    movq %rax, -2792(%rbp)
    leaq -1656(%rbp), %rax
    movq %rax, -2800(%rbp)
    leaq lb_gpu_39VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO(%rip), %rax
    movq %rax, -2808(%rbp)
    leaq .Ltext_45(%rip), %rax
    movq %rax, -2816(%rbp)
    leaq -1672(%rbp), %rax
    movq %rax, -2824(%rbp)
    movq -2824(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2832(%rbp)
    leaq -1704(%rbp), %rax
    movq %rax, -3048(%rbp)
    movq -3048(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2840(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L2_126:
    movq -2560(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L2_129
.L2_127:
    movq -3000(%rbp), %r10
    movq (%r10), %r14
    movq -2568(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2576(%rbp)
    movq -2576(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, -2584(%rbp)
    movq -2584(%rbp), %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -2592(%rbp)
    movq -2592(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, -2600(%rbp)
    movq -2496(%rbp), %rax
    movq -2600(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -2608(%rbp)
    movq -2608(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq -3000(%rbp), %r10
    movq (%r10), %rbx
    movq -2568(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2584(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -3024(%rbp)
    movq -2608(%rbp), %r10
    movq (%r10), %rbx
    movq -2616(%rbp), %r10
    movl (%r10), %r14d
    movq -2264(%rbp), %rsi
    movq %rbx, %rdx
    movl -2968(%rbp), %ecx
    movl %r14d, %r8d
    leaq -1336(%rbp), %rdi
    call lb_gpu_17vulkan_image_view@PLT
    movq -2624(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_131
    jmp .L2_130
.L2_131:
    movq -3032(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %rax
    movq %rax, -2632(%rbp)
    movq %rbx, %r10
    movq -2632(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2632(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -1352(%rbp), %rbx
    movq -2592(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -2496(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r13
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_133
    jmp .L2_132
.L2_133:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_132:
    leaq -1368(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_135
    jmp .L2_134
.L2_135:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_134:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq -2632(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_136:
.L2_130:
    movq -3032(%rbp), %r10
    movq (%r10), %rbx
    movq -3024(%rbp), %r10
    movq %rbx, (%r10)
    movq -3000(%rbp), %r10
    movq (%r10), %rbx
    movq -2568(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2584(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -2648(%rbp), %r10
    movq %rbx, (%r10)
    movq -2656(%rbp), %r10
    movq (%r10), %rbx
    movq -2664(%rbp), %r10
    movq %rbx, (%r10)
    movq -2648(%rbp), %r10
    movq -2640(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2680(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq -2688(%rbp), %r10
    movl (%r10), %ebx
    movq -2680(%rbp), %r10
    movl %ebx, (%r10)
    movq -2696(%rbp), %r10
    movq (%r10), %rbx
    movq -2704(%rbp), %r10
    movq %rbx, (%r10)
    movl $2, %eax
    movq -2712(%rbp), %r10
    movl %eax, (%r10)
    movq -2640(%rbp), %rax
    movq -2720(%rbp), %r10
    movq %rax, (%r10)
    movl -3056(%rbp), %eax
    movq -2728(%rbp), %r10
    movl %eax, (%r10)
    movl -2480(%rbp), %eax
    movq -2736(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movq -2744(%rbp), %r10
    movl %eax, (%r10)
    movq -2680(%rbp), %r10
    movq -2672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq -2272(%rbp), %r10
    movq (%r10), %rbx
    movq -3000(%rbp), %r10
    movq (%r10), %r12
    movq -2568(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2584(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %rbx, %rdi
    movq -2672(%rbp), %rsi
    movq $0, %rdx
    movq %r12, %rcx
    call vkCreateFramebuffer@PLT
    movl %eax, %ebx
    movq -2752(%rbp), %rax
    movq -2760(%rbp), %r10
    movq %rax, (%r10)
    movq $41, %rax
    movq -2768(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq -2760(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1576(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    movq -2776(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_138
    jmp .L2_137
.L2_138:
    leaq -80(%rbp), %rax
    movq %rax, -2784(%rbp)
    movq -3040(%rbp), %r10
    movq -2784(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2784(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -1592(%rbp), %r12
    movq -2592(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -2496(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r13
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_140
    jmp .L2_139
.L2_140:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L2_139:
    leaq -1608(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_142
    jmp .L2_141
.L2_142:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_141:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq -2784(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_143:
.L2_137:
    movq -2800(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -2808(%rbp), %r10
    movl (%r10), %ebx
    movq -2800(%rbp), %r10
    movl %ebx, (%r10)
    movq -2800(%rbp), %r10
    movq -2792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2272(%rbp), %r10
    movq (%r10), %rbx
    movq -3000(%rbp), %r10
    movq (%r10), %r12
    movq -2568(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2584(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $24, %rcx
    addq %rcx, %r12
    movq %rbx, %rdi
    movq -2792(%rbp), %rsi
    movq $0, %rdx
    movq %r12, %rcx
    call vkCreateSemaphore@PLT
    movl %eax, %ebx
    movq -2816(%rbp), %rax
    movq -2824(%rbp), %r10
    movq %rax, (%r10)
    movq $52, %rax
    movq -2832(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %esi
    movq -2824(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1704(%rbp), %rdi
    call lb_gpu_12vulkan_check@PLT
    movq -2840(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_145
    jmp .L2_144
.L2_145:
    leaq -80(%rbp), %rax
    movq %rax, -2848(%rbp)
    movq -3048(%rbp), %r10
    movq -2848(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2848(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -1720(%rbp), %r12
    movq -2592(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -2496(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r13
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_147
    jmp .L2_146
.L2_147:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L2_146:
    leaq -1736(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_149
    jmp .L2_148
.L2_149:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_148:
    movq -2264(%rbp), %rdi
    movq -2280(%rbp), %rsi
    call lb_gpu_24vulkan_swapchain_destroy@PLT
    movq -2848(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_150:
.L2_144:
.L2_128:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L2_126
.L2_129:
    movq -2280(%rbp), %rax
    movq $136, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -1752(%rbp), %rbx
    movq -2976(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2496(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq -2936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_152
    jmp .L2_151
.L2_152:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L2_151:
    leaq -1768(%rbp), %rbx
    movq -2928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -2392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq -2936(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_154
    jmp .L2_153
.L2_154:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L2_153:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_24vulkan_swapchain_destroy
    .type lb_gpu_24vulkan_swapchain_destroy, @function
lb_gpu_24vulkan_swapchain_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movq (%r10), %r13
    movq -160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -176(%rbp)
    leaq -104(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -184(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -192(%rbp)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -200(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -208(%rbp)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -224(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L3_1:
    movq -176(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L3_4
.L3_2:
    movq $32, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -184(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_6
.L3_5:
    movq -192(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    call vkDestroyFramebuffer@PLT
    jmp .L3_7
.L3_6:
.L3_7:
    movq -200(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_9
.L3_8:
    movq -208(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    call vkDestroyImageView@PLT
    jmp .L3_10
.L3_9:
.L3_10:
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_12
.L3_11:
    movq -224(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    call vkDestroySemaphore@PLT
    jmp .L3_13
.L3_12:
.L3_13:
.L3_3:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    jmp .L3_1
.L3_4:
    movq -168(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_15
.L3_14:
    leaq lb_memory_heap(%rip), %rbx
    leaq -120(%rbp), %r12
    movq -160(%rbp), %r10
    movq (%r10), %r13
    movq -168(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L3_18
    jmp .L3_17
.L3_18:
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L3_17:
    jmp .L3_16
.L3_15:
.L3_16:
    leaq -136(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -152(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_20
.L3_19:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq $0, %rdx
    call vkDestroyPipeline@PLT
    jmp .L3_21
.L3_20:
.L3_21:
    movq -152(%rbp), %rax
    movq $80, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_23
.L3_22:
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    call vkDestroyPipeline@PLT
    jmp .L3_24
.L3_23:
.L3_24:
    movq -152(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_26
.L3_25:
    leaq -56(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $16, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $0, %rdx
    call vkDestroyDescriptorSetLayout@PLT
    jmp .L3_27
.L3_26:
.L3_27:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -152(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_29
.L3_28:
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -232(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $0, %rdx
    call vkDestroyPipelineLayout@PLT
    jmp .L3_30
.L3_29:
.L3_30:
    movq -152(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_32
.L3_31:
    leaq -56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -240(%rbp), %r10
    movq (%r10), %r14
    movq %r15, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    call vkDestroyRenderPass@PLT
    jmp .L3_33
.L3_32:
.L3_33:
    movq -152(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_35
.L3_34:
    leaq -56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -248(%rbp), %r10
    movq (%r10), %r13
    movq %r15, %rdi
    movq %r13, %rsi
    movq $0, %rdx
    call vkDestroyImageView@PLT
    jmp .L3_36
.L3_35:
.L3_36:
    movq -152(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_38
.L3_37:
    leaq -56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -256(%rbp), %r10
    movq (%r10), %r14
    movq %r15, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    call vkDestroyImage@PLT
    jmp .L3_39
.L3_38:
.L3_39:
    movq -152(%rbp), %rax
    movq $96, %rcx
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_41
.L3_40:
    leaq -56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -264(%rbp), %r10
    movq (%r10), %r13
    movq %r15, %rdi
    movq %r13, %rsi
    movq $0, %rdx
    call vkFreeMemory@PLT
    jmp .L3_42
.L3_41:
.L3_42:
    movq -152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_44
.L3_43:
    leaq -56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %r14
    movq %r15, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    call vkDestroySwapchainKHR@PLT
    jmp .L3_45
.L3_44:
.L3_45:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -232(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -240(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -248(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -256(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -264(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -152(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq -152(%rbp), %rax
    movq $36, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq -152(%rbp), %rax
    movq $136, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_14vulkan_surface_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
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
.Ltext_51:
    .asciz "integer overflow"
.Ltext_52:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
