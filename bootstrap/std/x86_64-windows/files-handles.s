    .text

    .p2align 4
    .globl lb_files_handles_0init
lb_files_handles_0init:
    .seh_proc lb_files_handles_0init
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
    .globl lb_files_File_open
lb_files_File_open:
    .seh_proc lb_files_File_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $512, %rsp
    .seh_stackalloc 512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 328(%rbp)
    movq %rdi, 504(%rbp)
    .seh_savereg %rdi, 504
    movq %rsi, 496(%rbp)
    .seh_savereg %rsi, 496
    movdqu %xmm6, 480(%rbp)
    .seh_savexmm %xmm6, 480
    movdqu %xmm7, 464(%rbp)
    .seh_savexmm %xmm7, 464
    movdqu %xmm8, 448(%rbp)
    .seh_savexmm %xmm8, 448
    movdqu %xmm9, 432(%rbp)
    .seh_savexmm %xmm9, 432
    movdqu %xmm10, 416(%rbp)
    .seh_savexmm %xmm10, 416
    movdqu %xmm11, 400(%rbp)
    .seh_savexmm %xmm11, 400
    movdqu %xmm12, 384(%rbp)
    .seh_savexmm %xmm12, 384
    movdqu %xmm13, 368(%rbp)
    .seh_savexmm %xmm13, 368
    movdqu %xmm14, 352(%rbp)
    .seh_savexmm %xmm14, 352
    movdqu %xmm15, 336(%rbp)
    .seh_savexmm %xmm15, 336
    movq %rbx, 320(%rbp)
    .seh_savereg %rbx, 320
    movq %r12, 312(%rbp)
    .seh_savereg %r12, 312
    movq %r13, 304(%rbp)
    .seh_savereg %r13, 304
    movq %r14, 296(%rbp)
    .seh_savereg %r14, 296
    movq %r15, 288(%rbp)
    .seh_savereg %r15, 288
    .seh_endprologue
    movq %rcx, 528(%rbp)
    movq %rdx, 536(%rbp)
    movq %r8, 544(%rbp)
    movq %r9, 552(%rbp)
    movq 536(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 544(%rbp), %rax
    movl %eax, 216(%rbp)
    movq 552(%rbp), %rax
    movl %eax, 200(%rbp)
    leaq 216(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq 200(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, 40(%rbp)
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movl 40(%rbp), %eax
    movq %rax, 16(%rsp)
    leaq 160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_15file_open_flags
    addq $32, %rsp
    leaq 160(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 248(%rbp), %r12
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
    movq 328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    movq %r13, %r10
    movslq (%r10), %rax
    movq %rax, 32(%rbp)
    leaq 232(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl 32(%rbp), %eax
    movq %rax, 16(%rsp)
    movl 40(%rbp), %eax
    movq %rax, 24(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_15open_descriptor
    addq $32, %rsp
    leaq 120(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 248(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    movq %rbx, %r10
    movslq (%r10), %r13
    leaq lb_c_interrupted(%rip), %r15
    leaq 80(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movl %r13d, %eax
    movl %eax, 8(%rbp)
.L1_7:
    movl 8(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, 24(%rbp)
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L1_10
    jmp .L1_20
.L1_20:
    movl 24(%rbp), %eax
    movl %eax, %r13d
    jmp .L1_11
.L1_10:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    movq %r15, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r13d
    sete %al
    movzbl %al, %r13d
.L1_11:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L1_8
    jmp .L1_9
.L1_8:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl 32(%rbp), %eax
    movq %rax, 16(%rsp)
    movl 40(%rbp), %eax
    movq %rax, 24(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_15open_descriptor
    addq $32, %rsp
    movq 16(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_13
    jmp .L1_12
.L1_13:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 248(%rbp), %r13
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
    movq 328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
.L1_12:
    movq %r12, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movl %eax, 8(%rbp)
    jmp .L1_7
.L1_9:
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L1_15
    jmp .L1_16
.L1_15:
    leaq 248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
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
    movq 328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L1_18:
    jmp .L1_17
.L1_16:
.L1_17:
    leaq 56(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq 48(%rbp), %r12
    movl 8(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 248(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L1_19:
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
    .globl lb_files_File_descriptor
lb_files_File_descriptor:
    .seh_proc lb_files_File_descriptor
    pushq %rbp
    .seh_pushreg %rbp
    subq $208, %rsp
    .seh_stackalloc 208
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 200(%rbp)
    .seh_savereg %rdi, 200
    movq %rsi, 192(%rbp)
    .seh_savereg %rsi, 192
    movdqu %xmm6, 176(%rbp)
    .seh_savexmm %xmm6, 176
    movdqu %xmm7, 160(%rbp)
    .seh_savexmm %xmm7, 160
    movdqu %xmm8, 144(%rbp)
    .seh_savexmm %xmm8, 144
    movdqu %xmm9, 128(%rbp)
    .seh_savexmm %xmm9, 128
    movdqu %xmm10, 112(%rbp)
    .seh_savexmm %xmm10, 112
    movdqu %xmm11, 96(%rbp)
    .seh_savexmm %xmm11, 96
    movdqu %xmm12, 80(%rbp)
    .seh_savexmm %xmm12, 80
    movdqu %xmm13, 64(%rbp)
    .seh_savexmm %xmm13, 64
    movdqu %xmm14, 48(%rbp)
    .seh_savexmm %xmm14, 48
    movdqu %xmm15, 32(%rbp)
    .seh_savexmm %xmm15, 32
    movq %rbx, 24(%rbp)
    .seh_savereg %rbx, 24
    movq %r12, 16(%rbp)
    .seh_savereg %r12, 16
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    movq 224(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %r12
    leaq 8(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 200(%rbp), %rdi
    movq 192(%rbp), %rsi
    movdqu 176(%rbp), %xmm6
    movdqu 160(%rbp), %xmm7
    movdqu 144(%rbp), %xmm8
    movdqu 128(%rbp), %xmm9
    movdqu 112(%rbp), %xmm10
    movdqu 96(%rbp), %xmm11
    movdqu 80(%rbp), %xmm12
    movdqu 64(%rbp), %xmm13
    movdqu 48(%rbp), %xmm14
    movdqu 32(%rbp), %xmm15
    movq 24(%rbp), %rbx
    movq 16(%rbp), %r12
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
.L2_1:
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
    .globl lb_files_File_metadata
lb_files_File_metadata:
    .seh_proc lb_files_File_metadata
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
    movq %rax, 176(%rbp)
    leaq 176(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L3_3
.L3_2:
    leaq 184(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 160(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $160, %rdx
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
.L3_4:
.L3_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_19metadata_descriptor
    addq $32, %rsp
    leaq 0(%rbp), %r13
    movq $152, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_6
    jmp .L3_5
.L3_6:
    movq $128, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 184(%rbp), %r12
    movq $128, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $160, %rdx
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
.L3_7:
.L3_5:
    leaq 184(%rbp), %rbx
    movq %r13, %r10
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
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $160, %rdx
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
.L3_8:
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
    .globl lb_files_File_truncate
lb_files_File_truncate:
    .seh_proc lb_files_File_truncate
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
    movq %r15, 112(%rbp)
    .seh_savereg %r15, 112
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L4_3
.L4_2:
    leaq 80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 120(%rbp), %r14
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
.L4_3:
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jge .L4_6
.L4_5:
    leaq 80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $32, %rax
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
    movq 120(%rbp), %r14
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_ftruncate
    addq $32, %rsp
    movl %eax, %r13d
    leaq lb_c_interrupted(%rip), %r14
.L4_9:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %eax
    movl %eax, 0(%rbp)
    movl 0(%rbp), %eax
    testl %eax, %eax
    jne .L4_12
    jmp .L4_18
.L4_18:
    movl 0(%rbp), %eax
    movl %eax, %r13d
    jmp .L4_13
.L4_12:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    movq %r14, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
.L4_13:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_10
    jmp .L4_11
.L4_10:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_ftruncate
    addq $32, %rsp
    movl %eax, %r13d
    jmp .L4_9
.L4_11:
    movl 0(%rbp), %eax
    testl %eax, %eax
    jne .L4_14
    jmp .L4_15
.L4_14:
    leaq 80(%rbp), %rbx
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
    movq 120(%rbp), %r14
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_17:
    jmp .L4_16
.L4_15:
.L4_16:
    leaq 80(%rbp), %rbx
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
    movq 120(%rbp), %r14
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_File_15set_permissions
lb_files_File_15set_permissions:
    .seh_proc lb_files_File_15set_permissions
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
    movq %rax, 80(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 80(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L5_3
.L5_2:
    leaq 88(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L5_4:
.L5_3:
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $4095, %ecx
    cmpl %ecx, %r12d
    jbe .L5_6
.L5_5:
    leaq 88(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq 32(%rbp), %r13
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L5_8:
    jmp .L5_7
.L5_6:
.L5_7:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_19windows_permissions
    addq $32, %rsp
    leaq 0(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_10
    jmp .L5_9
.L5_10:
    leaq 88(%rbp), %rbx
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L5_11:
.L5_9:
    leaq 88(%rbp), %rbx
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L5_12:
    leaq 88(%rbp), %rbx
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
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_File_9set_times
lb_files_File_9set_times:
    .seh_proc lb_files_File_9set_times
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
    movq %rax, 96(%rbp)
    movq 384(%rbp), %r10
    leaq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 392(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_1
    jmp .L6_2
.L6_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L6_3
.L6_2:
    leaq 104(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
.L6_4:
.L6_3:
    leaq 80(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $1000000000, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_15
    jmp .L6_8
.L6_15:
    movl %r13d, %r14d
    jmp .L6_9
.L6_8:
    leaq 64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $1000000000, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
.L6_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_5
    jmp .L6_6
.L6_5:
    leaq 104(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $57, %rax
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
.L6_10:
    jmp .L6_7
.L6_6:
.L6_7:
    leaq 64(%rbp), %r13
    subq $64, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_17windows_set_times
    addq $64, %rsp
    leaq 0(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_12
    jmp .L6_11
.L6_12:
    leaq 104(%rbp), %rbx
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
.L6_13:
.L6_11:
    leaq 104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
.L6_14:
    leaq 104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_files_File_read
lb_files_File_read:
    .seh_proc lb_files_File_read
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
    movq %r15, 128(%rbp)
    .seh_savereg %r15, 128
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 384(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_1
    jmp .L7_2
.L7_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L7_3
.L7_2:
    leaq 88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L7_4:
.L7_3:
    leaq 64(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L7_6
.L7_5:
    leaq 88(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L7_8:
    jmp .L7_7
.L7_6:
.L7_7:
    leaq lb_files_14transfer_limit(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L7_10
.L7_9:
    movq %r13, %r14
    jmp .L7_11
.L7_10:
.L7_11:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_6c_read
    addq $32, %rsp
    movq %rax, %r15
    leaq lb_c_interrupted(%rip), %r13
    movq %r15, %rax
    movq %rax, 8(%rbp)
.L7_12:
    movq 8(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L7_15
    jmp .L7_22
.L7_22:
    movl 16(%rbp), %eax
    movl %eax, %r15d
    jmp .L7_16
.L7_15:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r15d
    movq %r13, %r10
    movslq (%r10), %r12
    cmpl %r12d, %r15d
    sete %al
    movzbl %al, %r15d
.L7_16:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L7_13
    jmp .L7_14
.L7_13:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_6c_read
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L7_12
.L7_14:
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L7_17
    jmp .L7_18
.L7_17:
    leaq 88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq 32(%rbp), %r14
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L7_20:
    jmp .L7_19
.L7_18:
.L7_19:
    leaq 88(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L7_21:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_File_write
lb_files_File_write:
    .seh_proc lb_files_File_write
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
    movq %r15, 128(%rbp)
    .seh_savereg %r15, 128
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 384(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_1
    jmp .L8_2
.L8_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L8_3
.L8_2:
    leaq 88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_4:
.L8_3:
    leaq 64(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L8_6
.L8_5:
    leaq 88(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_8:
    jmp .L8_7
.L8_6:
.L8_7:
    leaq lb_files_14transfer_limit(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L8_10
.L8_9:
    movq %r13, %r14
    jmp .L8_11
.L8_10:
.L8_11:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_7c_write
    addq $32, %rsp
    movq %rax, %r15
    leaq lb_c_interrupted(%rip), %r13
    movq %r15, %rax
    movq %rax, 8(%rbp)
.L8_12:
    movq 8(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L8_15
    jmp .L8_22
.L8_22:
    movl 16(%rbp), %eax
    movl %eax, %r15d
    jmp .L8_16
.L8_15:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r15d
    movq %r13, %r10
    movslq (%r10), %r12
    cmpl %r12d, %r15d
    sete %al
    movzbl %al, %r15d
.L8_16:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L8_13
    jmp .L8_14
.L8_13:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_7c_write
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L8_12
.L8_14:
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L8_17
    jmp .L8_18
.L8_17:
    leaq 88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq 32(%rbp), %r14
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_20:
    jmp .L8_19
.L8_18:
.L8_19:
    leaq 88(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_21:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_File_seek
lb_files_File_seek:
    .seh_proc lb_files_File_seek
    pushq %rbp
    .seh_pushreg %rbp
    subq $368, %rsp
    .seh_stackalloc 368
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 184(%rbp)
    movq %rdi, 360(%rbp)
    .seh_savereg %rdi, 360
    movq %rsi, 352(%rbp)
    .seh_savereg %rsi, 352
    movdqu %xmm6, 336(%rbp)
    .seh_savexmm %xmm6, 336
    movdqu %xmm7, 320(%rbp)
    .seh_savexmm %xmm7, 320
    movdqu %xmm8, 304(%rbp)
    .seh_savexmm %xmm8, 304
    movdqu %xmm9, 288(%rbp)
    .seh_savexmm %xmm9, 288
    movdqu %xmm10, 272(%rbp)
    .seh_savexmm %xmm10, 272
    movdqu %xmm11, 256(%rbp)
    .seh_savexmm %xmm11, 256
    movdqu %xmm12, 240(%rbp)
    .seh_savexmm %xmm12, 240
    movdqu %xmm13, 224(%rbp)
    .seh_savexmm %xmm13, 224
    movdqu %xmm14, 208(%rbp)
    .seh_savexmm %xmm14, 208
    movdqu %xmm15, 192(%rbp)
    .seh_savexmm %xmm15, 192
    movq %rbx, 176(%rbp)
    .seh_savereg %rbx, 176
    movq %r12, 168(%rbp)
    .seh_savereg %r12, 168
    movq %r13, 160(%rbp)
    .seh_savereg %r13, 160
    movq %r14, 152(%rbp)
    .seh_savereg %r14, 152
    movq %r15, 144(%rbp)
    .seh_savereg %r15, 144
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    movq 392(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 400(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 408(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 96(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_1
    jmp .L9_2
.L9_1:
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, 24(%rbp)
    jmp .L9_3
.L9_2:
    leaq 104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
    movq 184(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L9_4:
.L9_3:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    subq $32, %rsp
    movl 24(%rbp), %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_lseek
    addq $32, %rsp
    movq %rax, %r14
    leaq lb_c_interrupted(%rip), %r15
    movq %r14, %rax
    movq %rax, 8(%rbp)
.L9_5:
    movq 8(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L9_8
    jmp .L9_15
.L9_15:
    movl 16(%rbp), %eax
    movl %eax, %r14d
    jmp .L9_9
.L9_8:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r14d
    movq %r15, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r14d
    sete %al
    movzbl %al, %r14d
.L9_9:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L9_6
    jmp .L9_7
.L9_6:
    subq $32, %rsp
    movl 24(%rbp), %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_lseek
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L9_5
.L9_7:
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L9_10
    jmp .L9_11
.L9_10:
    leaq 104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $32, %rax
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
    movq 184(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L9_13:
    jmp .L9_12
.L9_11:
.L9_12:
    leaq 104(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 184(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L9_14:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_File_sync
lb_files_File_sync:
    .seh_proc lb_files_File_sync
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 120(%rbp)
    movq %rdi, 296(%rbp)
    .seh_savereg %rdi, 296
    movq %rsi, 288(%rbp)
    .seh_savereg %rsi, 288
    movdqu %xmm6, 272(%rbp)
    .seh_savexmm %xmm6, 272
    movdqu %xmm7, 256(%rbp)
    .seh_savexmm %xmm7, 256
    movdqu %xmm8, 240(%rbp)
    .seh_savexmm %xmm8, 240
    movdqu %xmm9, 224(%rbp)
    .seh_savexmm %xmm9, 224
    movdqu %xmm10, 208(%rbp)
    .seh_savexmm %xmm10, 208
    movdqu %xmm11, 192(%rbp)
    .seh_savexmm %xmm11, 192
    movdqu %xmm12, 176(%rbp)
    .seh_savexmm %xmm12, 176
    movdqu %xmm13, 160(%rbp)
    .seh_savexmm %xmm13, 160
    movdqu %xmm14, 144(%rbp)
    .seh_savexmm %xmm14, 144
    movdqu %xmm15, 128(%rbp)
    .seh_savexmm %xmm15, 128
    movq %rbx, 112(%rbp)
    .seh_savereg %rbx, 112
    movq %r12, 104(%rbp)
    .seh_savereg %r12, 104
    movq %r13, 96(%rbp)
    .seh_savereg %r13, 96
    movq %r14, 88(%rbp)
    .seh_savereg %r14, 88
    movq %r15, 80(%rbp)
    .seh_savereg %r15, 80
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_1
    jmp .L10_2
.L10_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L10_3
.L10_2:
    leaq 48(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L10_4:
.L10_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_fsync
    addq $32, %rsp
    movl %eax, %r12d
    leaq lb_c_interrupted(%rip), %r13
.L10_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L10_8
    jmp .L10_14
.L10_14:
    movl %r14d, %r12d
    jmp .L10_9
.L10_8:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r12d
.L10_9:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L10_6
    jmp .L10_7
.L10_6:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_fsync
    addq $32, %rsp
    movl %eax, %r12d
    jmp .L10_5
.L10_7:
    testl %r14d, %r14d
    jne .L10_10
    jmp .L10_11
.L10_10:
    leaq 48(%rbp), %rbx
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_16(%rip), %r12
    leaq 8(%rbp), %r13
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
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L10_13:
    jmp .L10_12
.L10_11:
.L10_12:
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_File_close
lb_files_File_close:
    .seh_proc lb_files_File_close
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
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_1
    jmp .L11_2
.L11_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L11_3
.L11_2:
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
.L11_4:
.L11_3:
    leaq 16(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call close
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L11_6
.L11_5:
    leaq 32(%rbp), %rbx
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_17(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
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
.L11_8:
    jmp .L11_7
.L11_6:
.L11_7:
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
    .globl lb_files_File_destroy
lb_files_File_destroy:
    .seh_proc lb_files_File_destroy
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
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_File_close
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_4
    jmp .L12_3
.L12_4:
    leaq 32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_1
.L12_3:
    jmp .L12_2
.L12_1:
.L12_2:
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

    .p2align 4
    .globl lb_files_14classify_error
lb_files_14classify_error:
    .seh_proc lb_files_14classify_error
    pushq %rbp
    .seh_pushreg %rbp
    subq $224, %rsp
    .seh_stackalloc 224
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 216(%rbp)
    .seh_savereg %rdi, 216
    movq %rsi, 208(%rbp)
    .seh_savereg %rsi, 208
    movdqu %xmm6, 192(%rbp)
    .seh_savexmm %xmm6, 192
    movdqu %xmm7, 176(%rbp)
    .seh_savexmm %xmm7, 176
    movdqu %xmm8, 160(%rbp)
    .seh_savexmm %xmm8, 160
    movdqu %xmm9, 144(%rbp)
    .seh_savexmm %xmm9, 144
    movdqu %xmm10, 128(%rbp)
    .seh_savexmm %xmm10, 128
    movdqu %xmm11, 112(%rbp)
    .seh_savexmm %xmm11, 112
    movdqu %xmm12, 96(%rbp)
    .seh_savexmm %xmm12, 96
    movdqu %xmm13, 80(%rbp)
    .seh_savexmm %xmm13, 80
    movdqu %xmm14, 64(%rbp)
    .seh_savexmm %xmm14, 64
    movdqu %xmm15, 48(%rbp)
    .seh_savexmm %xmm15, 48
    movq %rbx, 40(%rbp)
    .seh_savereg %rbx, 40
    movq %r12, 32(%rbp)
    .seh_savereg %r12, 32
    movq %r13, 24(%rbp)
    .seh_savereg %r13, 24
    movq %r14, 16(%rbp)
    .seh_savereg %r14, 16
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movl %eax, 0(%rbp)
    leaq 0(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L13_2
.L13_1:
    leaq lb_files_missing(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L13_69
    jmp .L13_8
.L13_69:
    movl %r12d, %r13d
    jmp .L13_9
.L13_8:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L13_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L13_5
    jmp .L13_6
.L13_5:
    leaq lb_files_17permission_denied(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_10:
    jmp .L13_7
.L13_6:
.L13_7:
    movl $17, %ecx
    cmpl %ecx, %ebx
    jne .L13_12
.L13_11:
    leaq lb_files_14already_exists(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_14:
    jmp .L13_13
.L13_12:
.L13_13:
    movl $28, %ecx
    cmpl %ecx, %ebx
    jne .L13_16
.L13_15:
    leaq lb_files_8no_space(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_18:
    jmp .L13_17
.L13_16:
.L13_17:
    movl $20, %ecx
    cmpl %ecx, %ebx
    jne .L13_20
.L13_19:
    leaq lb_files_13not_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_22:
    jmp .L13_21
.L13_20:
.L13_21:
    movl $21, %ecx
    cmpl %ecx, %ebx
    jne .L13_24
.L13_23:
    leaq lb_files_12is_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_26:
    jmp .L13_25
.L13_24:
.L13_25:
    movl $30, %ecx
    cmpl %ecx, %ebx
    jne .L13_28
.L13_27:
    leaq lb_files_20read_only_filesystem(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_30:
    jmp .L13_29
.L13_28:
.L13_29:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_34
    jmp .L13_35
.L13_34:
    movl $66, %eax
    movl %eax, %r13d
    jmp .L13_36
.L13_35:
    leaq lb_platform_windows(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L13_37
    jmp .L13_38
.L13_37:
    movl $41, %eax
    movl %eax, %r13d
    jmp .L13_39
.L13_38:
    movl $39, %eax
    movl %eax, %r13d
.L13_39:
.L13_36:
    cmpl %r13d, %ebx
    jne .L13_32
.L13_31:
    leaq lb_files_9not_empty(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_40:
    jmp .L13_33
.L13_32:
.L13_33:
    movl $18, %ecx
    cmpl %ecx, %ebx
    jne .L13_42
.L13_41:
    leaq lb_files_12cross_device(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_44:
    jmp .L13_43
.L13_42:
.L13_43:
    testl %r12d, %r12d
    jne .L13_48
    jmp .L13_49
.L13_48:
    movl $62, %eax
    movl %eax, %r13d
    jmp .L13_50
.L13_49:
    movl $40, %eax
    movl %eax, %r13d
.L13_50:
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L13_51
    jmp .L13_70
.L13_70:
    movl %r14d, %r13d
    jmp .L13_52
.L13_51:
    leaq lb_platform_windows(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L13_52:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L13_45
    jmp .L13_46
.L13_45:
    leaq lb_files_12symlink_loop(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_53:
    jmp .L13_47
.L13_46:
.L13_47:
    testl %r12d, %r12d
    jne .L13_57
    jmp .L13_58
.L13_57:
    movl $63, %eax
    movl %eax, %r12d
    jmp .L13_59
.L13_58:
    leaq lb_platform_windows(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_60
    jmp .L13_61
.L13_60:
    movl $38, %eax
    movl %eax, %r12d
    jmp .L13_62
.L13_61:
    movl $36, %eax
    movl %eax, %r12d
.L13_62:
.L13_59:
    cmpl %r12d, %ebx
    jne .L13_55
.L13_54:
    leaq lb_files_13name_too_long(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_63:
    jmp .L13_56
.L13_55:
.L13_56:
    leaq lb_files_17would_block_errno(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L13_65
.L13_64:
    leaq lb_files_11would_block(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_67:
    jmp .L13_66
.L13_65:
.L13_66:
    leaq lb_files_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_68:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_15open_descriptor
lb_files_15open_descriptor:
    .seh_proc lb_files_15open_descriptor
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
    movl %eax, 64(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 48(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movl %r13d, %eax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_12windows_open
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_2
    jmp .L14_1
.L14_2:
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
.L14_3:
.L14_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
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
.L14_4:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_15file_open_flags
lb_files_15file_open_flags:
    .seh_proc lb_files_15file_open_flags
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
    movq %r15, 112(%rbp)
    .seh_savereg %r15, 112
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movl %eax, 56(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 40(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $4095, %ecx
    cmpl %ecx, %ebx
    jbe .L15_2
.L15_1:
    leaq 72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq 24(%rbp), %r14
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
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L15_4:
    jmp .L15_3
.L15_2:
.L15_3:
    leaq lb_files_13close_on_exec(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $32768, %ecx
    orl %ecx, %ebx
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L15_5
    jmp .L15_6
.L15_5:
    leaq lb_files_14read_only_flag(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L15_7
.L15_6:
    movl $1, %ecx
    cmpl %ecx, %r12d
    jne .L15_9
.L15_8:
    leaq lb_files_15read_write_flag(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L15_10
.L15_9:
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L15_12
.L15_11:
    leaq lb_files_10write_only(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    leaq lb_files_truncate(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L15_13
.L15_12:
    movl $3, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L15_30
    jmp .L15_17
.L15_30:
    movl %r14d, %r15d
    jmp .L15_18
.L15_17:
    movl $5, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
.L15_18:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L15_14
    jmp .L15_15
.L15_14:
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq lb_files_14exclusive_flag(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %r14d, %ecx
    movl %r13d, %r14d
    orl %ecx, %r14d
    movl $5, %ecx
    cmpl %ecx, %r12d
    jne .L15_20
.L15_19:
    leaq lb_files_15read_write_flag(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    jmp .L15_21
.L15_20:
    leaq lb_files_10write_only(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
.L15_21:
    movl %r14d, %r13d
    orl %r12d, %r13d
    movl %r13d, %ecx
    movl %ebx, %r13d
    orl %ecx, %r13d
    jmp .L15_16
.L15_15:
    movl $4, %ecx
    cmpl %ecx, %r12d
    jne .L15_23
.L15_22:
    leaq lb_files_10write_only(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    leaq lb_files_11append_flag(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L15_24
.L15_23:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L15_26
.L15_25:
    leaq 72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_21(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
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
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L15_28:
    jmp .L15_27
.L15_26:
.L15_27:
    movl %ebx, %r12d
.L15_24:
    movl %r12d, %r13d
.L15_16:
    movl %r13d, %r12d
.L15_13:
.L15_10:
.L15_7:
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L15_29:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_handles_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the file could not be opened"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/files/handles.lucb:33:9"
.Ltext_3:
    .asciz "src/std/files/handles.lucb:38:9"
.Ltext_4:
    .asciz "the file is closed"
.Ltext_5:
    .asciz "src/std/files/handles.lucb:43:9"
.Ltext_6:
    .asciz "a file length cannot be negative"
.Ltext_7:
    .asciz "the file length could not be changed"
.Ltext_8:
    .asciz "file permissions must fit the Unix mode bits"
.Ltext_9:
    .asciz "a timestamp nanosecond fraction must be below one billion"
.Ltext_10:
    .asciz "the file could not be read"
.Ltext_11:
    .asciz "src/std/files/handles.lucb:105:9"
.Ltext_12:
    .asciz "the file could not be written"
.Ltext_13:
    .asciz "src/std/files/handles.lucb:119:9"
.Ltext_14:
    .asciz "the file could not be positioned"
.Ltext_15:
    .asciz "src/std/files/handles.lucb:130:9"
.Ltext_16:
    .asciz "the file could not be synchronized"
.Ltext_17:
    .asciz "the file could not be closed"
.Ltext_18:
    .asciz "src/std/files/handles.lucb:185:5"
.Ltext_19:
    .asciz "src/std/files/handles.lucb:213:5"
.Ltext_20:
    .asciz "src/std/files/handles.lucb:218:9"
.Ltext_21:
    .asciz "unknown file opening mode"
.Ltext_22:
    .asciz "src/std/files/handles.lucb:239:5"

    .section .rdata,"dr"
    .p2align 3
