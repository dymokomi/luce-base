    .text

    .p2align 4
    .globl lb_process_15command_windows_0init
lb_process_15command_windows_0init:
    .seh_proc lb_process_15command_windows_0init
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
    .globl lb_process_15monitor_windows
lb_process_15monitor_windows:
    .seh_proc lb_process_15monitor_windows
    pushq %rbp
    .seh_pushreg %rbp
    subq $656, %rsp
    .seh_stackalloc 656
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 472(%rbp)
    movq %rdi, 648(%rbp)
    .seh_savereg %rdi, 648
    movq %rsi, 640(%rbp)
    .seh_savereg %rsi, 640
    movdqu %xmm6, 624(%rbp)
    .seh_savexmm %xmm6, 624
    movdqu %xmm7, 608(%rbp)
    .seh_savexmm %xmm7, 608
    movdqu %xmm8, 592(%rbp)
    .seh_savexmm %xmm8, 592
    movdqu %xmm9, 576(%rbp)
    .seh_savexmm %xmm9, 576
    movdqu %xmm10, 560(%rbp)
    .seh_savexmm %xmm10, 560
    movdqu %xmm11, 544(%rbp)
    .seh_savexmm %xmm11, 544
    movdqu %xmm12, 528(%rbp)
    .seh_savexmm %xmm12, 528
    movdqu %xmm13, 512(%rbp)
    .seh_savexmm %xmm13, 512
    movdqu %xmm14, 496(%rbp)
    .seh_savexmm %xmm14, 496
    movdqu %xmm15, 480(%rbp)
    .seh_savexmm %xmm15, 480
    movq %rbx, 464(%rbp)
    .seh_savereg %rbx, 464
    movq %r12, 456(%rbp)
    .seh_savereg %r12, 456
    movq %r13, 448(%rbp)
    .seh_savereg %r13, 448
    movq %r14, 440(%rbp)
    .seh_savereg %r14, 440
    movq %r15, 432(%rbp)
    .seh_savereg %r15, 432
    .seh_endprologue
    movq %rcx, 672(%rbp)
    movq %rdx, 680(%rbp)
    movq %r8, 688(%rbp)
    movq %r9, 696(%rbp)
    movq 680(%rbp), %rax
    movq %rax, 384(%rbp)
    movq 688(%rbp), %rax
    movq %rax, 368(%rbp)
    movq 696(%rbp), %rax
    movq %rax, 352(%rbp)
    movq 704(%rbp), %rax
    movq %rax, 336(%rbp)
    movq 712(%rbp), %rax
    movq %rax, 320(%rbp)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CreateJobObjectW
    addq $32, %rsp
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L1_1
    jmp .L1_2
.L1_1:
    jmp .L1_3
