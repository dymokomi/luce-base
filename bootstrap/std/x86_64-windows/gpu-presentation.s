    .text

    .p2align 4
    .globl lb_gpu_presentation_0init
lb_gpu_presentation_0init:
    .seh_proc lb_gpu_presentation_0init
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
    .globl lb_gpu_20backend_surface_open
lb_gpu_20backend_surface_open:
    .seh_proc lb_gpu_20backend_surface_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 168(%rbp)
    movq %rdi, 344(%rbp)
    .seh_savereg %rdi, 344
    movq %rsi, 336(%rbp)
    .seh_savereg %rsi, 336
    movdqu %xmm6, 320(%rbp)
    .seh_savexmm %xmm6, 320
    movdqu %xmm7, 304(%rbp)
    .seh_savexmm %xmm7, 304
    movdqu %xmm8, 288(%rbp)
    .seh_savexmm %xmm8, 288
    movdqu %xmm9, 272(%rbp)
    .seh_savexmm %xmm9, 272
    movdqu %xmm10, 256(%rbp)
    .seh_savexmm %xmm10, 256
    movdqu %xmm11, 240(%rbp)
    .seh_savexmm %xmm11, 240
    movdqu %xmm12, 224(%rbp)
    .seh_savexmm %xmm12, 224
    movdqu %xmm13, 208(%rbp)
    .seh_savexmm %xmm13, 208
    movdqu %xmm14, 192(%rbp)
    .seh_savexmm %xmm14, 192
    movdqu %xmm15, 176(%rbp)
    .seh_savexmm %xmm15, 176
    movq %rbx, 160(%rbp)
    .seh_savereg %rbx, 160
    movq %r12, 152(%rbp)
    .seh_savereg %r12, 152
    movq %r13, 144(%rbp)
    .seh_savereg %r13, 144
    movq %r14, 136(%rbp)
    .seh_savereg %r14, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 384(%rbp), %rax
    leaq 64(%rbp), %r10
    movq %rax, 0(%r10)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_11
.L1_11:
    movl %ebx, %r12d
    jmp .L1_5
