    .text

    .p2align 4
    .globl lb_gpu_13vulkan_device_0init
    .type lb_gpu_13vulkan_device_0init, @function
lb_gpu_13vulkan_device_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
.L0_2:
    leaq lb_gpu_22vulkan_api_version_1_0(%rip), %rbx
    movl $4194304, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_12vulkan_check
    .type lb_gpu_12vulkan_check, @function
lb_gpu_12vulkan_check:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movl %esi, -80(%rbp)
    leaq -96(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_gpu_10VK_SUCCESS(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq -64(%rbp), %rbx
    leaq lb_gpu_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq -96(%rbp), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_13vulkan_memory
    .type lb_gpu_13vulkan_memory, @function
lb_gpu_13vulkan_memory:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movl %edx, -144(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -104(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movq %rax, -368(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r14d
    movq $4, %rcx
    addq %rcx, %r12
    leaq -144(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %eax
    movl %eax, -384(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L2_1:
    movq -368(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L2_4
.L2_2:
    movl %ebx, %r15d
    movq $32, %rcx
    cmpq %rcx, %r15
    jb .L2_9
.L2_8:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_9:
    movl %ebx, %ecx
    movl $1, %eax
    movl %eax, %r15d
    shll %cl, %r15d
    andl %r14d, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_10
    jmp .L2_22
.L2_22:
    movl %r15d, %r13d
    jmp .L2_11
.L2_10:
    movq $32, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl -384(%rbp), %ecx
    andl %ecx, %r13d
    movl -384(%rbp), %eax
    cmpl %r13d, %eax
    sete %al
    movzbl %al, %r13d
.L2_11:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L2_5
    jmp .L2_6
.L2_5:
    leaq -176(%rbp), %r12
    leaq -208(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq lb_gpu_38VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq -376(%rbp), %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %ebx, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -216(%rbp), %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    movq %r13, %rcx
    call vkAllocateMemory@PLT
    movl %eax, %r12d
    leaq .Ltext_21(%rip), %r14
    leaq -232(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -328(%rbp), %r10
    movl %r12d, (%r10)
    movq %r15, %r10
    leaq -344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_gpu_10VK_SUCCESS(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_18
.L2_17:
    leaq -312(%rbp), %rbx
    leaq lb_gpu_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq -344(%rbp), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_21
.L2_20:
    jmp .L2_19
.L2_18:
.L2_19:
    leaq -312(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_21:
    leaq -264(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_13
    jmp .L2_12
.L2_13:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_14:
.L2_12:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
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
    jmp .L2_7
.L2_6:
.L2_7:
.L2_3:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %rbx
    jmp .L2_1
.L2_4:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unavailable(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq -280(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_16:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_13vulkan_device_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "shift count out of range"
.Ltext_1:
    .asciz "gpu:1:1"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/gpu/vulkan/device.lucb:17:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "Luce"
.Ltext_6:
    .asciz "a Vulkan instance with native presentation is unavailable"
.Ltext_7:
    .asciz "Vulkan devices could not be enumerated"
.Ltext_8:
    .asciz "no Vulkan device is available"
.Ltext_9:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_10:
    .asciz "src/std/gpu/vulkan/device.lucb:30:5"
.Ltext_11:
    .asciz "Vulkan devices changed during enumeration"
.Ltext_12:
    .asciz "src/std/gpu/vulkan/device.lucb:32:5"
.Ltext_13:
    .asciz "src/std/gpu/vulkan/device.lucb:34:9"
.Ltext_14:
    .asciz "src/std/gpu/vulkan/device.lucb:37:9"
.Ltext_15:
    .asciz "src/std/gpu/vulkan/device.lucb:41:13"
.Ltext_16:
    .asciz "src/std/gpu/vulkan/device.lucb:56:13"
.Ltext_17:
    .asciz "no Vulkan graphics queue supports native presentation"
.Ltext_18:
    .asciz "src/std/gpu/vulkan/device.lucb:57:5"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/gpu/vulkan/device.lucb:69:9"
.Ltext_21:
    .asciz "Vulkan device memory allocation failed"
.Ltext_22:
    .asciz "no compatible Vulkan memory type is available"
.Ltext_23:
    .asciz "src/std/gpu/vulkan/device.lucb:75:5"
.Ltext_24:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_22vulkan_api_version_1_0
    .type lb_gpu_22vulkan_api_version_1_0, @object
    .weak lb_gpu_22vulkan_api_version_1_0
    .p2align 2
lb_gpu_22vulkan_api_version_1_0:
    .zero 4

    .section .note.GNU-stack,"",@progbits
