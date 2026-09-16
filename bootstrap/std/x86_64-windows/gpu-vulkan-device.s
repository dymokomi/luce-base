    .text

    .p2align 4
    .globl lb_gpu_13vulkan_device_0init
lb_gpu_13vulkan_device_0init:
    .seh_proc lb_gpu_13vulkan_device_0init
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
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
.L0_2:
    leaq lb_gpu_22vulkan_api_version_1_0(%rip), %rbx
    movl $4194304, %eax
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
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_12vulkan_check
lb_gpu_12vulkan_check:
    .seh_proc lb_gpu_12vulkan_check
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 88(%rbp)
    movq %rdi, 264(%rbp)
    .seh_savereg %rdi, 264
    movq %rsi, 256(%rbp)
    .seh_savereg %rsi, 256
    movdqu %xmm6, 240(%rbp)
    .seh_savexmm %xmm6, 240
    movdqu %xmm7, 224(%rbp)
    .seh_savexmm %xmm7, 224
    movdqu %xmm8, 208(%rbp)
    .seh_savexmm %xmm8, 208
    movdqu %xmm9, 192(%rbp)
    .seh_savexmm %xmm9, 192
    movdqu %xmm10, 176(%rbp)
    .seh_savexmm %xmm10, 176
    movdqu %xmm11, 160(%rbp)
    .seh_savexmm %xmm11, 160
    movdqu %xmm12, 144(%rbp)
    .seh_savexmm %xmm12, 144
    movdqu %xmm13, 128(%rbp)
    .seh_savexmm %xmm13, 128
    movdqu %xmm14, 112(%rbp)
    .seh_savexmm %xmm14, 112
    movdqu %xmm15, 96(%rbp)
    .seh_savexmm %xmm15, 96
    movq %rbx, 80(%rbp)
    .seh_savereg %rbx, 80
    movq %r12, 72(%rbp)
    .seh_savereg %r12, 72
    movq %r13, 64(%rbp)
    .seh_savereg %r13, 64
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 296(%rbp), %rax
    movl %eax, 16(%rbp)
    movq 304(%rbp), %r10
    leaq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq 32(%rbp), %rbx
    leaq lb_gpu_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq 0(%rbp), %r12
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
    movq 88(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
    movq 264(%rbp), %rdi
    movq 256(%rbp), %rsi
    movdqu 240(%rbp), %xmm6
    movdqu 224(%rbp), %xmm7
    movdqu 208(%rbp), %xmm8
    movdqu 192(%rbp), %xmm9
    movdqu 176(%rbp), %xmm10
    movdqu 160(%rbp), %xmm11
    movdqu 144(%rbp), %xmm12
    movdqu 128(%rbp), %xmm13
    movdqu 112(%rbp), %xmm14
    movdqu 96(%rbp), %xmm15
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 32(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 88(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
    movq 264(%rbp), %rdi
    movq 256(%rbp), %rsi
    movdqu 240(%rbp), %xmm6
    movdqu 224(%rbp), %xmm7
    movdqu 208(%rbp), %xmm8
    movdqu 192(%rbp), %xmm9
    movdqu 176(%rbp), %xmm10
    movdqu 160(%rbp), %xmm11
    movdqu 144(%rbp), %xmm12
    movdqu 128(%rbp), %xmm13
    movdqu 112(%rbp), %xmm14
    movdqu 96(%rbp), %xmm15
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_18vulkan_device_open
lb_gpu_18vulkan_device_open:
    .seh_proc lb_gpu_18vulkan_device_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $2528, %rsp
    .seh_stackalloc 2528
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 2344(%rbp)
    movq %rdi, 2520(%rbp)
    .seh_savereg %rdi, 2520
    movq %rsi, 2512(%rbp)
    .seh_savereg %rsi, 2512
    movdqu %xmm6, 2496(%rbp)
    .seh_savexmm %xmm6, 2496
    movdqu %xmm7, 2480(%rbp)
    .seh_savexmm %xmm7, 2480
    movdqu %xmm8, 2464(%rbp)
    .seh_savexmm %xmm8, 2464
    movdqu %xmm9, 2448(%rbp)
    .seh_savexmm %xmm9, 2448
    movdqu %xmm10, 2432(%rbp)
    .seh_savexmm %xmm10, 2432
    movdqu %xmm11, 2416(%rbp)
    .seh_savexmm %xmm11, 2416
    movdqu %xmm12, 2400(%rbp)
    .seh_savexmm %xmm12, 2400
    movdqu %xmm13, 2384(%rbp)
    .seh_savexmm %xmm13, 2384
    movdqu %xmm14, 2368(%rbp)
    .seh_savexmm %xmm14, 2368
    movdqu %xmm15, 2352(%rbp)
    .seh_savexmm %xmm15, 2352
    movq %rbx, 2336(%rbp)
    .seh_savereg %rbx, 2336
    movq %r12, 2328(%rbp)
    .seh_savereg %r12, 2328
    movq %r13, 2320(%rbp)
    .seh_savereg %r13, 2320
    movq %r14, 2312(%rbp)
    .seh_savereg %r14, 2312
    movq %r15, 2304(%rbp)
    .seh_savereg %r15, 2304
    .seh_endprologue
    movq %rcx, 2544(%rbp)
    movq %rdx, 2552(%rbp)
    movq %r8, 2560(%rbp)
    movq %r9, 2568(%rbp)
    leaq lb_memory_heap(%rip), %rbx
    leaq 2248(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 2208(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_1
    jmp .L2_2
.L2_2:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_1:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $560, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 2184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 2184(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_3
    jmp .L2_4
.L2_4:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_5
.L2_3:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq 1624(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $560, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $560, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_5:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_7
    jmp .L2_6
.L2_7:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 2264(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_8:
.L2_6:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 576(%rbp)
    leaq 1576(%rbp), %r12
    leaq 1528(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r15
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    leaq lb_gpu_22vulkan_api_version_1_0(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq $44, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %ebx, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq 1512(%rbp), %r14
    subq $32, %rsp
    leaq 1464(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_30vulkan_presentation_extensions
    addq $32, %rsp
    leaq 1464(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_10
    jmp .L2_9
.L2_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 2264(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_11:
.L2_9:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1400(%rbp), %rax
    movq %rax, 568(%rbp)
    leaq 1336(%rbp), %rax
    movq %rax, 560(%rbp)
    movq 560(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movl $1, %eax
    movq 560(%rbp), %r10
    movl %eax, (%r10)
    movq 560(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 560(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq %r14, %r10
    movq (%r10), %rbx
    movq 560(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq 560(%rbp), %r10
    movq 568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 576(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkCreateInstance
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_13
.L2_12:
    leaq 2264(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unavailable(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 1320(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $57, %rax
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
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_15:
    jmp .L2_14
.L2_13:
.L2_14:
    leaq 1316(%rbp), %rax
    movq %rax, 552(%rbp)
    movl $0, %eax
    movq 552(%rbp), %r10
    movl %eax, (%r10)
    movq 576(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 552(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkEnumeratePhysicalDevices
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_7(%rip), %r13
    leaq 1296(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $38, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 600(%rbp), %r10
    movl %r12d, (%r10)
    movq %r14, %r10
    leaq 584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_83
.L2_82:
    leaq 616(%rbp), %r12
    leaq lb_gpu_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq 584(%rbp), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq 1264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_86
.L2_85:
    jmp .L2_84
.L2_83:
.L2_84:
    leaq 616(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq 1264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_86:
    leaq 1264(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_17
    jmp .L2_16
.L2_17:
    leaq 2264(%rbp), %rbx
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
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_18:
.L2_16:
    movq 552(%rbp), %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_20
.L2_19:
    leaq 2264(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unavailable(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq 1248(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $29, %rax
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
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_22:
    jmp .L2_21
.L2_20:
.L2_21:
    leaq 1232(%rbp), %rax
    movq %rax, 72(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 64(%rbp)
    movl %r12d, %eax
    movq %rax, 56(%rbp)
    leaq 1184(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 56(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_24
.L2_23:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %r12
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_25
.L2_24:
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_26
    jmp .L2_27
.L2_27:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_26:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 1160(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 544(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl 544(%rbp), %eax
    andl %r15d, %eax
    movl %eax, 536(%rbp)
    movl 536(%rbp), %eax
    testl %eax, %eax
    jne .L2_28
    jmp .L2_29
.L2_28:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_25
.L2_29:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 48(%rbp), %r10
    movq %r12, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 56(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L2_25:
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_31
    jmp .L2_30
.L2_31:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 2264(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_32:
.L2_30:
    movq 48(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 576(%rbp), %r10
    movq (%r10), %rbx
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 528(%rbp)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 552(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 528(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkEnumeratePhysicalDevices
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_11(%rip), %r13
    leaq 1144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 600(%rbp), %r10
    movl %ebx, (%r10)
    movq %r14, %r10
    leaq 584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_88
.L2_87:
    leaq 616(%rbp), %rbx
    leaq lb_gpu_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq 584(%rbp), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 1112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_91
.L2_90:
    jmp .L2_89
.L2_88:
.L2_89:
    leaq 616(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 1112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_91:
    leaq 1112(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_34
    jmp .L2_33
.L2_34:
    leaq 2264(%rbp), %rax
    movq %rax, 520(%rbp)
    movq 520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 520(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq 1096(%rbp), %r14
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 528(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_36
    jmp .L2_35
.L2_36:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L2_35:
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq 520(%rbp), %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_37:
.L2_33:
    movq 552(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 512(%rbp)
    movl 512(%rbp), %eax
    movl %eax, %eax
    movq %rax, 504(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 496(%rbp)
    leaq 1092(%rbp), %rax
    movq %rax, 456(%rbp)
    leaq 1072(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 1024(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    leaq 1000(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq 16(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    leaq .Ltext_4(%rip), %rax
    movq %rax, 384(%rbp)
    movq 392(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 376(%rbp)
    movq 392(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 368(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 16(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    leaq .Ltext_9(%rip), %rax
    movq %rax, 440(%rbp)
    movq 448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 432(%rbp)
    movq 448(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 336(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    leaq 980(%rbp), %rax
    movq %rax, 312(%rbp)
    movl $1065353216, %eax
    movd %eax, %xmm8
    movss %xmm8, 304(%rbp)
    leaq 936(%rbp), %rax
    movq %rax, 296(%rbp)
    leaq 896(%rbp), %rax
    movq %rax, 288(%rbp)
    movq 288(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    movq 288(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    movq 288(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    leaq 888(%rbp), %rax
    movq %rax, 256(%rbp)
    leaq lb_gpu_31VK_KHR_SWAPCHAIN_EXTENSION_NAME(%rip), %rax
    movq %rax, 248(%rbp)
    leaq 816(%rbp), %rax
    movq %rax, 240(%rbp)
    leaq 744(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 232(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 224(%rbp)
    movq 232(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    movq 232(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 232(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    movq 576(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 696(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
.L2_38:
    movq 40(%rbp), %rax
    movq 504(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L2_41
.L2_39:
    movq 496(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 488(%rbp)
    movq 40(%rbp), %rax
    movq 488(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $8, %rcx
    imulq %rcx, %rax
    movq %rax, 480(%rbp)
    movq 528(%rbp), %rax
    movq 480(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 472(%rbp)
    movq 472(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 464(%rbp)
    movl $0, %eax
    movq 456(%rbp), %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq 464(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 456(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkGetPhysicalDeviceQueueFamilyProperties
    addq $32, %rsp
    movq 456(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movabsq $192153584101141162, %rcx
    cmpq %rcx, %rax
    jbe .L2_43
.L2_42:
    movl $208273409, %eax
    movq 448(%rbp), %r10
    movl %eax, (%r10)
    movq 440(%rbp), %rax
    movq 432(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 424(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 416(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_44
.L2_43:
    movq 24(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 408(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_45
    jmp .L2_46
.L2_46:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_45:
    movq %r14, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $4, %rax
    movq %rax, 24(%rsp)
    leaq 1000(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    movq 400(%rbp), %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    andl %r13d, %ebx
    testl %ebx, %ebx
    jne .L2_47
    jmp .L2_48
.L2_47:
    movl $208273409, %eax
    movq 392(%rbp), %r10
    movl %eax, (%r10)
    movq 384(%rbp), %rax
    movq 376(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 368(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 360(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_44
.L2_48:
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %rax
    movq 352(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 344(%rbp), %r10
    movb %al, (%r10)
.L2_44:
    movq 336(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_50
    jmp .L2_49
.L2_50:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 2264(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 984(%rbp), %rbx
    movq 488(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 528(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_52
    jmp .L2_51
.L2_52:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L2_51:
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_53:
.L2_49:
    movq 16(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq 464(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 456(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkGetPhysicalDeviceQueueFamilyProperties
    addq $32, %rsp
    movq 456(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movq %rax, 328(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L2_54:
    movq 328(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L2_57
.L2_55:
    movq 320(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $24, %rcx
    movq %r13, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $4, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_92
    jmp .L2_61
.L2_92:
    movl %r12d, %r15d
    jmp .L2_62
.L2_61:
    movq %r15, %r10
    movl (%r10), %r12d
    movl $1, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r15d
.L2_62:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_93
    jmp .L2_63
.L2_93:
    movl %r12d, %r15d
    jmp .L2_64
.L2_63:
    subq $32, %rsp
    movq 464(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_27vulkan_presentation_support
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
.L2_64:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_58
    jmp .L2_59
.L2_58:
    jmp .L2_56
.L2_65:
    jmp .L2_60
.L2_59:
.L2_60:
    movss 304(%rbp), %xmm8
    movq 312(%rbp), %r10
    movss %xmm8, (%r10)
    movq 288(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movl $2, %eax
    movq 288(%rbp), %r10
    movl %eax, (%r10)
    movq 280(%rbp), %r10
    movl %r13d, (%r10)
    movl $1, %eax
    movq 272(%rbp), %r10
    movl %eax, (%r10)
    movq 312(%rbp), %rax
    movq 264(%rbp), %r10
    movq %rax, (%r10)
    movq 288(%rbp), %r10
    movq 296(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 248(%rbp), %r10
    movq (%r10), %r12
    movq 256(%rbp), %r10
    movq %r12, (%r10)
    movq 232(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movl $3, %eax
    movq 232(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movq 224(%rbp), %r10
    movl %eax, (%r10)
    movq 296(%rbp), %rax
    movq 216(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 208(%rbp), %r10
    movl %eax, (%r10)
    movq 256(%rbp), %rax
    movq 200(%rbp), %r10
    movq %rax, (%r10)
    movq 232(%rbp), %r10
    movq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    subq $32, %rsp
    movq 464(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 240(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 192(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateDevice
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_67
.L2_66:
    jmp .L2_56
.L2_69:
    jmp .L2_68
.L2_67:
.L2_68:
    movq 576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 464(%rbp), %rax
    movq 184(%rbp), %r10
    movq %rax, (%r10)
    movq 576(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 176(%rbp), %r10
    movl %r13d, (%r10)
    movq 192(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 168(%rbp)
    movq 576(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 160(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkGetDeviceQueue
    addq $32, %rsp
    movq 576(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    subq $32, %rsp
    movq 464(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call vkGetPhysicalDeviceMemoryProperties
    addq $32, %rsp
    leaq 2264(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 576(%rbp), %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq 144(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movl $0, %eax
    movq 136(%rbp), %r10
    movb %al, (%r10)
    leaq 728(%rbp), %rax
    movq %rax, 128(%rbp)
    movq %r14, %rax
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 128(%rbp), %r10
    movq %rbx, (%r10)
    movq 128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %r10
    movq %r12, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_71
    jmp .L2_70
.L2_71:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 128(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L2_70:
    leaq 712(%rbp), %rbx
    movq 488(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 528(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_73
    jmp .L2_72
.L2_73:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L2_72:
    movq 144(%rbp), %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_74:
.L2_56:
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r13
    jmp .L2_54
.L2_57:
    movq 96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 104(%rbp), %r10
    movq %rbx, (%r10)
    movq 88(%rbp), %r10
    movq %r12, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 80(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_76
    jmp .L2_75
.L2_76:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L2_75:
.L2_40:
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 40(%rbp)
    jmp .L2_38
.L2_41:
    leaq 2264(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unavailable(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $53, %rax
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
    leaq 664(%rbp), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 528(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_78
    jmp .L2_77
.L2_78:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L2_77:
    subq $32, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2344(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2344(%rbp), %rax
    movq 2520(%rbp), %rdi
    movq 2512(%rbp), %rsi
    movdqu 2496(%rbp), %xmm6
    movdqu 2480(%rbp), %xmm7
    movdqu 2464(%rbp), %xmm8
    movdqu 2448(%rbp), %xmm9
    movdqu 2432(%rbp), %xmm10
    movdqu 2416(%rbp), %xmm11
    movdqu 2400(%rbp), %xmm12
    movdqu 2384(%rbp), %xmm13
    movdqu 2368(%rbp), %xmm14
    movdqu 2352(%rbp), %xmm15
    movq 2336(%rbp), %rbx
    movq 2328(%rbp), %r12
    movq 2320(%rbp), %r13
    movq 2312(%rbp), %r14
    movq 2304(%rbp), %r15
    leaq 2528(%rbp), %rsp
    popq %rbp
    ret
.L2_79:
    leaq 1232(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 648(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_81
    jmp .L2_80
.L2_81:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L2_80:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_21vulkan_device_destroy
lb_gpu_21vulkan_device_destroy:
    .seh_proc lb_gpu_21vulkan_device_destroy
    pushq %rbp
    .seh_pushreg %rbp
    subq $240, %rsp
    .seh_stackalloc 240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 232(%rbp)
    .seh_savereg %rdi, 232
    movq %rsi, 224(%rbp)
    .seh_savereg %rsi, 224
    movdqu %xmm6, 208(%rbp)
    .seh_savexmm %xmm6, 208
    movdqu %xmm7, 192(%rbp)
    .seh_savexmm %xmm7, 192
    movdqu %xmm8, 176(%rbp)
    .seh_savexmm %xmm8, 176
    movdqu %xmm9, 160(%rbp)
    .seh_savexmm %xmm9, 160
    movdqu %xmm10, 144(%rbp)
    .seh_savexmm %xmm10, 144
    movdqu %xmm11, 128(%rbp)
    .seh_savexmm %xmm11, 128
    movdqu %xmm12, 112(%rbp)
    .seh_savexmm %xmm12, 112
    movdqu %xmm13, 96(%rbp)
    .seh_savexmm %xmm13, 96
    movdqu %xmm14, 80(%rbp)
    .seh_savexmm %xmm14, 80
    movdqu %xmm15, 64(%rbp)
    .seh_savexmm %xmm15, 64
    movq %rbx, 56(%rbp)
    .seh_savereg %rbx, 56
    movq %r12, 48(%rbp)
    .seh_savereg %r12, 48
    movq %r13, 40(%rbp)
    .seh_savereg %r13, 40
    movq %r14, 32(%rbp)
    .seh_savereg %r14, 32
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_2
.L3_1:
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call vkDestroyDevice
    addq $32, %rsp
    jmp .L3_3
.L3_2:
.L3_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_5
.L3_4:
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call vkDestroyInstance
    addq $32, %rsp
    jmp .L3_6
.L3_5:
.L3_6:
    leaq lb_memory_heap(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $560, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_8
    jmp .L3_7
.L3_8:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L3_7:
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    movq 32(%rbp), %r14
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_13vulkan_memory
lb_gpu_13vulkan_memory:
    .seh_proc lb_gpu_13vulkan_memory
    pushq %rbp
    .seh_pushreg %rbp
    subq $560, %rsp
    .seh_stackalloc 560
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 376(%rbp)
    movq %rdi, 552(%rbp)
    .seh_savereg %rdi, 552
    movq %rsi, 544(%rbp)
    .seh_savereg %rsi, 544
    movdqu %xmm6, 528(%rbp)
    .seh_savexmm %xmm6, 528
    movdqu %xmm7, 512(%rbp)
    .seh_savexmm %xmm7, 512
    movdqu %xmm8, 496(%rbp)
    .seh_savexmm %xmm8, 496
    movdqu %xmm9, 480(%rbp)
    .seh_savexmm %xmm9, 480
    movdqu %xmm10, 464(%rbp)
    .seh_savexmm %xmm10, 464
    movdqu %xmm11, 448(%rbp)
    .seh_savexmm %xmm11, 448
    movdqu %xmm12, 432(%rbp)
    .seh_savexmm %xmm12, 432
    movdqu %xmm13, 416(%rbp)
    .seh_savexmm %xmm13, 416
    movdqu %xmm14, 400(%rbp)
    .seh_savexmm %xmm14, 400
    movdqu %xmm15, 384(%rbp)
    .seh_savexmm %xmm15, 384
    movq %rbx, 368(%rbp)
    .seh_savereg %rbx, 368
    movq %r12, 360(%rbp)
    .seh_savereg %r12, 360
    movq %r13, 352(%rbp)
    .seh_savereg %r13, 352
    movq %r14, 344(%rbp)
    .seh_savereg %r14, 344
    movq %r15, 336(%rbp)
    .seh_savereg %r15, 336
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 584(%rbp), %rax
    movq %rax, 280(%rbp)
    movq 592(%rbp), %r10
    leaq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 600(%rbp), %rax
    movl %eax, 240(%rbp)
    leaq 280(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movq %rax, 16(%rbp)
    leaq 256(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r14d
    movq $4, %rcx
    addq %rcx, %r12
    leaq 240(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %eax
    movl %eax, 0(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L4_1:
    movq 16(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_4
.L4_2:
    movl %ebx, %r15d
    movq $32, %rcx
    cmpq %rcx, %r15
    jb .L4_9
.L4_8:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_9:
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
    jne .L4_10
    jmp .L4_22
.L4_22:
    movl %r15d, %r13d
    jmp .L4_11
.L4_10:
    movq $32, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl 0(%rbp), %ecx
    andl %ecx, %r13d
    movl 0(%rbp), %eax
    cmpl %r13d, %eax
    sete %al
    movzbl %al, %r13d
.L4_11:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_5
    jmp .L4_6
.L4_5:
    leaq 208(%rbp), %r12
    leaq 176(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movl $5, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 8(%rbp), %r10
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
    leaq 168(%rbp), %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkAllocateMemory
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_21(%rip), %r14
    leaq 152(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 56(%rbp), %r10
    movl %r12d, (%r10)
    movq %r15, %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_18
.L4_17:
    leaq 72(%rbp), %rbx
    leaq lb_gpu_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq 40(%rbp), %r12
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
    leaq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L4_21
.L4_20:
    jmp .L4_19
.L4_18:
.L4_19:
    leaq 72(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L4_21:
    leaq 120(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_13
    jmp .L4_12
.L4_13:
    leaq 296(%rbp), %rbx
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
    movq 376(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L4_14:
.L4_12:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq 296(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L4_15:
    jmp .L4_7
.L4_6:
.L4_7:
.L4_3:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %rbx
    jmp .L4_1
.L4_4:
    leaq 296(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unavailable(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq 104(%rbp), %r14
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
    movq 376(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L4_16:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_13vulkan_device_0init
    .text

    .section .rdata,"dr"
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
    .asciz "integer overflow"
.Ltext_25:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_gpu_22vulkan_api_version_1_0
    .p2align 2
lb_gpu_22vulkan_api_version_1_0:
    .zero 4
