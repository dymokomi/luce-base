    .text

    .p2align 4
    .globl lb_gpu_backend_0init
lb_gpu_backend_0init:
    .seh_proc lb_gpu_backend_0init
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
    .globl lb_gpu_14select_backend
lb_gpu_14select_backend:
    .seh_proc lb_gpu_14select_backend
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 104(%rbp)
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
    movq %rbx, 96(%rbp)
    .seh_savereg %rbx, 96
    movq %r12, 88(%rbp)
    .seh_savereg %r12, 88
    movq %r13, 80(%rbp)
    .seh_savereg %r13, 80
    movq %r14, 72(%rbp)
    .seh_savereg %r14, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movl %eax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_8
    jmp .L1_4
.L1_8:
    movl %r12d, %ebx
    jmp .L1_5
.L1_4:
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq 32(%rbp), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 32(%rbp), %rbx
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
    movq $44, %rax
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
    movq 104(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L1_7:
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
    .globl lb_gpu_19backend_device_open
lb_gpu_19backend_device_open:
    .seh_proc lb_gpu_19backend_device_open
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
    movq %r14, 120(%rbp)
    .seh_savereg %r14, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movl %eax, 64(%rbp)
.L2_4:
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L2_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    subq $32, %rsp
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_18vulkan_device_open
    addq $32, %rsp
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
    leaq 80(%rbp), %r13
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
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L2_6:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L2_2:
.L2_3:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
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
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_22backend_device_destroy
lb_gpu_22backend_device_destroy:
    .seh_proc lb_gpu_22backend_device_destroy
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
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movl %eax, 32(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 16(%rbp)
.L3_4:
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L3_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_21vulkan_device_destroy
    addq $32, %rsp
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L3_2:
.L3_3:
    leaq .Ltext_5(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $45, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_6(%rip), %rbx
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_backend_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the requested GPU backend is not implemented"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/gpu/backend.lucb:15:5"
.Ltext_3:
    .asciz "the GPU backend is not implemented"
.Ltext_4:
    .asciz "src/std/gpu/backend.lucb:23:5"
.Ltext_5:
    .asciz "invalid GPU backend during device destruction"
.Ltext_6:
    .asciz "src/std/gpu/backend.lucb:33:5"

    .section .rdata,"dr"
    .p2align 3
