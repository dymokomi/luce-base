    .text

    .p2align 4
    .globl lb_gpu_14vulkan_surface_0init
lb_gpu_14vulkan_surface_0init:
    .seh_proc lb_gpu_14vulkan_surface_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $176, %rsp
    .seh_stackalloc 176
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 168(%rbp)
    .seh_savereg %rdi, 168
    movq %rsi, 160(%rbp)
    .seh_savereg %rsi, 160
    movdqu %xmm6, 144(%rbp)
    .seh_savexmm %xmm6, 144
    movdqu %xmm7, 128(%rbp)
    .seh_savexmm %xmm7, 128
    movdqu %xmm8, 112(%rbp)
    .seh_savexmm %xmm8, 112
    movdqu %xmm9, 96(%rbp)
    .seh_savexmm %xmm9, 96
    movdqu %xmm10, 80(%rbp)
    .seh_savexmm %xmm10, 80
    movdqu %xmm11, 64(%rbp)
    .seh_savexmm %xmm11, 64
    movdqu %xmm12, 48(%rbp)
    .seh_savexmm %xmm12, 48
    movdqu %xmm13, 32(%rbp)
    .seh_savexmm %xmm13, 32
    movdqu %xmm14, 16(%rbp)
    .seh_savexmm %xmm14, 16
    movdqu %xmm15, 0(%rbp)
    .seh_savexmm %xmm15, 0
    .seh_endprologue
    movq %rcx, 192(%rbp)
    movq %rdx, 200(%rbp)
    movq %r8, 208(%rbp)
    movq %r9, 216(%rbp)
    movq 168(%rbp), %rdi
    movq 160(%rbp), %rsi
    movdqu 144(%rbp), %xmm6
    movdqu 128(%rbp), %xmm7
    movdqu 112(%rbp), %xmm8
    movdqu 96(%rbp), %xmm9
    movdqu 80(%rbp), %xmm10
    movdqu 64(%rbp), %xmm11
    movdqu 48(%rbp), %xmm12
    movdqu 32(%rbp), %xmm13
    movdqu 16(%rbp), %xmm14
    movdqu 0(%rbp), %xmm15
    leaq 176(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_19vulkan_surface_open
lb_gpu_19vulkan_surface_open:
    .seh_proc lb_gpu_19vulkan_surface_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $1008, %rsp
    .seh_stackalloc 1008
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 824(%rbp)
    movq %rdi, 1000(%rbp)
    .seh_savereg %rdi, 1000
    movq %rsi, 992(%rbp)
    .seh_savereg %rsi, 992
    movdqu %xmm6, 976(%rbp)
    .seh_savexmm %xmm6, 976
    movdqu %xmm7, 960(%rbp)
    .seh_savexmm %xmm7, 960
    movdqu %xmm8, 944(%rbp)
    .seh_savexmm %xmm8, 944
    movdqu %xmm9, 928(%rbp)
    .seh_savexmm %xmm9, 928
    movdqu %xmm10, 912(%rbp)
    .seh_savexmm %xmm10, 912
    movdqu %xmm11, 896(%rbp)
    .seh_savexmm %xmm11, 896
    movdqu %xmm12, 880(%rbp)
    .seh_savexmm %xmm12, 880
    movdqu %xmm13, 864(%rbp)
    .seh_savexmm %xmm13, 864
    movdqu %xmm14, 848(%rbp)
    .seh_savexmm %xmm14, 848
    movdqu %xmm15, 832(%rbp)
    .seh_savexmm %xmm15, 832
    movq %rbx, 816(%rbp)
    .seh_savereg %rbx, 816
    movq %r12, 808(%rbp)
    .seh_savereg %r12, 808
    movq %r13, 800(%rbp)
    .seh_savereg %r13, 800
    movq %r14, 792(%rbp)
    .seh_savereg %r14, 792
    movq %r15, 784(%rbp)
    .seh_savereg %r15, 784
    .seh_endprologue
    movq %rcx, 1024(%rbp)
    movq %rdx, 1032(%rbp)
    movq %r8, 1040(%rbp)
    movq %r9, 1048(%rbp)
    movq 1032(%rbp), %rax
    movq %rax, 728(%rbp)
    movq 1040(%rbp), %rax
    leaq 712(%rbp), %r10
    movq %rax, 0(%r10)
    leaq lb_memory_heap(%rip), %rbx
    leaq 696(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 656(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_1
    jmp .L1_2
.L1_2:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_1:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $144, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 632(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 632(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_3
    jmp .L1_4
.L1_4:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
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
    jmp .L1_5
.L1_3:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq 488(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $144, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movq $136, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $144, %rdx
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
.L1_5:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_7
    jmp .L1_6
.L1_7:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 744(%rbp), %r12
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
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
.L1_6:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    leaq 728(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    leaq 712(%rbp), %r15
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    leaq 448(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_27vulkan_presentation_surface
    addq $32, %rsp
    leaq 448(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_10
    jmp .L1_9
.L1_10:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 744(%rbp), %r14
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
    movq %r14, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_11:
.L1_9:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    leaq 444(%rbp), %rax
    movq %rax, 40(%rbp)
    movl $0, %eax
    movq 40(%rbp), %r10
    movl %eax, (%r10)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movl (%r10), %r14d
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkGetPhysicalDeviceSurfaceSupportKHR
    addq $32, %rsp
    movl %eax, %r13d
    leaq .Ltext_3(%rip), %r14
    leaq 424(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $48, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 392(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_13
    jmp .L1_12
.L1_13:
    leaq 744(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
.L1_12:
    movq 40(%rbp), %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_16
.L1_15:
    leaq 744(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_gpu_unavailable(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_4(%rip), %r14
    leaq 376(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $46, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_18:
    jmp .L1_17
.L1_16:
.L1_17:
    leaq 352(%rbp), %rbx
    leaq 328(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $39, %eax
    movq 16(%rbp), %r10
    movl %eax, (%r10)
    movq 32(%rbp), %r10
    movl (%r10), %r14d
    movq 16(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq 16(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 56(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r14
    movq 64(%rbp), %rax
    movq $112, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateCommandPool
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_5(%rip), %r14
    leaq 312(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $44, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 280(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 280(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_20
    jmp .L1_19
.L1_20:
    leaq 744(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_21:
.L1_19:
    leaq 248(%rbp), %rbx
    leaq 216(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movl $40, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %r15, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $28, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %rax
    movq $120, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkAllocateCommandBuffers
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_6(%rip), %r12
    leaq 200(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $48, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 168(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_23
    jmp .L1_22
.L1_23:
    leaq 744(%rbp), %rbx
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_24:
.L1_22:
    leaq 144(%rbp), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $9, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %rax
    movq $128, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateSemaphore
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_7(%rip), %r12
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $53, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 72(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_26
    jmp .L1_25
.L1_26:
    leaq 744(%rbp), %rbx
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_27:
.L1_25:
    leaq 744(%rbp), %rbx
    movq 64(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 824(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 824(%rbp), %rax
    movq 1000(%rbp), %rdi
    movq 992(%rbp), %rsi
    movdqu 976(%rbp), %xmm6
    movdqu 960(%rbp), %xmm7
    movdqu 944(%rbp), %xmm8
    movdqu 928(%rbp), %xmm9
    movdqu 912(%rbp), %xmm10
    movdqu 896(%rbp), %xmm11
    movdqu 880(%rbp), %xmm12
    movdqu 864(%rbp), %xmm13
    movdqu 848(%rbp), %xmm14
    movdqu 832(%rbp), %xmm15
    movq 816(%rbp), %rbx
    movq 808(%rbp), %r12
    movq 800(%rbp), %r13
    movq 792(%rbp), %r14
    movq 784(%rbp), %r15
    leaq 1008(%rbp), %rsp
    popq %rbp
    ret
.L1_28:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_17vulkan_image_view
lb_gpu_17vulkan_image_view:
    .seh_proc lb_gpu_17vulkan_image_view
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
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 584(%rbp), %rax
    movq %rax, 288(%rbp)
    movq 592(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 600(%rbp), %rax
    movl %eax, 256(%rbp)
    movq 608(%rbp), %rax
    movl %eax, 240(%rbp)
    leaq 160(%rbp), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movl $15, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq 272(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq 256(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq $36, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    leaq 60(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, 16(%r11)
    leaq 240(%rbp), %r14
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
    leaq 48(%rbp), %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 288(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateImageView
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_10(%rip), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 0(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq 304(%rbp), %rbx
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
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 304(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_4:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_16vulkan_swapchain
lb_gpu_16vulkan_swapchain:
    .seh_proc lb_gpu_16vulkan_swapchain
    pushq %rbp
    .seh_pushreg %rbp
    subq $3136, %rsp
    .seh_stackalloc 3136
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 2952(%rbp)
    movq %rdi, 3128(%rbp)
    .seh_savereg %rdi, 3128
    movq %rsi, 3120(%rbp)
    .seh_savereg %rsi, 3120
    movdqu %xmm6, 3104(%rbp)
    .seh_savexmm %xmm6, 3104
    movdqu %xmm7, 3088(%rbp)
    .seh_savexmm %xmm7, 3088
    movdqu %xmm8, 3072(%rbp)
    .seh_savexmm %xmm8, 3072
    movdqu %xmm9, 3056(%rbp)
    .seh_savexmm %xmm9, 3056
    movdqu %xmm10, 3040(%rbp)
    .seh_savexmm %xmm10, 3040
    movdqu %xmm11, 3024(%rbp)
    .seh_savexmm %xmm11, 3024
    movdqu %xmm12, 3008(%rbp)
    .seh_savexmm %xmm12, 3008
    movdqu %xmm13, 2992(%rbp)
    .seh_savexmm %xmm13, 2992
    movdqu %xmm14, 2976(%rbp)
    .seh_savexmm %xmm14, 2976
    movdqu %xmm15, 2960(%rbp)
    .seh_savexmm %xmm15, 2960
    movq %rbx, 2944(%rbp)
    .seh_savereg %rbx, 2944
    movq %r12, 2936(%rbp)
    .seh_savereg %r12, 2936
    movq %r13, 2928(%rbp)
    .seh_savereg %r13, 2928
    movq %r14, 2920(%rbp)
    .seh_savereg %r14, 2920
    movq %r15, 2912(%rbp)
    .seh_savereg %r15, 2912
    .seh_endprologue
    movq %rcx, 3152(%rbp)
    movq %rdx, 3160(%rbp)
    movq %r8, 3168(%rbp)
    movq %r9, 3176(%rbp)
    movq 3160(%rbp), %rax
    movq %rax, 2864(%rbp)
    movq 3168(%rbp), %rax
    movq %rax, 2848(%rbp)
    movq 3176(%rbp), %rax
    movl %eax, 2832(%rbp)
    movq 3184(%rbp), %rax
    movl %eax, 2816(%rbp)
    leaq 2864(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 696(%rbp)
    movq 696(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 688(%rbp)
    movq 688(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r13d
    leaq .Ltext_12(%rip), %r14
    leaq 2800(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2768(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 2768(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_2
    jmp .L3_1
.L3_2:
    leaq 2880(%rbp), %rbx
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
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    leaq 2848(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 680(%rbp)
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    leaq 2716(%rbp), %rax
    movq %rax, 672(%rbp)
    movq 672(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    movq 696(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 664(%rbp)
    movq 664(%rbp), %r10
    movq (%r10), %r12
    movq 680(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 672(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkGetPhysicalDeviceSurfaceCapabilitiesKHR
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_13(%rip), %r15
    leaq 2696(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $43, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2664(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 2664(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_5
    jmp .L3_4
.L3_5:
    leaq 2880(%rbp), %r12
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
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_6:
.L3_4:
    leaq 2656(%rbp), %rax
    movq %rax, 656(%rbp)
    movq 672(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq 656(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 656(%rbp), %r10
    movl (%r10), %r14d
    movl $4294967295, %ecx
    cmpl %ecx, %r14d
    jne .L3_8
.L3_7:
    movq 672(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    leaq 2832(%rbp), %rax
    movq %rax, 648(%rbp)
    movq 648(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 640(%rbp)
    movl 640(%rbp), %eax
    movl %eax, %eax
    movq %rax, 632(%rbp)
    movq 672(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 624(%rbp)
    movq 624(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    subq $32, %rsp
    movq 632(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_min
    addq $32, %rsp
    movq %rax, 616(%rbp)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 616(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, 608(%rbp)
    movl 608(%rbp), %eax
    movq 656(%rbp), %r10
    movl %eax, (%r10)
    movq 656(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $4, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    leaq 2816(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq 624(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_min
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, %rbx
    movq %r13, %r10
    movl %ebx, (%r10)
    movl 608(%rbp), %eax
    movl %eax, 8(%rbp)
    jmp .L3_9
.L3_8:
    movl %r14d, %eax
    movl %eax, 8(%rbp)
.L3_9:
    movl 8(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_172
    jmp .L3_13
.L3_172:
    movl %r13d, %r14d
    jmp .L3_14
.L3_13:
    movq 656(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L3_14:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_10
    jmp .L3_11
.L3_10:
    leaq 2880(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_15:
    jmp .L3_12
.L3_11:
.L3_12:
    movl 8(%rbp), %eax
    movl $16384, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_173
    jmp .L3_19
.L3_173:
    movl %r13d, %r14d
    jmp .L3_20
.L3_19:
    movq 656(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $16384, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r14d
.L3_20:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_16
    jmp .L3_17
.L3_16:
    leaq 2880(%rbp), %rbx
    leaq lb_gpu_17surface_too_large(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq 2640(%rbp), %r13
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
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_21:
    jmp .L3_18
.L3_17:
.L3_18:
    movq 672(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $16, %ecx
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_174
    jmp .L3_25
.L3_174:
    movl %r13d, %r14d
    jmp .L3_26
.L3_25:
    movq 672(%rbp), %rax
    movq $44, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $1, %ecx
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L3_26:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_22
    jmp .L3_23
.L3_22:
    leaq 2880(%rbp), %rbx
    leaq lb_gpu_unavailable(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_15(%rip), %r12
    leaq 2624(%rbp), %r13
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
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_27:
    jmp .L3_24
.L3_23:
.L3_24:
    leaq 2620(%rbp), %rax
    movq %rax, 600(%rbp)
    movl $0, %eax
    movq 600(%rbp), %r10
    movl %eax, (%r10)
    movq 664(%rbp), %r10
    movq (%r10), %r14
    movq 680(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 600(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkGetPhysicalDeviceSurfaceFormatsKHR
    addq $32, %rsp
    movl %eax, %r14d
    leaq .Ltext_16(%rip), %r15
    leaq 2600(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $38, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2568(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 2568(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_29
    jmp .L3_28
.L3_29:
    leaq 2880(%rbp), %rbx
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
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_30:
.L3_28:
    leaq 2552(%rbp), %rax
    movq %rax, 120(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 112(%rbp)
    movq 600(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, 104(%rbp)
    leaq 2504(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 104(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L3_32
.L3_31:
    movq 96(%rbp), %rax
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
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_33
.L3_32:
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_34
    jmp .L3_35
.L3_35:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_34:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $4, %rax
    movq %rax, 24(%rsp)
    leaq 2480(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 2480(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 592(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl 592(%rbp), %eax
    andl %r15d, %eax
    movl %eax, 584(%rbp)
    movl 584(%rbp), %eax
    testl %eax, %eax
    jne .L3_36
    jmp .L3_37
.L3_36:
    movq 96(%rbp), %rax
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
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_33
.L3_37:
    movq %r12, %r10
    movq (%r10), %rbx
    movq 96(%rbp), %r10
    movq %rbx, (%r10)
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 104(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_33:
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_39
    jmp .L3_38
.L3_39:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 2880(%rbp), %r12
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
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_40:
.L3_38:
    movq 96(%rbp), %r10
    movq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 664(%rbp), %r10
    movq (%r10), %rbx
    movq 680(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 576(%rbp)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 600(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 576(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkGetPhysicalDeviceSurfaceFormatsKHR
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_19(%rip), %r12
    leaq 2464(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $30, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2432(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 2432(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_42
    jmp .L3_41
.L3_42:
    leaq 2880(%rbp), %rax
    movq %rax, 568(%rbp)
    movq %r12, %r10
    movq 568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 568(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq 2416(%rbp), %r14
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 576(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_44
    jmp .L3_43
.L3_44:
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
.L3_43:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq 568(%rbp), %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_45:
.L3_41:
    movq 600(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, 560(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 552(%rbp)
    movl $0, %eax
    movl %eax, %r14d
    movq $0, %rax
    movq %rax, %r15
.L3_46:
    movq 560(%rbp), %rcx
    cmpq %rcx, %r15
    jb .L3_47
.L3_175:
    movl %r14d, %eax
    movl %eax, 88(%rbp)
    jmp .L3_49
.L3_47:
    movq 552(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq 576(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_51
.L3_50:
    movq %r13, %r10
    movl (%r10), %ebx
    movl $50, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_176
    jmp .L3_56
.L3_176:
    movl %ebx, %r12d
    jmp .L3_57
.L3_56:
    movq %r13, %r10
    movl (%r10), %ebx
    movl $43, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L3_57:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_53
    jmp .L3_54
.L3_53:
    movq %r13, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl %eax, 88(%rbp)
    jmp .L3_49
.L3_58:
    jmp .L3_55
.L3_54:
.L3_55:
    movq %r13, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_60
.L3_59:
    movl $50, %eax
    movl %eax, %r14d
    jmp .L3_61
.L3_60:
.L3_61:
    movl %r14d, %ebx
    jmp .L3_52
.L3_51:
    movl %r14d, %ebx
.L3_52:
.L3_48:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl %ebx, %r14d
    movq %r12, %r15
    jmp .L3_46
.L3_49:
    movl 88(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L3_63
.L3_62:
    leaq 2880(%rbp), %rbx
    leaq lb_gpu_unavailable(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_25(%rip), %r12
    leaq 2400(%rbp), %r13
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
    leaq 2384(%rbp), %r12
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 576(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_66
    jmp .L3_65
.L3_66:
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
.L3_65:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_67:
    jmp .L3_64
.L3_63:
.L3_64:
    movq 672(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movq 672(%rbp), %rax
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
    jne .L3_71
    jmp .L3_177
.L3_177:
    movl %r13d, %r14d
    jmp .L3_72
.L3_71:
    cmpl %r12d, %ebx
    seta %al
    movzbl %al, %r14d
.L3_72:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_68
    jmp .L3_69
.L3_68:
    movl %r12d, %ebx
    jmp .L3_70
.L3_69:
.L3_70:
    leaq 2280(%rbp), %r12
    leaq 2176(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq $0, 96(%r11)
    movl $1000001000, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 680(%rbp), %r10
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
    movl 88(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $44, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 656(%rbp), %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $52, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $56, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $16, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq 672(%rbp), %rax
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
    movq $84, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $88, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $2, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $92, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
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
    movq 688(%rbp), %r10
    movq (%r10), %r13
    movq 680(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 544(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 544(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateSwapchainKHR
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_28(%rip), %r13
    leaq 2160(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $41, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 2128(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_74
    jmp .L3_73
.L3_74:
    leaq 2880(%rbp), %rbx
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
    leaq 2112(%rbp), %r12
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 576(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_76
    jmp .L3_75
.L3_76:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L3_75:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_77:
.L3_73:
    movq 680(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl 8(%rbp), %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq 680(%rbp), %rax
    movq $36, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 656(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 536(%rbp)
    movq 536(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 528(%rbp)
    movl 528(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq 680(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl 88(%rbp), %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq 696(%rbp), %rax
    leaq 1144(%rbp), %r10
    movq %rax, (%r10)
    movq 680(%rbp), %rax
    leaq 1128(%rbp), %r10
    movq %rax, (%r10)
    leaq 1112(%rbp), %r15
    movq %r15, %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    movq 664(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $126, %eax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkGetPhysicalDeviceFormatProperties
    addq $32, %rsp
    movq $4, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $512, %ecx
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_156
.L3_155:
    leaq 1160(%rbp), %rbx
    leaq lb_gpu_unavailable(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_47(%rip), %r12
    leaq 1096(%rbp), %r13
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
    leaq 2080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_171
.L3_158:
    jmp .L3_157
.L3_156:
.L3_157:
    leaq 1008(%rbp), %rax
    movq %rax, 168(%rbp)
    leaq 920(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $14, %eax
    movq 160(%rbp), %r10
    movl %eax, (%r10)
    movq 160(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movl $1, %eax
    movq 152(%rbp), %r10
    movl %eax, (%r10)
    movq 160(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movl $126, %eax
    movq 144(%rbp), %r10
    movl %eax, (%r10)
    leaq 904(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    movq %rbx, %r10
    movl (%r10), %r13d
    movq 136(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movl (%r10), %r13d
    movq 136(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r13d, (%r10)
    movq 136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 160(%rbp), %rax
    movq $28, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 136(%rbp), %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl 8(%r10), %eax
    movl %eax, 8(%r11)
    movq 160(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 160(%rbp), %rax
    movq $44, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 160(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 160(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $32, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 160(%rbp), %r10
    movq 168(%rbp), %r11
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
    movq 688(%rbp), %r10
    movq (%r10), %r13
    movq 680(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 168(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 128(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateImage
    addq $32, %rsp
    movl %eax, %r13d
    leaq .Ltext_48(%rip), %r15
    leaq 888(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $43, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 856(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 856(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_160
    jmp .L3_159
.L3_160:
    leaq 1160(%rbp), %rbx
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
    leaq 2080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_171
.L3_161:
.L3_159:
    leaq 832(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 688(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkGetImageMemoryRequirements
    addq $32, %rsp
    movq 680(%rbp), %rax
    movq $96, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $64, %rsp
    movq 696(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movl $1, %eax
    movq %rax, 24(%rsp)
    leaq 792(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_13vulkan_memory
    addq $64, %rsp
    leaq 792(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_163
    jmp .L3_162
.L3_163:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1160(%rbp), %r12
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
    movq %r12, %r10
    leaq 2080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_171
.L3_164:
.L3_162:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq 688(%rbp), %r10
    movq (%r10), %rbx
    movq 128(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkBindImageMemory
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_49(%rip), %r14
    leaq 776(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 744(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 744(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_166
    jmp .L3_165
.L3_166:
    leaq 1160(%rbp), %rbx
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
    leaq 2080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_171
.L3_167:
.L3_165:
    movq 680(%rbp), %rax
    movq $104, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 128(%rbp), %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq 696(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl $126, %eax
    movq %rax, 24(%rsp)
    movl $2, %eax
    movq %rax, 32(%rsp)
    leaq 704(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_17vulkan_image_view
    addq $48, %rsp
    leaq 704(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_169
    jmp .L3_168
.L3_169:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1160(%rbp), %r12
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
    movq %r12, %r10
    leaq 2080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_171
.L3_170:
.L3_168:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 1160(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 2080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L3_171:
    leaq 2080(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_79
    jmp .L3_78
.L3_79:
    leaq 2880(%rbp), %rbx
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
    leaq 2064(%rbp), %r13
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 576(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_81
    jmp .L3_80
.L3_81:
    movq $16, %rcx
    movq %r15, %r12
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
.L3_80:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_82:
.L3_78:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 2032(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_15vulkan_pipeline
    addq $32, %rsp
    leaq 2032(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_84
    jmp .L3_83
.L3_84:
    leaq 2880(%rbp), %rbx
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
    leaq 2016(%rbp), %r13
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 576(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_86
    jmp .L3_85
.L3_86:
    movq $16, %rcx
    movq %r15, %r12
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
.L3_85:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_87:
.L3_83:
    movl $0, %eax
    movq 600(%rbp), %r10
    movl %eax, (%r10)
    movq 688(%rbp), %r10
    movq (%r10), %rbx
    movq 544(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 600(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkGetSwapchainImagesKHR
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_32(%rip), %r12
    leaq 2000(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1968(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 1968(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_89
    jmp .L3_88
.L3_89:
    leaq 2880(%rbp), %rbx
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
    leaq 1952(%rbp), %r13
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 576(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_91
    jmp .L3_90
.L3_91:
    movq $16, %rcx
    movq %r15, %r12
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
.L3_90:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_92:
.L3_88:
    leaq 1936(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 600(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, 72(%rbp)
    leaq 1888(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 72(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L3_94
.L3_93:
    movq 64(%rbp), %rax
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
    movq 64(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_95
.L3_94:
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_96
    jmp .L3_97
.L3_97:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_96:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1864(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 1864(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 520(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 520(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L3_98
    jmp .L3_99
.L3_98:
    movq 64(%rbp), %rax
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
    movq 64(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_95
.L3_99:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 64(%rbp), %r10
    movq %rbx, (%r10)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 72(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 64(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_95:
    movq 64(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_101
    jmp .L3_100
.L3_101:
    movq 64(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 2880(%rbp), %r12
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
    leaq 1848(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_103
    jmp .L3_102
.L3_103:
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
.L3_102:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_104:
.L3_100:
    movq 64(%rbp), %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 688(%rbp), %r10
    movq (%r10), %rbx
    movq 544(%rbp), %r10
    movq (%r10), %r12
    movq 80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 512(%rbp)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 600(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 512(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkGetSwapchainImagesKHR
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_35(%rip), %r12
    leaq 1832(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $31, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1800(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 1800(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_106
    jmp .L3_105
.L3_106:
    leaq 2880(%rbp), %rax
    movq %rax, 504(%rbp)
    movq %r12, %r10
    movq 504(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 504(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq 1784(%rbp), %r14
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 496(%rbp)
    movq 496(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 488(%rbp)
    movq 488(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 480(%rbp)
    movq 512(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 480(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 472(%rbp)
    movq 472(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_108
    jmp .L3_107
.L3_108:
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
.L3_107:
    leaq 1768(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 472(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_110
    jmp .L3_109
.L3_110:
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
.L3_109:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq 504(%rbp), %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_111:
.L3_105:
    movq 680(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq lb_memory_heap(%rip), %r14
    movq 600(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, 48(%rbp)
    leaq 1720(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 48(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L3_113
.L3_112:
    movq 40(%rbp), %rax
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
    movq 40(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_114
.L3_113:
    movq 48(%rbp), %rax
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
    jne .L3_115
    jmp .L3_116
.L3_116:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_115:
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1696(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 1696(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 464(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 464(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L3_117
    jmp .L3_118
.L3_117:
    movq 40(%rbp), %rax
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
    movq 40(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_114
.L3_118:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 40(%rbp), %r10
    movq %rbx, (%r10)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 48(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 40(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_114:
    movq 40(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_120
    jmp .L3_119
.L3_120:
    movq 40(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 2880(%rbp), %rax
    movq %rax, 456(%rbp)
    movq %rbx, %r10
    movq 456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 456(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 1680(%rbp), %rbx
    movq 80(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 512(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_122
    jmp .L3_121
.L3_122:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L3_121:
    leaq 1664(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_124
    jmp .L3_123
.L3_124:
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
.L3_123:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq 456(%rbp), %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_125:
.L3_119:
    movq 40(%rbp), %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 600(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq %rax, 448(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    leaq 1624(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 384(%rbp)
    leaq 1576(%rbp), %rax
    movq %rax, 368(%rbp)
    leaq 1560(%rbp), %rax
    movq %rax, 360(%rbp)
    movq 680(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    leaq 1496(%rbp), %rax
    movq %rax, 336(%rbp)
    leaq 1432(%rbp), %rax
    movq %rax, 328(%rbp)
    movq 680(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    movq 328(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 312(%rbp)
    movq 328(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    movq 328(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    movq 328(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    movq 328(%rbp), %rax
    movq $52, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    movq 328(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    leaq .Ltext_43(%rip), %rax
    movq %rax, 264(%rbp)
    leaq 1416(%rbp), %rax
    movq %rax, 256(%rbp)
    movq 256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    leaq 1384(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    leaq 1328(%rbp), %rax
    movq %rax, 224(%rbp)
    leaq 1304(%rbp), %rax
    movq %rax, 216(%rbp)
    leaq .Ltext_45(%rip), %rax
    movq %rax, 208(%rbp)
    leaq 1288(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 1256(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_126:
    movq 448(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L3_129
.L3_127:
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 440(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 424(%rbp), %rcx
    addq %rcx, %r14
    movq 416(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 408(%rbp)
    movq 408(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, 400(%rbp)
    movq 512(%rbp), %rax
    movq 400(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq 440(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 424(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq 392(%rbp), %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq 696(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl 88(%rbp), %eax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    leaq 1624(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_17vulkan_image_view
    addq $48, %rsp
    movq 384(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_131
    jmp .L3_130
.L3_131:
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 2880(%rbp), %rax
    movq %rax, 376(%rbp)
    movq %rbx, %r10
    movq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 376(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 1608(%rbp), %rbx
    movq 408(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 512(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_133
    jmp .L3_132
.L3_133:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L3_132:
    leaq 1592(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_135
    jmp .L3_134
.L3_135:
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
.L3_134:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq 376(%rbp), %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_136:
.L3_130:
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq 440(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 424(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 360(%rbp), %r10
    movq %rbx, (%r10)
    movq 352(%rbp), %r10
    movq (%r10), %rbx
    movq 344(%rbp), %r10
    movq %rbx, (%r10)
    movq 360(%rbp), %r10
    movq 368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movl $37, %eax
    movq 328(%rbp), %r10
    movl %eax, (%r10)
    movq 320(%rbp), %r10
    movq (%r10), %rbx
    movq 312(%rbp), %r10
    movq %rbx, (%r10)
    movl $2, %eax
    movq 304(%rbp), %r10
    movl %eax, (%r10)
    movq 368(%rbp), %rax
    movq 296(%rbp), %r10
    movq %rax, (%r10)
    movl 8(%rbp), %eax
    movq 288(%rbp), %r10
    movl %eax, (%r10)
    movl 528(%rbp), %eax
    movq 280(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movq 272(%rbp), %r10
    movl %eax, (%r10)
    movq 328(%rbp), %r10
    movq 336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 688(%rbp), %r10
    movq (%r10), %rbx
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 440(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 424(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $16, %rcx
    addq %rcx, %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 336(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateFramebuffer
    addq $32, %rsp
    movl %eax, %ebx
    movq 264(%rbp), %rax
    movq 256(%rbp), %r10
    movq %rax, (%r10)
    movq $41, %rax
    movq 248(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 256(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1384(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    movq 240(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_138
    jmp .L3_137
.L3_138:
    leaq 2880(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 24(%rbp), %r10
    movq 232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 232(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 1368(%rbp), %r12
    movq 408(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 512(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_140
    jmp .L3_139
.L3_140:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L3_139:
    leaq 1352(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_142
    jmp .L3_141
.L3_142:
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
.L3_141:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq 232(%rbp), %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_143:
.L3_137:
    movq 216(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $9, %eax
    movq 216(%rbp), %r10
    movl %eax, (%r10)
    movq 216(%rbp), %r10
    movq 224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 688(%rbp), %r10
    movq (%r10), %rbx
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 440(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_52(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 424(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $24, %rcx
    addq %rcx, %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 224(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateSemaphore
    addq $32, %rsp
    movl %eax, %ebx
    movq 208(%rbp), %rax
    movq 200(%rbp), %r10
    movq %rax, (%r10)
    movq $52, %rax
    movq 192(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 200(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1256(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    movq 184(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_145
    jmp .L3_144
.L3_145:
    leaq 2880(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 16(%rbp), %r10
    movq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 176(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 1240(%rbp), %r12
    movq 408(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 512(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_147
    jmp .L3_146
.L3_147:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L3_146:
    leaq 1224(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_149
    jmp .L3_148
.L3_149:
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
.L3_148:
    subq $32, %rsp
    movq 696(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 680(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq 176(%rbp), %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
.L3_150:
.L3_144:
.L3_128:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L3_126
.L3_129:
    movq 680(%rbp), %rax
    movq $136, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 1208(%rbp), %rbx
    movq 80(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 512(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_152
    jmp .L3_151
.L3_152:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L3_151:
    leaq 1192(%rbp), %rbx
    movq 120(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_154
    jmp .L3_153
.L3_154:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L3_153:
    leaq 2880(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2952(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2952(%rbp), %rax
    movq 3128(%rbp), %rdi
    movq 3120(%rbp), %rsi
    movdqu 3104(%rbp), %xmm6
    movdqu 3088(%rbp), %xmm7
    movdqu 3072(%rbp), %xmm8
    movdqu 3056(%rbp), %xmm9
    movdqu 3040(%rbp), %xmm10
    movdqu 3024(%rbp), %xmm11
    movdqu 3008(%rbp), %xmm12
    movdqu 2992(%rbp), %xmm13
    movdqu 2976(%rbp), %xmm14
    movdqu 2960(%rbp), %xmm15
    movq 2944(%rbp), %rbx
    movq 2936(%rbp), %r12
    movq 2928(%rbp), %r13
    movq 2920(%rbp), %r14
    movq 2912(%rbp), %r15
    leaq 3136(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_24vulkan_swapchain_destroy
lb_gpu_24vulkan_swapchain_destroy:
    .seh_proc lb_gpu_24vulkan_swapchain_destroy
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 440(%rbp)
    .seh_savereg %rdi, 440
    movq %rsi, 432(%rbp)
    .seh_savereg %rsi, 432
    movdqu %xmm6, 416(%rbp)
    .seh_savexmm %xmm6, 416
    movdqu %xmm7, 400(%rbp)
    .seh_savexmm %xmm7, 400
    movdqu %xmm8, 384(%rbp)
    .seh_savexmm %xmm8, 384
    movdqu %xmm9, 368(%rbp)
    .seh_savexmm %xmm9, 368
    movdqu %xmm10, 352(%rbp)
    .seh_savexmm %xmm10, 352
    movdqu %xmm11, 336(%rbp)
    .seh_savexmm %xmm11, 336
    movdqu %xmm12, 320(%rbp)
    .seh_savexmm %xmm12, 320
    movdqu %xmm13, 304(%rbp)
    .seh_savexmm %xmm13, 304
    movdqu %xmm14, 288(%rbp)
    .seh_savexmm %xmm14, 288
    movdqu %xmm15, 272(%rbp)
    .seh_savexmm %xmm15, 272
    movq %rbx, 264(%rbp)
    .seh_savereg %rbx, 264
    movq %r12, 256(%rbp)
    .seh_savereg %r12, 256
    movq %r13, 248(%rbp)
    .seh_savereg %r13, 248
    movq %r14, 240(%rbp)
    .seh_savereg %r14, 240
    movq %r15, 232(%rbp)
    .seh_savereg %r15, 232
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 464(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 472(%rbp), %rax
    movq %rax, 200(%rbp)
    leaq 200(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    leaq 168(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 80(%rbp)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 64(%rbp)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L4_1:
    movq 96(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L4_4
.L4_2:
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
    movq 88(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_6
.L4_5:
    movq 80(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyFramebuffer
    addq $32, %rsp
    jmp .L4_7
.L4_6:
.L4_7:
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_9
.L4_8:
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyImageView
    addq $32, %rsp
    jmp .L4_10
.L4_9:
.L4_10:
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_12
.L4_11:
    movq 48(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroySemaphore
    addq $32, %rsp
    jmp .L4_13
.L4_12:
.L4_13:
.L4_3:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    jmp .L4_1
.L4_4:
    movq 104(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_15
.L4_14:
    leaq lb_memory_heap(%rip), %rbx
    leaq 152(%rbp), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L4_18
    jmp .L4_17
.L4_18:
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L4_17:
    jmp .L4_16
.L4_15:
.L4_16:
    leaq 136(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 120(%rbp), %rax
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
    jne .L4_20
.L4_19:
    leaq 216(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyPipeline
    addq $32, %rsp
    jmp .L4_21
.L4_20:
.L4_21:
    movq 120(%rbp), %rax
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
    jne .L4_23
.L4_22:
    leaq 216(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyPipeline
    addq $32, %rsp
    jmp .L4_24
.L4_23:
.L4_24:
    movq 120(%rbp), %rax
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
    jne .L4_26
.L4_25:
    leaq 216(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $16, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyDescriptorSetLayout
    addq $32, %rsp
    jmp .L4_27
.L4_26:
.L4_27:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 120(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_29
.L4_28:
    leaq 216(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 40(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyPipelineLayout
    addq $32, %rsp
    jmp .L4_30
.L4_29:
.L4_30:
    movq 120(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_32
.L4_31:
    leaq 216(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 32(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyRenderPass
    addq $32, %rsp
    jmp .L4_33
.L4_32:
.L4_33:
    movq 120(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_35
.L4_34:
    leaq 216(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 24(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyImageView
    addq $32, %rsp
    jmp .L4_36
.L4_35:
.L4_36:
    movq 120(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_38
.L4_37:
    leaq 216(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 16(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyImage
    addq $32, %rsp
    jmp .L4_39
.L4_38:
.L4_39:
    movq 120(%rbp), %rax
    movq $96, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L4_41
.L4_40:
    leaq 216(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 8(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkFreeMemory
    addq $32, %rsp
    jmp .L4_42
.L4_41:
.L4_42:
    movq 120(%rbp), %rax
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
    jne .L4_44
.L4_43:
    leaq 216(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroySwapchainKHR
    addq $32, %rsp
    jmp .L4_45
.L4_44:
.L4_45:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq 32(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq 16(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq 8(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 120(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq 120(%rbp), %rax
    movq $36, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq 120(%rbp), %rax
    movq $136, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 264(%rbp), %rbx
    movq 256(%rbp), %r12
    movq 248(%rbp), %r13
    movq 240(%rbp), %r14
    movq 232(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_22vulkan_surface_destroy
lb_gpu_22vulkan_surface_destroy:
    .seh_proc lb_gpu_22vulkan_surface_destroy
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 88(%rbp)
    .seh_savereg %rbx, 88
    movq %r12, 80(%rbp)
    .seh_savereg %r12, 80
    movq %r13, 72(%rbp)
    .seh_savereg %r13, 72
    movq %r14, 64(%rbp)
    .seh_savereg %r14, 64
    movq %r15, 56(%rbp)
    .seh_savereg %r15, 56
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r13d
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_24vulkan_swapchain_destroy
    addq $32, %rsp
    movq $128, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L5_2
.L5_1:
    movq %r12, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroySemaphore
    addq $32, %rsp
    jmp .L5_3
.L5_2:
.L5_3:
    movq $112, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L5_5
.L5_4:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyCommandPool
    addq $32, %rsp
    jmp .L5_6
.L5_5:
.L5_6:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_8
.L5_7:
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroySurfaceKHR
    addq $32, %rsp
    jmp .L5_9
.L5_8:
.L5_9:
    leaq lb_memory_heap(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $144, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_11
    jmp .L5_10
.L5_11:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L5_10:
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
    movq 88(%rbp), %rbx
    movq 80(%rbp), %r12
    movq 72(%rbp), %r13
    movq 64(%rbp), %r14
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_14vulkan_surface_0init
    .text

    .section .rdata,"dr"
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

    .section .rdata,"dr"
    .p2align 3
