    .text

    .p2align 4
    .globl lb_net_11http_encode_0init
lb_net_11http_encode_0init:
    .seh_proc lb_net_11http_encode_0init
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
    .globl lb_net_16http_encode_head
lb_net_16http_encode_head:
    .seh_proc lb_net_16http_encode_head
    pushq %rbp
    .seh_pushreg %rbp
    movq $5984, %rax
    call ___chkstk_ms
    subq $5984, %rsp
    .seh_stackalloc 5984
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 5800(%rbp)
    movq %rdi, 5976(%rbp)
    .seh_savereg %rdi, 5976
    movq %rsi, 5968(%rbp)
    .seh_savereg %rsi, 5968
    movdqu %xmm6, 5952(%rbp)
    .seh_savexmm %xmm6, 5952
    movdqu %xmm7, 5936(%rbp)
    .seh_savexmm %xmm7, 5936
    movdqu %xmm8, 5920(%rbp)
    .seh_savexmm %xmm8, 5920
    movdqu %xmm9, 5904(%rbp)
    .seh_savexmm %xmm9, 5904
    movdqu %xmm10, 5888(%rbp)
    .seh_savexmm %xmm10, 5888
    movdqu %xmm11, 5872(%rbp)
    .seh_savexmm %xmm11, 5872
    movdqu %xmm12, 5856(%rbp)
    .seh_savexmm %xmm12, 5856
    movdqu %xmm13, 5840(%rbp)
    .seh_savexmm %xmm13, 5840
    movdqu %xmm14, 5824(%rbp)
    .seh_savexmm %xmm14, 5824
    movdqu %xmm15, 5808(%rbp)
    .seh_savexmm %xmm15, 5808
    movq %rbx, 5792(%rbp)
    .seh_savereg %rbx, 5792
    movq %r12, 5784(%rbp)
    .seh_savereg %r12, 5784
    movq %r13, 5776(%rbp)
    .seh_savereg %r13, 5776
    movq %r14, 5768(%rbp)
    .seh_savereg %r14, 5768
    movq %r15, 5760(%rbp)
    .seh_savereg %r15, 5760
    .seh_endprologue
    movq %rcx, 6000(%rbp)
    movq %rdx, 6008(%rbp)
    movq %r8, 6016(%rbp)
    movq %r9, 6024(%rbp)
    movq 6008(%rbp), %r10
    leaq 5696(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 6016(%rbp), %r10
    leaq 5600(%rbp), %r11
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
    leaq 5576(%rbp), %rax
    movq %rax, 408(%rbp)
    leaq 5696(%rbp), %rax
    movq %rax, 400(%rbp)
    subq $48, %rsp
    movq 400(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 5552(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_io_SliceWriter_over
    addq $48, %rsp
    leaq 5552(%rbp), %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %r10
    movq 408(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 5488(%rbp), %rax
    movq %rax, 384(%rbp)
    movq 384(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq 5600(%rbp), %rax
    movq %rax, 376(%rbp)
    movq 376(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    leaq .Ltext_0(%rip), %r14
    leaq 5472(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $8, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 368(%rbp)
    movq 368(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_170
.L1_170:
    movl %ebx, %r12d
    jmp .L1_5
.L1_4:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L1_5:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_6
    jmp .L1_171
.L1_171:
    movl %ebx, %r12d
    jmp .L1_7
.L1_6:
    leaq .Ltext_1(%rip), %rbx
    leaq 5456(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $8, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 368(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_8
    jmp .L1_172
.L1_172:
    movl %r14d, %ebx
    jmp .L1_9
.L1_8:
    movq 40(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L1_9:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_7:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 5440(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_10:
    jmp .L1_3
.L1_2:
.L1_3:
    movq 376(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 360(%rbp), %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_12
.L1_11:
    subq $48, %rsp
    movq 376(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_10http_token
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_173
    jmp .L1_17
.L1_173:
    movl %r12d, %r14d
    jmp .L1_18
.L1_17:
    movq 376(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $64, %rsp
    movq 376(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_25http_request_target_valid
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_18:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L1_14
    jmp .L1_15
.L1_14:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq 5424(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_19:
    jmp .L1_16
.L1_15:
.L1_16:
    leaq 5408(%rbp), %r12
    movq 408(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 376(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 5376(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 5376(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_21
    jmp .L1_20
.L1_21:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_22:
.L1_20:
    leaq 5360(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 5344(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 5312(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 5312(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_24
    jmp .L1_23
.L1_24:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_25:
.L1_23:
    leaq 5296(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 376(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 5264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 5264(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_27
    jmp .L1_26
.L1_27:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_28:
.L1_26:
    leaq 5248(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq 5232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $1, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 5200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 5200(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_30
    jmp .L1_29
.L1_30:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_31:
.L1_29:
    leaq 5184(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 40(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 5152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 5152(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_33
    jmp .L1_32
.L1_33:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_34:
.L1_32:
    leaq 5136(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 5120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 5088(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 5088(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_36
    jmp .L1_35
.L1_36:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_37:
.L1_35:
    jmp .L1_13
.L1_12:
    movl $100, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_174
    jmp .L1_41
.L1_174:
    movl %ebx, %r12d
    jmp .L1_42
.L1_41:
    movl $599, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L1_42:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_38
    jmp .L1_39
.L1_38:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 5072(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_43:
    jmp .L1_40
.L1_39:
.L1_40:
    leaq 5056(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %rax
    movq %rax, 352(%rbp)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 352(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 5040(%rbp), %rax
    movq %rax, 344(%rbp)
    movq %rbx, %r10
    movq 344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 5024(%rbp), %rbx
    movq 384(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq $64, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 5000(%rbp), %rbx
    movq 384(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $64, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r15
    movq 368(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_4(%rip), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    movq 360(%rbp), %r10
    movzwl (%r10), %r12d
    movl %r12d, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_u64
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_7(%rip), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $3, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    leaq 4952(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jbe .L1_45
.L1_44:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_46
.L1_45:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 4936(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 4936(%rbp), %r12
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_46:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_48
    jmp .L1_47
.L1_48:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 5712(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_49:
.L1_47:
    subq $64, %rsp
    movq 344(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4904(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4904(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_51
    jmp .L1_50
.L1_51:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_52:
.L1_50:
.L1_13:
    movq 376(%rbp), %rax
    movq $56, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 336(%rbp)
    leaq 4872(%rbp), %r13
    leaq .Ltext_9(%rip), %rax
    movq %rax, 328(%rbp)
    leaq 4856(%rbp), %rax
    movq %rax, 320(%rbp)
    movq 320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 312(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, 304(%rbp)
    leaq 4840(%rbp), %rax
    movq %rax, 296(%rbp)
    movq 296(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    leaq .Ltext_11(%rip), %rax
    movq %rax, 280(%rbp)
    leaq 4824(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    leaq 4792(%rbp), %rax
    movq %rax, 256(%rbp)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %rax
    movq %rax, 248(%rbp)
    movq 256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    leaq 4760(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    leaq 4744(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    leaq .Ltext_13(%rip), %rax
    movq %rax, 208(%rbp)
    leaq 4728(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 4696(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    leaq 4680(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 176(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    leaq 4648(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    leaq 4632(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq .Ltext_5(%rip), %rax
    movq %rax, 128(%rbp)
    leaq 4616(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 4584(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L1_53:
    movq 336(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L1_56
.L1_54:
    movq $32, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_16http_field_valid
    addq $64, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_175
    jmp .L1_60
.L1_175:
    movl %r15d, %ebx
    jmp .L1_61
.L1_60:
    movq 328(%rbp), %rax
    movq 320(%rbp), %r10
    movq %rax, (%r10)
    movq $14, %rax
    movq 312(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 320(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %ebx
.L1_61:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_176
    jmp .L1_62
.L1_176:
    movl %r15d, %ebx
    jmp .L1_63
.L1_62:
    movq 304(%rbp), %rax
    movq 296(%rbp), %r10
    movq %rax, (%r10)
    movq $17, %rax
    movq 288(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 296(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %ebx
.L1_63:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_177
    jmp .L1_64
.L1_177:
    movl %r15d, %ebx
    jmp .L1_65
.L1_64:
    movq 280(%rbp), %rax
    movq 272(%rbp), %r10
    movq %rax, (%r10)
    movq $10, %rax
    movq 264(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 272(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %ebx
.L1_65:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_57
    jmp .L1_58
.L1_57:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq 4808(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_66:
    jmp .L1_59
.L1_58:
.L1_59:
    movq 408(%rbp), %rax
    movq 256(%rbp), %r10
    movq %rax, (%r10)
    movq 248(%rbp), %rax
    movq 240(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 256(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4760(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    movq 232(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_68
    jmp .L1_67
.L1_68:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 32(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_69:
.L1_67:
    movq 408(%rbp), %rax
    movq 224(%rbp), %r10
    movq %rax, (%r10)
    movq 248(%rbp), %rax
    movq 216(%rbp), %r10
    movq %rax, (%r10)
    movq 208(%rbp), %rax
    movq 200(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq 192(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 224(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 200(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4696(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    movq 184(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_71
    jmp .L1_70
.L1_71:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 24(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_72:
.L1_70:
    movq 408(%rbp), %rax
    movq 176(%rbp), %r10
    movq %rax, (%r10)
    movq 248(%rbp), %rax
    movq 168(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 176(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 160(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4648(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    movq 152(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_74
    jmp .L1_73
.L1_74:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_75:
.L1_73:
    movq 408(%rbp), %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq 248(%rbp), %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    movq 128(%rbp), %rax
    movq 120(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 144(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 120(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4584(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    movq 104(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_77
    jmp .L1_76
.L1_77:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 8(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_78:
.L1_76:
.L1_55:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L1_53
.L1_56:
    movq 360(%rbp), %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_79
    jmp .L1_178
.L1_178:
    movl %r12d, %ebx
    jmp .L1_80
.L1_79:
    movl $200, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_179
    jmp .L1_81
.L1_179:
    movl %r12d, %ebx
    jmp .L1_82
.L1_81:
    movl $204, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_82:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_180
    jmp .L1_83
.L1_180:
    movl %r12d, %ebx
    jmp .L1_84
.L1_83:
    leaq .Ltext_14(%rip), %rbx
    leaq 4568(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 376(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $7, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_85
    jmp .L1_181
.L1_181:
    movl %r13d, %ebx
    jmp .L1_86
.L1_85:
    movq 376(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_86:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_87
    jmp .L1_182
.L1_182:
    movl %r12d, %ebx
    jmp .L1_88
.L1_87:
    movq 360(%rbp), %r10
    movzwl (%r10), %ebx
    movl $300, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %ebx
.L1_88:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_84:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_80:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    testl %r12d, %r12d
    jne .L1_92
    jmp .L1_183
.L1_183:
    movl %r12d, %ebx
    jmp .L1_93
.L1_92:
    movq 376(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L1_93:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L1_94
    jmp .L1_184
.L1_184:
    movl %r13d, %ebx
    jmp .L1_95
.L1_94:
    movq 376(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L1_95:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L1_89
    jmp .L1_90
.L1_89:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq 4552(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $38, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_96:
    jmp .L1_91
.L1_90:
.L1_91:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_98
.L1_97:
    movq 360(%rbp), %r10
    movzwl (%r10), %ebx
    movl $304, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_103
    jmp .L1_185
.L1_185:
    movl %r12d, %r13d
    jmp .L1_104
.L1_103:
    movq 376(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L1_104:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_100
    jmp .L1_101
.L1_100:
    jmp .L1_102
.L1_101:
    movq 376(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, 96(%rbp)
    movl 96(%rbp), %eax
    movl $1, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_186
    jmp .L1_108
.L1_186:
    movl %r13d, %r14d
    jmp .L1_109
.L1_108:
    movl 96(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L1_109:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L1_105
    jmp .L1_106
.L1_105:
    testl %r13d, %r13d
    jne .L1_110
    jmp .L1_111
.L1_110:
    movq 376(%rbp), %rax
    movq $80, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    jmp .L1_112
.L1_111:
    movq $0, %rax
    movq %rax, %rbx
.L1_112:
    leaq 4536(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 408(%rbp), %rax
    movq 88(%rbp), %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %rax
    movq %rax, 80(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 4520(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 88(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 4504(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 384(%rbp), %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq $64, %rax
    movq 56(%rbp), %r10
    movq %rax, (%r10)
    leaq 4480(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 384(%rbp), %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $64, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_16(%rip), %r13
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $16, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_u64
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_5(%rip), %r13
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 4432(%rbp), %r12
    movq %r15, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L1_114
.L1_113:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_115
.L1_114:
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 4416(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 4416(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_115:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_117
    jmp .L1_116
.L1_117:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 5712(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_118:
.L1_116:
    subq $64, %rsp
    movq 72(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4384(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4384(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_120
    jmp .L1_119
.L1_120:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_121:
.L1_119:
    jmp .L1_107
.L1_106:
    movl 96(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    jne .L1_123
.L1_122:
    leaq .Ltext_1(%rip), %rbx
    leaq 4368(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $8, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 368(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_128
    jmp .L1_187
.L1_187:
    movl %r13d, %ebx
    jmp .L1_129
.L1_128:
    movq 40(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_129:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_126
.L1_125:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 4352(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_130:
    jmp .L1_127
.L1_126:
.L1_127:
    leaq 4336(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_18(%rip), %r12
    leaq 4320(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4288(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_132
    jmp .L1_131
.L1_132:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_133:
.L1_131:
    jmp .L1_124
.L1_123:
    movl 96(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_188
    jmp .L1_137
.L1_188:
    movl %r12d, %ebx
    jmp .L1_138
.L1_137:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_138:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_134
    jmp .L1_135
.L1_134:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq 4272(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_139:
    jmp .L1_136
.L1_135:
.L1_136:
.L1_124:
.L1_107:
.L1_102:
    jmp .L1_99
.L1_98:
.L1_99:
    movq 376(%rbp), %rax
    movq $88, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_143
    jmp .L1_189
.L1_189:
    movl %ebx, %r12d
    jmp .L1_144
.L1_143:
    movq 376(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_144:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_140
    jmp .L1_141
.L1_140:
    movq 376(%rbp), %rax
    movq $90, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_145
    jmp .L1_146
.L1_145:
    leaq 4256(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_20(%rip), %r12
    leaq 4240(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $21, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4208(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_149
    jmp .L1_148
.L1_149:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_150:
.L1_148:
    jmp .L1_147
.L1_146:
    leaq 4192(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_21(%rip), %r12
    leaq 4176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4144(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4144(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_152
    jmp .L1_151
.L1_152:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_153:
.L1_151:
.L1_147:
    jmp .L1_142
.L1_141:
    leaq 4128(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_22(%rip), %r12
    leaq 4112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $19, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4080(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4080(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_155
    jmp .L1_154
.L1_155:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_156:
.L1_154:
.L1_142:
    leaq 4064(%rbp), %rbx
    movq 408(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 4048(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 4016(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 4016(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_158
    jmp .L1_157
.L1_158:
    leaq 5712(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_159:
.L1_157:
    leaq 816(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $3200, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 784(%rbp), %r12
    leaq 752(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $-1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $32768, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $8192, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $100, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 360(%rbp), %r10
    movzwl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_161
.L1_160:
    subq $32, %rsp
    movq 408(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 736(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_io_SliceWriter_written
    addq $32, %rsp
    leaq 736(%rbp), %r13
    leaq 720(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $100, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $96, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r12, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 592(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_18http_parse_request
    addq $96, %rsp
    leaq 592(%rbp), %r14
    movq $120, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_164
    jmp .L1_163
.L1_164:
    movq $96, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 5712(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_165:
.L1_163:
    jmp .L1_162
.L1_161:
    subq $32, %rsp
    movq 408(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 576(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_io_SliceWriter_written
    addq $32, %rsp
    leaq 576(%rbp), %r13
    leaq 560(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $100, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $128, %rsp
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 376(%rbp), %r10
    leaq 80(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rsp), %rax
    movq %rax, 24(%rsp)
    movq %r12, %r10
    leaq 96(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 96(%rsp), %rax
    movq %rax, 32(%rsp)
    leaq 432(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_19http_parse_response
    addq $128, %rsp
    leaq 432(%rbp), %r14
    movq $120, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_167
    jmp .L1_166
.L1_167:
    movq $96, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 5712(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_168:
.L1_166:
.L1_162:
    subq $32, %rsp
    movq 408(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 416(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_io_SliceWriter_written
    addq $32, %rsp
    leaq 416(%rbp), %rbx
    leaq 5712(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 5800(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 5800(%rbp), %rax
    movq 5976(%rbp), %rdi
    movq 5968(%rbp), %rsi
    movdqu 5952(%rbp), %xmm6
    movdqu 5936(%rbp), %xmm7
    movdqu 5920(%rbp), %xmm8
    movdqu 5904(%rbp), %xmm9
    movdqu 5888(%rbp), %xmm10
    movdqu 5872(%rbp), %xmm11
    movdqu 5856(%rbp), %xmm12
    movdqu 5840(%rbp), %xmm13
    movdqu 5824(%rbp), %xmm14
    movdqu 5808(%rbp), %xmm15
    movq 5792(%rbp), %rbx
    movq 5784(%rbp), %r12
    movq 5776(%rbp), %r13
    movq 5768(%rbp), %r14
    movq 5760(%rbp), %r15
    leaq 5984(%rbp), %rsp
    popq %rbp
    ret
.L1_169:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_16http_write_chunk
lb_net_16http_write_chunk:
    .seh_proc lb_net_16http_write_chunk
    pushq %rbp
    .seh_pushreg %rbp
    subq $496, %rsp
    .seh_stackalloc 496
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 312(%rbp)
    movq %rdi, 488(%rbp)
    .seh_savereg %rdi, 488
    movq %rsi, 480(%rbp)
    .seh_savereg %rsi, 480
    movdqu %xmm6, 464(%rbp)
    .seh_savexmm %xmm6, 464
    movdqu %xmm7, 448(%rbp)
    .seh_savexmm %xmm7, 448
    movdqu %xmm8, 432(%rbp)
    .seh_savexmm %xmm8, 432
    movdqu %xmm9, 416(%rbp)
    .seh_savexmm %xmm9, 416
    movdqu %xmm10, 400(%rbp)
    .seh_savexmm %xmm10, 400
    movdqu %xmm11, 384(%rbp)
    .seh_savexmm %xmm11, 384
    movdqu %xmm12, 368(%rbp)
    .seh_savexmm %xmm12, 368
    movdqu %xmm13, 352(%rbp)
    .seh_savexmm %xmm13, 352
    movdqu %xmm14, 336(%rbp)
    .seh_savexmm %xmm14, 336
    movdqu %xmm15, 320(%rbp)
    .seh_savexmm %xmm15, 320
    movq %rbx, 304(%rbp)
    .seh_savereg %rbx, 304
    movq %r12, 296(%rbp)
    .seh_savereg %r12, 296
    movq %r13, 288(%rbp)
    .seh_savereg %r13, 288
    movq %r14, 280(%rbp)
    .seh_savereg %r14, 280
    movq %r15, 272(%rbp)
    .seh_savereg %r15, 272
    .seh_endprologue
    movq %rcx, 512(%rbp)
    movq %rdx, 520(%rbp)
    movq %r8, 528(%rbp)
    movq %r9, 536(%rbp)
    movq 520(%rbp), %r10
    leaq 224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 528(%rbp), %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 208(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_2
.L2_1:
    leaq 240(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L2_2:
.L2_3:
    leaq 190(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq 168(%rbp), %r14
    leaq .Ltext_25(%rip), %rax
    movq %rax, 8(%rbp)
    leaq 152(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $16, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rax
    movq %rax, %rbx
    movq %r12, %r14
.L2_5:
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L2_7
.L2_6:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq $18, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r15
    addq %r12, %r15
.L2_9:
    movq $16, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rbx
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r15, %r10
    movb %bl, (%r10)
.L2_11:
    movq $16, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r15
    movq %r12, %rbx
    movq %r15, %r14
    jmp .L2_5
.L2_7:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $13, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $17, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $10, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 224(%rbp), %rax
    movq %rax, 0(%rbp)
    movq $19, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $18, %rcx
    cmpq %rcx, %rbx
    jbe .L2_12
.L2_13:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_12:
    movq %r13, %r14
    addq %rbx, %r14
    movq $18, %rax
    movq %rax, %r15
    subq %rbx, %r15
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    subq $64, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 104(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_15
    jmp .L2_14
.L2_15:
    leaq 240(%rbp), %rbx
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
    movq 312(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L2_14:
    subq $64, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 16(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 72(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_17
.L2_18:
    leaq 240(%rbp), %rbx
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
    movq 312(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L2_17:
    leaq .Ltext_5(%rip), %rbx
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 24(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_21
    jmp .L2_20
.L2_21:
    leaq 240(%rbp), %rbx
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
    movq 312(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L2_20:
    leaq 240(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_15http_end_chunks
lb_net_15http_end_chunks:
    .seh_proc lb_net_15http_end_chunks
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %r10
    leaq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %rbx
    leaq .Ltext_34(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $5, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 0(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    leaq 64(%rbp), %rbx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    leaq 64(%rbp), %rbx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyWriter_over
lb_net_HttpBodyWriter_over:
    .seh_proc lb_net_HttpBodyWriter_over
    pushq %rbp
    .seh_pushreg %rbp
    subq $400, %rsp
    .seh_stackalloc 400
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 216(%rbp)
    movq %rdi, 392(%rbp)
    .seh_savereg %rdi, 392
    movq %rsi, 384(%rbp)
    .seh_savereg %rsi, 384
    movdqu %xmm6, 368(%rbp)
    .seh_savexmm %xmm6, 368
    movdqu %xmm7, 352(%rbp)
    .seh_savexmm %xmm7, 352
    movdqu %xmm8, 336(%rbp)
    .seh_savexmm %xmm8, 336
    movdqu %xmm9, 320(%rbp)
    .seh_savexmm %xmm9, 320
    movdqu %xmm10, 304(%rbp)
    .seh_savexmm %xmm10, 304
    movdqu %xmm11, 288(%rbp)
    .seh_savexmm %xmm11, 288
    movdqu %xmm12, 272(%rbp)
    .seh_savexmm %xmm12, 272
    movdqu %xmm13, 256(%rbp)
    .seh_savexmm %xmm13, 256
    movdqu %xmm14, 240(%rbp)
    .seh_savexmm %xmm14, 240
    movdqu %xmm15, 224(%rbp)
    .seh_savexmm %xmm15, 224
    movq %rbx, 208(%rbp)
    .seh_savereg %rbx, 208
    movq %r12, 200(%rbp)
    .seh_savereg %r12, 200
    movq %r13, 192(%rbp)
    .seh_savereg %r13, 192
    movq %r14, 184(%rbp)
    .seh_savereg %r14, 184
    .seh_endprologue
    movq %rcx, 416(%rbp)
    movq %rdx, 424(%rbp)
    movq %r8, 432(%rbp)
    movq %r9, 440(%rbp)
    movq 424(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 432(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 440(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    jne .L4_2
.L4_1:
    leaq 112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_35(%rip), %r13
    leaq 48(%rbp), %r14
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
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq 8(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %bl, (%r10)
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L4_6
.L4_5:
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    jmp .L4_7
.L4_6:
    movq $0, %rax
    movq %rax, %rbx
.L4_7:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 112(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 216(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L4_8:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyWriter_write
lb_net_HttpBodyWriter_write:
    .seh_proc lb_net_HttpBodyWriter_write
    pushq %rbp
    .seh_pushreg %rbp
    subq $544, %rsp
    .seh_stackalloc 544
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 360(%rbp)
    movq %rdi, 536(%rbp)
    .seh_savereg %rdi, 536
    movq %rsi, 528(%rbp)
    .seh_savereg %rsi, 528
    movdqu %xmm6, 512(%rbp)
    .seh_savexmm %xmm6, 512
    movdqu %xmm7, 496(%rbp)
    .seh_savexmm %xmm7, 496
    movdqu %xmm8, 480(%rbp)
    .seh_savexmm %xmm8, 480
    movdqu %xmm9, 464(%rbp)
    .seh_savexmm %xmm9, 464
    movdqu %xmm10, 448(%rbp)
    .seh_savexmm %xmm10, 448
    movdqu %xmm11, 432(%rbp)
    .seh_savexmm %xmm11, 432
    movdqu %xmm12, 416(%rbp)
    .seh_savexmm %xmm12, 416
    movdqu %xmm13, 400(%rbp)
    .seh_savexmm %xmm13, 400
    movdqu %xmm14, 384(%rbp)
    .seh_savexmm %xmm14, 384
    movdqu %xmm15, 368(%rbp)
    .seh_savexmm %xmm15, 368
    movq %rbx, 352(%rbp)
    .seh_savereg %rbx, 352
    movq %r12, 344(%rbp)
    .seh_savereg %r12, 344
    movq %r13, 336(%rbp)
    .seh_savereg %r13, 336
    movq %r14, 328(%rbp)
    .seh_savereg %r14, 328
    movq %r15, 320(%rbp)
    .seh_savereg %r15, 320
    .seh_endprologue
    movq %rcx, 560(%rbp)
    movq %rdx, 568(%rbp)
    movq %r8, 576(%rbp)
    movq %r9, 584(%rbp)
    movq 568(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 576(%rbp), %r10
    leaq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 272(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 224(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_HttpBodyWriter_check
    addq $32, %rsp
    leaq 224(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    leaq 280(%rbp), %rbx
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
    movq 360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    leaq 256(%rbp), %rbx
    movq %rbx, %r10
    leaq 104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L5_11
.L5_10:
    leaq 120(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_13:
    jmp .L5_12
.L5_11:
.L5_12:
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_36
    jmp .L5_17
.L5_36:
    movl %r15d, %r14d
    jmp .L5_18
.L5_17:
    movl $1, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_19
    jmp .L5_37
.L5_37:
    movl %r15d, %r14d
    jmp .L5_20
.L5_19:
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    seta %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L5_20:
    movzbl %r14b, %r15d
    movl %r15d, %r14d
.L5_18:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L5_14
    jmp .L5_15
.L5_14:
    leaq 120(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_net_12http_invalid(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_38(%rip), %r14
    leaq 88(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $37, %rax
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
    movq %rbx, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_21:
    jmp .L5_16
.L5_15:
.L5_16:
    movl $2, %ecx
    cmpl %ecx, %r13d
    jne .L5_23
.L5_22:
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_16http_write_chunk
    addq $64, %rsp
    leaq 56(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_26
    jmp .L5_25
.L5_26:
    leaq 120(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
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
    movq %rbx, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_27:
.L5_25:
    jmp .L5_24
.L5_23:
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 24(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_29
    jmp .L5_28
.L5_29:
    leaq 120(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
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
    movq %rbx, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_30:
.L5_28:
.L5_24:
    movq 8(%rbp), %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_32
.L5_31:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    jmp .L5_33
.L5_32:
.L5_33:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    leaq 120(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_34:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_35:
    leaq 160(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_7
    jmp .L5_6
.L5_7:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 200(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_4
.L5_6:
    movq %r13, %r10
    movq (%r10), %rbx
    jmp .L5_5
.L5_4:
    movq $33, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $36, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq 280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L5_8:
.L5_5:
    leaq 280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L5_9:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyWriter_finish
lb_net_HttpBodyWriter_finish:
    .seh_proc lb_net_HttpBodyWriter_finish
    pushq %rbp
    .seh_pushreg %rbp
    subq $528, %rsp
    .seh_stackalloc 528
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 344(%rbp)
    movq %rdi, 520(%rbp)
    .seh_savereg %rdi, 520
    movq %rsi, 512(%rbp)
    .seh_savereg %rsi, 512
    movdqu %xmm6, 496(%rbp)
    .seh_savexmm %xmm6, 496
    movdqu %xmm7, 480(%rbp)
    .seh_savexmm %xmm7, 480
    movdqu %xmm8, 464(%rbp)
    .seh_savexmm %xmm8, 464
    movdqu %xmm9, 448(%rbp)
    .seh_savexmm %xmm9, 448
    movdqu %xmm10, 432(%rbp)
    .seh_savexmm %xmm10, 432
    movdqu %xmm11, 416(%rbp)
    .seh_savexmm %xmm11, 416
    movdqu %xmm12, 400(%rbp)
    .seh_savexmm %xmm12, 400
    movdqu %xmm13, 384(%rbp)
    .seh_savexmm %xmm13, 384
    movdqu %xmm14, 368(%rbp)
    .seh_savexmm %xmm14, 368
    movdqu %xmm15, 352(%rbp)
    .seh_savexmm %xmm15, 352
    movq %rbx, 336(%rbp)
    .seh_savereg %rbx, 336
    movq %r12, 328(%rbp)
    .seh_savereg %r12, 328
    movq %r13, 320(%rbp)
    .seh_savereg %r13, 320
    movq %r14, 312(%rbp)
    .seh_savereg %r14, 312
    movq %r15, 304(%rbp)
    .seh_savereg %r15, 304
    .seh_endprologue
    movq %rcx, 544(%rbp)
    movq %rdx, 552(%rbp)
    movq %r8, 560(%rbp)
    movq %r9, 568(%rbp)
    movq 552(%rbp), %rax
    movq %rax, 264(%rbp)
    leaq 264(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 232(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_HttpBodyWriter_check
    addq $32, %rsp
    leaq 232(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    leaq 272(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 344(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_12
    jmp .L6_26
.L6_26:
    movl %r13d, %r14d
    jmp .L6_13
.L6_12:
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L6_13:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_9
    jmp .L6_10
.L6_9:
    leaq 144(%rbp), %rbx
    leaq lb_io_14unexpected_eof(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_41(%rip), %r13
    leaq 128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_25
.L6_14:
    jmp .L6_11
.L6_10:
.L6_11:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L6_16
.L6_15:
    movq %r12, %r10
    leaq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %rbx
    leaq .Ltext_34(%rip), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 0(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_22
    jmp .L6_21
.L6_22:
    leaq 64(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_24
.L6_23:
.L6_21:
    leaq 64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L6_24:
    leaq 96(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_19
    jmp .L6_18
.L6_19:
    leaq 144(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_25
.L6_20:
.L6_18:
    jmp .L6_17
.L6_16:
.L6_17:
    leaq 144(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L6_25:
    leaq 176(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_7
    jmp .L6_6
.L6_7:
    leaq 208(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_4
.L6_6:
    jmp .L6_5
.L6_4:
    movq $33, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $36, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq 272(%rbp), %r13
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 344(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L6_8:
.L6_5:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 272(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 344(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyWriter_check
lb_net_HttpBodyWriter_check:
    .seh_proc lb_net_HttpBodyWriter_check
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
    movq %rax, 32(%rbp)
    leaq 32(%rbp), %r10
    movq (%r10), %r12
    movq $33, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq 40(%rbp), %rbx
    movq $36, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_42(%rip), %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $32, %rdx
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_6
.L7_5:
    leaq 40(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_43(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
    movq 104(%rbp), %rdi
    movq $32, %rdx
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
.L7_8:
    jmp .L7_7
.L7_6:
.L7_7:
    leaq 40(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_11http_encode_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "HTTP/1.0"
.Ltext_1:
    .asciz "HTTP/1.1"
.Ltext_2:
    .asciz "unsupported HTTP version"
.Ltext_3:
    .asciz "invalid HTTP request line"
.Ltext_4:
    .asciz " "
.Ltext_5:
    .asciz "\015\n"
.Ltext_6:
    .asciz "invalid HTTP status"
.Ltext_7:
    .asciz " \015\n"
.Ltext_8:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_9:
    .asciz "content-length"
.Ltext_10:
    .asciz "transfer-encoding"
.Ltext_11:
    .asciz "connection"
.Ltext_12:
    .asciz "invalid or generated HTTP field"
.Ltext_13:
    .asciz ": "
.Ltext_14:
    .asciz "CONNECT"
.Ltext_15:
    .asciz "framing is forbidden for this response"
.Ltext_16:
    .asciz "Content-Length: "
.Ltext_17:
    .asciz "chunked framing requires HTTP/1.1"
.Ltext_18:
    .asciz "Transfer-Encoding: chunked\015\n"
.Ltext_19:
    .asciz "invalid outgoing HTTP framing"
.Ltext_20:
    .asciz "Connection: Upgrade\015\n"
.Ltext_21:
    .asciz "Connection: keep-alive\015\n"
.Ltext_22:
    .asciz "Connection: close\015\n"
.Ltext_23:
    .asciz "unreachable"
.Ltext_24:
    .asciz "src/std/net/http/encode.lucb:60:5"
.Ltext_25:
    .asciz "0123456789abcdef"
.Ltext_26:
    .asciz "src/std/net/http/encode.lucb:72:9"
.Ltext_27:
    .asciz "src/std/net/http/encode.lucb:73:9"
.Ltext_28:
    .asciz "division by zero"
.Ltext_29:
    .asciz "src/std/net/http/encode.lucb:74:9"
.Ltext_30:
    .asciz "src/std/net/http/encode.lucb:75:5"
.Ltext_31:
    .asciz "src/std/net/http/encode.lucb:76:5"
.Ltext_32:
    .asciz "src/std/net/http/encode.lucb:77:5"
.Ltext_33:
    .asciz "index out of bounds"
.Ltext_34:
    .asciz "0\015\n\015\n"
.Ltext_35:
    .asciz "a tunnel has no HTTP body writer"
.Ltext_36:
    .asciz "src/std/net/http/encode.lucb:101:9"
.Ltext_37:
    .asciz "src/std/net/http/encode.lucb:108:13"
.Ltext_38:
    .asciz "HTTP body exceeds its declared length"
.Ltext_39:
    .asciz "src/std/net/http/encode.lucb:120:13"
.Ltext_40:
    .asciz "src/std/net/http/encode.lucb:121:9"
.Ltext_41:
    .asciz "HTTP body is shorter than its declared length"
.Ltext_42:
    .asciz "HTTP body writer has failed"
.Ltext_43:
    .asciz "HTTP body writer is not active"
.Ltext_44:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .section .rdata$lb_vt_io_SliceWriter_Writer,"dr"
    .p2align 3
    .globl lb_vt_io_SliceWriter_Writer
lb_vt_io_SliceWriter_Writer:
    .quad lb_io_SliceWriter_write