.L1_4:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 64(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_19vulkan_surface_open
    addq $32, %rsp
    leaq 24(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_7
    jmp .L1_6
.L1_7:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
.L1_6:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 168(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L1_9:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
    movq 168(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L1_10:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_21backend_clear_present
lb_gpu_21backend_clear_present:
    .seh_proc lb_gpu_21backend_clear_present
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 296(%rbp)
    movq %rdi, 472(%rbp)
    .seh_savereg %rdi, 472
    movq %rsi, 464(%rbp)
    .seh_savereg %rsi, 464
    movdqu %xmm6, 448(%rbp)
    .seh_savexmm %xmm6, 448
    movdqu %xmm7, 432(%rbp)
    .seh_savexmm %xmm7, 432
    movdqu %xmm8, 416(%rbp)
    .seh_savexmm %xmm8, 416
    movdqu %xmm9, 400(%rbp)
    .seh_savexmm %xmm9, 400
    movdqu %xmm10, 384(%rbp)
    .seh_savexmm %xmm10, 384
    movdqu %xmm11, 368(%rbp)
    .seh_savexmm %xmm11, 368
    movdqu %xmm12, 352(%rbp)
    .seh_savexmm %xmm12, 352
    movdqu %xmm13, 336(%rbp)
    .seh_savexmm %xmm13, 336
    movdqu %xmm14, 320(%rbp)
    .seh_savexmm %xmm14, 320
    movdqu %xmm15, 304(%rbp)
    .seh_savexmm %xmm15, 304
    movq %rbx, 288(%rbp)
    .seh_savereg %rbx, 288
    movq %r12, 280(%rbp)
    .seh_savereg %r12, 280
    movq %r13, 272(%rbp)
    .seh_savereg %r13, 272
    movq %r14, 264(%rbp)
    .seh_savereg %r14, 264
    movq %r15, 256(%rbp)
    .seh_savereg %r15, 256
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 504(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 512(%rbp), %rax
    leaq 184(%rbp), %r10
    movq %rax, 0(%r10)
    movq 520(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 528(%rbp), %r10
    leaq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_4
    jmp .L2_11
.L2_11:
    movl %ebx, %r12d
    jmp .L2_5
.L2_4:
    leaq 200(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L2_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq 200(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 184(%rbp), %r12
    leaq 136(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 168(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 64(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    leaq 144(%rbp), %r15
    subq $160, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
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
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r15, %r10
    leaq 128(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 128(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_13vulkan_render
    addq $160, %rsp
    leaq 24(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_7
    jmp .L2_6
.L2_7:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 216(%rbp), %r13
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
    movq 296(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L2_8:
.L2_6:
    movq %r12, %r10
    movzbl (%r10), %ebx
    leaq 216(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 296(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L2_9:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq 216(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
    movq 296(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L2_10:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_20backend_surface_wait
lb_gpu_20backend_surface_wait:
    .seh_proc lb_gpu_20backend_surface_wait
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 152(%rbp)
    movq %rdi, 328(%rbp)
    .seh_savereg %rdi, 328
    movq %rsi, 320(%rbp)
    .seh_savereg %rsi, 320
    movdqu %xmm6, 304(%rbp)
    .seh_savexmm %xmm6, 304
    movdqu %xmm7, 288(%rbp)
    .seh_savexmm %xmm7, 288
    movdqu %xmm8, 272(%rbp)
    .seh_savexmm %xmm8, 272
    movdqu %xmm9, 256(%rbp)
    .seh_savexmm %xmm9, 256
    movdqu %xmm10, 240(%rbp)
    .seh_savexmm %xmm10, 240
    movdqu %xmm11, 224(%rbp)
    .seh_savexmm %xmm11, 224
    movdqu %xmm12, 208(%rbp)
    .seh_savexmm %xmm12, 208
    movdqu %xmm13, 192(%rbp)
    .seh_savexmm %xmm13, 192
    movdqu %xmm14, 176(%rbp)
    .seh_savexmm %xmm14, 176
    movdqu %xmm15, 160(%rbp)
    .seh_savexmm %xmm15, 160
    movq %rbx, 144(%rbp)
    .seh_savereg %rbx, 144
    movq %r12, 136(%rbp)
    .seh_savereg %r12, 136
    movq %r13, 128(%rbp)
    .seh_savereg %r13, 128
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_4
    jmp .L3_11
.L3_11:
    movl %ebx, %r12d
    jmp .L3_5
.L3_4:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L3_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call vkQueueWaitIdle
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_4(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $23, %rax
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
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_12vulkan_check
    addq $48, %rsp
    leaq 16(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_7
    jmp .L3_6
.L3_7:
    leaq 96(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
.L3_6:
    leaq 96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L3_9:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq 96(%rbp), %rbx
    leaq lb_gpu_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_0(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L3_10:
    leaq 96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_14backend_render
lb_gpu_14backend_render:
    .seh_proc lb_gpu_14backend_render
    pushq %rbp
    .seh_pushreg %rbp
    subq $464, %rsp
    .seh_stackalloc 464
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 280(%rbp)
    movq %rdi, 456(%rbp)
    .seh_savereg %rdi, 456
    movq %rsi, 448(%rbp)
    .seh_savereg %rsi, 448
    movdqu %xmm6, 432(%rbp)
    .seh_savexmm %xmm6, 432
    movdqu %xmm7, 416(%rbp)
    .seh_savexmm %xmm7, 416
    movdqu %xmm8, 400(%rbp)
    .seh_savexmm %xmm8, 400
    movdqu %xmm9, 384(%rbp)
    .seh_savexmm %xmm9, 384
    movdqu %xmm10, 368(%rbp)
    .seh_savexmm %xmm10, 368
    movdqu %xmm11, 352(%rbp)
    .seh_savexmm %xmm11, 352
    movdqu %xmm12, 336(%rbp)
    .seh_savexmm %xmm12, 336
    movdqu %xmm13, 320(%rbp)
    .seh_savexmm %xmm13, 320
    movdqu %xmm14, 304(%rbp)
    .seh_savexmm %xmm14, 304
    movdqu %xmm15, 288(%rbp)
    .seh_savexmm %xmm15, 288
    movq %rbx, 272(%rbp)
    .seh_savereg %rbx, 272
    movq %r12, 264(%rbp)
    .seh_savereg %r12, 264
    movq %r13, 256(%rbp)
    .seh_savereg %r13, 256
    movq %r14, 248(%rbp)
    .seh_savereg %r14, 248
    movq %r15, 240(%rbp)
    .seh_savereg %r15, 240
    .seh_endprologue
    movq %rcx, 480(%rbp)
    movq %rdx, 488(%rbp)
    movq %r8, 496(%rbp)
    movq %r9, 504(%rbp)
    movq 488(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 496(%rbp), %rax
    leaq 168(%rbp), %r10
    movq %rax, 0(%r10)
    movq 504(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 512(%rbp), %r10
    leaq 80(%rbp), %r11
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
    movq 520(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_4
    jmp .L4_11
.L4_11:
    movl %ebx, %r12d
    jmp .L4_5
.L4_4:
    leaq 184(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L4_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq 184(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 168(%rbp), %r12
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 80(%rbp), %r14
    leaq 56(%rbp), %r15
    subq $160, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
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
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r15, %r10
    leaq 128(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 128(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_13vulkan_render
    addq $160, %rsp
    leaq 16(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_7
    jmp .L4_6
.L4_7:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 200(%rbp), %r13
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
    movq 280(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L4_8:
.L4_6:
    movq %r12, %r10
    movzbl (%r10), %ebx
    leaq 200(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 280(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L4_9:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq 200(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
    movq 280(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L4_10:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_23backend_surface_destroy
lb_gpu_23backend_surface_destroy:
    .seh_proc lb_gpu_23backend_surface_destroy
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 280(%rbp), %rax
    leaq 32(%rbp), %r10
    movq %rax, 0(%r10)
    movq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_4
    jmp .L5_7
.L5_7:
    movl %ebx, %r12d
    jmp .L5_5
.L5_4:
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_1
    jmp .L5_2
.L5_1:
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_22vulkan_surface_destroy
    addq $32, %rsp
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L5_6:
    jmp .L5_3
.L5_2:
.L5_3:
    leaq .Ltext_6(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $46, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_7(%rip), %rbx
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_presentation_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the GPU backend is not implemented"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/gpu/presentation.lucb:9:5"
.Ltext_3:
    .asciz "src/std/gpu/presentation.lucb:17:5"
.Ltext_4:
    .asciz "Vulkan execution failed"
.Ltext_5:
    .asciz "src/std/gpu/presentation.lucb:35:5"
.Ltext_6:
    .asciz "invalid GPU backend during surface destruction"
.Ltext_7:
    .asciz "src/std/gpu/presentation.lucb:45:5"

    .section .rdata,"dr"
    .p2align 3
