    .weak lb_memory_copy_0g1_u32
    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_gpu_13vulkan_render_0init
lb_gpu_13vulkan_render_0init:
    .seh_proc lb_gpu_13vulkan_render_0init
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
    .globl lb_gpu_21vulkan_upload_destroy
lb_gpu_21vulkan_upload_destroy:
    .seh_proc lb_gpu_21vulkan_upload_destroy
    pushq %rbp
    .seh_pushreg %rbp
    subq $256, %rsp
    .seh_stackalloc 256
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 248(%rbp)
    .seh_savereg %rdi, 248
    movq %rsi, 240(%rbp)
    .seh_savereg %rsi, 240
    movdqu %xmm6, 224(%rbp)
    .seh_savexmm %xmm6, 224
    movdqu %xmm7, 208(%rbp)
    .seh_savexmm %xmm7, 208
    movdqu %xmm8, 192(%rbp)
    .seh_savexmm %xmm8, 192
    movdqu %xmm9, 176(%rbp)
    .seh_savexmm %xmm9, 176
    movdqu %xmm10, 160(%rbp)
    .seh_savexmm %xmm10, 160
    movdqu %xmm11, 144(%rbp)
    .seh_savexmm %xmm11, 144
    movdqu %xmm12, 128(%rbp)
    .seh_savexmm %xmm12, 128
    movdqu %xmm13, 112(%rbp)
    .seh_savexmm %xmm13, 112
    movdqu %xmm14, 96(%rbp)
    .seh_savexmm %xmm14, 96
    movdqu %xmm15, 80(%rbp)
    .seh_savexmm %xmm15, 80
    movq %rbx, 72(%rbp)
    .seh_savereg %rbx, 72
    movq %r12, 64(%rbp)
    .seh_savereg %r12, 64
    movq %r13, 56(%rbp)
    .seh_savereg %r13, 56
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 280(%rbp), %r10
    leaq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 8(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_2
.L1_1:
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyDescriptorPool
    addq $32, %rsp
    jmp .L1_3
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_5
.L1_4:
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkDestroyBuffer
    addq $32, %rsp
    jmp .L1_6
.L1_5:
.L1_6:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_8
.L1_7:
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    call vkFreeMemory
    addq $32, %rsp
    jmp .L1_9
.L1_8:
.L1_9:
    movq 248(%rbp), %rdi
    movq 240(%rbp), %rsi
    movdqu 224(%rbp), %xmm6
    movdqu 208(%rbp), %xmm7
    movdqu 192(%rbp), %xmm8
    movdqu 176(%rbp), %xmm9
    movdqu 160(%rbp), %xmm10
    movdqu 144(%rbp), %xmm11
    movdqu 128(%rbp), %xmm12
    movdqu 112(%rbp), %xmm13
    movdqu 96(%rbp), %xmm14
    movdqu 80(%rbp), %xmm15
    movq 72(%rbp), %rbx
    movq 64(%rbp), %r12
    movq 56(%rbp), %r13
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_13vulkan_upload
lb_gpu_13vulkan_upload:
    .seh_proc lb_gpu_13vulkan_upload
    pushq %rbp
    .seh_pushreg %rbp
    subq $1472, %rsp
    .seh_stackalloc 1472
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1288(%rbp)
    movq %rdi, 1464(%rbp)
    .seh_savereg %rdi, 1464
    movq %rsi, 1456(%rbp)
    .seh_savereg %rsi, 1456
    movdqu %xmm6, 1440(%rbp)
    .seh_savexmm %xmm6, 1440
    movdqu %xmm7, 1424(%rbp)
    .seh_savexmm %xmm7, 1424
    movdqu %xmm8, 1408(%rbp)
    .seh_savexmm %xmm8, 1408
    movdqu %xmm9, 1392(%rbp)
    .seh_savexmm %xmm9, 1392
    movdqu %xmm10, 1376(%rbp)
    .seh_savexmm %xmm10, 1376
    movdqu %xmm11, 1360(%rbp)
    .seh_savexmm %xmm11, 1360
    movdqu %xmm12, 1344(%rbp)
    .seh_savexmm %xmm12, 1344
    movdqu %xmm13, 1328(%rbp)
    .seh_savexmm %xmm13, 1328
    movdqu %xmm14, 1312(%rbp)
    .seh_savexmm %xmm14, 1312
    movdqu %xmm15, 1296(%rbp)
    .seh_savexmm %xmm15, 1296
    movq %rbx, 1280(%rbp)
    .seh_savereg %rbx, 1280
    movq %r12, 1272(%rbp)
    .seh_savereg %r12, 1272
    movq %r13, 1264(%rbp)
    .seh_savereg %r13, 1264
    movq %r14, 1256(%rbp)
    .seh_savereg %r14, 1256
    movq %r15, 1248(%rbp)
    .seh_savereg %r15, 1248
    .seh_endprologue
    movq %rcx, 1488(%rbp)
    movq %rdx, 1496(%rbp)
    movq %r8, 1504(%rbp)
    movq %r9, 1512(%rbp)
    movq 1496(%rbp), %rax
    movq %rax, 1168(%rbp)
    movq 1504(%rbp), %r10
    leaq 1096(%rbp), %r11
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
    movq 1512(%rbp), %rax
    movq %rax, 1080(%rbp)
    leaq 1048(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 176(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 1096(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_2
.L2_1:
    leaq 1184(%rbp), %r12
    movq 176(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_2:
.L2_3:
    movq %r13, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 160(%rbp)
    movq 168(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 144(%rbp)
    subq $32, %rsp
    movq $1, %rax
    movq %rax, 0(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 128(%rbp)
    movq 128(%rbp), %rax
    movq $31, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
.L2_6:
    movq $32, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 112(%rbp)
    movq 160(%rbp), %rax
    movq 112(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 104(%rbp)
    leaq 992(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq 936(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $12, %eax
    movq 88(%rbp), %r10
    movl %eax, (%r10)
    movq 88(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 104(%rbp), %rax
    movq 80(%rbp), %r10
    movq %rax, (%r10)
    movq 88(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movl $160, %eax
    movq 72(%rbp), %r10
    movl %eax, (%r10)
    movq 88(%rbp), %r10
    movq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 1168(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 96(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 176(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateBuffer
    addq $32, %rsp
    movl %eax, %r13d
    leaq .Ltext_5(%rip), %r12
    leaq 920(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $45, %rax
    movq %r12, %r10
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
    leaq 888(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 888(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_8
    jmp .L2_7
.L2_8:
    leaq 1184(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_7:
    leaq 864(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq 176(%rbp), %r10
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
    call vkGetBufferMemoryRequirements
    addq $32, %rsp
    movq 176(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movl $6, %eax
    movq %rax, 24(%rsp)
    leaq 824(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_13vulkan_memory
    addq $64, %rsp
    leaq 824(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_11
    jmp .L2_10
.L2_11:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1184(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %r12, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_10:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r15
    movq 176(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkBindBufferMemory
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_6(%rip), %r14
    leaq 808(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $39, %rax
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
    leaq 776(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 776(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_14
    jmp .L2_13
.L2_14:
    leaq 1184(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_13:
    leaq 768(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 0(%rbp), %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movq %rbx, %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkMapMemory
    addq $48, %rsp
    movl %eax, %r13d
    leaq .Ltext_7(%rip), %r14
    leaq 752(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $40, %rax
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
    leaq 720(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 720(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_17
    jmp .L2_16
.L2_17:
    leaq 1184(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_16:
    movq %rbx, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_19
    jmp .L2_20
.L2_19:
    jmp .L2_21
.L2_20:
    leaq 1184(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq 704(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_21:
    leaq 688(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq $1, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, %r14
    leaq 672(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl $0, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L2_24
.L2_23:
    movq 168(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u32
    addq $64, %rsp
    jmp .L2_25
.L2_24:
.L2_25:
    movq 112(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    leaq 656(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 160(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 168(%rbp), %r10
    movq (%r10), %rbx
    leaq 640(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 160(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 160(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call vkUnmapMemory
    addq $32, %rsp
    leaq 632(%rbp), %rbx
    leaq 624(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movl $7, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 584(%rbp), %r12
    leaq 544(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movl $33, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $20, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 176(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCreateDescriptorPool
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_10(%rip), %r12
    leaq 528(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $48, %rax
    movq %r12, %r10
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
    leaq 496(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 496(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_27
    jmp .L2_26
.L2_27:
    leaq 1184(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_26:
    leaq 488(%rbp), %rbx
    leaq 1080(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 448(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 408(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movl $34, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %r14, %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r13, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 176(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkAllocateDescriptorSets
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_11(%rip), %r13
    leaq 392(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $49, %rax
    movq %r13, %r10
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
    leaq 360(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 360(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_30
    jmp .L2_29
.L2_30:
    leaq 1184(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
.L2_29:
    leaq 336(%rbp), %rbx
    leaq 312(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 176(%rbp), %r10
    movq (%r10), %r14
    movq 16(%rbp), %r10
    movq %r14, (%r10)
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 128(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 16(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 184(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movl $35, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $36, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $7, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r14, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkUpdateDescriptorSets
    addq $48, %rsp
    leaq 1184(%rbp), %rbx
    movq 176(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1288(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1288(%rbp), %rax
    movq 1464(%rbp), %rdi
    movq 1456(%rbp), %rsi
    movdqu 1440(%rbp), %xmm6
    movdqu 1424(%rbp), %xmm7
    movdqu 1408(%rbp), %xmm8
    movdqu 1392(%rbp), %xmm9
    movdqu 1376(%rbp), %xmm10
    movdqu 1360(%rbp), %xmm11
    movdqu 1344(%rbp), %xmm12
    movdqu 1328(%rbp), %xmm13
    movdqu 1312(%rbp), %xmm14
    movdqu 1296(%rbp), %xmm15
    movq 1280(%rbp), %rbx
    movq 1272(%rbp), %r12
    movq 1264(%rbp), %r13
    movq 1256(%rbp), %r14
    movq 1248(%rbp), %r15
    leaq 1472(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_13vulkan_render
lb_gpu_13vulkan_render:
    .seh_proc lb_gpu_13vulkan_render
    pushq %rbp
    .seh_pushreg %rbp
    subq $2544, %rsp
    .seh_stackalloc 2544
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 2360(%rbp)
    movq %rdi, 2536(%rbp)
    .seh_savereg %rdi, 2536
    movq %rsi, 2528(%rbp)
    .seh_savereg %rsi, 2528
    movdqu %xmm6, 2512(%rbp)
    .seh_savexmm %xmm6, 2512
    movdqu %xmm7, 2496(%rbp)
    .seh_savexmm %xmm7, 2496
    movdqu %xmm8, 2480(%rbp)
    .seh_savexmm %xmm8, 2480
    movdqu %xmm9, 2464(%rbp)
    .seh_savexmm %xmm9, 2464
    movdqu %xmm10, 2448(%rbp)
    .seh_savexmm %xmm10, 2448
    movdqu %xmm11, 2432(%rbp)
    .seh_savexmm %xmm11, 2432
    movdqu %xmm12, 2416(%rbp)
    .seh_savexmm %xmm12, 2416
    movdqu %xmm13, 2400(%rbp)
    .seh_savexmm %xmm13, 2400
    movdqu %xmm14, 2384(%rbp)
    .seh_savexmm %xmm14, 2384
    movdqu %xmm15, 2368(%rbp)
    .seh_savexmm %xmm15, 2368
    movq %rbx, 2352(%rbp)
    .seh_savereg %rbx, 2352
    movq %r12, 2344(%rbp)
    .seh_savereg %r12, 2344
    movq %r13, 2336(%rbp)
    .seh_savereg %r13, 2336
    movq %r14, 2328(%rbp)
    .seh_savereg %r14, 2328
    movq %r15, 2320(%rbp)
    .seh_savereg %r15, 2320
    .seh_endprologue
    movq %rcx, 2560(%rbp)
    movq %rdx, 2568(%rbp)
    movq %r8, 2576(%rbp)
    movq %r9, 2584(%rbp)
    movq 2568(%rbp), %rax
    movq %rax, 2264(%rbp)
    movq 2576(%rbp), %rax
    leaq 2248(%rbp), %r10
    movq %rax, 0(%r10)
    movq 2584(%rbp), %rax
    movq %rax, 2232(%rbp)
    movq 2592(%rbp), %r10
    leaq 2160(%rbp), %r11
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
    movq 2600(%rbp), %r10
    leaq 2136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 2232(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 656(%rbp)
    movq 656(%rbp), %rax
    movq $137, %rcx
    addq %rcx, %rax
    movq %rax, 648(%rbp)
    movq 648(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_16execution_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq 2120(%rbp), %r14
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
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_2:
.L3_3:
    leaq 2248(%rbp), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 2080(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_visible
    addq $32, %rsp
    leaq 2080(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_9
    jmp .L3_8
.L3_9:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 2280(%rbp), %r12
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
    movq %r12, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
    movq %r15, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_6
.L3_5:
    leaq 2280(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_6:
.L3_7:
    leaq 2040(%rbp), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 1968(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_size
    addq $32, %rsp
    leaq 1968(%rbp), %r12
    movq $64, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_13
    jmp .L3_12
.L3_13:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 2280(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_12:
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_126
    jmp .L3_18
.L3_126:
    movl %r13d, %r12d
    jmp .L3_19
.L3_18:
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm14
    ucomisd %xmm14, %xmm13
    setae %al
    movzbl %al, %r12d
.L3_19:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L3_15
    jmp .L3_16
.L3_15:
    leaq 2280(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_16:
.L3_17:
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_127
    jmp .L3_24
.L3_127:
    movl %r12d, %r13d
    jmp .L3_25
.L3_24:
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm14
    ucomisd %xmm13, %xmm14
    seta %al
    movzbl %al, %r13d
.L3_25:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L3_21
    jmp .L3_22
.L3_21:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_17surface_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq 1952(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $63, %rax
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
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_22:
.L3_23:
    leaq .Ltext_16(%rip), %r12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_u
    addq $32, %rsp
    movq %rax, %r12
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm13
    leaq .Ltext_17(%rip), %r13
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_u
    addq $32, %rsp
    movq %rax, %r13
    movq 656(%rbp), %rax
    movq $136, %rcx
    addq %rcx, %rax
    movq %rax, 640(%rbp)
    movq 640(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_128
    jmp .L3_30
.L3_128:
    movl %r14d, %r15d
    jmp .L3_31
.L3_30:
    movq 656(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L3_31:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L3_129
    jmp .L3_32
.L3_129:
    movl %r14d, %r15d
    jmp .L3_33
.L3_32:
    movq 656(%rbp), %rax
    movq $36, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L3_33:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L3_27
    jmp .L3_28
.L3_27:
    leaq 2264(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 656(%rbp), %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    movl %r13d, %eax
    movq %rax, 32(%rsp)
    leaq 1920(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_16vulkan_swapchain
    addq $48, %rsp
    leaq 1920(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_35
    jmp .L3_34
.L3_35:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_34:
    jmp .L3_29
.L3_28:
.L3_29:
    movq 656(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 632(%rbp)
    movq 632(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L3_38
.L3_37:
    leaq 2280(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_38:
.L3_39:
    leaq 1888(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 2264(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 624(%rbp)
    leaq 2160(%rbp), %rax
    movq %rax, 616(%rbp)
    movq 656(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $112, %rsp
    movq 624(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 616(%rbp), %r10
    leaq 32(%rsp), %r11
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
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    leaq 1824(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_13vulkan_upload
    addq $112, %rsp
    leaq 1824(%rbp), %r14
    movq $56, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_42
    jmp .L3_41
.L3_42:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 2280(%rbp), %r12
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
    movq %r12, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_41:
    movq %r14, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 624(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 608(%rbp)
    movq 608(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 600(%rbp)
    movq 656(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, 592(%rbp)
    movq 592(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 584(%rbp)
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 584(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkResetCommandPool
    addq $32, %rsp
    movl %eax, 576(%rbp)
    leaq .Ltext_18(%rip), %rax
    movq %rax, 568(%rbp)
    leaq 1808(%rbp), %rax
    movq %rax, 560(%rbp)
    movq 568(%rbp), %rax
    movq 560(%rbp), %r10
    movq %rax, (%r10)
    movq 560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 552(%rbp)
    movq $42, %rax
    movq 552(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl 576(%rbp), %eax
    movq %rax, 8(%rsp)
    movq 560(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1776(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 1776(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 544(%rbp)
    movq 544(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 536(%rbp)
    movl 536(%rbp), %eax
    testl %eax, %eax
    jne .L3_45
    jmp .L3_44
.L3_45:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r15, %r10
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
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_44:
    leaq 1772(%rbp), %rax
    movq %rax, 528(%rbp)
    movl $0, %eax
    movq 528(%rbp), %r10
    movl %eax, (%r10)
    movq 608(%rbp), %r10
    movq (%r10), %r15
    movq 632(%rbp), %r10
    movq (%r10), %r12
    movq 656(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, 520(%rbp)
    movq 520(%rbp), %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1000000000, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movq 528(%rbp), %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkAcquireNextImageKHR
    addq $48, %rsp
    movl %eax, 512(%rbp)
    movl 512(%rbp), %eax
    movl $1, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_130
    jmp .L3_50
.L3_130:
    movl %r13d, %r15d
    jmp .L3_51
.L3_50:
    movl 512(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
.L3_51:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_47
    jmp .L3_48
.L3_47:
    leaq 2280(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_48:
.L3_49:
    leaq lb_gpu_24VK_ERROR_OUT_OF_DATE_KHR(%rip), %rax
    movq %rax, 504(%rbp)
    movq 504(%rbp), %r10
    movslq (%r10), %r15
    movl 512(%rbp), %eax
    cmpl %r15d, %eax
    jne .L3_54
.L3_53:
    movl $1, %eax
    movq 640(%rbp), %r10
    movb %al, (%r10)
    leaq 2280(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_54:
.L3_55:
    movl 512(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_60
    jmp .L3_131
.L3_131:
    movl %r15d, %r13d
    jmp .L3_61
.L3_60:
    movl 512(%rbp), %eax
    movl $1000001003, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L3_61:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L3_57
    jmp .L3_58
.L3_57:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_16execution_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq 1752(%rbp), %r14
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
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_58:
.L3_59:
    leaq 1720(%rbp), %r13
    leaq 1688(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movl $42, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 496(%rbp)
    movl $1, %eax
    movq 496(%rbp), %r10
    movl %eax, (%r10)
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 656(%rbp), %rax
    movq $120, %rcx
    addq %rcx, %rax
    movq %rax, 488(%rbp)
    movq 488(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call vkBeginCommandBuffer
    addq $32, %rsp
    movl %eax, %r13d
    leaq .Ltext_20(%rip), %r15
    leaq 1672(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $40, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1640(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 1640(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_64
    jmp .L3_63
.L3_64:
    leaq 2280(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq 608(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r13d
    movq 656(%rbp), %rax
    leaq 664(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 648(%rbp), %r10
    movb %al, (%r10)
.L3_121:
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %r12, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_63:
    leaq 1608(%rbp), %rax
    movq %rax, 480(%rbp)
    movq 480(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 1592(%rbp), %rax
    movq %rax, 472(%rbp)
    leaq 2136(%rbp), %rax
    movq %rax, 464(%rbp)
    movq 464(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 472(%rbp), %r10
    movss %xmm12, (%r10)
    movq 464(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 456(%rbp)
    movq 456(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 472(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    movq 448(%rbp), %r10
    movss %xmm12, (%r10)
    movq 464(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    movq 440(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 472(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %r10
    movss %xmm12, (%r10)
    movl $1065353216, %eax
    movd %eax, %xmm8
    movss %xmm8, 424(%rbp)
    movq 472(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movss 424(%rbp), %xmm8
    movq 416(%rbp), %r10
    movss %xmm8, (%r10)
    movq 472(%rbp), %r10
    movq 480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 480(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movss 424(%rbp), %xmm8
    movq 408(%rbp), %r10
    movss %xmm8, (%r10)
    leaq 1528(%rbp), %rax
    movq %rax, 400(%rbp)
    leaq 1464(%rbp), %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movl $43, %eax
    movq 392(%rbp), %r10
    movl %eax, (%r10)
    movq 656(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 384(%rbp)
    movq 384(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 376(%rbp)
    movq 392(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 376(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 528(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq 656(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 368(%rbp)
    movq 368(%rbp), %r10
    movq (%r10), %r12
    movq 368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 352(%rbp)
    movq 352(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    imulq %rcx, %r13
    addq %r13, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 392(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 1448(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 1440(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    movq 656(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq 344(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 336(%rbp)
    movl 336(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 656(%rbp), %rax
    movq $36, %rcx
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    movq 328(%rbp), %r10
    movl (%r10), %r15d
    movq $4, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 392(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 392(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $2, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq 392(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 480(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 392(%rbp), %r10
    movq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 488(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 400(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkCmdBeginRenderPass
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L3_67
.L3_66:
    leaq 1432(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 1424(%rbp), %r13
    movq 40(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq 488(%rbp), %r10
    movq (%r10), %r14
    movq 656(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    movq 320(%rbp), %r10
    movq (%r10), %r15
    subq $64, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movq %r13, %rax
    movq %rax, 40(%rsp)
    movl $0, %eax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCmdBindDescriptorSets
    addq $64, %rsp
    leaq 1416(%rbp), %r14
    movq 616(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq $1, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $31, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
.L3_70:
    movq $32, %rcx
    movq %r13, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r15
    movq %r15, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq 488(%rbp), %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCmdBindVertexBuffers
    addq $48, %rsp
    movq 616(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 616(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 24(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L3_75
.L3_76:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_75:
    leaq 1400(%rbp), %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 24(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 1288(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    movq 304(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    leaq 1272(%rbp), %rax
    movq %rax, 288(%rbp)
    leaq 1256(%rbp), %rax
    movq %rax, 280(%rbp)
    leaq 1248(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 304(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    movq 272(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    leaq 1240(%rbp), %rax
    movq %rax, 248(%rbp)
    movq 304(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 304(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 248(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 224(%rbp)
    movq 280(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    movq 288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq 1216(%rbp), %rax
    movq %rax, 208(%rbp)
    leaq 1192(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 200(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 200(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 312(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    leaq 1160(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 208(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 160(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 208(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 160(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 312(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 656(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 656(%rbp), %rax
    movq $80, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    leaq 1128(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 312(%rbp), %rax
    movq $80, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
.L3_71:
    movq 16(%rbp), %rax
    movq 24(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_74
.L3_72:
    movq 16(%rbp), %rax
    movq $112, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 32(%rbp), %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq 312(%rbp), %r11
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
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movq 304(%rbp), %r10
    movl (%r10), %r15d
    movq 344(%rbp), %r10
    movl (%r10), %r14d
    cmpl %r14d, %r15d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_132
    jmp .L3_80
.L3_132:
    movl %r14d, %r12d
    jmp .L3_81
.L3_80:
    movq 296(%rbp), %r10
    movl (%r10), %r12d
    movq 328(%rbp), %r10
    movl (%r10), %r14d
    cmpl %r14d, %r12d
    setae %al
    movzbl %al, %r12d
.L3_81:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L3_77
    jmp .L3_78
.L3_77:
    jmp .L3_73
.L3_78:
.L3_79:
    movq 280(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 272(%rbp), %r11
    movq $0, 0(%r11)
    movl %r15d, %r12d
    movq 272(%rbp), %r10
    movl %r12d, (%r10)
    movq 264(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r14d
    movq 256(%rbp), %r10
    movl %r14d, (%r10)
    movq 272(%rbp), %r10
    movq 280(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 248(%rbp), %r11
    movq $0, 0(%r11)
    movq 240(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq 344(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl %r15d, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movl %r13d, %r13d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_min
    addq $32, %rsp
    movq %rax, %r13
    movq 248(%rbp), %r10
    movl %r13d, (%r10)
    movq 232(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq 328(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movl %ebx, %ebx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_min
    addq $32, %rsp
    movq %rax, %rbx
    movq 224(%rbp), %r10
    movl %ebx, (%r10)
    movq 248(%rbp), %r10
    movq 216(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 280(%rbp), %r10
    movq 288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_133
    jmp .L3_86
.L3_133:
    movl %r12d, %ebx
    jmp .L3_87
.L3_86:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L3_87:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_83
    jmp .L3_84
.L3_83:
    jmp .L3_73
.L3_84:
.L3_85:
    movq 200(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 344(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2ssq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2ssq %rax, %xmm8
    addss %xmm8, %xmm8
2:
    movaps %xmm8, %xmm12
    movq 192(%rbp), %r10
    movss %xmm12, (%r10)
    movq 328(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2ssq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2ssq %rax, %xmm8
    addss %xmm8, %xmm8
2:
    movaps %xmm8, %xmm12
    movq 184(%rbp), %r10
    movss %xmm12, (%r10)
    movss 424(%rbp), %xmm8
    movq 176(%rbp), %r10
    movss %xmm8, (%r10)
    movq 200(%rbp), %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 168(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_92
    jmp .L3_90
.L3_92:
    movq 8(%rbp), %r10
    movq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L3_89:
    movq 160(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 208(%rbp), %r10
    movss %xmm12, (%r10)
    movq 144(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 152(%rbp), %r10
    movss %xmm12, (%r10)
    movq 128(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 136(%rbp), %r10
    movss %xmm12, (%r10)
    movq 112(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq 120(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L3_91
.L3_90:
.L3_91:
    movq 488(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 208(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCmdSetViewport
    addq $32, %rsp
    movq 488(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 288(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCmdSetScissor
    addq $32, %rsp
    movq 488(%rbp), %r10
    movq (%r10), %rbx
    movq 104(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_93
    jmp .L3_94
.L3_93:
    movq 96(%rbp), %r10
    movq (%r10), %r12
    jmp .L3_95
.L3_94:
    movq 88(%rbp), %r10
    movq (%r10), %r12
.L3_95:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call vkCmdBindPipeline
    addq $32, %rsp
    movq 72(%rbp), %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 488(%rbp), %r10
    movq (%r10), %r13
    movq 320(%rbp), %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl $16, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movl $32, %eax
    movq %rax, 32(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCmdPushConstants
    addq $48, %rsp
    movq 488(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %r10
    movq (%r10), %r14
    movq 312(%rbp), %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movl %r15d, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkCmdDraw
    addq $48, %rsp
.L3_73:
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    jmp .L3_71
.L3_74:
    jmp .L3_68
.L3_67:
.L3_68:
    movq 488(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkCmdEndRenderPass
    addq $32, %rsp
    movq 488(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkEndCommandBuffer
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_28(%rip), %r12
    leaq 1112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $41, %rax
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
    leaq 1080(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 1080(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_97
    jmp .L3_96
.L3_97:
    leaq 2280(%rbp), %rbx
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
    movq 608(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r12d
    movq 656(%rbp), %rax
    leaq 664(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 648(%rbp), %r10
    movb %al, (%r10)
.L3_122:
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_96:
    leaq 1076(%rbp), %rbx
    movl $1024, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq 1064(%rbp), %r12
    movq 528(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq 368(%rbp), %r10
    movq (%r10), %r14
    movq 360(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 992(%rbp), %r13
    leaq 920(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movl $4, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq 520(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 488(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $56, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $64, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq %r13, %r11
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
    movq 624(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call vkQueueSubmit
    addq $32, %rsp
    movl %eax, %r13d
    leaq .Ltext_30(%rip), %r14
    leaq 904(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $32, %rax
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
    leaq 872(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 872(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_100
    jmp .L3_99
.L3_100:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq 608(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r12d
    movq 656(%rbp), %rax
    leaq 664(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 648(%rbp), %r10
    movb %al, (%r10)
.L3_123:
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_99:
    leaq 808(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 744(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movl $1000001001, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $40, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq 632(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $48, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq 528(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %rbx, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call vkQueuePresentKHR
    addq $32, %rsp
    movl %eax, 48(%rbp)
    movq %rbx, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkQueueWaitIdle
    addq $32, %rsp
    movl %eax, %r14d
    leaq .Ltext_31(%rip), %r15
    leaq 728(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $23, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 696(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 696(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_103
    jmp .L3_102
.L3_103:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq 608(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r12d
    movq 656(%rbp), %rax
    leaq 664(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 648(%rbp), %r10
    movb %al, (%r10)
.L3_124:
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_102:
    movq 504(%rbp), %r10
    movslq (%r10), %rbx
    movl 48(%rbp), %eax
    cmpl %ebx, %eax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_134
    jmp .L3_108
.L3_134:
    movl %ebx, %r12d
    jmp .L3_109
.L3_108:
    movl 48(%rbp), %eax
    movl $1000001003, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
.L3_109:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_135
    jmp .L3_110
.L3_135:
    movl %ebx, %r12d
    jmp .L3_111
.L3_110:
    movl 512(%rbp), %eax
    movl $1000001003, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
.L3_111:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_105
    jmp .L3_106
.L3_105:
    movl $1, %eax
    movq 640(%rbp), %r10
    movb %al, (%r10)
    jmp .L3_107
.L3_106:
.L3_107:
    movl 48(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_115
    jmp .L3_136
.L3_136:
    movl %ebx, %r12d
    jmp .L3_116
.L3_115:
    movq 504(%rbp), %r10
    movslq (%r10), %rbx
    movl 48(%rbp), %eax
    cmpl %ebx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L3_116:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_117
    jmp .L3_137
.L3_137:
    movl %ebx, %r12d
    jmp .L3_118
.L3_117:
    movl 48(%rbp), %eax
    movl $1000001003, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L3_118:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_112
    jmp .L3_113
.L3_112:
    leaq 2280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_16execution_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $26, %rax
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
    movq 608(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkDeviceWaitIdle
    addq $32, %rsp
    movl %eax, %r12d
    movq 656(%rbp), %rax
    leaq 664(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 648(%rbp), %r10
    movb %al, (%r10)
.L3_125:
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
.L3_113:
.L3_114:
    leaq 2280(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq 624(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_21vulkan_upload_destroy
    addq $64, %rsp
    movq %rbx, %rsi
    movq 2360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2360(%rbp), %rax
    movq 2536(%rbp), %rdi
    movq 2528(%rbp), %rsi
    movdqu 2512(%rbp), %xmm6
    movdqu 2496(%rbp), %xmm7
    movdqu 2480(%rbp), %xmm8
    movdqu 2464(%rbp), %xmm9
    movdqu 2448(%rbp), %xmm10
    movdqu 2432(%rbp), %xmm11
    movdqu 2416(%rbp), %xmm12
    movdqu 2400(%rbp), %xmm13
    movdqu 2384(%rbp), %xmm14
    movdqu 2368(%rbp), %xmm15
    movq 2352(%rbp), %rbx
    movq 2344(%rbp), %r12
    movq 2336(%rbp), %r13
    movq 2328(%rbp), %r14
    movq 2320(%rbp), %r15
    leaq 2544(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .text$lb_memory_copy_0g1_u32,"xr"
    .p2align 4
    .globl lb_memory_copy_0g1_u32
lb_memory_copy_0g1_u32:
    .seh_proc lb_memory_copy_0g1_u32
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 280(%rbp)
    .seh_savereg %rdi, 280
    movq %rsi, 272(%rbp)
    .seh_savereg %rsi, 272
    movdqu %xmm6, 256(%rbp)
    .seh_savexmm %xmm6, 256
    movdqu %xmm7, 240(%rbp)
    .seh_savexmm %xmm7, 240
    movdqu %xmm8, 224(%rbp)
    .seh_savexmm %xmm8, 224
    movdqu %xmm9, 208(%rbp)
    .seh_savexmm %xmm9, 208
    movdqu %xmm10, 192(%rbp)
    .seh_savexmm %xmm10, 192
    movdqu %xmm11, 176(%rbp)
    .seh_savexmm %xmm11, 176
    movdqu %xmm12, 160(%rbp)
    .seh_savexmm %xmm12, 160
    movdqu %xmm13, 144(%rbp)
    .seh_savexmm %xmm13, 144
    movdqu %xmm14, 128(%rbp)
    .seh_savexmm %xmm14, 128
    movdqu %xmm15, 112(%rbp)
    .seh_savexmm %xmm15, 112
    movq %rbx, 104(%rbp)
    .seh_savereg %rbx, 104
    movq %r12, 96(%rbp)
    .seh_savereg %r12, 96
    movq %r13, 88(%rbp)
    .seh_savereg %r13, 88
    movq %r14, 80(%rbp)
    .seh_savereg %r14, 80
    movq %r15, 72(%rbp)
    .seh_savereg %r15, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 312(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 320(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_11
    jmp .L4_4
.L4_11:
    movl %r13d, %r14d
    jmp .L4_5
.L4_4:
    leaq 40(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq .Ltext_26(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_34(%rip), %r13
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L4_3
.L4_2:
.L4_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_7
.L4_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_9
    jmp .L4_10
.L4_10:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_9:
    jmp .L4_8
.L4_7:
.L4_8:
    movq 280(%rbp), %rdi
    movq 272(%rbp), %rsi
    movdqu 256(%rbp), %xmm6
    movdqu 240(%rbp), %xmm7
    movdqu 224(%rbp), %xmm8
    movdqu 208(%rbp), %xmm9
    movdqu 192(%rbp), %xmm10
    movdqu 176(%rbp), %xmm11
    movdqu 160(%rbp), %xmm12
    movdqu 144(%rbp), %xmm13
    movdqu 128(%rbp), %xmm14
    movdqu 112(%rbp), %xmm15
    movq 104(%rbp), %rbx
    movq 96(%rbp), %r12
    movq 88(%rbp), %r13
    movq 80(%rbp), %r14
    movq 72(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .text$lb_memory_copy_0g1_u8,"xr"
    .p2align 4
    .globl lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    .seh_proc lb_memory_copy_0g1_u8
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %r10
    leaq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 296(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 304(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L5_11
    jmp .L5_4
.L5_11:
    movl %r13d, %r14d
    jmp .L5_5
.L5_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L5_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L5_1
    jmp .L5_2
.L5_1:
    leaq .Ltext_26(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_34(%rip), %r13
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L5_3
.L5_2:
.L5_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L5_7
.L5_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L5_9
    jmp .L5_10
.L5_10:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_9:
    jmp .L5_8
.L5_7:
.L5_8:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_13vulkan_render_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/gpu/vulkan/render.lucb:17:5"
.Ltext_1:
    .asciz "src/std/gpu/vulkan/render.lucb:20:5"
.Ltext_2:
    .asciz "src/std/gpu/vulkan/render.lucb:21:5"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/gpu/vulkan/render.lucb:22:5"
.Ltext_5:
    .asciz "the Vulkan vertex buffer could not be created"
.Ltext_6:
    .asciz "Vulkan vertex memory could not be bound"
.Ltext_7:
    .asciz "Vulkan vertex memory could not be mapped"
.Ltext_8:
    .asciz "Vulkan returned an empty memory mapping"
.Ltext_9:
    .asciz "src/std/gpu/vulkan/render.lucb:33:5"
.Ltext_10:
    .asciz "Vulkan coverage descriptors could not be created"
.Ltext_11:
    .asciz "Vulkan coverage descriptor could not be allocated"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "src/std/gpu/vulkan/render.lucb:47:5"
.Ltext_14:
    .asciz "a previous Vulkan submission failed; recreate the surface"
.Ltext_15:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
.Ltext_16:
    .asciz "src/std/gpu/vulkan/render.lucb:62:5"
.Ltext_17:
    .asciz "src/std/gpu/vulkan/render.lucb:63:5"
.Ltext_18:
    .asciz "the Vulkan command pool could not be reset"
.Ltext_19:
    .asciz "Vulkan could not acquire a presentation image"
.Ltext_20:
    .asciz "Vulkan command recording could not begin"
.Ltext_21:
    .asciz "src/std/gpu/vulkan/render.lucb:87:5"
.Ltext_22:
    .asciz "src/std/gpu/vulkan/render.lucb:88:5"
.Ltext_23:
    .asciz "src/std/gpu/vulkan/render.lucb:89:5"
.Ltext_24:
    .asciz "src/std/gpu/vulkan/render.lucb:97:9"
.Ltext_25:
    .asciz "src/std/gpu/vulkan/render.lucb:99:9"
.Ltext_26:
    .asciz "index out of bounds"
.Ltext_27:
    .asciz "src/std/gpu/vulkan/render.lucb:102:13"
.Ltext_28:
    .asciz "Vulkan command recording could not finish"
.Ltext_29:
    .asciz "src/std/gpu/vulkan/render.lucb:122:5"
.Ltext_30:
    .asciz "Vulkan command submission failed"
.Ltext_31:
    .asciz "Vulkan execution failed"
.Ltext_32:
    .asciz "Vulkan presentation failed"
.Ltext_33:
    .asciz "src/std/gpu/vulkan/render.lucb:135:5"
.Ltext_34:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_35:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_36:
    .asciz "null_foreign"
.Ltext_37:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
