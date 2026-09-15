    .text

    .p2align 4
    .globl lb_files_metadata_0init
lb_files_metadata_0init:
    .seh_proc lb_files_metadata_0init
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
    .globl lb_files_metadata
lb_files_metadata:
    .seh_proc lb_files_metadata
    pushq %rbp
    .seh_pushreg %rbp
    subq $624, %rsp
    .seh_stackalloc 624
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 440(%rbp)
    movq %rdi, 616(%rbp)
    .seh_savereg %rdi, 616
    movq %rsi, 608(%rbp)
    .seh_savereg %rsi, 608
    movdqu %xmm6, 592(%rbp)
    .seh_savexmm %xmm6, 592
    movdqu %xmm7, 576(%rbp)
    .seh_savexmm %xmm7, 576
    movdqu %xmm8, 560(%rbp)
    .seh_savexmm %xmm8, 560
    movdqu %xmm9, 544(%rbp)
    .seh_savexmm %xmm9, 544
    movdqu %xmm10, 528(%rbp)
    .seh_savexmm %xmm10, 528
    movdqu %xmm11, 512(%rbp)
    .seh_savexmm %xmm11, 512
    movdqu %xmm12, 496(%rbp)
    .seh_savexmm %xmm12, 496
    movdqu %xmm13, 480(%rbp)
    .seh_savexmm %xmm13, 480
    movdqu %xmm14, 464(%rbp)
    .seh_savexmm %xmm14, 464
    movdqu %xmm15, 448(%rbp)
    .seh_savexmm %xmm15, 448
    movq %rbx, 432(%rbp)
    .seh_savereg %rbx, 432
    movq %r12, 424(%rbp)
    .seh_savereg %r12, 424
    movq %r13, 416(%rbp)
    .seh_savereg %r13, 416
    movq %r14, 408(%rbp)
    .seh_savereg %r14, 408
    movq %r15, 400(%rbp)
    .seh_savereg %r15, 400
    .seh_endprologue
    movq %rcx, 640(%rbp)
    movq %rdx, 648(%rbp)
    movq %r8, 656(%rbp)
    movq %r9, 664(%rbp)
    movq 648(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 656(%rbp), %rax
    movl %eax, 208(%rbp)
    leaq 224(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 208(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_19windows_path_handle
    addq $32, %rsp
    leaq 168(%rbp), %r13
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
    leaq 240(%rbp), %r12
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
    movq 440(%rbp), %rdi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    movq %r13, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_16windows_metadata
    addq $32, %rsp
    leaq 8(%rbp), %r15
    movq $152, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $128, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 240(%rbp), %r13
    movq $128, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rsi
    movq 440(%rbp), %rdi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    leaq 240(%rbp), %r12
    movq %r15, %r10
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
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq $152, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 440(%rbp), %rdi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_7:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_19metadata_descriptor
lb_files_19metadata_descriptor:
    .seh_proc lb_files_19metadata_descriptor
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
    movl %eax, 168(%rbp)
    leaq 168(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_16windows_metadata
    addq $32, %rsp
    leaq 8(%rbp), %r12
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 184(%rbp), %r13
    movq $128, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L2_3:
.L2_1:
    leaq 184(%rbp), %rbx
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
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq $152, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L2_4:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_11metadata_at
lb_files_11metadata_at:
    .seh_proc lb_files_11metadata_at
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
    movl %eax, 256(%rbp)
    movq 688(%rbp), %rax
    movq %rax, 240(%rbp)
    movq 696(%rbp), %rax
    movl %eax, 224(%rbp)
    leaq 208(%rbp), %r13
    leaq 256(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 240(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_16windows_relative
    addq $32, %rsp
    leaq 160(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 272(%rbp), %r13
    movq $128, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 472(%rbp), %rdi
    movq $160, %rdx
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
.L3_3:
.L3_1:
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq (%r10), %rbx
    leaq 224(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_metadata
    addq $32, %rsp
    leaq 0(%rbp), %r14
    movq $152, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_5
    jmp .L3_4
.L3_5:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 272(%rbp), %r12
    movq $128, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
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
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r12, %rsi
    movq 472(%rbp), %rdi
    movq $160, %rdx
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
.L3_6:
.L3_4:
    leaq 272(%rbp), %rbx
    movq %r14, %r10
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
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $160, %rdx
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
.L3_7:
    leaq 208(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_metadata_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/files/metadata.lucb:133:5"
.Ltext_2:
    .asciz "src/std/files/metadata.lucb:136:5"
.Ltext_3:
    .asciz "src/std/files/metadata.lucb:139:5"
.Ltext_4:
    .asciz "src/std/files/metadata.lucb:147:5"
.Ltext_5:
    .asciz "src/std/files/metadata.lucb:154:5"
.Ltext_6:
    .asciz "src/std/files/metadata.lucb:167:9"
.Ltext_7:
    .asciz "src/std/files/metadata.lucb:195:9"
.Ltext_8:
    .asciz "src/std/files/metadata.lucb:222:9"

    .section .rdata,"dr"
    .p2align 3