.L1_2:
    leaq 400(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_0(%rip), %r12
    leaq 304(%rbp), %r13
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
    leaq 384(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
    leaq 384(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call AssignProcessToJobObject
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_40
    jmp .L1_8
.L1_40:
    movl %r14d, %r15d
    jmp .L1_9
.L1_8:
    leaq 368(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call ResumeThread
    addq $32, %rsp
    movl %eax, %r14d
    movl $4294967295, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_6
.L1_5:
    leaq 400(%rbp), %r12
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_1(%rip), %r14
    leaq 288(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r14d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_7:
    leaq 352(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_14command_reader
    addq $32, %rsp
    leaq 248(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_12
    jmp .L1_11
.L1_12:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 400(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_11:
    movq %r15, %r10
    movq (%r10), %r14
    leaq 336(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_14command_reader
    addq $32, %rsp
    leaq 208(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_15
    jmp .L1_14
.L1_15:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 400(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %ebx
    movq %r15, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
    movq %r13, %r10
    movq (%r10), %r12
    leaq 200(%rbp), %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    leaq 192(%rbp), %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    leaq 320(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 128(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq 96(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
.L1_17:
.L1_18:
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L1_20
    jmp .L1_21
.L1_20:
    leaq 400(%rbp), %rbx
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 176(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq 88(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_21:
.L1_22:
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $20, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WaitForSingleObject
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_27
    jmp .L1_41
.L1_41:
    movl %r15d, %ebx
    jmp .L1_28
.L1_27:
    movl $258, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L1_28:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_24
    jmp .L1_25
.L1_24:
    leaq 400(%rbp), %rbx
    leaq lb_process_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %rbx, %r10
    movl %r15d, (%r10)
    leaq .Ltext_3(%rip), %r15
    leaq 160(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_25:
.L1_26:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_12pull_windows
    addq $32, %rsp
    movq 32(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_31
    jmp .L1_30
.L1_31:
    leaq 400(%rbp), %rbx
    movq 8(%rbp), %r10
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
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_30:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_12pull_windows
    addq $32, %rsp
    movq 24(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_34
    jmp .L1_33
.L1_34:
    leaq 400(%rbp), %rbx
    movq 0(%rbp), %r10
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
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_33:
    movl 40(%rbp), %eax
    testl %eax, %eax
    jne .L1_36
    jmp .L1_37
.L1_36:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L1_37:
.L1_38:
    jmp .L1_17
    .seh_endproc

    .p2align 4
    .globl lb_process_12pull_windows
lb_process_12pull_windows:
    .seh_proc lb_process_12pull_windows
    pushq %rbp
    .seh_pushreg %rbp
    movq $4624, %rax
    call ___chkstk_ms
    subq $4624, %rsp
    .seh_stackalloc 4624
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 4440(%rbp)
    movq %rdi, 4616(%rbp)
    .seh_savereg %rdi, 4616
    movq %rsi, 4608(%rbp)
    .seh_savereg %rsi, 4608
    movdqu %xmm6, 4592(%rbp)
    .seh_savexmm %xmm6, 4592
    movdqu %xmm7, 4576(%rbp)
    .seh_savexmm %xmm7, 4576
    movdqu %xmm8, 4560(%rbp)
    .seh_savexmm %xmm8, 4560
    movdqu %xmm9, 4544(%rbp)
    .seh_savexmm %xmm9, 4544
    movdqu %xmm10, 4528(%rbp)
    .seh_savexmm %xmm10, 4528
    movdqu %xmm11, 4512(%rbp)
    .seh_savexmm %xmm11, 4512
    movdqu %xmm12, 4496(%rbp)
    .seh_savexmm %xmm12, 4496
    movdqu %xmm13, 4480(%rbp)
    .seh_savexmm %xmm13, 4480
    movdqu %xmm14, 4464(%rbp)
    .seh_savexmm %xmm14, 4464
    movdqu %xmm15, 4448(%rbp)
    .seh_savexmm %xmm15, 4448
    movq %rbx, 4432(%rbp)
    .seh_savereg %rbx, 4432
    movq %r12, 4424(%rbp)
    .seh_savereg %r12, 4424
    movq %r13, 4416(%rbp)
    .seh_savereg %r13, 4416
    movq %r14, 4408(%rbp)
    .seh_savereg %r14, 4408
    movq %r15, 4400(%rbp)
    .seh_savereg %r15, 4400
    .seh_endprologue
    movq %rcx, 4640(%rbp)
    movq %rdx, 4648(%rbp)
    movq %r8, 4656(%rbp)
    movq %r9, 4664(%rbp)
    movq 4648(%rbp), %rax
    movq %rax, 4352(%rbp)
    movq 4656(%rbp), %rax
    movq %rax, 4336(%rbp)
    movq 4664(%rbp), %rax
    movq %rax, 4320(%rbp)
    leaq 4312(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 4352(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetFileSizeEx
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_33
    jmp .L2_4
.L2_33:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq 4336(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    setl %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 4296(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $37, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L2_6:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq 4336(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq %r13, %rax
    movq 56(%rbp), %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 4320(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L2_8
.L2_7:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq 4280(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $37, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L2_10:
    jmp .L2_9
.L2_8:
.L2_9:
    leaq 184(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 148(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 112(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    leaq 80(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq %r15, %r12
    movq %r14, %r13
.L2_11:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jge .L2_13
.L2_12:
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L2_14
    jmp .L2_15
.L2_14:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq 168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $17, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L2_17:
    jmp .L2_16
.L2_15:
.L2_16:
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call SetFilePointerEx
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_19
.L2_18:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L2_21:
    jmp .L2_20
.L2_19:
.L2_20:
    movl $0, %eax
    movq 32(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    subq $32, %rsp
    movq $4096, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_min_size
    addq $32, %rsp
    movq %rax, %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call ReadFile
    addq $48, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_34
    jmp .L2_25
.L2_34:
    movl %r14d, %r12d
    jmp .L2_26
.L2_25:
    movq 32(%rbp), %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L2_26:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L2_22
    jmp .L2_23
.L2_22:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq 128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L2_27:
    jmp .L2_24
.L2_23:
.L2_24:
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 32(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r15d
    movq $4097, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L2_28
.L2_29:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_28:
    movq 40(%rbp), %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %r10
    movq %r15, (%r10)
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_14command_append
    addq $48, %rsp
    movq 8(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_31
    jmp .L2_30
.L2_31:
    leaq 4368(%rbp), %rbx
    movq 0(%rbp), %r10
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L2_32:
.L2_30:
    movq %r13, %r10
    movq (%r10), %r12
    movq 32(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r13, %r12
    movq %r14, %r13
    jmp .L2_11
.L2_13:
    leaq 4368(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_14command_reader
lb_process_14command_reader:
    .seh_proc lb_process_14command_reader
    pushq %rbp
    .seh_pushreg %rbp
    movq $65840, %rax
    call ___chkstk_ms
    subq $65840, %rsp
    .seh_stackalloc 65840
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 65656(%rbp)
    movq %rdi, 65832(%rbp)
    .seh_savereg %rdi, 65832
    movq %rsi, 65824(%rbp)
    .seh_savereg %rsi, 65824
    movdqu %xmm6, 65808(%rbp)
    .seh_savexmm %xmm6, 65808
    movdqu %xmm7, 65792(%rbp)
    .seh_savexmm %xmm7, 65792
    movdqu %xmm8, 65776(%rbp)
    .seh_savexmm %xmm8, 65776
    movdqu %xmm9, 65760(%rbp)
    .seh_savexmm %xmm9, 65760
    movdqu %xmm10, 65744(%rbp)
    .seh_savexmm %xmm10, 65744
    movdqu %xmm11, 65728(%rbp)
    .seh_savexmm %xmm11, 65728
    movdqu %xmm12, 65712(%rbp)
    .seh_savexmm %xmm12, 65712
    movdqu %xmm13, 65696(%rbp)
    .seh_savexmm %xmm13, 65696
    movdqu %xmm14, 65680(%rbp)
    .seh_savexmm %xmm14, 65680
    movdqu %xmm15, 65664(%rbp)
    .seh_savexmm %xmm15, 65664
    movq %rbx, 65648(%rbp)
    .seh_savereg %rbx, 65648
    movq %r12, 65640(%rbp)
    .seh_savereg %r12, 65640
    movq %r13, 65632(%rbp)
    .seh_savereg %r13, 65632
    movq %r14, 65624(%rbp)
    .seh_savereg %r14, 65624
    .seh_endprologue
    movq %rcx, 65856(%rbp)
    movq %rdx, 65864(%rbp)
    movq %r8, 65872(%rbp)
    movq %r9, 65880(%rbp)
    movq 65864(%rbp), %rax
    movq %rax, 65568(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 65568(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _fileno
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $32768, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFinalPathNameByHandleW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_14
    jmp .L3_4
.L3_14:
    movl %r13d, %r12d
    jmp .L3_5
.L3_4:
    movl $32768, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L3_5:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq 65584(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq 16(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65656(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65656(%rbp), %rax
    movq 65832(%rbp), %rdi
    movq 65824(%rbp), %rsi
    movdqu 65808(%rbp), %xmm6
    movdqu 65792(%rbp), %xmm7
    movdqu 65776(%rbp), %xmm8
    movdqu 65760(%rbp), %xmm9
    movdqu 65744(%rbp), %xmm10
    movdqu 65728(%rbp), %xmm11
    movdqu 65712(%rbp), %xmm12
    movdqu 65696(%rbp), %xmm13
    movdqu 65680(%rbp), %xmm14
    movdqu 65664(%rbp), %xmm15
    movq 65648(%rbp), %rbx
    movq 65640(%rbp), %r12
    movq 65632(%rbp), %r13
    movq 65624(%rbp), %r14
    leaq 65840(%rbp), %rsp
    popq %rbp
    ret
.L3_6:
    jmp .L3_3
.L3_2:
.L3_3:
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $2147483648, %eax
    movq %rax, 8(%rsp)
    movl $7, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $3, %eax
    movq %rax, 32(%rsp)
    movl $128, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateFileW
    addq $64, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L3_7
    jmp .L3_8
.L3_8:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_7:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L3_10
.L3_9:
    leaq 65584(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $46, %rax
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
    movq 65656(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65656(%rbp), %rax
    movq 65832(%rbp), %rdi
    movq 65824(%rbp), %rsi
    movdqu 65808(%rbp), %xmm6
    movdqu 65792(%rbp), %xmm7
    movdqu 65776(%rbp), %xmm8
    movdqu 65760(%rbp), %xmm9
    movdqu 65744(%rbp), %xmm10
    movdqu 65728(%rbp), %xmm11
    movdqu 65712(%rbp), %xmm12
    movdqu 65696(%rbp), %xmm13
    movdqu 65680(%rbp), %xmm14
    movdqu 65664(%rbp), %xmm15
    movq 65648(%rbp), %rbx
    movq 65640(%rbp), %r12
    movq 65632(%rbp), %r13
    movq 65624(%rbp), %r14
    leaq 65840(%rbp), %rsp
    popq %rbp
    ret
.L3_12:
    jmp .L3_11
.L3_10:
.L3_11:
    leaq 65584(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65656(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65656(%rbp), %rax
    movq 65832(%rbp), %rdi
    movq 65824(%rbp), %rsi
    movdqu 65808(%rbp), %xmm6
    movdqu 65792(%rbp), %xmm7
    movdqu 65776(%rbp), %xmm8
    movdqu 65760(%rbp), %xmm9
    movdqu 65744(%rbp), %xmm10
    movdqu 65728(%rbp), %xmm11
    movdqu 65712(%rbp), %xmm12
    movdqu 65696(%rbp), %xmm13
    movdqu 65680(%rbp), %xmm14
    movdqu 65664(%rbp), %xmm15
    movq 65648(%rbp), %rbx
    movq 65640(%rbp), %r12
    movq 65632(%rbp), %r13
    movq 65624(%rbp), %r14
    leaq 65840(%rbp), %rsp
    popq %rbp
    ret
.L3_13:
    leaq .Ltext_20(%rip), %rdi
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
    .quad lb_process_15command_windows_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a command job could not be created"
.Ltext_1:
    .asciz "the command could not enter its process job"
.Ltext_2:
    .asciz "command cancelled"
.Ltext_3:
    .asciz "waiting for the command failed"
.Ltext_4:
    .asciz "the command output cannot be measured"
.Ltext_5:
    .asciz "src/std/process/command/windows.lucb:40:5"
.Ltext_6:
    .asciz "the command exceeded its output limit"
.Ltext_7:
    .asciz "the command output cannot be positioned"
.Ltext_8:
    .asciz "src/std/process/command/windows.lucb:49:9"
.Ltext_9:
    .asciz "src/std/process/command/windows.lucb:50:9"
.Ltext_10:
    .asciz "the command output cannot be read"
.Ltext_11:
    .asciz "src/std/process/command/windows.lucb:52:9"
.Ltext_12:
    .asciz "index out of bounds"
.Ltext_13:
    .asciz "src/std/process/command/windows.lucb:53:9"
.Ltext_14:
    .asciz "src/std/process/command/windows.lucb:62:5"
.Ltext_15:
    .asciz "the command capture path is unavailable"
.Ltext_16:
    .asciz "src/std/process/command/windows.lucb:65:5"
.Ltext_17:
    .asciz "null_foreign"
.Ltext_18:
    .asciz "the command capture reader could not be opened"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/process/command/windows.lucb:68:5"
.Ltext_21:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
